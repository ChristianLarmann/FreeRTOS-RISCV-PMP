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
 * SPDX-License-Identifier: Apache-2.0
 * Author: Robert Balas (balasr@iis.ee.ethz.ch)
 */

OUTPUT_ARCH(riscv)
ENTRY(_start)
MEMORY
{
  BRAM           : ORIGIN = 0x1c000004, LENGTH = 0x0007fffc
}

/*
 * Put some comments
 */


SECTIONS
{

  PROVIDE(__boot_address = 0x1c005000);
  
  /* stack and heap related settings */
  __stack_size = DEFINED(__stack_size) ? __stack_size : 0x800;
  PROVIDE(__stack_size = __stack_size);
  __heap_size = DEFINED(__heap_size) ? __heap_size : 0x400;
  PROVIDE(__heap_size = __heap_size);
  PROVIDE(__data_start_address = 0x1c050000);

  .key_material MAX(0x1c000000, ALIGN(256)) :
  {
    __secure_boot_start_address__ = .;
   __small_secure_boot_start_address__ = .;
    INCLUDE ../core-v-freertos/target/core-v-mcu/secure_boot_keys.ld 
  } > BRAM
  

  .vectors MAX(0x1c000800, ALIGN(256)) :
  {
    __irq_vector_base = .;
    __vector_start = .;
    KEEP(*(.vectors))
   __small_secure_boot_end_address__ = .;
  } > BRAM

  .privileged_functions : ALIGN(256) {
		*(privileged_functions)
	} > BRAM

  .text __boot_address :
  {
    __unprivileged_section_start__ = .;
    *(.text.start)
    *(.text)
    *(.text.*)
    . = ALIGN(4);
    __secure_boot_end_address__ = .;
  } > BRAM

  /* read-only sections */
  .rodata __data_start_address :
  {
    *(.rodata.*)
  } > BRAM

  .privileged_data (NOLOAD) : ALIGN(32) {
    __privileged_data_start__ = .;
		*(privileged_data)
		/* Non kernel data is kept out of the first _Privileged_Data_Region_Size
		bytes of SRAM. */
    . = ALIGN(32);
		__privileged_data_end__ = .;
	} > BRAM

  .data : ALIGN(4)
  {
    __data_begin = .;
    *(.data);
    *(.data.*)
    __sdata_begin = .;
    *(.sdata);
    *(.sdata.*)
    *(.sdata2.*) /* FreeRTOS xISRStackTop, __global_impure_ptr */ 
    . = ALIGN(4);
  } > BRAM

  .bss : ALIGN(8)
  {
    __bss_start = .;
    *(.bss)
    *(.bss.*)
    *(.sbss)
    *(.sbss.*)
    *(COMMON)
    . = ALIGN(4);
    __bss_end = .;
    __unprivileged_section_end__ = .;

    /* Sub section for e.g. privilege_status to avoid overlapping PMP 
     * regions as this variable is write-only */
    . = ALIGN(8); 
    __unprivileged_RO_section_start__ = .; 
    KEEP(*(.unprivileged_RO_section)) 
    __unprivileged_RO_section_end__ = .; 
  } > BRAM
  
  /* The compiler uses this to access data in the .sdata, .data, .sbss and .bss
     sections with fewer instructions (relaxation). This reduces code size. */
  PROVIDE(__global_pointer$ = MIN(__sdata_begin + 0x800,
	  MAX(__data_begin + 0x800, __bss_end - 0x800)));

  .heap : ALIGN(256)
  {
    __heap_start = .;
    KEEP(*(.heap))
    __heap_end = .;
    ASSERT((__heap_start + __heap_size < __heap_end), "Error (Linkerscript): Heap is too large");
  } > BRAM

  .stack : ALIGN(256)
  {
    stack_start = .;
    __stack_bottom = .;
    . += __stack_size;
    __stack_top = .;
    stack = .;
  } > BRAM

}
