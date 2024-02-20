//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Tue Feb 20 15:03:46 2024
//Host        : christian-ThinkPad-X270-W10DG running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target clock.bd
//Design      : clock
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "clock,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=clock,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "clock.hwdef" *) 
module clock
   (clk_in1,
    clk_out1,
    locked,
    reset);
  input clk_in1;
  output clk_out1;
  output locked;
  input reset;

  wire clk_in1_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire reset_1;

  assign clk_in1_1 = clk_in1;
  assign clk_out1 = clk_wiz_0_clk_out1;
  assign locked = clk_wiz_0_locked;
  assign reset_1 = reset;
  clock_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked),
        .reset(reset_1));
endmodule
