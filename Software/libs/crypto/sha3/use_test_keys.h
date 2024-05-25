#include "test_dev_key.h"

// extern int memcpy (void * restrict, const void * restrict, size_t);

// Calculated in sealing_key.c -> derive_secret_key_freertos()
// memcpy(ks_dev_secret_key, _key_sealing_dev_secret_key, _key_sealing_dev_secret_key_len);
// memcpy(ks_dev_public_key, _key_sealing_dev_public_key, _key_sealing_dev_public_key_len);

extern void *sbi_memcpy(void *dest, const void *src, size_t count);

sbi_memcpy(secure_boot_public_key, _secure_boot_public_key, _secure_boot_public_key_len);
sbi_memcpy(secure_boot_signature, _secure_boot_signature, _secure_boot_signature_len);
// memcpy(secure_boot_private_key, _secure_boot_private_key, _secure_boot_private_key_len);