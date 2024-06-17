# tool to convert s19 srec files to slm files

import sys
import math
import os
import binascii



def parse_s19_records(s19_file):
    # Simple Motorola S-record parser. Disregards header records, termination records and count records.
    # purely parsers data records.

    for line in s19_file:
        if len(line) < 4:
            return

        # parse record header
        type = line[:2]
        count = int(line[2:4], 16)

        # record data section
        rest = line[4:4 + count * 2]

        if type == "S1":
            addrlen = 4
        elif type == "S2":
            addrlen = 6
        elif type == "S3":
            addrlen = 8
        else:
            continue

        address = int(rest[0:addrlen], 16)
        data = binascii.unhexlify(rest[addrlen:-2])

        yield address, data

def parse_s19_data(s19_file):
    # Extracts an address -> byte mapping from a Motorola S-record file

    for (address, data) in parse_s19_records(s19_file):
        for i in data:
            yield (address, i)
            address += 1

def main():
    def hex_int(x):
        return int(x, 0)

    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("input", help="The input srec file")
    parser.add_argument("-o", "--output", default="output.dat", help="The output file. Defaults to output.dat")
    parser.add_argument("-b", "--base", type=hex_int, default=0x8000, help="The output ROM base address")
    parser.add_argument("-s", "--size", type=hex_int, default=0x4000, help="The output ROM size")
    parser.add_argument("-f", "--force", action="store_true", help="Ignore addresses outside of the specified ROM size")
    args = parser.parse_args()

    # check alignment for the base and size
    if args.base < 0 or args.base & 15:
        raise ValueError("ROM base address is not 16-byte aligned")
    if args.size < 0 or args.size & 15:
        raise ValueError("ROM size is not 16-byte aligned")

    # create a buffer for the rom
    rom = bytearray(args.size)

    # parse the input file and apply it to the rom buffer
    with open(args.input, "r", encoding="ascii") as infile:
        for (address, value) in parse_s19_data(infile):
            if address < args.base:
                if args.force:
                    continue
                raise ValueError("Encountered an address in the S-record file that was below the ROM base address")

            address -= args.base
            if address >= args.size:
                if args.force:
                    continue
                raise ValueError("Encountered an address in the S-record file that was above the final ROM address")

            rom[address] = value


    # split the rom in 16-byte chunks and emit as binascii 
    with open(args.output, "wb") as outfile:
        i = 0
        while i < len(rom):
            chunk = rom[i : i + 16]
            i += 16

            # endianness swap
            a, b, c, d = chunk[0:4], chunk[4:8], chunk[8:12], chunk[12:16]
            chunk = bytes(reversed(a)) + bytes(reversed(b)) + bytes(reversed(c)) + bytes(reversed(d))

            # to binascii
            chunk = binascii.hexlify(chunk).upper()

            outfile.write(chunk)
            outfile.write(b"\n")

if __name__ == '__main__':
    main()
