/*
 * Copyright 2020 ETH Zurich
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0 OR BSD-2-Clause
 */

/* Copyright (c) 2017  SiFive Inc. All rights reserved.
 * Copyright (c) 2019  ETH Zürich and University of Bologna
 * This copyrighted material is made available to anyone wishing to use,
 * modify, copy, or redistribute it subject to the terms and conditions
 * of the FreeBSD License.   This program is distributed in the hope that
 * it will be useful, but WITHOUT ANY WARRANTY expressed or implied,
 * including the implied warranties of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE.  A copy of this license is available at
 * http://www.opensource.org/licenses.
 */

/* entry point */
.section .text.start
.global _start
.type _start, @function

_start:


/* initialize global pointer */
.option push
.option norelax
1:	auipc gp, %pcrel_hi(__global_pointer$) // gp = x3, __global_p... at 1c010170
	addi  gp, gp, %pcrel_lo(1b)  // 1b: first occurence fo 1 backwards
.option pop


#if defined(ARCHI_HAS_CLUSTER)
	/* TODO */
#endif
/* initialize stack pointer */
	la sp, __stack_top

/* set vector table address */
	la a0, __vector_start
	csrw mtvec, a0

/* clear the bss segment */
	la t0, __bss_start
        la t1, __bss_end
1:
	sw zero,0(t0)
	addi t0, t0, 4
	bltu t0, t1, 1b

/* new-style constructors and destructors */
#if defined(__PULP_USE_LIBC)
	la a0, __libc_fini_array
	call atexit
	call __libc_init_array
#endif

#if defined(__SECURE_BOOT_ACTIVATED)
	// Perform secure boot
	call secure_bootloader

	# Write anything to 0x1A10... to block LSU accesses to the Instruction-memory
    # lui a0, 0x1A100
    # addi a0, a0, 0
    # sw zero, 0(a0) 

	call derive_secret_key_freertos
#endif


/* call main */
	lw a0, 0(sp)                    /* a0 = argc */
	addi a1, sp, __SIZEOF_POINTER__ /* a1 = argv */
	li a2, 0                        /* a2 = envp = NULL */
	call main
	tail exit

.size  _start, .-_start

.global _init
.type   _init, @function
.global _fini
.type   _fini, @function
_init:
_fini:
 /* These don't have to do anything since we use init_array/fini_array. Prevent
    missing symbol error */
	ret
.size  _init, .-_init
.size _fini, .-_fini
