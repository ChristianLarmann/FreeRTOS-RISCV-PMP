#Python 3
import sys
import siphash
import codecs
from shutil import copyfile

filenamein = sys.argv[1]
filenameout = sys.argv[2]

copyfile(filenamein, filenameout)

file_in = open(filenamein, 'r')
file_out = open(filenameout, 'a')

key = bytes.fromhex("000102030405060708090a0b0c0d0e0f")





for line in file_in:
	data = line.strip()
	data = bytes.fromhex(data)
	data_hash = siphash.SipHash_2_4(key, data).hash()
	data_hash = format(data_hash, 'x')

	for i in range (len(data_hash), 16):
		if len(data_hash) != 16:
			data_hash = ("0" + data_hash)

	file_out.write(data_hash + "0000000000000000" + "\n")


file_in.close()
file_out.close()
