#!/usr/bin/python
# -*- coding: utf-8 -*-

from bitstring import BitArray

class Prince:
    RC = (BitArray(hex = '0x0000000000000000'),
          BitArray(hex = '0x13198a2e03707344'),
          BitArray(hex = '0xa4093822299f31d0'),
          BitArray(hex = '0x082efa98ec4e6c89'),
          BitArray(hex = '0x452821e638d01377'),
          BitArray(hex = '0xbe5466cf34e90c6c'),
          BitArray(hex = '0x7ef84f78fd955cb1'),
          BitArray(hex = '0x85840851f1ac43aa'),
          BitArray(hex = '0xc882d32f25323c54'),
          BitArray(hex = '0x64a51195e0e3610d'),
          BitArray(hex = '0xd3b5a399ca0c2399'),
          BitArray(hex = '0xc0ac29b7c97c50dd'))

    S = ('0xb', '0xf', '0x3', '0x2', '0xa', '0xc', '0x9', '0x1', 
         '0x6', '0x7', '0x8', '0x0', '0xe', '0x5', '0xd', '0x4')

    Sinv = ('0xb', '0x7', '0x3', '0x2', '0xf', '0xd', '0x8', '0x9', 
            '0xa', '0x6', '0x4', '0x0', '0x5', '0xe', '0xc', '0x1')


    def sbox(self, data, box):
        ret = BitArray()
        for nibble in data.cut(4):
            ret.append(box[int(nibble.hex, 16)])
        return ret


    def m0(self, data):
        ret = BitArray(length = 16)
        ret[ 0] = data[4] ^ data[ 8] ^ data[12]
        ret[ 1] = data[1] ^ data[ 9] ^ data[13]
        ret[ 2] = data[2] ^ data[ 6] ^ data[14]
        ret[ 3] = data[3] ^ data[ 7] ^ data[11]
        ret[ 4] = data[0] ^ data[ 4] ^ data[ 8]
        ret[ 5] = data[5] ^ data[ 9] ^ data[13]
        ret[ 6] = data[2] ^ data[10] ^ data[14]
        ret[ 7] = data[3] ^ data[ 7] ^ data[15]
        ret[ 8] = data[0] ^ data[ 4] ^ data[12]
        ret[ 9] = data[1] ^ data[ 5] ^ data[ 9]
        ret[10] = data[6] ^ data[10] ^ data[14]
        ret[11] = data[3] ^ data[11] ^ data[15]
        ret[12] = data[0] ^ data[ 8] ^ data[12]
        ret[13] = data[1] ^ data[ 5] ^ data[13]
        ret[14] = data[2] ^ data[ 6] ^ data[10]
        ret[15] = data[7] ^ data[11] ^ data[15]
        return ret


    def m1(self, data):
        ret = BitArray(length = 16)
        ret[ 0] = data[0] ^ data[ 4] ^ data[ 8]
        ret[ 1] = data[5] ^ data[ 9] ^ data[13]
        ret[ 2] = data[2] ^ data[10] ^ data[14]
        ret[ 3] = data[3] ^ data[ 7] ^ data[15]
        ret[ 4] = data[0] ^ data[ 4] ^ data[12]
        ret[ 5] = data[1] ^ data[ 5] ^ data[ 9]
        ret[ 6] = data[6] ^ data[10] ^ data[14]
        ret[ 7] = data[3] ^ data[11] ^ data[15]
        ret[ 8] = data[0] ^ data[ 8] ^ data[12]
        ret[ 9] = data[1] ^ data[ 5] ^ data[13]
        ret[10] = data[2] ^ data[ 6] ^ data[10]
        ret[11] = data[7] ^ data[11] ^ data[15]
        ret[12] = data[4] ^ data[ 8] ^ data[12]
        ret[13] = data[1] ^ data[ 9] ^ data[13]
        ret[14] = data[2] ^ data[ 6] ^ data[14]
        ret[15] = data[3] ^ data[ 7] ^ data[11]
        return ret


    def shiftrows(self, data, inverse):
        ret = BitArray(length = 64)
        idx = 0
        for nibble in data.cut(4):
            ret[idx * 4:(idx + 1) * 4] = nibble
            if not inverse:
                idx = (idx + 13) % 16
            else:
                idx = (idx +  5) % 16
        return ret


    def mprime(self, data):
        ret = BitArray(length = 64)
        ret[ 0:16] = self.m0(data[ 0:16])
        ret[16:32] = self.m1(data[16:32])
        ret[32:48] = self.m1(data[32:48])
        ret[48:64] = self.m0(data[48:64])
        return ret


    def firstrounds(self, data, key):
        for idx in (1,2,3,4,5):
            data = self.sbox(data, Prince.S)
            data = self.mprime(data)
            data = self.shiftrows(data, inverse = False)
            data ^= Prince.RC[idx] ^ key
        return data


    def lastrounds(self, data, key):
        for idx in (6,7,8,9,10):
            data ^= key ^ Prince.RC[idx]
            data = self.shiftrows(data, inverse = True)
            data = self.mprime(data)
            data = self.sbox(data, Prince.Sinv)
        return data


    def princecore(self, data, key):
        data ^= key ^ Prince.RC[0]
        data = self.firstrounds(data, key)

        data = self.sbox(data, Prince.S)
        data = self.mprime(data)
        data = self.sbox(data, Prince.Sinv)

        data = self.lastrounds(data, key)
        return data ^ key ^ Prince.RC[11]


    def outer(self, data, key, decrypt = False):
        k0 = key[0:64]
        k0prime = k0.copy()
        k0prime.ror(1)
        k0prime ^= k0 >> 63
        if decrypt:
            tmp = k0
            k0 = k0prime
            k0prime = tmp
        k1 = key[64:128]

        data = k0 ^ data                                # pre-whitening
        data = self.princecore(data, k1)
        return (data ^ k0prime).hex                     # post-whitening


    def encrypt(self, plaintext, key):
        bitkey = BitArray('0x' + key.encode('hex'))
        bittext = BitArray('0x' + plaintext.encode('hex'))
        return self.outer(bittext, bitkey).decode('hex')


    def decrypt(self, ciphertext, key):
        bitkey = BitArray('0x' + key.encode('hex'))
        bitkey ^= "0x0000000000000000c0ac29b7c97c50dd"  # alpha padded with zero
        bittext = BitArray('0x' + ciphertext.encode('hex'))
        return self.outer(bittext, bitkey, True).decode('hex')
