
#ifndef SEALING_KEY_H
#define SEALING_KEY_H

#include <stddef.h>
#include <stdint.h>
#include "FreeRTOS.h"
#include "sha3.h"
#include "hkdf_sha3_512.h"

#define SEALING_KEY_SIZE 128
#define SIGNATURE_SIZE 64

/* For now, eid's are a simple unsigned int */
typedef unsigned int enclave_id;

/* sealing key structure */
struct sealing_key {
  uint8_t key[SEALING_KEY_SIZE];
  uint8_t signature[SIGNATURE_SIZE];
};

void *sbi_memset(void *s, int c, size_t count);
void *sbi_memcpy(void *dest, const void *src, size_t count);

unsigned long get_sealing_key(uintptr_t sealing_key, uintptr_t key_ident, size_t key_ident_size, uintptr_t taskHash);
int derive_sealing_key(unsigned char *key, const unsigned char *key_ident, size_t key_ident_size, const unsigned char *enclave_hash);

int kdf(const unsigned char* salt, size_t salt_len,
        const unsigned char* ikm, size_t ikm_len,
        const unsigned char* info, size_t info_len,
        unsigned char* okm, size_t okm_len);

void calculateHashOfTask(void* taskFunctionStart, size_t functionSize, unsigned char * hash); 

#endif
