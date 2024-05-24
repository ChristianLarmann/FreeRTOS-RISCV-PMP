/* ## Hash used for both secure boot and key sealing */


. += 0x40;

/* 64 Bytes : hash of kernel */
PROVIDE( FreeRTOS_kernel_hash = . );
. += 0x40;

/* ## Key sealing */

/* 32 Bytes : device public key */
PROVIDE( ks_dev_public_key = . );
. += 0x20;

/* 64 Bytes : device secret key */
PROVIDE( ks_dev_secret_key = . );
. += 0x40;

/* 64 Bytes : device signature */
PROVIDE( ks_signature = . );
. += 0x40;

/* 64 Bytes : freertos secret key */
PROVIDE( ks_freertos_secret_key = . );
. += 0x40;

/* 64 Bytes : freertos kernel signature */
PROVIDE( ks_freertos_signature = . );
. += 0x40;

/* 64 Bytes : freertos public key */
PROVIDE( ks_freertos_public_key = . );
. += 0x40;

/* ## Secure boot */

/* 178 Bytes : secure boot public key */
PROVIDE( secure_boot_public_key = . );
. += 0xC0;

/* 70 Bytes : secure boot signature */
PROVIDE( secure_boot_signature = . );
. += 0x70;

/* 70 Bytes : secure boot signature */
PROVIDE( secure_boot_private_key = . );
. += 0x70;