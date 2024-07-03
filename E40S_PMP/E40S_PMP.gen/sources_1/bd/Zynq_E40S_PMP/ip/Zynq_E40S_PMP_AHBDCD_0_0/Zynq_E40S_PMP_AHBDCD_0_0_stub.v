// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Wed Jul  3 18:38:32 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHBDCD_0_0/Zynq_E40S_PMP_AHBDCD_0_0_stub.v
// Design      : Zynq_E40S_PMP_AHBDCD_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AHBDCD,Vivado 2023.1.1" *)
module Zynq_E40S_PMP_AHBDCD_0_0(HADDR, RESET, HSEL_S0, HSEL_S2, HSEL_S4, HSEL_S5, 
  HSEL_S7, HSEL_NOMAP, MUX_SEL)
/* synthesis syn_black_box black_box_pad_pin="HADDR[31:0],RESET,HSEL_S0,HSEL_S2,HSEL_S4,HSEL_S5,HSEL_S7,HSEL_NOMAP,MUX_SEL[3:0]" */;
  input [31:0]HADDR;
  input RESET;
  output HSEL_S0;
  output HSEL_S2;
  output HSEL_S4;
  output HSEL_S5;
  output HSEL_S7;
  output HSEL_NOMAP;
  output [3:0]MUX_SEL;
endmodule
