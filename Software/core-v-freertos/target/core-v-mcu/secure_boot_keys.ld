/* ## manufacturer_keys : */

/* 32 Bytes : manufacturer public key */
PROVIDE( sanctum_m_public_key = . );
. += 0x20;

/* 32 Bytes : device public key */
PROVIDE( sanctum_dev_public_key = . );
. += 0x20;

/* 64 Bytes : device secret key */
PROVIDE( sanctum_dev_secret_key = . );
. += 0x40;

/* ## security_monitor_keys : */

/* 64 Bytes : hash of kernel */
PROVIDE( FreeRTOS_kernel_hash = . );
. += 0x40;

/* 178 Bytes : secure boot public key */
PROVIDE( secure_boot_public_key = . );
. += 0xC0;

/* 64 Bytes : security monitor secret key */
PROVIDE( sanctum_sm_secret_key = . );
. += 0x40;

/* 70 Bytes : secure boot signature */
PROVIDE( secure_boot_signature = . );
. += 0x70;

/* 70 Bytes : secure boot signature */
PROVIDE( secure_boot_private_key = . );
. += 0x70;