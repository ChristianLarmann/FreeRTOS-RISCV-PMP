#ifndef RISCY_AES_H
#define RISCY_AES_H

#define RISCY_AES_BASE_ADDR             0x10000000

/** SOC PERIPHERALS */
#define SOC_PERIPHERALS_BASE_ADDR     ( RISCY_AES_BASE_ADDR + 0xA100000 )
#define SPI_BASE_ADDR                 ( 0x1A100000 )
#define UART_BASE_ADDR                ( 0x1B100000 )
#define TIMER_BASE_ADDR               ( 0x1C100000 )
#define AES0_BASE_ADDR		          ( 0x1D100000 )
#define AES1_BASE_ADDR                ( 0x1E100000 )
#define AES2_BASE_ADDR                ( 0x1F100000 )
#define AES3_BASE_ADDR                ( 0x20100000 )
#define AES4_BASE_ADDR                ( 0x2A100000 )


/** Instruction RAM */
#define INSTR_RAM_BASE_ADDR           ( 0x8000       )
#define INSTR_RAM_START_ADDR          ( 0x80       )

/** ROM */
#define ROM_BASE_ADDR                 ( 0x8000     )

/** Data RAM */
#define DATA_RAM_BASE_ADDR            ( 0x00100000 )

/** Registers and pointers */
#define REGP(x) ((volatile unsigned int*)(x))
#define REG(x) (*((volatile unsigned int*)(x)))
#define REGP_8(x) (((volatile uint8_t*)(x)))

#define __PSC__(a) *(unsigned volatile int*) (0x2B100000 + a)
/** Boot address register */
#define BOOTREG     __PSC__(0x08)

#define RES_STATUS  __PSC__(0x14)

#endif


