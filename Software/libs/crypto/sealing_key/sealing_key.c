#include "sealing_key.h"

/*
    In keystone/sm/src/platform/generic/platform.c:

    void sm_copy_key(void)
    {
        sbi_memcpy(sm_hash, sanctum_sm_hash, MDSIZE);
        sbi_memcpy(sm_signature, sanctum_sm_signature, SIGNATURE_SIZE);
        sbi_memcpy(sm_public_key, sanctum_sm_public_key, PUBLIC_KEY_SIZE);
        sbi_memcpy(sm_private_key, sanctum_sm_secret_key, PRIVATE_KEY_SIZE);
        sbi_memcpy(dev_public_key, sanctum_dev_public_key, PUBLIC_KEY_SIZE);
    } 
*/


unsigned long get_sealing_key(uintptr_t sealing_key, uintptr_t key_ident,
                                 size_t key_ident_size, uintptr_t taskHash)
{
  struct sealing_key *key_struct = (struct sealing_key *)sealing_key;
  int ret;

  /* derive key */
  ret = derive_sealing_key((unsigned char *)key_struct->key,
                              (const unsigned char *)key_ident, key_ident_size,
                              (const unsigned char *)taskHash);
  if (ret)
    return pdFAIL;

  /* sign derived key */
//   sm_sign((void *)key_struct->signature, (void *)key_struct->key,
//           SEALING_KEY_SIZE);

  return pdPASS;
}


void calculateHashOfTask(void* taskFunctionStart, size_t functionSize, unsigned char * hash) {

  // Hash over task
  sha3_ctx_t hash_ctx;
  sha3_update(&hash_ctx, taskFunctionStart, functionSize);
  sha3_final(hash, &hash_ctx);
}

int derive_sealing_key(unsigned char *key, const unsigned char *key_ident,
                          size_t key_ident_size,
                          const unsigned char *enclave_hash)
{
  unsigned char info[MDSIZE + key_ident_size];

  sbi_memcpy(info, enclave_hash, MDSIZE);
  sbi_memcpy(info + MDSIZE, key_ident, key_ident_size);

  /*
   * The key is derived without a salt because we have no entropy source
   * available to generate the salt.
   */

  extern unsigned char * ks_dev_secret_key;
  return kdf(NULL, (size_t) 0,
             (const unsigned char *)ks_dev_secret_key, PRIVATE_KEY_SIZE,
             info, MDSIZE + key_ident_size, key, SEALING_KEY_SIZE);
}


int kdf(const unsigned char* salt, size_t salt_len,
        const unsigned char* ikm, size_t ikm_len,
        const unsigned char* info, size_t info_len,
        unsigned char* okm, size_t okm_len)
{
  return hkdf_sha3_512(salt, salt_len, ikm, ikm_len, info, info_len, okm, okm_len);
}