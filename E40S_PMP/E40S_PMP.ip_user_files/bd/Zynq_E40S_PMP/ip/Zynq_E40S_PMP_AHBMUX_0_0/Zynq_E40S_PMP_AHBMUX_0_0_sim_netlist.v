// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Tue Jul  2 23:01:41 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHBMUX_0_0/Zynq_E40S_PMP_AHBMUX_0_0_sim_netlist.v
// Design      : Zynq_E40S_PMP_AHBMUX_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Zynq_E40S_PMP_AHBMUX_0_0,AHBMUX,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "AHBMUX,Vivado 2023.1.1" *) 
(* NotValidForBitStream *)
module Zynq_E40S_PMP_AHBMUX_0_0
   (HCLK,
    HRESETn,
    MUX_SEL,
    HRDATA_S0,
    HRDATA_S2,
    HRDATA_S4,
    HRDATA_S5,
    HRDATA_S7,
    HRDATA_NOMAP,
    HREADYOUT_S0,
    HREADYOUT_S2,
    HREADYOUT_S4,
    HREADYOUT_S5,
    HREADYOUT_S7,
    HREADYOUT_NOMAP,
    HREADY,
    HRDATA);
  input HCLK;
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

  wire HCLK;
  wire [31:0]HRDATA;
  wire [31:0]HRDATA_NOMAP;
  wire [31:0]HRDATA_S0;
  wire [31:0]HRDATA_S2;
  wire [31:0]HRDATA_S4;
  wire [31:0]HRDATA_S5;
  wire [31:0]HRDATA_S7;
  wire HREADY;
  wire HREADYOUT_NOMAP;
  wire HREADYOUT_S0;
  wire HREADYOUT_S2;
  wire HREADYOUT_S4;
  wire HREADYOUT_S5;
  wire HREADYOUT_S7;
  wire HRESETn;
  wire [3:0]MUX_SEL;

  Zynq_E40S_PMP_AHBMUX_0_0_AHBMUX inst
       (.E(HREADY),
        .HCLK(HCLK),
        .HRDATA(HRDATA),
        .HRDATA_NOMAP(HRDATA_NOMAP),
        .HRDATA_S0(HRDATA_S0),
        .HRDATA_S2(HRDATA_S2),
        .HRDATA_S4(HRDATA_S4),
        .HRDATA_S5(HRDATA_S5),
        .HRDATA_S7(HRDATA_S7),
        .HREADYOUT_NOMAP(HREADYOUT_NOMAP),
        .HREADYOUT_S0(HREADYOUT_S0),
        .HREADYOUT_S2(HREADYOUT_S2),
        .HREADYOUT_S4(HREADYOUT_S4),
        .HREADYOUT_S5(HREADYOUT_S5),
        .HREADYOUT_S7(HREADYOUT_S7),
        .HRESETn(HRESETn),
        .MUX_SEL(MUX_SEL));
endmodule

