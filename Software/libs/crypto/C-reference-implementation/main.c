#include <stdio.h>
#include <string.h>

#define __riscv_xlen 32
#include "crypto_constants.h"
#include "ed25519.h"
#include "sbi_string.h"
#include "sha3.h"
#include "tcb_minimal_test.h"

typedef unsigned char byte;

#define ARRAY_FORMAT 1
// #define USE_TEST_KEYS 0


#define configUSE_NEWLIB_REENTRANT 0

int hkdf_sha3_512(const unsigned char *salt, size_t salt_len,
                  const unsigned char *ikm, size_t ikm_len,
                  const unsigned char *info, size_t info_len,
                  unsigned char *okm, size_t okm_len);
				  
void printHexFormat(byte* value, int len, char *description);

void printHexFormat(byte* value, int len, char *description) {
	
	printf("\n%s:", description);
	if (ARRAY_FORMAT) {
		for(int i=0; i < len; i++) {
		  	if (i % 16 == 0) {
		  		printf("\n");
		  	}
		  	printf("0x%02x, ", value[i]);
		}
	} else {
		for(int i=0; i < len; i++) {
		  	if (i % 16 == 0) {
		  		printf("\n");
		  	}
		  	printf("%02x ", value[i]);
		}
	}	
	printf("\n");
}

byte secure_boot_private_key[32];
byte secure_boot_public_key[32];
byte secure_boot_signature[70];

byte ks_dev_secret_key[32];
byte ks_dev_public_key[70];

// SK_SM and PK_SM
byte ks_freertos_secret_key[64];
byte ks_freertos_public_key[64];

byte precomputedTaskHash[TASK_HASH_LEN];


int xDeriveNewSealingKey(sealing_key *output_key, const unsigned char *key_ident,
                          size_t key_ident_size) 
{

	tskTCB minTCB; 
	sbi_memset(minTCB.taskHash, 0, TASK_HASH_LEN);

	// info = taskHash || key_ident
  	byte info[MDSIZE + key_ident_size];

  	byte taskHash[64];
	sbi_memcpy(taskHash, minTCB.taskHash, TASK_HASH_LEN);
	sbi_memcpy(info, taskHash, MDSIZE);
	sbi_memcpy(info + MDSIZE, key_ident, key_ident_size);

	/*
	* The key is derived without a salt because we have no entropy source
	* available to generate the salt.
	*/

	extern unsigned char ks_freertos_secret_key[];
	return hkdf_sha3_512(NULL, (size_t) 0,
				(const unsigned char *)ks_freertos_secret_key, PRIVATE_KEY_SIZE,
				info, MDSIZE + key_ident_size, output_key, SEALING_KEY_SIZE);
}

void displayKeysAndSignature() 
{
	printHexFormat(secure_boot_public_key, 32, "secure_boot_public_key");
	printHexFormat(secure_boot_private_key, 32, "secure_boot_private_key");
	printHexFormat(secure_boot_signature, 64, "Signature");
}

void precomputeTaskHashFrom0() 
{
	sha3_ctx_t hash_ctx_precomp;

	// Hash over kernel, here only \x00
	byte kernel_small = 0;

	sha3_init(&hash_ctx_precomp, 64);
	sha3_update(&hash_ctx_precomp, &kernel_small, 1); // TODO: Change back to code_size; 1 is only to make the simulation faster
	sha3_final(precomputedTaskHash, &hash_ctx_precomp);

	printHexFormat(precomputedTaskHash, 64, "precomputedTaskHash");
}

int main() 
{
	byte FreeRTOS_kernel_hash[64];
	sha3_ctx_t hash_ctx_boot;

	// Hash over kernel, here only \x00
	byte kernel_small = 0;

	sha3_init(&hash_ctx_boot, 64);
	sha3_update(&hash_ctx_boot, (void*)&kernel_small, 1); // TODO: Change back to code_size; 1 is only to make the simulation faster
	sha3_final(FreeRTOS_kernel_hash, &hash_ctx_boot);

	printHexFormat(FreeRTOS_kernel_hash, 64, "Kernel Hash");

	
	#ifdef USE_TEST_KEYS
	#include "use_test_keys.h"
	#else
		// Create keypair
		unsigned char keySeed = 0;
		ed25519_create_keypair(secure_boot_public_key, secure_boot_private_key, &keySeed);

		// Create signature
		ed25519_sign(secure_boot_signature, FreeRTOS_kernel_hash, 64, secure_boot_public_key, secure_boot_private_key);
	#endif

	// Display keys and signature
	// displayKeysAndSignature();

	// Check signature

	// Corrupting the signature
	//secure_boot_signature[20] = 0xf2;
	#ifdef TEST_SECURE_BOOT
		int secure_boot_success = ed25519_verify(secure_boot_signature, 
			FreeRTOS_kernel_hash, 64, secure_boot_public_key);

		if (secure_boot_success)
		{
			printf("\nVerification successful!\n");
		} else {
			printf("\nVerification failed...\n");
		}
	#endif

	// 1. Calculate seedHash
	// sha( dev_secret_key || kernel_hash )

	byte seedHash[128];
	sha3_ctx_t hash_ctx_seed;
	sha3_init(&hash_ctx_seed, 64);
	sha3_update(&hash_ctx_seed, ks_dev_secret_key, 1); // ATTENTION: SMALL HASH
	sha3_update(&hash_ctx_seed, FreeRTOS_kernel_hash, 1);
	sha3_final(seedHash, &hash_ctx_seed);

	// Derive {SK_D, PK_D} (device keys) from the first 32 B of the hash 
	//(NIST endorses SHA512 truncation as safe)
	ed25519_create_keypair(ks_freertos_public_key, ks_freertos_secret_key, seedHash);

	printHexFormat(ks_freertos_secret_key, 64, "ks_freertos_secret_key");

	// 2. Calculate taskHash
	precomputeTaskHashFrom0();

    // 3. Derive new key
	byte newSealingKey[SEALING_KEY_SIZE];
    byte *keyIdentifier = "identifier";


	xDeriveNewSealingKey(newSealingKey, keyIdentifier, strlen((char *) keyIdentifier));

	printHexFormat(newSealingKey, 128, "newSealingKey");
	printHexFormat(newSealingKey, SEALING_KEY_SIZE, "Sealing Key");

	return 0;
}

