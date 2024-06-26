/*
* Copyright 2019 ETH Zürich and University of Bologna
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
* SPDX-License-Identifier: Apache-2.0
* Author: Robert Balas (balasr@iis.ee.ethz.ch)
*/

.extern freertos_risc_v_trap_handler
#ifdef PULP_FREERTOS_VECTORED_CONTEXT_SWITCH
.extern	freertos_risc_v_ctxt_handler
#endif
#ifdef __HACK_FIRMWARE_OPT1 /* TODO: properly do this with weak symbols */
.extern TIMER1_IRQ_handler
#endif


.section .vectors, "ax"
.option norvc
vector_table:
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler
	j freertos_risc_v_trap_handler

.section .text.vecs
/* exception handling */
__no_irq_handler:
	la a0, no_exception_handler_msg
	jal ra, puts
	j __no_irq_handler

sw_irq_handler:
	csrr t0, mcause
	slli t0, t0, 1  /* shift off the high bit */
	srli t0, t0, 1
	li t1, 2
	beq t0, t1, handle_illegal_insn
	li t1, 11
	beq t0, t1, handle_ecall
	li t1, 3
	beq t0, t1, handle_ebreak
	j handle_unknown

handle_ecall:
	la a0, ecall_msg
	jal ra, puts
	j end_handler

handle_ebreak:
	la a0, ebreak_msg
	jal ra, puts
	j end_handler

handle_illegal_insn:
	la a0, illegal_insn_msg
	jal ra, puts
	j end_handler

handle_unknown:
	la a0, unknown_msg
	jal ra, puts
	j end_handler

end_handler:
	csrr a0, mepc
	addi a0, a0, 4
	csrw mepc, a0
	mret


.section .rodata
illegal_insn_msg:
	.string "illegal instruction exception handler entered\n"
ecall_msg:
	.string "ecall exception handler entered\n"
ebreak_msg:
	.string "ebreak exception handler entered\n"
unknown_msg:
	.string "unknown exception handler entered\n"
no_exception_handler_msg:
	.string "no exception handler installed\n"
