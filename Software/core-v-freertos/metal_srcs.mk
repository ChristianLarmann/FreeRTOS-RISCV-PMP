# Copyright 2020 ETH Zurich
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0
# Author: Robert Balas (balasr@iis.ee.ethz.ch)

# expects RTOS_ROOT to point to the FreeRTOS distribution root
# and COMMON_ROOT to the driver folder

# general OS
dir := $(FREERTOS_PROJ_ROOT)/kernel

SRCS += $(dir)/event_groups.c
SRCS += $(dir)/list.c
SRCS += $(dir)/queue.c
SRCS += $(dir)/stream_buffer.c
SRCS += $(dir)/tasks.c
SRCS += $(dir)/timers.c
SRCS += $(FREERTOS_PROJ_ROOT)/../libs/crypto/sealing_key/sealing_key.c
# RISC-V port files
SRCS += $(dir)/portable/GCC/RISC-V/port.c
SRCS += $(dir)/portable/GCC/RISC-V/portASM.S
# memory managment
SRCS += $(dir)/portable/MemMang/heap_1.c
# MPU wrappers
SRCS += $(dir)/portable/Common/mpu_wrappers.c
SRCS += $(dir)/portable/Common/mpu_wrappers_v2.c
SRCS += $(dir)/portable/GCC/RISC-V/mpu_wrappers_v2_asm.c
SRCS += $(dir)/portable/GCC/RISC-V/pmp.c
# freertos generic headers
CV_CPPFLAGS += -I"$(dir)/include"
CV_CPPFLAGS += -I"$(dir)/portable/GCC/RISC-V"
# freertos header for assembler
CV_CPPFLAGS += -I"$(dir)/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions"

# arch (RISC-V) specific
dir := $(FREERTOS_PROJ_ROOT)/target/arch
include $(dir)/makefile.mk

# c runtime and init
ifneq ($(LIBC),no)
dir := $(FREERTOS_PROJ_ROOT)/libc
include $(dir)/makefile.mk
endif

# runtime
dir := $(FREERTOS_PROJ_ROOT)/target/core-v-mcu
include $(dir)/makefile_metal.mk

# drivers
dir := $(FREERTOS_PROJ_ROOT)/drivers
include $(dir)/makefile.mk
