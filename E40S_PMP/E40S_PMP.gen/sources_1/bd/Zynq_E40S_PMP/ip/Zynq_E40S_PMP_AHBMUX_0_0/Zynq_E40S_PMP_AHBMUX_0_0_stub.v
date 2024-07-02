// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Tue Jul  2 23:01:41 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHBMUX_0_0/Zynq_E40S_PMP_AHBMUX_0_0_stub.v
// Design      : Zynq_E40S_PMP_AHBMUX_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AHBMUX,Vivado 2023.1.1" *)
module Zynq_E40S_PMP_AHBMUX_0_0(HCLK, HRESETn, MUX_SEL, HRDATA_S0, HRDATA_S2, 
  HRDATA_S4, HRDATA_S5, HRDATA_S7, HRDATA_NOMAP, HREADYOUT_S0, HREADYOUT_S2, HREADYOUT_S4, 
  HREADYOUT_S5, HREADYOUT_S7, HREADYOUT_NOMAP, HREADY, HRDATA)
/* synthesis syn_black_box black_box_pad_pin="HRESETn,MUX_SEL[3:0],HRDATA_S0[31:0],HRDATA_S2[31:0],HRDATA_S4[31:0],HRDATA_S5[31:0],HRDATA_S7[31:0],HRDATA_NOMAP[31:0],HREADYOUT_S0,HREADYOUT_S2,HREADYOUT_S4,HREADYOUT_S5,HREADYOUT_S7,HREADYOUT_NOMAP,HREADY,HRDATA[31:0]" */
/* synthesis syn_force_seq_prim="HCLK" */;
  input HCLK /* synthesis syn_isclock = 1 */;
  input HRESETn;
  input [3:0]MUX_SEL;
  input [31:0]HRDATA_S0;
  input [31:0]HRDATA_S2;
  input [31:0]HRDATA_S4;
  input [31:0]HRDATA_S5;
  input [31:0]HRDATA_S7;
  input [31:0]HRDATA_NOMAP;
  input HREADYOUT_S0;
  input HREADYOUT_S2;
  input HREADYOUT_S4;
  input HREADYOUT_S5;
  input HREADYOUT_S7;
  input HREADYOUT_NOMAP;
  output HREADY;
  output [31:0]HRDATA;
endmodule
