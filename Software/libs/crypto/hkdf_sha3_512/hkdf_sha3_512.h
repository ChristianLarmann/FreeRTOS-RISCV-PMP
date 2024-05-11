/*
 *  Copyright (C) 2020 Fraunhofer AISEC
 *  Authors: Benedikt Kopf <benedikt.kopf@aisec.fraunhofer.de>
 *           Lukas Auer <lukas.auer@aisec.fraunhofer.de>
 *           Mathias Morbitzer <mathias.morbitzer@aisec.fraunhofer.de>
 *
 *  hkdf_sha3_512.h
 *
 *  All Rights Reserved. See LICENSE for license details.
 */

#ifndef HDKF_SHA3_512_H
#define HDKF_SHA3_512_H

#include "stddef.h"

#define MDSIZE  64

#define SIGNATURE_SIZE  64
#define PRIVATE_KEY_SIZE  64 // includes public key
#define PUBLIC_KEY_SIZE 32


extern void *sbi_memset(void *s, int c, size_t count);
extern void *sbi_memcpy(void *dest, const void *src, size_t count);

int hkdf_sha3_512(const unsigned char *salt, size_t salt_len,
                  const unsigned char *in_key, size_t in_key_len,
                  const unsigned char *info, size_t info_len,
                  unsigned char *out_key, size_t out_key_length);
void hkdf_extract(const unsigned char *salt, size_t salt_len,
                  const unsigned char *in_key, size_t in_key_len,
                  unsigned char *prk);
int hkdf_expand(const unsigned char *prk, size_t prk_len,
                const unsigned char *info, size_t info_len,
                unsigned char *out_key, size_t out_key_len);

#endif /* HDKF_SHA3_512_H */