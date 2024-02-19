/*
 ============================================================================
 Name        : main.c
 Author      : Christian Larmann (originally provided by TU Delft CE department)
 Version     :
 Copyright   : Your copyright notice
 Description : PMP Setup
 ============================================================================
 */

//#include "headerfiles/AES.h"
//#include "headerfiles/memoryMap.h"
//#include "headerfiles/spi.h"
//#include "headerfiles/timer.h"
//#include "headerfiles/uart.h"

//#include <stdio.h>
#include <stdint.h>

unsigned int multiply(unsigned int a, unsigned int b);
int user_func();
static inline uint64_t read_mstatus();
static inline void write_mstatus(uint64_t mstatus);
static inline void write_mepc(uintptr_t value);
void pmp_violation_handler();

int main() {

	*(unsigned int*)(0x00110000) = 33;
	unsigned int a = *(unsigned int*)(0x00110000);
	int result_1 = multiply(a, 2);


	// Write PMP config for region 0
	uint32_t pmpcfg_val = 0b01111; // All access, A=TOR
	asm volatile("csrw pmpcfg0, %0" :: "r"(pmpcfg_val));

	// Write PMP address for region 0, Address range TOR 0- 0x100000
	uint32_t pmpaddr_val = 0x108000;
	asm volatile("csrw pmpaddr0, %0" :: "r"(pmpaddr_val));


	// Enable interrupt for PMP violation
	unsigned int mie;
	asm volatile("csrr %0, mie" : "=r"(mie)); // Read current MIE value
	mie |= 0b10000000000000000; // Set the bit for the interrupt
	// mie |= 0b0000000100000000; // Set the bit for the interrupt
	asm volatile("csrw mie, %0" :: "r"(mie)); // Write back to MIE

	// Make interrupts vectorred
	unsigned int mtvec;
	asm volatile("csrr %0, mtvec" : "=r"(mtvec)); // Read current mtvec value
	mtvec = (mtvec & ~0x3) | 0x1; // Clear the lowest two bits and set mode to 01
	asm volatile("csrw mtvec, %0" :: "r"(mtvec)); // Write back to mtvec

	// Initiate user task
	uintptr_t mstatus = read_mstatus();
	mstatus &= ~(3 << 11); // Clear MPP bits
	write_mstatus(mstatus);

	// Set mepc to the user program's start address
	write_mepc((uintptr_t)user_func);

	// Set return address manually for mret
	asm volatile (
	    "auipc ra, 0\n\t"       // Set ra to the current PC (plus a small offset due to the instruction itself)
	    "addi ra, ra, 0xc\n\t"    // Add 0xC to ra
	    : : : "ra"              // Clobber ra
	);

	// Use mret to switch to user mode
	asm volatile ("mret");

    return 0;
}

int user_func() {
	int first_param = 6066;  // 0x17B2
	int second_param = 11119;  // 0x2B6F

	return multiply(first_param, second_param);

	unsigned int b = *(unsigned int*)(0x00110000);

	int result = multiply(b, 2);
}


unsigned int multiply(unsigned int a, unsigned int b) {
	return a * b;
}


static inline uint64_t read_mstatus() {
    uint64_t mstatus;
    asm volatile("csrr %0, mstatus" : "=r" (mstatus));
    return mstatus;
}


void pmp_violation_handler() {
	asm volatile ("li a3, 0xCB\n\t");
}


static inline void write_mstatus(uint64_t mstatus) {
    asm volatile("csrw mstatus, %0" :: "r" (mstatus));
}

static inline void write_mepc(uintptr_t value) {
    asm volatile("csrw mepc, %0" :: "r" (value));
}