(* ORIG_REF_NAME = "AHBMUX" *) 
module Zynq_E40S_PMP_AHBMUX_0_0_AHBMUX
   (E,
    HRDATA,
    MUX_SEL,
    HCLK,
    HRESETn,
    HREADYOUT_NOMAP,
    HREADYOUT_S2,
    HREADYOUT_S0,
    HREADYOUT_S7,
    HREADYOUT_S5,
    HREADYOUT_S4,
    HRDATA_NOMAP,
    HRDATA_S2,
    HRDATA_S0,
    HRDATA_S7,
    HRDATA_S5,
    HRDATA_S4);
  output [0:0]E;
  output [31:0]HRDATA;
  input [3:0]MUX_SEL;
  input HCLK;
  input HRESETn;
  input HREADYOUT_NOMAP;
  input HREADYOUT_S2;
  input HREADYOUT_S0;
  input HREADYOUT_S7;
  input HREADYOUT_S5;
  input HREADYOUT_S4;
  input [31:0]HRDATA_NOMAP;
  input [31:0]HRDATA_S2;
  input [31:0]HRDATA_S0;
  input [31:0]HRDATA_S7;
  input [31:0]HRDATA_S5;
  input [31:0]HRDATA_S4;

  wire [3:3]APHASE_MUX_SEL;
  wire \APHASE_MUX_SEL[3]_i_1_n_0 ;
  wire \APHASE_MUX_SEL_reg_n_0_[0] ;
  wire \APHASE_MUX_SEL_reg_n_0_[1] ;
  wire \APHASE_MUX_SEL_reg_n_0_[2] ;
  wire [0:0]E;
  wire HCLK;
  wire [31:0]HRDATA;
  wire \HRDATA[0]_INST_0_i_1_n_0 ;
  wire \HRDATA[0]_INST_0_i_2_n_0 ;
  wire \HRDATA[10]_INST_0_i_1_n_0 ;
  wire \HRDATA[10]_INST_0_i_2_n_0 ;
  wire \HRDATA[11]_INST_0_i_1_n_0 ;
  wire \HRDATA[11]_INST_0_i_2_n_0 ;
  wire \HRDATA[12]_INST_0_i_1_n_0 ;
  wire \HRDATA[12]_INST_0_i_2_n_0 ;
  wire \HRDATA[13]_INST_0_i_1_n_0 ;
  wire \HRDATA[13]_INST_0_i_2_n_0 ;
  wire \HRDATA[14]_INST_0_i_1_n_0 ;
  wire \HRDATA[14]_INST_0_i_2_n_0 ;
  wire \HRDATA[15]_INST_0_i_1_n_0 ;
  wire \HRDATA[15]_INST_0_i_2_n_0 ;
  wire \HRDATA[16]_INST_0_i_1_n_0 ;
  wire \HRDATA[16]_INST_0_i_2_n_0 ;
  wire \HRDATA[17]_INST_0_i_1_n_0 ;
  wire \HRDATA[17]_INST_0_i_2_n_0 ;
  wire \HRDATA[18]_INST_0_i_1_n_0 ;
  wire \HRDATA[18]_INST_0_i_2_n_0 ;
  wire \HRDATA[19]_INST_0_i_1_n_0 ;
  wire \HRDATA[19]_INST_0_i_2_n_0 ;
  wire \HRDATA[1]_INST_0_i_1_n_0 ;
  wire \HRDATA[1]_INST_0_i_2_n_0 ;
  wire \HRDATA[20]_INST_0_i_1_n_0 ;
  wire \HRDATA[20]_INST_0_i_2_n_0 ;
  wire \HRDATA[21]_INST_0_i_1_n_0 ;
  wire \HRDATA[21]_INST_0_i_2_n_0 ;
  wire \HRDATA[22]_INST_0_i_1_n_0 ;
  wire \HRDATA[22]_INST_0_i_2_n_0 ;
  wire \HRDATA[23]_INST_0_i_1_n_0 ;
  wire \HRDATA[23]_INST_0_i_2_n_0 ;
  wire \HRDATA[24]_INST_0_i_1_n_0 ;
  wire \HRDATA[24]_INST_0_i_2_n_0 ;
  wire \HRDATA[25]_INST_0_i_1_n_0 ;
  wire \HRDATA[25]_INST_0_i_2_n_0 ;
  wire \HRDATA[26]_INST_0_i_1_n_0 ;
  wire \HRDATA[26]_INST_0_i_2_n_0 ;
  wire \HRDATA[27]_INST_0_i_1_n_0 ;
  wire \HRDATA[27]_INST_0_i_2_n_0 ;
  wire \HRDATA[28]_INST_0_i_1_n_0 ;
  wire \HRDATA[28]_INST_0_i_2_n_0 ;
  wire \HRDATA[29]_INST_0_i_1_n_0 ;
  wire \HRDATA[29]_INST_0_i_2_n_0 ;
  wire \HRDATA[2]_INST_0_i_1_n_0 ;
  wire \HRDATA[2]_INST_0_i_2_n_0 ;
  wire \HRDATA[30]_INST_0_i_1_n_0 ;
  wire \HRDATA[30]_INST_0_i_2_n_0 ;
  wire \HRDATA[31]_INST_0_i_1_n_0 ;
  wire \HRDATA[31]_INST_0_i_2_n_0 ;
  wire \HRDATA[3]_INST_0_i_1_n_0 ;
  wire \HRDATA[3]_INST_0_i_2_n_0 ;
  wire \HRDATA[4]_INST_0_i_1_n_0 ;
  wire \HRDATA[4]_INST_0_i_2_n_0 ;
  wire \HRDATA[5]_INST_0_i_1_n_0 ;
  wire \HRDATA[5]_INST_0_i_2_n_0 ;
  wire \HRDATA[6]_INST_0_i_1_n_0 ;
  wire \HRDATA[6]_INST_0_i_2_n_0 ;
  wire \HRDATA[7]_INST_0_i_1_n_0 ;
  wire \HRDATA[7]_INST_0_i_2_n_0 ;
  wire \HRDATA[8]_INST_0_i_1_n_0 ;
  wire \HRDATA[8]_INST_0_i_2_n_0 ;
  wire \HRDATA[9]_INST_0_i_1_n_0 ;
  wire \HRDATA[9]_INST_0_i_2_n_0 ;
  wire [31:0]HRDATA_NOMAP;
  wire [31:0]HRDATA_S0;
  wire [31:0]HRDATA_S2;
  wire [31:0]HRDATA_S4;
  wire [31:0]HRDATA_S5;
  wire [31:0]HRDATA_S7;
  wire HREADYOUT_NOMAP;
  wire HREADYOUT_S0;
  wire HREADYOUT_S2;
  wire HREADYOUT_S4;
  wire HREADYOUT_S5;
  wire HREADYOUT_S7;
  wire HREADY_INST_0_i_1_n_0;
  wire HREADY_INST_0_i_2_n_0;
  wire HRESETn;
  wire [3:0]MUX_SEL;

  LUT1 #(
    .INIT(2'h1)) 
    \APHASE_MUX_SEL[3]_i_1 
       (.I0(HRESETn),
        .O(\APHASE_MUX_SEL[3]_i_1_n_0 ));
  FDCE \APHASE_MUX_SEL_reg[0] 
       (.C(HCLK),
        .CE(E),
        .CLR(\APHASE_MUX_SEL[3]_i_1_n_0 ),
        .D(MUX_SEL[0]),
        .Q(\APHASE_MUX_SEL_reg_n_0_[0] ));
  FDCE \APHASE_MUX_SEL_reg[1] 
       (.C(HCLK),
        .CE(E),
        .CLR(\APHASE_MUX_SEL[3]_i_1_n_0 ),
        .D(MUX_SEL[1]),
        .Q(\APHASE_MUX_SEL_reg_n_0_[1] ));
  FDCE \APHASE_MUX_SEL_reg[2] 
       (.C(HCLK),
        .CE(E),
        .CLR(\APHASE_MUX_SEL[3]_i_1_n_0 ),
        .D(MUX_SEL[2]),
        .Q(\APHASE_MUX_SEL_reg_n_0_[2] ));
  FDCE \APHASE_MUX_SEL_reg[3] 
       (.C(HCLK),
        .CE(E),
        .CLR(\APHASE_MUX_SEL[3]_i_1_n_0 ),
        .D(MUX_SEL[3]),
        .Q(APHASE_MUX_SEL));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[0]_INST_0 
       (.I0(HRDATA_NOMAP[0]),
        .I1(\HRDATA[0]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[0]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[0]_INST_0_i_1 
       (.I0(HRDATA_S7[0]),
        .I1(HRDATA_NOMAP[0]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[0]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[0]),
        .O(\HRDATA[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[0]_INST_0_i_2 
       (.I0(HRDATA_S2[0]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[0]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[0]),
        .O(\HRDATA[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[10]_INST_0 
       (.I0(HRDATA_NOMAP[10]),
        .I1(\HRDATA[10]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[10]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[10]_INST_0_i_1 
       (.I0(HRDATA_S7[10]),
        .I1(HRDATA_NOMAP[10]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[10]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[10]),
        .O(\HRDATA[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[10]_INST_0_i_2 
       (.I0(HRDATA_S2[10]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[10]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[10]),
        .O(\HRDATA[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[11]_INST_0 
       (.I0(HRDATA_NOMAP[11]),
        .I1(\HRDATA[11]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[11]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[11]_INST_0_i_1 
       (.I0(HRDATA_S7[11]),
        .I1(HRDATA_NOMAP[11]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[11]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[11]),
        .O(\HRDATA[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[11]_INST_0_i_2 
       (.I0(HRDATA_S2[11]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[11]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[11]),
        .O(\HRDATA[11]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[12]_INST_0 
       (.I0(HRDATA_NOMAP[12]),
        .I1(\HRDATA[12]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[12]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[12]_INST_0_i_1 
       (.I0(HRDATA_S7[12]),
        .I1(HRDATA_NOMAP[12]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[12]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[12]),
        .O(\HRDATA[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[12]_INST_0_i_2 
       (.I0(HRDATA_S2[12]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[12]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[12]),
        .O(\HRDATA[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[13]_INST_0 
       (.I0(HRDATA_NOMAP[13]),
        .I1(\HRDATA[13]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[13]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[13]_INST_0_i_1 
       (.I0(HRDATA_S7[13]),
        .I1(HRDATA_NOMAP[13]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[13]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[13]),
        .O(\HRDATA[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[13]_INST_0_i_2 
       (.I0(HRDATA_S2[13]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[13]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[13]),
        .O(\HRDATA[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[14]_INST_0 
       (.I0(HRDATA_NOMAP[14]),
        .I1(\HRDATA[14]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[14]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[14]_INST_0_i_1 
       (.I0(HRDATA_S7[14]),
        .I1(HRDATA_NOMAP[14]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[14]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[14]),
        .O(\HRDATA[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[14]_INST_0_i_2 
       (.I0(HRDATA_S2[14]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[14]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[14]),
        .O(\HRDATA[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[15]_INST_0 
       (.I0(HRDATA_NOMAP[15]),
        .I1(\HRDATA[15]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[15]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[15]_INST_0_i_1 
       (.I0(HRDATA_S7[15]),
        .I1(HRDATA_NOMAP[15]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[15]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[15]),
        .O(\HRDATA[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[15]_INST_0_i_2 
       (.I0(HRDATA_S2[15]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[15]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[15]),
        .O(\HRDATA[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[16]_INST_0 
       (.I0(HRDATA_NOMAP[16]),
        .I1(\HRDATA[16]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[16]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[16]_INST_0_i_1 
       (.I0(HRDATA_S7[16]),
        .I1(HRDATA_NOMAP[16]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[16]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[16]),
        .O(\HRDATA[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[16]_INST_0_i_2 
       (.I0(HRDATA_S2[16]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[16]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[16]),
        .O(\HRDATA[16]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[17]_INST_0 
       (.I0(HRDATA_NOMAP[17]),
        .I1(\HRDATA[17]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[17]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[17]_INST_0_i_1 
       (.I0(HRDATA_S7[17]),
        .I1(HRDATA_NOMAP[17]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[17]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[17]),
        .O(\HRDATA[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[17]_INST_0_i_2 
       (.I0(HRDATA_S2[17]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[17]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[17]),
        .O(\HRDATA[17]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[18]_INST_0 
       (.I0(HRDATA_NOMAP[18]),
        .I1(\HRDATA[18]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[18]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[18]_INST_0_i_1 
       (.I0(HRDATA_S7[18]),
        .I1(HRDATA_NOMAP[18]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[18]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[18]),
        .O(\HRDATA[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[18]_INST_0_i_2 
       (.I0(HRDATA_S2[18]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[18]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[18]),
        .O(\HRDATA[18]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[19]_INST_0 
       (.I0(HRDATA_NOMAP[19]),
        .I1(\HRDATA[19]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[19]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[19]_INST_0_i_1 
       (.I0(HRDATA_S7[19]),
        .I1(HRDATA_NOMAP[19]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[19]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[19]),
        .O(\HRDATA[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[19]_INST_0_i_2 
       (.I0(HRDATA_S2[19]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[19]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[19]),
        .O(\HRDATA[19]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[1]_INST_0 
       (.I0(HRDATA_NOMAP[1]),
        .I1(\HRDATA[1]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[1]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[1]_INST_0_i_1 
       (.I0(HRDATA_S7[1]),
        .I1(HRDATA_NOMAP[1]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[1]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[1]),
        .O(\HRDATA[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[1]_INST_0_i_2 
       (.I0(HRDATA_S2[1]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[1]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[1]),
        .O(\HRDATA[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[20]_INST_0 
       (.I0(HRDATA_NOMAP[20]),
        .I1(\HRDATA[20]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[20]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[20]_INST_0_i_1 
       (.I0(HRDATA_S7[20]),
        .I1(HRDATA_NOMAP[20]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[20]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[20]),
        .O(\HRDATA[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[20]_INST_0_i_2 
       (.I0(HRDATA_S2[20]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[20]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[20]),
        .O(\HRDATA[20]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[21]_INST_0 
       (.I0(HRDATA_NOMAP[21]),
        .I1(\HRDATA[21]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[21]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[21]_INST_0_i_1 
       (.I0(HRDATA_S7[21]),
        .I1(HRDATA_NOMAP[21]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[21]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[21]),
        .O(\HRDATA[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[21]_INST_0_i_2 
       (.I0(HRDATA_S2[21]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[21]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[21]),
        .O(\HRDATA[21]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[22]_INST_0 
       (.I0(HRDATA_NOMAP[22]),
        .I1(\HRDATA[22]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[22]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[22]_INST_0_i_1 
       (.I0(HRDATA_S7[22]),
        .I1(HRDATA_NOMAP[22]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[22]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[22]),
        .O(\HRDATA[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[22]_INST_0_i_2 
       (.I0(HRDATA_S2[22]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[22]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[22]),
        .O(\HRDATA[22]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[23]_INST_0 
       (.I0(HRDATA_NOMAP[23]),
        .I1(\HRDATA[23]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[23]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[23]_INST_0_i_1 
       (.I0(HRDATA_S7[23]),
        .I1(HRDATA_NOMAP[23]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[23]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[23]),
        .O(\HRDATA[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[23]_INST_0_i_2 
       (.I0(HRDATA_S2[23]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[23]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[23]),
        .O(\HRDATA[23]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[24]_INST_0 
       (.I0(HRDATA_NOMAP[24]),
        .I1(\HRDATA[24]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[24]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[24]_INST_0_i_1 
       (.I0(HRDATA_S7[24]),
        .I1(HRDATA_NOMAP[24]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[24]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[24]),
        .O(\HRDATA[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[24]_INST_0_i_2 
       (.I0(HRDATA_S2[24]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[24]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[24]),
        .O(\HRDATA[24]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[25]_INST_0 
       (.I0(HRDATA_NOMAP[25]),
        .I1(\HRDATA[25]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[25]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[25]_INST_0_i_1 
       (.I0(HRDATA_S7[25]),
        .I1(HRDATA_NOMAP[25]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[25]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[25]),
        .O(\HRDATA[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[25]_INST_0_i_2 
       (.I0(HRDATA_S2[25]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[25]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[25]),
        .O(\HRDATA[25]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[26]_INST_0 
       (.I0(HRDATA_NOMAP[26]),
        .I1(\HRDATA[26]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[26]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[26]_INST_0_i_1 
       (.I0(HRDATA_S7[26]),
        .I1(HRDATA_NOMAP[26]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[26]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[26]),
        .O(\HRDATA[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[26]_INST_0_i_2 
       (.I0(HRDATA_S2[26]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[26]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[26]),
        .O(\HRDATA[26]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[27]_INST_0 
       (.I0(HRDATA_NOMAP[27]),
        .I1(\HRDATA[27]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[27]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[27]_INST_0_i_1 
       (.I0(HRDATA_S7[27]),
        .I1(HRDATA_NOMAP[27]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[27]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[27]),
        .O(\HRDATA[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[27]_INST_0_i_2 
       (.I0(HRDATA_S2[27]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[27]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[27]),
        .O(\HRDATA[27]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[28]_INST_0 
       (.I0(HRDATA_NOMAP[28]),
        .I1(\HRDATA[28]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[28]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[28]_INST_0_i_1 
       (.I0(HRDATA_S7[28]),
        .I1(HRDATA_NOMAP[28]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[28]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[28]),
        .O(\HRDATA[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[28]_INST_0_i_2 
       (.I0(HRDATA_S2[28]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[28]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[28]),
        .O(\HRDATA[28]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[29]_INST_0 
       (.I0(HRDATA_NOMAP[29]),
        .I1(\HRDATA[29]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[29]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[29]_INST_0_i_1 
       (.I0(HRDATA_S7[29]),
        .I1(HRDATA_NOMAP[29]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[29]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[29]),
        .O(\HRDATA[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[29]_INST_0_i_2 
       (.I0(HRDATA_S2[29]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[29]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[29]),
        .O(\HRDATA[29]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[2]_INST_0 
       (.I0(HRDATA_NOMAP[2]),
        .I1(\HRDATA[2]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[2]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[2]_INST_0_i_1 
       (.I0(HRDATA_S7[2]),
        .I1(HRDATA_NOMAP[2]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[2]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[2]),
        .O(\HRDATA[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[2]_INST_0_i_2 
       (.I0(HRDATA_S2[2]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[2]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[2]),
        .O(\HRDATA[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[30]_INST_0 
       (.I0(HRDATA_NOMAP[30]),
        .I1(\HRDATA[30]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[30]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[30]_INST_0_i_1 
       (.I0(HRDATA_S7[30]),
        .I1(HRDATA_NOMAP[30]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[30]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[30]),
        .O(\HRDATA[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[30]_INST_0_i_2 
       (.I0(HRDATA_S2[30]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[30]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[30]),
        .O(\HRDATA[30]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[31]_INST_0 
       (.I0(HRDATA_NOMAP[31]),
        .I1(\HRDATA[31]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[31]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[31]_INST_0_i_1 
       (.I0(HRDATA_S7[31]),
        .I1(HRDATA_NOMAP[31]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[31]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[31]),
        .O(\HRDATA[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[31]_INST_0_i_2 
       (.I0(HRDATA_S2[31]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[31]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[31]),
        .O(\HRDATA[31]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[3]_INST_0 
       (.I0(HRDATA_NOMAP[3]),
        .I1(\HRDATA[3]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[3]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[3]_INST_0_i_1 
       (.I0(HRDATA_S7[3]),
        .I1(HRDATA_NOMAP[3]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[3]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[3]),
        .O(\HRDATA[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[3]_INST_0_i_2 
       (.I0(HRDATA_S2[3]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[3]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[3]),
        .O(\HRDATA[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[4]_INST_0 
       (.I0(HRDATA_NOMAP[4]),
        .I1(\HRDATA[4]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[4]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[4]_INST_0_i_1 
       (.I0(HRDATA_S7[4]),
        .I1(HRDATA_NOMAP[4]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[4]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[4]),
        .O(\HRDATA[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[4]_INST_0_i_2 
       (.I0(HRDATA_S2[4]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[4]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[4]),
        .O(\HRDATA[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[5]_INST_0 
       (.I0(HRDATA_NOMAP[5]),
        .I1(\HRDATA[5]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[5]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[5]_INST_0_i_1 
       (.I0(HRDATA_S7[5]),
        .I1(HRDATA_NOMAP[5]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[5]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[5]),
        .O(\HRDATA[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[5]_INST_0_i_2 
       (.I0(HRDATA_S2[5]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[5]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[5]),
        .O(\HRDATA[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[6]_INST_0 
       (.I0(HRDATA_NOMAP[6]),
        .I1(\HRDATA[6]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[6]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[6]_INST_0_i_1 
       (.I0(HRDATA_S7[6]),
        .I1(HRDATA_NOMAP[6]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[6]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[6]),
        .O(\HRDATA[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[6]_INST_0_i_2 
       (.I0(HRDATA_S2[6]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[6]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[6]),
        .O(\HRDATA[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[7]_INST_0 
       (.I0(HRDATA_NOMAP[7]),
        .I1(\HRDATA[7]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[7]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[7]_INST_0_i_1 
       (.I0(HRDATA_S7[7]),
        .I1(HRDATA_NOMAP[7]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[7]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[7]),
        .O(\HRDATA[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[7]_INST_0_i_2 
       (.I0(HRDATA_S2[7]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[7]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[7]),
        .O(\HRDATA[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[8]_INST_0 
       (.I0(HRDATA_NOMAP[8]),
        .I1(\HRDATA[8]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[8]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[8]_INST_0_i_1 
       (.I0(HRDATA_S7[8]),
        .I1(HRDATA_NOMAP[8]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[8]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[8]),
        .O(\HRDATA[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[8]_INST_0_i_2 
       (.I0(HRDATA_S2[8]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[8]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[8]),
        .O(\HRDATA[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \HRDATA[9]_INST_0 
       (.I0(HRDATA_NOMAP[9]),
        .I1(\HRDATA[9]_INST_0_i_1_n_0 ),
        .I2(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I3(\HRDATA[9]_INST_0_i_2_n_0 ),
        .I4(APHASE_MUX_SEL),
        .O(HRDATA[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \HRDATA[9]_INST_0_i_1 
       (.I0(HRDATA_S7[9]),
        .I1(HRDATA_NOMAP[9]),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HRDATA_S5[9]),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HRDATA_S4[9]),
        .O(\HRDATA[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \HRDATA[9]_INST_0_i_2 
       (.I0(HRDATA_S2[9]),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HRDATA_NOMAP[9]),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HRDATA_S0[9]),
        .O(\HRDATA[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    HREADY_INST_0
       (.I0(HREADYOUT_NOMAP),
        .I1(APHASE_MUX_SEL),
        .I2(HREADY_INST_0_i_1_n_0),
        .I3(\APHASE_MUX_SEL_reg_n_0_[2] ),
        .I4(HREADY_INST_0_i_2_n_0),
        .O(E));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    HREADY_INST_0_i_1
       (.I0(HREADYOUT_S7),
        .I1(HREADYOUT_NOMAP),
        .I2(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I3(HREADYOUT_S5),
        .I4(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I5(HREADYOUT_S4),
        .O(HREADY_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    HREADY_INST_0_i_2
       (.I0(HREADYOUT_S2),
        .I1(\APHASE_MUX_SEL_reg_n_0_[1] ),
        .I2(HREADYOUT_NOMAP),
        .I3(\APHASE_MUX_SEL_reg_n_0_[0] ),
        .I4(HREADYOUT_S0),
        .O(HREADY_INST_0_i_2_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
