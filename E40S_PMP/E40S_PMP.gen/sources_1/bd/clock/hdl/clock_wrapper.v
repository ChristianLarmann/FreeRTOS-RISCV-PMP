//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Mon Aug 31 16:21:33 2020
//Host        : Ter running 64-bit Antergos Linux
//Command     : generate_target clock_wrapper.bd
//Design      : clock_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clock_wrapper
   (clk_in1,
    clk_out1,
    locked,
    reset);
  input clk_in1;
  output clk_out1;
  output locked;
  input reset;

  wire clk_in1;
  wire clk_out1;
  wire locked;
  wire reset;

  clock clock_i
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked),
        .reset(reset));
endmodule
