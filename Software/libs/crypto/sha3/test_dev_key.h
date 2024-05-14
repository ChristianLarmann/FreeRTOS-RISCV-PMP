/* These are known device TESTING keys, use them for testing on platforms/qemu */

#warning Using TEST device root key. No integrity guarantee.
static const unsigned char _key_sealing_dev_secret_key[] = {
  0x40, 0xa0, 0x99, 0x47, 0x8c, 0xce, 0xfa, 0x3a, 0x06, 0x63, 0xab, 0xc9,
  0x5e, 0x7a, 0x1e, 0xc9, 0x54, 0xb4, 0xf5, 0xf6, 0x45, 0xba, 0xd8, 0x04,
  0xdb, 0x13, 0xe7, 0xd7, 0x82, 0x6c, 0x70, 0x73, 0x57, 0x6a, 0x9a, 0xb6,
  0x21, 0x60, 0xd9, 0xd1, 0xc6, 0xae, 0xdc, 0x29, 0x85, 0x2f, 0xb9, 0x60,
  0xee, 0x51, 0x32, 0x83, 0x5a, 0x16, 0x89, 0xec, 0x06, 0xa8, 0x72, 0x34,
  0x51, 0xaa, 0x0e, 0x4a
};
static const size_t _key_sealing_dev_secret_key_len = 64;

static const unsigned char _key_sealing_dev_public_key[] = {
  0x0f, 0xaa, 0xd4, 0xff, 0x01, 0x17, 0x85, 0x83, 0xba, 0xa5, 0x88, 0x96,
  0x6f, 0x7c, 0x1f, 0xf3, 0x25, 0x64, 0xdd, 0x17, 0xd7, 0xdc, 0x2b, 0x46,
  0xcb, 0x50, 0xa8, 0x4a, 0x69, 0x27, 0x0b, 0x4c
};
static const size_t _key_sealing_dev_public_key_len = 32;


/*
  Keypair generated with:

  unsigned char key_seed = 0;
  ed25519_create_keypair(secure_boot_public_key, secure_boot_private_key, &key_seed);
*/

static const unsigned char _secure_boot_public_key[] = {
  0xea, 0xfb, 0xc6, 0x21, 0x3a, 0x90, 0x48, 0x6c, 0x37, 0x2a, 0x08, 0x02, 0x94, 0x09, 0x57, 0xdc, 
  0x14, 0xca, 0xd3, 0x31, 0x03, 0x44, 0xc5, 0x23, 0xef, 0xac, 0x5d, 0x21, 0xa9, 0x81, 0x9e, 0x91
};
static const size_t _secure_boot_public_key_len = 32;

// static const unsigned char _secure_boot_private_key[] = {
//   0xf8, 0xe7, 0xb8, 0xdc, 0x72, 0xde, 0xf7, 0x80, 0x28, 0x53, 0x2f, 0x37, 0xa1, 0x8d, 0x92, 0x65, 
//   0x33, 0x28, 0xf6, 0xc5, 0x06, 0x3e, 0x48, 0x62, 0x51, 0xa8, 0xa0, 0x2c, 0x0d, 0x96, 0x2c, 0x75
// };
// static const size_t _secure_boot_private_key_len = 32;

static const unsigned char _secure_boot_signature[] = {
  0xc6, 0xee, 0x30, 0x5e, 0x84, 0x92, 0xf4, 0xdc, 0x1a, 0x5d, 0x09, 0xb8, 0x5e, 0xc4, 0xd2, 0xf9, 
  0xc2, 0x26, 0x48, 0x98, 0xd7, 0x14, 0xa7, 0x92, 0xc2, 0xeb, 0x1c, 0xd2, 0x03, 0x24, 0xb3, 0xc2, 
  0x57, 0x5a, 0x61, 0x79, 0x2e, 0x5e, 0x60, 0xba, 0x1e, 0xb6, 0xed, 0x81, 0x86, 0xbe, 0x9a, 0x8f, 
  0xba, 0x98, 0x33, 0x61, 0x88, 0x59, 0xe8, 0x06, 0x66, 0xf0, 0x92, 0x5d, 0xab, 0x00, 0x76, 0x09
};
static const size_t _secure_boot_signature_len = 64;

#ifdef PROVIDE_FREERTOS_HASH
  static const unsigned char _FreeRTOS_Hash[] = {
    0x71, 0x27, 0xaa, 0xb2, 0x11, 0xf8, 0x2a, 0x18, 0xd0, 0x6c, 0xf7, 0x57, 0x8f, 0xf4, 0x9d, 0x50, 
    0x89, 0x01, 0x79, 0x44, 0x13, 0x9a, 0xa6, 0x0d, 0x8b, 0xee, 0x05, 0x78, 0x11, 0xa1, 0x5f, 0xb5, 
    0x5a, 0x53, 0x88, 0x76, 0x00, 0xa3, 0xec, 0xeb, 0xa0, 0x04, 0xde, 0x51, 0x10, 0x51, 0x39, 0xf3, 
    0x25, 0x06, 0xfe, 0x5b, 0x53, 0xe1, 0x91, 0x3b, 0xfa, 0x6b, 0x32, 0xe7, 0x16, 0xfe, 0x97, 0xda
  };
  static const size_t _FreeRTOS_Hash_len = 64;

  memcpy(&FreeRTOS_kernel_hash, _FreeRTOS_Hash, _FreeRTOS_Hash_len);
#endif