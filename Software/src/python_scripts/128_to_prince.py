#Python 2
from prince import Prince
import sys

filenamein = sys.argv[1]
filenameout = sys.argv[2]

file_in = open(filenamein, 'r')
file_out = open(filenameout, 'w')

#file_in = open("./code128.dat",  'r')
#file_out = open("./code128_prince.dat",  'w')


cipher = Prince()
key = "000102030405060708090a0b0c0d0e0f".decode('hex')


counter = 0
for line in file_in:
	data = line.strip()
	a,b = data[:len(data)/2], data[(len(data)/2):]
	output_a = cipher.encrypt(a.decode('hex'), key).encode('hex')
	output_b = cipher.encrypt(b.decode('hex'), key).encode('hex')
	file_out.write(output_a + output_b + "\n")
	counter += 1
	if(counter % 1000 == 0):
		print(str(counter) + " lines done")

	
file_in.close()
file_out.close()