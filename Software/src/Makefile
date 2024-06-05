# Copyright (C) 2020 ETH Zurich
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# SPDX-License-Identifier: MIT
# Author: Robert Balas (balasr@iis.ee.ethz.ch)

# Description: Makefile to build the blinky and other demo applications. Note
# that it supports the usual GNU Make implicit variables e.g. CC, CFLAGS,
# CPPFLAGS etc. Consult the GNU Make manual for move information about these.

# Notes:
# Useful targets
# run make help for an updated overview

# Important Variables
# PROG       Needs to be set to your executables name
# USER_SRCS  Add your source files here (use +=)
# CPPFLAGS   Add your include search paths and macro definitions (use +=)

# Adding common compile flags when using default_flags.mk.
# Compile options (passed to make) e.g. make NDEBUG=yes
# RELEASE   Make release build (default no)
# LIBC      Link against libc (default yes)
# LTO       Enable link time optimization (default no)
# SANITIZE  Enable gcc sanitizer for debugging memory access problems (default no)
# STACKDBG  Enable stack debugging information and warnings.
#           By default 1 KiB but can be changed with MAXSTACKSIZE=your_value


# Added to build in Eclipse:
ROOT = /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/Software/core-v-freertos
FREERTOS_PROJ_ROOT = /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/Software/core-v-freertos

# indicate this repository's root folder
# set some project specific path variables
ifndef FREERTOS_PROJ_ROOT
$(error "FREERTOS_PROJ_ROOT is unset. Run `source env/platform-you-want.sh' \
	from the freertos project's root folder.")
endif



# good defaults for many environment variables
include $(FREERTOS_PROJ_ROOT)/default_flags.mk
$(info ------------------- default_flags finished)


# rtos and pulp sources
include $(FREERTOS_PROJ_ROOT)/metal_srcs.mk
$(info ------------------- metal_srcs finished)

# application name
PROG = blinky

# application/user specific code
USER_SRCS = main.c blinky_demo/main_blinky.c 
# Secure Boot
USER_SRCS += secure_bootloader.c
CRYLIB = ../libs/crypto
CV_CPPFLAGS += -I"$(CRYLIB)"
CV_CPPFLAGS += -I"$(CRYLIB)/ed25519"
CV_CPPFLAGS += -I"$(CRYLIB)/hkdf_sha3_512"
CV_CPPFLAGS += -I"$(CRYLIB)/hmac_sha3"
CV_CPPFLAGS += -I"$(CRYLIB)/sealing_key"
CV_CPPFLAGS += -I"$(CRYLIB)/sha3"
USER_SRCS += $(CRYLIB)/ed25519/fe.c $(CRYLIB)/ed25519/ge.c $(CRYLIB)/ed25519/keypair.c $(CRYLIB)/ed25519/sc.c $(CRYLIB)/ed25519/verify.c $(CRYLIB)/ed25519/sign.c
USER_SRCS += $(CRYLIB)/sha3/sha3.c
USER_SRCS += $(CRYLIB)/hkdf_sha3_512/hkdf_sha3_512.c
USER_SRCS += $(CRYLIB)/hmac_sha3/hmac_sha3.c

# Tasks
CV_CPPFLAGS += -I"blinky_demo/tasks"
USER_SRCS += blinky_demo/tasks/LedTask.c 
USER_SRCS += blinky_demo/tasks/QueueReceiveTask.c 
USER_SRCS += blinky_demo/tasks/QueueSendTask.c 

# user headers
CPPFLAGS += $(addprefix -I$(VPATH)/, ".")
#CFLAGS += -gdwarf-4

# Set additional compiler flags
CV_CPPFLAGS += -DportHANDLE_INTERRUPT=vSystemIrqHandler
CV_CPPFLAGS += -DportHANDLE_EXCEPTION=vSystemIrqHandler
CV_CPPFLAGS += -DmainCREATE_SIMPLE_BLINKY_DEMO_ONLY=1

# Compile

ifeq ($(strip $(PROG)),)
$(error "PROG is invalid or empty. Won't be able to compile.")
endif

# make sure we compile by default
.DEFAULT_GOAL := all

# derived variables for compiling
SRCS += $(USER_SRCS)
OBJS = $(addsuffix .o, $(basename $(SRCS))) # .S and .c replaced
DEPS = $(addsuffix .d, $(basename $(SRCS)))

# other possibly generated files
SU  = $(addsuffix .su, $(basename $(SRCS)))

# Include external file in linking process
# Compiled separately to avoid typedef collisions
LDFLAGS += -L../libs/crypto/sbi -lsbi


## Compile and link executable. Obeys standard GNU variables used by implicit rules.
all: external extract-task-names $(PROG) misc-info generate-dat-files
encrypt: external extract-task-names $(PROG) misc-info generate-dat-files-encrypted



