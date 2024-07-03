// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Wed Jul  3 16:06:12 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHBKEYS_0_0/Zynq_E40S_PMP_AHBKEYS_0_0_stub.v
// Design      : Zynq_E40S_PMP_AHBKEYS_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AHBKEYS,Vivado 2023.1.1" *)
module Zynq_E40S_PMP_AHBKEYS_0_0(HCLK, HRESETn, HADDR, HWRITE, HSEL, HREADY, HRDATA, 
  HREADYOUT)
/* synthesis syn_black_box black_box_pad_pin="HRESETn,HADDR[31:0],HWRITE,HSEL,HREADY,HRDATA[31:0],HREADYOUT" */
/* synthesis syn_force_seq_prim="HCLK" */;
  input HCLK /* synthesis syn_isclock = 1 */;
  input HRESETn;
  input [31:0]HADDR;
  input HWRITE;
  input HSEL;
  input HREADY;
  output [31:0]HRDATA;
  output HREADYOUT;
endmodule
