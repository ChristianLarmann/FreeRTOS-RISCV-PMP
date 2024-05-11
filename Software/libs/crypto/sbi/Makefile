# External Makefile
AR := ar

# List of source files
SOURCES := $(wildcard *.c)
OBJECTS := $(SOURCES:.c=.o)

# Output
LIBRARY := libsbi.a

.PHONY: all clean

all: $(LIBRARY)

$(LIBRARY): $(OBJECTS)
	$(AR) rcs $@ $^

%.o: %.c
	$(CC) $(CV_CFLAGS) $(CFLAGS) $(CV_CPPFLAGS) $(CPPFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJECTS) $(LIBRARY)