external:
	$(MAKE) -C ../libs/crypto/sbi
	$(info ------------------- external finished)

clean_external:
	$(MAKE) -C ../libs/crypto/sbi clean


TASK_LINKER_FILE := ../core-v-freertos/target/core-v-mcu/tasks.ld
PMP_GRANULARITY := 4 # 2^(PMP_GRANULARITY+2) -> PMP_GRA..= 0 -> 4 bytes
extract-task-names:

	$(eval RAW_OUTPUT := $(shell grep 'ADD_ENCLAVE_TASK_SIGNATURE' ./blinky_demo/tasks/user_tasks.h))
	@echo "RAW_OUTPUT: $(RAW_OUTPUT)"
	$(eval NAMES := $(shell echo "$(RAW_OUTPUT)" | sed 's/ADD_ENCLAVE_TASK_SIGNATURE(/\n/g' | sed 's/)//g' | grep -v '^$$'))
	@echo "Names extracted: $(NAMES)"

	@echo "Generating linker script sections for tasks... Aligning functions to pmp granularity"
	@echo "" > $(TASK_LINKER_FILE)  # This creates a new linker_script.ld or truncates the existing one
	@$(foreach name,$(NAMES),echo "$(name)TaskCode :"  >> $(TASK_LINKER_FILE); \
	  echo "{" >> $(TASK_LINKER_FILE); \
	  echo "	. = ALIGN($(PMP_GRANULARITY));" >> $(TASK_LINKER_FILE); \
	  echo "	_start_$(name)TaskCode = .;" >> $(TASK_LINKER_FILE); \
      echo "    *(.$(name)TaskCode*)" >> $(TASK_LINKER_FILE); \
	  echo "	. = ALIGN($(PMP_GRANULARITY));" >> $(TASK_LINKER_FILE); \
      echo "	_end_$(name)TaskCode = .;" >> $(TASK_LINKER_FILE); \
	  echo "} > BRAM\n" >> $(TASK_LINKER_FILE); \
	  \
	  echo "$(name)TaskData :"  >> $(TASK_LINKER_FILE); \
	  echo "{" >> $(TASK_LINKER_FILE); \
	  echo "	. = ALIGN($(PMP_GRANULARITY));" >> $(TASK_LINKER_FILE); \
      echo "    *(.$(name)TaskData*)" >> $(TASK_LINKER_FILE); \
	  echo "} > BRAM\n" >> $(TASK_LINKER_FILE);)

%.o: %.S
	$(CC) $(CV_ASFLAGS) $(ASFLAGS) $(CV_CPPFLAGS) $(CPPFLAGS) -c -o $@ $<
	$(info -------------------.S finished)

%.o: %.c
	$(info -------------------$@ : $< begin)
	$(CC) $(CV_CFLAGS) $(CFLAGS) $(CV_CPPFLAGS) $(CPPFLAGS) -c -o $@ $<
	$(info -------------------.c finished)

$(PROG): $(OBJS)
	$(CC) $(CV_CFLAGS) $(CFLAGS) $(CV_LDFLAGS) $(LDFLAGS) $(OBJS) -o $@ -L../libs/crypto/sbi -lsbi $(LDLIBS)
	$(info ------------------- OBJS finished)


# objdump, listing and size of binary
misc-info: $(PROG).hex $(PROG).lst $(PROG).siz $(PROG).srec


$(PROG).hex: $(PROG)
	$(OBJCOPY) -O ihex $(PROG)  $@

$(PROG).lst: $(PROG)
	$(OBJDUMP) --source --all-headers --demangle --line-numbers --wide --prefix-addresses --full-contents \
		$(PROG) > $@

$(PROG).srec: $(PROG)
	$(OBJCOPY) -O srec $< $@

$(PROG).siz: $(PROG)
	$(SIZE) --format=berkeley $<


generate-dat-files: 
	# Generate and move .dat files to the Vivado Simulation Folder
	$(shell bash ./srec2dat.sh)
	$(shell cp ./code_and_data.dat ../../E40S_PMP/E40S_PMP.sim/sim_1/behav/xsim)

generate-dat-files-encrypted: 
	# Generate and move .dat files to the Vivado Simulation Folder
	$(shell bash ./srec2dat.sh)
	$(info Encrypting .dat file...)
	$(shell bash ./convert_encrypt.sh)
	$(shell cp ./code_and_data_prince.dat ../../E40S_PMP/E40S_PMP.sim/sim_1/behav/xsim)


.PHONY: clean
## Clean object files
clean : clean_external
	rm -f $(OBJS) $(PROG) $(DEPS) $(SU) \
		$(PROG).hex $(PROG).lst $(PROG).siz memory.map \

