#define ED25519_NO_SEED 1
#include "sha3.h"
/* Adopted from https://github.com/orlp/ed25519
  provides:
  - void ed25519_create_keypair(t_pubkey *public_key, t_privkey *private_key, t_seed *seed);
  - void ed25519_sign(t_signature *signature,
                      const unsigned uint8_t *message,
                      size_t message_len,
                      t_pubkey *public_key,
                      t_privkey *private_key);
*/

#include "ed25519.h"
/* adopted from
  provides:
  - int sha3_init(sha3_context * md);
  - int sha3_update(sha3_context * md, const unsigned char *in, size_t inlen);
  - int sha3_final(sha3_context * md, unsigned char *out);
  types: sha3_context
*/

#define PROVIDE_FREERTOS_HASH
#define SKIP_SECURE_BOOT_VERIFICATION
// #define SMALL_HASH
// #define REUSE_FREERTOS_HASH_TO_SPEED_UP


extern uintptr_t __small_secure_boot_start_address__;
extern uintptr_t __small_secure_boot_end_address__;
// extern void* __boot_address_;

extern byte FreeRTOS_kernel_hash[64];
extern byte secure_boot_public_key[];
extern byte secure_boot_signature[];

extern byte ks_dev_secret_key[64];
extern byte ks_dev_public_key[];
extern byte ks_signature[];

// SK_SM and PK_SM
extern byte ks_freertos_secret_key[];
extern byte ks_freertos_public_key[];
extern byte ks_freertos_signature[];

// Only for generation of signature
// extern byte secure_boot_private_key[32];

__attribute__((section(".secure_bootloader")))
void secure_bootloader() {

  // Hash over kernel (or other)
  #ifndef PROVIDE_FREERTOS_HASH
  sha3_ctx_t hash_ctx;
  sha3_init(&hash_ctx, 64);
  size_t code_size = (size_t) ((void*)&__small_secure_boot_end_address__ - (void*)&__small_secure_boot_start_address__);
  sha3_update(&hash_ctx, (void*)&__small_secure_boot_start_address__, 1); // TODO: Change back to code_size; 1 is only to make the simulation faster
  sha3_final(FreeRTOS_kernel_hash, &hash_ctx);
  #endif

  // Load public key and signature
  #include "use_test_keys.h"

  // Check signature
  #ifndef SKIP_SECURE_BOOT_VERIFICATION
  int secure_boot_success = ed25519_verify(secure_boot_signature, 
    FreeRTOS_kernel_hash, 64, secure_boot_public_key);

  if (!secure_boot_success)
  {
    while (1) {}
  }
  #endif
  
  return;
}

extern void *sbi_memset(void *s, int c, size_t count);
extern void *sbi_memcpy(void *dest, const void *src, size_t count);

void derive_secret_key_freertos() {
  
  sha3_ctx_t hash_ctx;
  sha3_init(&hash_ctx, 64);

  // This is a shortcut and does gen_keypair(H_SM) instead of gen_keypair(SK_D || H_SM)
  #ifdef REUSE_FREERTOS_HASH_TO_SPEED_UP
  ed25519_create_keypair(ks_freertos_public_key, ks_freertos_secret_key, FreeRTOS_kernel_hash);

  #else
  #ifdef SMALL_HASH
  sha3_update(&hash_ctx, ks_dev_secret_key, 1);
  sha3_update(&hash_ctx, FreeRTOS_kernel_hash, 1);
  #else
  // Combine SK_D and H_SM (FreeRTOS_kernel_hash) via a hash
  // sm_key_seed <-- H(SK_D, H_SM), truncate to 32B
  sha3_update(&hash_ctx, ks_dev_secret_key, sizeof(ks_dev_secret_key));
  sha3_update(&hash_ctx, FreeRTOS_kernel_hash, sizeof(FreeRTOS_kernel_hash));
  #endif /* else SMALL HASH */
  byte seedHash[128];
  sha3_final(seedHash, &hash_ctx);

  // Derive {SK_D, PK_D} (device keys) from the first 32 B of the hash 
  //(NIST endorses SHA512 truncation as safe)
  ed25519_create_keypair(ks_freertos_public_key, ks_freertos_secret_key, seedHash);
  #endif /* REUSE_...HASH... */


  // Endorse the FreeRTOS kernel
  sbi_memcpy(seedHash, FreeRTOS_kernel_hash, 64);
  sbi_memcpy(seedHash + 64, ks_freertos_public_key, 32);
  // Sign (H_SM, PK_SM) with SK_D
  ed25519_sign(ks_freertos_signature, seedHash, 64 + 32, ks_dev_public_key, ks_dev_secret_key);

  // Clean up
  // Erase SK_D
  sbi_memset((void*)ks_dev_secret_key, 0, sizeof(*ks_dev_secret_key));

  // caller will clean core state and memory (including the stack), and boot. TODO: CL
  return;
}