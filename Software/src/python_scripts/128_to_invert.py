file_in = open("../../../../design_workflow/SIM/SECURE_PLATFORM_RI5CY/code128.dat",  'r')
file_out = open("../../../../design_workflow/SIM/SECURE_PLATFORM_RI5CY/code128_inv.dat",  'w')

for line in file_in:
	output = hex(int(line,16) ^ int("ffffffffffffffffffffffffffffffff",16)).strip('0x')
	if len(output) != 32:
		output=("0"+output)
	file_out.write(output + "\n")
	
	
file_in.close()
file_out.close()
