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

typedef unsigned char byte;

// Sanctum header fields in DRAM
extern void* __secure_boot_start_address__;
extern void* __secure_boot_end_address__;
extern void* __boot_address_;

extern byte sanctum_dev_public_key[32];
extern byte sanctum_dev_secret_key[64];
unsigned int sanctum_sm_size = 0x1ff000;
extern byte sanctum_sm_hash[64];
extern byte sanctum_sm_public_key[32];
extern byte sanctum_sm_secret_key[64];
extern byte sanctum_sm_signature[64];
#define DRAM_BASE 0x80000000

/* Update this to generate valid entropy for target platform*/
inline byte random_byte(unsigned int i) {
#warning Bootloader does not have entropy source, keys are for TESTING ONLY
  return 0xac + (0xdd ^ i);
}


__attribute__((section(".secure_bootloader")))
void secure_bootloader() {
  byte scratchpad[128];
  sha3_ctx_t hash_ctx;

  // TODO: on real device, copy boot image from memory. In simulator, HTIF writes boot image
  // ... SD card to beginning of memory.
  // sd_init();
  // sd_read_from_start(DRAM, 1024);

  /* Gathering high quality entropy during boot on embedded devices is
   * a hard problem. Platforms taking security seriously must provide
   * a high quality entropy source available in hardware. Platforms
   * that do not provide such a source must gather their own
   * entropy. See the Keystone documentation for further
   * discussion. For testing purposes, we have no entropy generation.
  */

  // Create a random seed for keys and nonces from TRNG
  for (unsigned int i=0; i<32; i++) {
    scratchpad[i] = random_byte(i);
  }

  /* On a real device, the platform must provide a secure root device
     keystore. For testing purposes we hardcode a known private/public
     keypair */
  // TEST Device key
  #include "use_test_keys.h"
  
  // Derive {SK_D, PK_D} (device keys) from a 32 B random seed
  //ed25519_create_keypair(sanctum_dev_public_key, sanctum_dev_secret_key, scratchpad);

  // Measure SM
  sha3_init(&hash_ctx, 64);
  size_t code_size = __secure_boot_end_address__ - __secure_boot_start_address__;
  sha3_update(&hash_ctx, __secure_boot_start_address__, sanctum_sm_size);
  sha3_final(sanctum_sm_hash, &hash_ctx);

  // Endorse the SM
  memcpy(scratchpad, sanctum_sm_hash, 64);
  memcpy(scratchpad + 64, sanctum_sm_public_key, 32);
  // Sign (H_SM, PK_SM) with SK_D
  ed25519_sign(sanctum_sm_signature, scratchpad, 64 + 32, sanctum_dev_public_key, sanctum_dev_secret_key);

  // Clean up
  // Erase SK_D
  memset((void*)sanctum_dev_secret_key, 0, sizeof(*sanctum_dev_secret_key));

  // caller will clean core state and memory (including the stack), and boot.
  return;
}