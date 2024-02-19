/*
 * spi.h
 *
 *  Created on: 4 Mar 2023
 *      Author: lmuntenaar
 */

#ifndef SPI_H_
#define SPI_H_

#endif /* SPI_H_ */

#include "memoryMap.h"

/* Enumerate SPI states */
#define SPI_QPI    1
#define SPI_NO_QPI 0

#define SPI_CMD_RD    0
#define SPI_CMD_WR    1
#define SPI_CMD_QRD   2
#define SPI_CMD_QWR   3
#define SPI_CMD_SWRST 4

/* Set up slave pins*/
#define SPI_CSN0 0
#define SPI_CSN1 1
#define SPI_CSN2 2
#define SPI_CSN3 3

/*Initiate SPI registers on AHB bus*/
#define SPI_REG_STATUS                ( SPI_BASE_ADDR + 0x00 )
#define SPI_REG_CLKDIV                ( SPI_BASE_ADDR + 0x04 )
#define SPI_REG_SPICMD                ( SPI_BASE_ADDR + 0x08 )
#define SPI_REG_SPIADR                ( SPI_BASE_ADDR + 0x0C )
#define SPI_REG_SPILEN                ( SPI_BASE_ADDR + 0x10 )
#define SPI_REG_SPIDUM                ( SPI_BASE_ADDR + 0x14 )
#define SPI_REG_TXFIFO                ( SPI_BASE_ADDR + 0x18 )
#define SPI_REG_RXFIFO                ( SPI_BASE_ADDR + 0x20 )
#define SPI_REG_INTCFG                ( SPI_BASE_ADDR + 0x24 )
//#define SPI_REG_INTSTA                ( SPI_BASE_ADDR + 0x28 )

#define SPI_STATUS			REG(SPI_REG_STATUS)
#define SPI_CLKDIV 			REG(SPI_REG_CLKDIV)
#define SPI_SPICMD 			REG(SPI_REG_SPICMD)
#define SPI_SPIADR			REG(SPI_REG_SPIADR)
#define SPI_SPILEN			REG(SPI_REG_SPILEN)
#define SPI_SPIDUM          REG(SPI_REG_SPIDUM)
#define SPI_TXFIFO			REG(SPI_REG_TXFIFO)
#define SPI_RXFIFO			REG(SPI_REG_RXFIFO)
#define SPI_INTCFG   		REG(SPI_REG_INTCFG)

///* Define SPI Slave data pins */
//#define PIN_SSPI_SIO0 4
//#define PIN_SSPI_SIO1 5
//#define PIN_SSPI_SIO2 6
//#define PIN_SSPI_SIO3 7
//#define PIN_SSPI_CSN  3
//
///* Define SPI Master data pins */
//#define PIN_MSPI_SIO0 15
//#define PIN_MSPI_SIO1 14
//#define PIN_MSPI_SIO2 13
//#define PIN_MSPI_SIO3 12
//
//#define PIN_MSPI_CSN0 16
//#define PIN_MSPI_CSN1 11
//#define PIN_MSPI_CSN2 0
//#define PIN_MSPI_CSN3 1
//
//#define FUNC_SPI  0

void spi_setup_slave();

void spi_setup_master(int numcs);

void spi_setup_cmd_addr(int cmd, int cmdlen, int addr, int addrlen);

void spi_set_datalen(int datalen);

void spi_setup_dummy(int dummy_rd, int dummy_wr);

void spi_start_transaction(int trans_type, int csnum);

void spi_write_fifo(int *data, int datalen);

void spi_read_fifo(int *data, int datalen);

int spi_get_status();

