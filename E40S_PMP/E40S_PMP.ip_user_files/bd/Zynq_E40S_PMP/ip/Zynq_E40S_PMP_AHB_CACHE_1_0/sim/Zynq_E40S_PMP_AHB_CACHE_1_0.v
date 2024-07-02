// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:AHB_CACHE:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Zynq_E40S_PMP_AHB_CACHE_1_0 (
  HSEL,
  HCLK,
  HRESETn,
  HREADY,
  HADDR,
  HTRANS,
  HWRITE,
  HSIZE,
  HWDATA,
  HREADYOUT,
  HRDATA,
  interrupt,
  BRAM_MEM_REQ,
  BRAM_MEM_WRITE,
  BRAM_MEM_ADDR,
  BRAM_WDATA,
  BRAM_RDATA,
  BRAM_MEM_VALID,
  BRAM_RDY,
  debug,
  enc_bit_for_cache_line_i,
  write_back_encryption_enabled_o
);

input wire HSEL;
input wire HCLK;
input wire HRESETn;
input wire HREADY;
input wire [31 : 0] HADDR;
input wire [1 : 0] HTRANS;
input wire HWRITE;
input wire [2 : 0] HSIZE;
input wire [31 : 0] HWDATA;
output wire HREADYOUT;
output wire [31 : 0] HRDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
output wire BRAM_MEM_REQ;
output wire BRAM_MEM_WRITE;
output wire [14 : 0] BRAM_MEM_ADDR;
output wire [127 : 0] BRAM_WDATA;
input wire [127 : 0] BRAM_RDATA;
input wire BRAM_MEM_VALID;
output wire BRAM_RDY;
output wire [9 : 0] debug;
input wire enc_bit_for_cache_line_i;
output wire write_back_encryption_enabled_o;

  AHB_CACHE #(
    .CACHE_LINES(128),
    .CPU_ADDR_BITS(32),
    .CPU_DATA_BITS(32),
    .MEM_ADDR_BITS(15),
    .MEM_DATA_BITS(128),
    .INSTRUCTION(1),
    .MAIN_MEM_DELAY(100)
  ) inst (
    .HSEL(HSEL),
    .HCLK(HCLK),
    .HRESETn(HRESETn),
    .HREADY(HREADY),
    .HADDR(HADDR),
    .HTRANS(HTRANS),
    .HWRITE(HWRITE),
    .HSIZE(HSIZE),
    .HWDATA(HWDATA),
    .HREADYOUT(HREADYOUT),
    .HRDATA(HRDATA),
    .interrupt(interrupt),
    .BRAM_MEM_REQ(BRAM_MEM_REQ),
    .BRAM_MEM_WRITE(BRAM_MEM_WRITE),
    .BRAM_MEM_ADDR(BRAM_MEM_ADDR),
    .BRAM_WDATA(BRAM_WDATA),
    .BRAM_RDATA(BRAM_RDATA),
    .BRAM_MEM_VALID(BRAM_MEM_VALID),
    .BRAM_RDY(BRAM_RDY),
    .debug(debug),
    .enc_bit_for_cache_line_i(enc_bit_for_cache_line_i),
    .write_back_encryption_enabled_o(write_back_encryption_enabled_o)
  );
endmodule
