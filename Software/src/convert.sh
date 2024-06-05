#!/bin/sh

# #Add hashes to 128 bit files
# /usr/bin/python3 python_scripts/128_to_siphash_D.py ./code_and_data.dat ./code_and_data_siphash_D.dat
# /usr/bin/python3 python_scripts/128_to_siphash_S.py ./code_and_data.dat ./code_and_data_siphash_S.dat

#Encrypt 128 bit files (Prince function requires python 2)
/usr/bin/python2 python_scripts/128_to_prince_multithreaded.py ./code_and_data.dat ./code_and_data_prince.dat
# /usr/bin/python2 python_scripts/128_to_prince.py ./code_and_data.dat ./code_and_data_prince.dat

#Add hashes to encrypted 128 bit files
# /usr/bin/python3 python_scripts/128_to_siphash_D.py ./code_and_data_prince.dat ./code_and_data_prince_siphash_D.dat
# /usr/bin/python3 python_scripts/128_to_siphash_S.py ./code_and_data_prince.dat ./code_and_data_prince_siphash_S.dat

