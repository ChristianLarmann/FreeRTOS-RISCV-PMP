
#define __riscv_xlen 32
#include "crypto_constants.h"
#include "ed25519.h"
#include "sbi_string.h"
#include "sha3.h"
#include "tcb_minimal_test.h"

typedef unsigned char byte;

#define ARRAY_FORMAT 1
#define USE_TEST_KEYS 0


#define configUSE_NEWLIB_REENTRANT 0

void printHexFormat(byte* value, int len, bool arrayFormat);

void printHexFormat(byte* value, int len, bool arrayFormat) {
	
	if (arrayFormat) {
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
}

byte secure_boot_private_key[32];
byte secure_boot_public_key[32];
byte secure_boot_signature[70];

byte ks_dev_secret_key[32];
byte ks_dev_public_key[70];

// SK_SM and PK_SM
byte ks_freertos_secret_key[];
byte ks_freertos_public_key[];

int xDeriveNewSealingKey(unsigned char *output_key, const unsigned char *key_ident,
                          size_t key_ident_size) 
{

	tskTCB minTCB; 
	sbi_memset(minTCB.taskHash, 0, TASK_HASH_LEN);

	// info = taskHash || key_ident
  	unsigned char info[MDSIZE + key_ident_size];

  	unsigned char taskHash[64];
	sbi_memcpy(taskHash, minTCB.taskHash, TASK_HASH_LEN); // Here continue... Could be a bit difficult: Task hash must be computed before
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
	printf("\nsecure_boot_public_key:");
	printHexFormat(secure_boot_public_key, 32, ARRAY_FORMAT);
	printf("\n");

	printf("\nsecure_boot_private_key:");
	printHexFormat(secure_boot_private_key, 32, ARRAY_FORMAT);
	printf("\n");


	printf("\nSignature:");
	printHexFormat(secure_boot_signature, 64, ARRAY_FORMAT);
	printf("\n");
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

	printf("\nHash:");
	printHexFormat(FreeRTOS_kernel_hash, 64, ARRAY_FORMAT);
	printf("\n");

	
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
	displayKeysAndSignature();

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

	// Calculate seed_hash
	// sha( dev_secret_key || kernel_hash )

	byte seedHash[128];
	sha3_ctx_t hash_ctx_seed;
	sha3_init(&hash_ctx_seed, 64);
	sha3_update(&hash_ctx_seed, ks_dev_secret_key, 1);
	sha3_update(&hash_ctx_seed, FreeRTOS_kernel_hash, 1);
	sha3_final(seedHash, &hash_ctx_seed);

	// Derive {SK_D, PK_D} (device keys) from the first 32 B of the hash 
	//(NIST endorses SHA512 truncation as safe)
	ed25519_create_keypair(ks_freertos_public_key, ks_freertos_secret_key, seedHash);

	printf("\nks_freertos_secret_key:");
	printHexFormat(ks_freertos_secret_key, 32, ARRAY_FORMAT);
	printf("\n");


    // Derive new key
	byte newSealingKey[128];
	char *keyIdentifier = "identifier";

	xDeriveNewSealingKey(newSealingKey,keyIdentifier, strlen(keyIdentifier));
	printHexFormat(newSealingKey, 128, ARRAY_FORMAT);

	return 0;
}

