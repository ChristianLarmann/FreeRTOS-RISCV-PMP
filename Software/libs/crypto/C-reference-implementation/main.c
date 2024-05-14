#include <stdio.h>
#include <stdbool.h>
#include "sha3.h"
#include "ed25519.h"

typedef unsigned char byte;

#define ARRAY_FORMAT 1
#define USE_TEST_KEYS 1


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


int main() {

	byte FreeRTOS_kernel_hash[64];
	sha3_ctx_t hash_ctx;

	// Hash over kernel, here only \x00
	byte kernel_small = 0;

	sha3_init(&hash_ctx, 64);
	sha3_update(&hash_ctx, (void*)&kernel_small, 1); // TODO: Change back to code_size; 1 is only to make the simulation faster
	sha3_final(FreeRTOS_kernel_hash, &hash_ctx);

	printf("\nHash:");
	printHexFormat(FreeRTOS_kernel_hash, 64, ARRAY_FORMAT);
	printf("\n");

	byte secure_boot_private_key[32];
	byte secure_boot_public_key[32];
	byte secure_boot_signature[70];

	byte ks_dev_secret_key[32];
	byte ks_dev_public_key[70];
	
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
	printf("\nsecure_boot_public_key:");
	printHexFormat(secure_boot_public_key, 32, ARRAY_FORMAT);
	printf("\n");

	printf("\nsecure_boot_private_key:");
	printHexFormat(secure_boot_private_key, 32, ARRAY_FORMAT);
	printf("\n");


	printf("\nSignature:");
	printHexFormat(secure_boot_signature, 64, ARRAY_FORMAT);
	printf("\n");

	// Check signature

	// Corrupting the signature
	//secure_boot_signature[20] = 0xf2;
	int secure_boot_success = ed25519_verify(secure_boot_signature, 
		FreeRTOS_kernel_hash, 64, secure_boot_public_key);

	if (secure_boot_success)
	{
		printf("\nVerification successful!\n");
	} else {
		printf("\nVerification failed...\n");
	}

	return 0;
}

