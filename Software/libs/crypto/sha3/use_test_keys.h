#include "test_dev_key.h"

// extern int memcpy (void * restrict, const void * restrict, size_t);

// memcpy(sanctum_dev_secret_key, _sanctum_dev_secret_key, _sanctum_dev_secret_key_len);
// memcpy(sanctum_dev_public_key, _sanctum_dev_public_key, _sanctum_dev_public_key_len);


memcpy(secure_boot_public_key, _secure_boot_public_key, _secure_boot_public_key_len);
memcpy(secure_boot_signature, _secure_boot_signature, _secure_boot_signature_len);
// memcpy(secure_boot_private_key, _secure_boot_private_key, _secure_boot_private_key_len);