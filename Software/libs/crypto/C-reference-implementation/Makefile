# Define the compiler
CC=gcc

# Define any compile-time flags
CFLAGS=-Wall -g

# Define any directories containing header files other than /usr/include	
INCLUDES=-I../../ed25519 -I../../sha3

# Define library paths in addition to /usr/lib
LFLAGS=

# Define any libraries to link into executable:
LIBS=

# Define the C source files
SRCS=main.c ../../ed25519/sign.c ../../ed25519/fe.c ../../ed25519/ge.c ../../ed25519/sc.c ../../ed25519/verify.c ../../sha3/sha3.c ../../ed25519/keypair.c

# Define the C object files
OBJS=$(SRCS:.c=.o)

# Define the executable file 
MAIN=myprogram

.PHONY: clean

all:    $(MAIN)
	@echo  Program has been compiled!

$(MAIN): $(OBJS) 
	$(CC) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(OBJS) $(LFLAGS) $(LIBS)

.c.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c $<  -o $@

clean:
	$(RM) *.o *~ $(MAIN)
