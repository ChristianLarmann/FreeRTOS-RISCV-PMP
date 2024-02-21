#ifndef HEADERFILES_AES_H_
#define HEADERFILES_AES_H_


#endif /* HEADERFILES_TIMER_H_ */

#include "memoryMap.h"

/*Initiate AES0 registers on AHB bus*/
#define AES_REG_STATUS                ( AES0_BASE_ADDR + 0x00 )
#define AES_REG_CONFIG                ( AES0_BASE_ADDR + 0x04 )
#define AES_REG_KEY0                  ( AES0_BASE_ADDR + 0x08 )
#define AES_REG_KEY1                  ( AES0_BASE_ADDR + 0x0C )
#define AES_REG_KEY2                  ( AES0_BASE_ADDR + 0x10 )
#define AES_REG_KEY3                  ( AES0_BASE_ADDR + 0x14 )
#define AES_REG_PL0                	  ( AES0_BASE_ADDR + 0x18 )
#define AES_REG_PL1                	  ( AES0_BASE_ADDR + 0x1C )
#define AES_REG_PL2               	  ( AES0_BASE_ADDR + 0x20 )
#define AES_REG_PL3                	  ( AES0_BASE_ADDR + 0x24 )
#define AES_REG_COUNT                 ( AES0_BASE_ADDR + 0x28 )
#define AES_REG_OUT0                  ( AES0_BASE_ADDR + 0x2C )
#define AES_REG_OUT1                  ( AES0_BASE_ADDR + 0x30 )
#define AES_REG_OUT2                  ( AES0_BASE_ADDR + 0x34 )
#define AES_REG_OUT3                  ( AES0_BASE_ADDR + 0x38 )

#define AES_STATUS					  REG(AES_REG_STATUS)
#define AES_CONFIG 					  REG(AES_REG_CONFIG)
#define AES_KEY0  					  REG(AES_REG_KEY0)
#define AES_KEY1 					  REG(AES_REG_KEY1)
#define AES_KEY2 					  REG(AES_REG_KEY2)
#define AES_KEY3          			  REG(AES_REG_KEY3)
#define AES_PL0						  REG(AES_REG_PL0)
#define AES_PL1						  REG(AES_REG_PL1)
#define AES_PL2	   					  REG(AES_REG_PL2)
#define AES_PL3						  REG(AES_REG_PL3)
#define AES_COUNT          			  REG(AES_REG_COUNT)
#define AES_OUT0					  REG(AES_REG_OUT0)
#define AES_OUT1					  REG(AES_REG_OUT1)
#define AES_OUT2   					  REG(AES_REG_OUT2)
#define AES_OUT3					  REG(AES_REG_OUT3)

/* Define Pins of to the outside of the chip */
//#define PIN_SSPI_SIO0 4
//#define PIN_SSPI_SIO1 5
//#define PIN_SSPI_SIO2 6
//#define PIN_SSPI_SIO3 7
//#define PIN_SSPI_CSN  3

