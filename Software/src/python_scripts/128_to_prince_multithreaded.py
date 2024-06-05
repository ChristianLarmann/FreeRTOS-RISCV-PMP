#Python 2
from prince import Prince
import sys
from multiprocessing import Process, Manager

filenamein = sys.argv[1]
filenameout = sys.argv[2]

file_in = open(filenamein, 'r')
file_out = open(filenameout, 'w')



# Specify number of processes
N_THREADS = 8

# Read-in file and get line count
plaintext_lines = file_in.readlines()
N_LINES = len(plaintext_lines)


cipher = Prince()
key = "000102030405060708090a0b0c0d0e0f".decode('hex')


def encrypt_part(offset, n_threads):
	i = offset
	local_encrypts = []

	while i < N_LINES:
		data = plaintext_lines[i].strip()
		a,b = data[:len(data)/2], data[(len(data)/2):]
		output_a = cipher.encrypt(a.decode('hex'), key).encode('hex')
		output_b = cipher.encrypt(b.decode('hex'), key).encode('hex')
		local_encrypts.append(output_a + output_b)

		i += n_threads
		if(i % 1000 == 0):
		    print(str(i) + " lines done")
		
	encrypted_thread_part[offset] = local_encrypts

print("Begin encryption...")

# Set up multi-processing data structures
manager = Manager()
encrypted_thread_part = manager.list([None] * N_THREADS)
processes = [None] * N_THREADS

# Initialise processes
for t in range(N_THREADS):
    processes[t] = Process(target=encrypt_part, args=(t, N_THREADS))

# Run processes
for t in range(N_THREADS):
	processes[t].start()

# Join processes
for t in range(N_THREADS):
	processes[t].join()


print("Finished encryption of " + str(N_LINES) + " lines.")

# Write encrypted data of all threads together into one file
for line_index in range(N_LINES):
    i_process = line_index % N_THREADS
    line_number = line_index / N_THREADS 
    enc_line = encrypted_thread_part[i_process][line_number] 
    file_out.write(enc_line + "\n")

file_in.close()
file_out.close()
