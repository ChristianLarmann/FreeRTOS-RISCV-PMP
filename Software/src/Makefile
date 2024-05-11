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
FREERTOS_CONFIG_FAMILY = core-v-mcu

# indicate this repository's root folder
# set some project specific path variables
ifndef FREERTOS_PROJ_ROOT
$(error "FREERTOS_PROJ_ROOT is unset. Run `source env/platform-you-want.sh' \
	from the freertos project's root folder.")
endif

# good defaults for many environment variables
include $(FREERTOS_PROJ_ROOT)/default_flags.mk

# rtos and pulp sources
include $(FREERTOS_PROJ_ROOT)/metal_srcs.mk

# application name
PROG = blinky

# application/user specific code
USER_SRCS = main.c blinky_demo/main_blinky.c 
# Secure Boot
USER_SRCS += secure_bootloader.c
CRYLIB = ../libs/crypto
CV_CPPFLAGS += -I"$(CRYLIB)/sealing_key"
CV_CPPFLAGS += -I"$(CRYLIB)/ed25519"
CV_CPPFLAGS += -I"$(CRYLIB)/sha3"
CV_CPPFLAGS += -I"$(CRYLIB)/hkdf_sha3_512"
CV_CPPFLAGS += -I"$(CRYLIB)/hmac_sha3"
USER_SRCS += $(CRYLIB)/ed25519/fe.c $(CRYLIB)/ed25519/ge.c $(CRYLIB)/ed25519/keypair.c $(CRYLIB)/ed25519/sc.c $(CRYLIB)/ed25519/verify.c $(CRYLIB)/ed25519/sign.c
USER_SRCS += $(CRYLIB)/sha3/sha3.c
USER_SRCS += $(CRYLIB)/sealing_key/sealing_key.c
USER_SRCS += $(CRYLIB)/hkdf_sha3_512/hkdf_sha3_512.c
USER_SRCS += $(CRYLIB)/hmac_sha3/hmac_sha3.c

# include $(CRYLIB)/sbi/Makefile

# user headers
CPPFLAGS += $(addprefix -I$(VPATH)/, ".")
#CFLAGS += -gdwarf-4

# point to irq handler
CPPFLAGS += -DportHANDLE_INTERRUPT=vSystemIrqHandler
CPPFLAGS += -DportHANDLE_EXCEPTION=vSystemIrqHandler
CPPFLAGS += -DmainCREATE_SIMPLE_BLINKY_DEMO_ONLY=1

# compile, simulation and analysis targets
include $(FREERTOS_PROJ_ROOT)/default_targets.mk

# Shorten the filenames in the .lst file
$(shell sed -i 's/home\/christian\/Documents\/CESE\/Thesis\/FreeRTOS-RISCV-PMP\/Software/PROJ_ROOT/g' blinky.lst)
# Generate and move .dat files to the Vivado Simulation Folder
$(shell bash ./srec2dat.sh)
$(shell cp ./code_and_data.dat ../../E40S_PMP/E40S_PMP.sim/sim_1/behav/xsim)

