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

// #define PROVIDE_FREERTOS_HASH

typedef unsigned char byte;

extern uintptr_t __small_secure_boot_start_address__;
extern uintptr_t __small_secure_boot_end_address__;
// extern void* __boot_address_;

extern byte FreeRTOS_kernel_hash[64];
extern byte secure_boot_public_key[];
extern byte secure_boot_signature[];

extern byte ks_dev_secret_key[64];
extern byte ks_dev_public_key[];
extern byte ks_signature[];

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
  int secure_boot_success = ed25519_verify(secure_boot_signature, FreeRTOS_kernel_hash, 64, secure_boot_public_key);

  if (secure_boot_success)
  {
    while (1) {}
  }
  
  return;
}


void derive_secret_key_freertos() {
  
  byte scratchpad[128];
  sha3_ctx_t hash_ctx;

  // Combine SK_D and H_SM (FreeRTOS_kernel_hash) via a hash
  // sm_key_seed <-- H(SK_D, H_SM), truncate to 32B
  sha3_init(&hash_ctx, 64);
  sha3_update(&hash_ctx, ks_dev_secret_key, sizeof(ks_dev_secret_key));
  sha3_update(&hash_ctx, FreeRTOS_kernel_hash, sizeof(FreeRTOS_kernel_hash));
  sha3_final(scratchpad, &hash_ctx);
  // Derive {SK_D, PK_D} (device keys) from the first 32 B of the hash (NIST endorses SHA512 truncation as safe)
  ed25519_create_keypair(ks_dev_public_key, ks_dev_secret_key, scratchpad);

  // Endorse the SM
  memcpy(scratchpad, FreeRTOS_kernel_hash, 64);
  memcpy(scratchpad + 64, ks_dev_public_key, 32);
  // Sign (H_SM, PK_SM) with SK_D
  ed25519_sign(ks_signature, scratchpad, 64 + 32, ks_dev_public_key, ks_dev_secret_key);

  // Clean up
  // Erase SK_D
  memset(ks_dev_secret_key, 0, sizeof(ks_dev_secret_key));

  // caller will clean core state and memory (including the stack), and boot. TODO: CL
  return;
}