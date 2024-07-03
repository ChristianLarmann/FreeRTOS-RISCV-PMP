// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Wed Jul  3 14:39:35 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB_CACHE_0_0/Zynq_E40S_PMP_AHB_CACHE_0_0_stub.v
// Design      : Zynq_E40S_PMP_AHB_CACHE_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AHB_CACHE,Vivado 2023.1.1" *)
module Zynq_E40S_PMP_AHB_CACHE_0_0(HSEL, HCLK, HRESETn, HREADY, HADDR, HTRANS, HWRITE, 
  HSIZE, HWDATA, HREADYOUT, HRDATA, interrupt, BRAM_MEM_REQ, BRAM_MEM_WRITE, BRAM_MEM_ADDR, 
  BRAM_WDATA, BRAM_RDATA, BRAM_MEM_VALID, BRAM_RDY, debug, enc_bit_for_cache_line_i, 
  write_back_encryption_enabled_o)
/* synthesis syn_black_box black_box_pad_pin="HSEL,HRESETn,HREADY,HADDR[31:0],HTRANS[1:0],HWRITE,HSIZE[2:0],HWDATA[31:0],HREADYOUT,HRDATA[31:0],interrupt,BRAM_MEM_REQ,BRAM_MEM_WRITE,BRAM_MEM_ADDR[14:0],BRAM_WDATA[127:0],BRAM_RDATA[127:0],BRAM_MEM_VALID,BRAM_RDY,debug[9:0],enc_bit_for_cache_line_i,write_back_encryption_enabled_o" */
/* synthesis syn_force_seq_prim="HCLK" */;
  input HSEL;
  input HCLK /* synthesis syn_isclock = 1 */;
  input HRESETn;
  input HREADY;
  input [31:0]HADDR;
  input [1:0]HTRANS;
  input HWRITE;
  input [2:0]HSIZE;
  input [31:0]HWDATA;
  output HREADYOUT;
  output [31:0]HRDATA;
  output interrupt;
  output BRAM_MEM_REQ;
  output BRAM_MEM_WRITE;
  output [14:0]BRAM_MEM_ADDR;
  output [127:0]BRAM_WDATA;
  input [127:0]BRAM_RDATA;
  input BRAM_MEM_VALID;
  output BRAM_RDY;
  output [9:0]debug;
  input enc_bit_for_cache_line_i;
  output write_back_encryption_enabled_o;
endmodule
