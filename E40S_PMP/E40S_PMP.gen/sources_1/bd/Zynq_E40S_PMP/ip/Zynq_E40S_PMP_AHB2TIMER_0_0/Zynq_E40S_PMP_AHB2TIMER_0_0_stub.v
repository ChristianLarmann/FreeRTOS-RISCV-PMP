// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Wed Jul  3 16:07:42 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB2TIMER_0_0/Zynq_E40S_PMP_AHB2TIMER_0_0_stub.v
// Design      : Zynq_E40S_PMP_AHB2TIMER_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AHB2TIMER,Vivado 2023.1.1" *)
module Zynq_E40S_PMP_AHB2TIMER_0_0(HCLK, HRESETn, HADDR, HWDATA, HTRANS, HWRITE, HSEL, 
  HREADY, HRDATA, HREADYOUT, timer_irq)
/* synthesis syn_black_box black_box_pad_pin="HRESETn,HADDR[31:0],HWDATA[31:0],HTRANS[1:0],HWRITE,HSEL,HREADY,HRDATA[31:0],HREADYOUT,timer_irq" */
/* synthesis syn_force_seq_prim="HCLK" */;
  input HCLK /* synthesis syn_isclock = 1 */;
  input HRESETn;
  input [31:0]HADDR;
  input [31:0]HWDATA;
  input [1:0]HTRANS;
  input HWRITE;
  input HSEL;
  input HREADY;
  output [31:0]HRDATA;
  output HREADYOUT;
  output timer_irq;
endmodule
