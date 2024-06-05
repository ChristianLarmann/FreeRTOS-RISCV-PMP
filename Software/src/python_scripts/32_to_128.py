#file_in = open("../../../../design_workflow/SIM/SECURE_PLATFORM_RI5CY/code.dat",  'r')
#file_out = open("../../../../design_workflow/SIM/SECURE_PLATFORM_RI5CY/code128.dat",  'w')
import sys

filenamein = sys.argv[1]
filenameout = sys.argv[2]

file_in = open(filenamein, 'r')
file_out = open(filenameout, 'w')


index=0
output=[None]*4

for line in file_in:
	output[index]=line.strip()
	if index == 3:
		file_out.write(''.join(output)+"\n")
	index=(index+1)%4

file_in.close()
file_out.close()
	
