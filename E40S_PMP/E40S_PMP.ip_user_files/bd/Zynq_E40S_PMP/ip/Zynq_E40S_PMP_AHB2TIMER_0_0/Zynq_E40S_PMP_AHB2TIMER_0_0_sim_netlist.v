// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Wed Jul  3 16:07:42 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB2TIMER_0_0/Zynq_E40S_PMP_AHB2TIMER_0_0_sim_netlist.v
// Design      : Zynq_E40S_PMP_AHB2TIMER_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Zynq_E40S_PMP_AHB2TIMER_0_0,AHB2TIMER,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "AHB2TIMER,Vivado 2023.1.1" *) 
(* NotValidForBitStream *)
module Zynq_E40S_PMP_AHB2TIMER_0_0
   (HCLK,
    HRESETn,
    HADDR,
    HWDATA,
    HTRANS,
    HWRITE,
    HSEL,
    HREADY,
    HRDATA,
    HREADYOUT,
    timer_irq);
  input HCLK;
  input HRESETn;
  input [31:0]HADDR;
  input [31:0]HWDATA;
  input [1:0]HTRANS;
  input HWRITE;
  input HSEL;
  input HREADY;
  output [31:0]HRDATA;
  output HREADYOUT;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 timer_irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME timer_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output timer_irq;

  wire \<const1> ;
  wire [31:0]HADDR;
  wire HCLK;
  wire [31:0]HRDATA;
  wire HREADY;
  wire HRESETn;
  wire HSEL;
  wire [1:0]HTRANS;
  wire [31:0]HWDATA;
  wire HWRITE;
  wire timer_irq;

  assign HREADYOUT = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  Zynq_E40S_PMP_AHB2TIMER_0_0_AHB2TIMER inst
       (.HADDR(HADDR[3:0]),
        .HCLK(HCLK),
        .HRDATA(HRDATA),
        .HREADY(HREADY),
        .HRESETn(HRESETn),
        .HSEL(HSEL),
        .HTRANS(HTRANS[1]),
        .HWDATA(HWDATA),
        .HWRITE(HWRITE),
        .timer_irq(timer_irq));
endmodule

(* ORIG_REF_NAME = "AHB2TIMER" *) 
module Zynq_E40S_PMP_AHB2TIMER_0_0_AHB2TIMER
   (timer_irq,
    HRDATA,
    HREADY,
    HADDR,
    HCLK,
    HSEL,
    HTRANS,
    HWRITE,
    HWDATA,
    HRESETn);
  output timer_irq;
  output [31:0]HRDATA;
  input HREADY;
  input [3:0]HADDR;
  input HCLK;
  input HSEL;
  input [0:0]HTRANS;
  input HWRITE;
  input [31:0]HWDATA;
  input HRESETn;

  wire [3:0]HADDR;
  wire HCLK;
  wire [31:0]HRDATA;
  wire \HRDATA[3]_INST_0_i_1_n_0 ;
  wire \HRDATA[3]_INST_0_i_2_n_0 ;
  wire HREADY;
  wire HRESETn;
  wire HSEL;
  wire [0:0]HTRANS;
  wire [31:0]HWDATA;
  wire HWRITE;
  wire [3:3]control;
  wire control_1;
  wire \control_reg_n_0_[0] ;
  wire \control_reg_n_0_[2] ;
  wire current_state;
  wire [31:1]data1;
  wire [3:0]last_HADDR;
  wire last_HSEL;
  wire last_HWRITE;
  wire [31:0]load;
  wire load_0;
  wire mode;
  wire p_0_in6_in;
  wire timer_irq;
  wire timer_irq_i_10_n_0;
  wire timer_irq_i_11_n_0;
  wire timer_irq_i_12_n_0;
  wire timer_irq_i_2_n_0;
  wire timer_irq_i_4_n_0;
  wire timer_irq_i_5_n_0;
  wire timer_irq_i_6_n_0;
  wire timer_irq_i_7_n_0;
  wire timer_irq_i_8_n_0;
  wire timer_irq_i_9_n_0;
  wire timer_irq_next1;
  wire uprescaler16_n_0;
  wire uprescaler16_n_2;
  wire [31:0]value;
  wire \value[31]_i_3_n_0 ;
  wire \value[31]_i_4_n_0 ;
  wire \value[31]_i_5_n_0 ;
  wire [31:0]value_next;
  wire value_next0_carry__0_i_1_n_0;
  wire value_next0_carry__0_i_2_n_0;
  wire value_next0_carry__0_i_3_n_0;
  wire value_next0_carry__0_i_4_n_0;
  wire value_next0_carry__0_n_0;
  wire value_next0_carry__0_n_1;
  wire value_next0_carry__0_n_2;
  wire value_next0_carry__0_n_3;
  wire value_next0_carry__1_i_1_n_0;
  wire value_next0_carry__1_i_2_n_0;
  wire value_next0_carry__1_i_3_n_0;
  wire value_next0_carry__1_i_4_n_0;
  wire value_next0_carry__1_n_0;
  wire value_next0_carry__1_n_1;
  wire value_next0_carry__1_n_2;
  wire value_next0_carry__1_n_3;
  wire value_next0_carry__2_i_1_n_0;
  wire value_next0_carry__2_i_2_n_0;
  wire value_next0_carry__2_i_3_n_0;
  wire value_next0_carry__2_i_4_n_0;
  wire value_next0_carry__2_n_0;
  wire value_next0_carry__2_n_1;
  wire value_next0_carry__2_n_2;
  wire value_next0_carry__2_n_3;
  wire value_next0_carry__3_i_1_n_0;
  wire value_next0_carry__3_i_2_n_0;
  wire value_next0_carry__3_i_3_n_0;
  wire value_next0_carry__3_i_4_n_0;
  wire value_next0_carry__3_n_0;
  wire value_next0_carry__3_n_1;
  wire value_next0_carry__3_n_2;
  wire value_next0_carry__3_n_3;
  wire value_next0_carry__4_i_1_n_0;
  wire value_next0_carry__4_i_2_n_0;
  wire value_next0_carry__4_i_3_n_0;
  wire value_next0_carry__4_i_4_n_0;
  wire value_next0_carry__4_n_0;
  wire value_next0_carry__4_n_1;
  wire value_next0_carry__4_n_2;
  wire value_next0_carry__4_n_3;
  wire value_next0_carry__5_i_1_n_0;
  wire value_next0_carry__5_i_2_n_0;
  wire value_next0_carry__5_i_3_n_0;
  wire value_next0_carry__5_i_4_n_0;
  wire value_next0_carry__5_n_0;
  wire value_next0_carry__5_n_1;
  wire value_next0_carry__5_n_2;
  wire value_next0_carry__5_n_3;
  wire value_next0_carry__6_i_1_n_0;
  wire value_next0_carry__6_i_2_n_0;
  wire value_next0_carry__6_i_3_n_0;
  wire value_next0_carry__6_n_2;
  wire value_next0_carry__6_n_3;
  wire value_next0_carry_i_1_n_0;
  wire value_next0_carry_i_2_n_0;
  wire value_next0_carry_i_3_n_0;
  wire value_next0_carry_i_4_n_0;
  wire value_next0_carry_n_0;
  wire value_next0_carry_n_1;
  wire value_next0_carry_n_2;
  wire value_next0_carry_n_3;
  wire [3:2]NLW_value_next0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_value_next0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \HRDATA[0]_INST_0 
       (.I0(\HRDATA[3]_INST_0_i_1_n_0 ),
        .I1(\control_reg_n_0_[0] ),
        .I2(\HRDATA[3]_INST_0_i_2_n_0 ),
        .I3(value[0]),
        .I4(last_HADDR[2]),
        .I5(load[0]),
        .O(HRDATA[0]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[10]_INST_0 
       (.I0(load[10]),
        .I1(last_HADDR[2]),
        .I2(value[10]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[10]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[11]_INST_0 
       (.I0(load[11]),
        .I1(last_HADDR[2]),
        .I2(value[11]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[11]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[12]_INST_0 
       (.I0(load[12]),
        .I1(last_HADDR[2]),
        .I2(value[12]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[12]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[13]_INST_0 
       (.I0(load[13]),
        .I1(last_HADDR[2]),
        .I2(value[13]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[13]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[14]_INST_0 
       (.I0(load[14]),
        .I1(last_HADDR[2]),
        .I2(value[14]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[14]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[15]_INST_0 
       (.I0(load[15]),
        .I1(last_HADDR[2]),
        .I2(value[15]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[15]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[16]_INST_0 
       (.I0(load[16]),
        .I1(last_HADDR[2]),
        .I2(value[16]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[16]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[17]_INST_0 
       (.I0(load[17]),
        .I1(last_HADDR[2]),
        .I2(value[17]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[17]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[18]_INST_0 
       (.I0(load[18]),
        .I1(last_HADDR[2]),
        .I2(value[18]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[18]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[19]_INST_0 
       (.I0(load[19]),
        .I1(last_HADDR[2]),
        .I2(value[19]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[19]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \HRDATA[1]_INST_0 
       (.I0(\HRDATA[3]_INST_0_i_1_n_0 ),
        .I1(mode),
        .I2(\HRDATA[3]_INST_0_i_2_n_0 ),
        .I3(value[1]),
        .I4(last_HADDR[2]),
        .I5(load[1]),
        .O(HRDATA[1]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[20]_INST_0 
       (.I0(load[20]),
        .I1(last_HADDR[2]),
        .I2(value[20]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[20]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[21]_INST_0 
       (.I0(load[21]),
        .I1(last_HADDR[2]),
        .I2(value[21]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[21]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[22]_INST_0 
       (.I0(load[22]),
        .I1(last_HADDR[2]),
        .I2(value[22]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[22]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[23]_INST_0 
       (.I0(load[23]),
        .I1(last_HADDR[2]),
        .I2(value[23]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[23]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[24]_INST_0 
       (.I0(load[24]),
        .I1(last_HADDR[2]),
        .I2(value[24]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[24]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[25]_INST_0 
       (.I0(load[25]),
        .I1(last_HADDR[2]),
        .I2(value[25]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[25]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[26]_INST_0 
       (.I0(load[26]),
        .I1(last_HADDR[2]),
        .I2(value[26]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[26]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[27]_INST_0 
       (.I0(load[27]),
        .I1(last_HADDR[2]),
        .I2(value[27]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[27]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[28]_INST_0 
       (.I0(load[28]),
        .I1(last_HADDR[2]),
        .I2(value[28]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[28]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[29]_INST_0 
       (.I0(load[29]),
        .I1(last_HADDR[2]),
        .I2(value[29]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[29]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \HRDATA[2]_INST_0 
       (.I0(\HRDATA[3]_INST_0_i_1_n_0 ),
        .I1(\control_reg_n_0_[2] ),
        .I2(\HRDATA[3]_INST_0_i_2_n_0 ),
        .I3(value[2]),
        .I4(last_HADDR[2]),
        .I5(load[2]),
        .O(HRDATA[2]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[30]_INST_0 
       (.I0(load[30]),
        .I1(last_HADDR[2]),
        .I2(value[30]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[30]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[31]_INST_0 
       (.I0(load[31]),
        .I1(last_HADDR[2]),
        .I2(value[31]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[31]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \HRDATA[3]_INST_0 
       (.I0(\HRDATA[3]_INST_0_i_1_n_0 ),
        .I1(control),
        .I2(\HRDATA[3]_INST_0_i_2_n_0 ),
        .I3(value[3]),
        .I4(last_HADDR[2]),
        .I5(load[3]),
        .O(HRDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \HRDATA[3]_INST_0_i_1 
       (.I0(last_HADDR[2]),
        .I1(last_HADDR[3]),
        .I2(last_HADDR[0]),
        .I3(last_HADDR[1]),
        .O(\HRDATA[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \HRDATA[3]_INST_0_i_2 
       (.I0(last_HADDR[3]),
        .I1(last_HADDR[1]),
        .I2(last_HADDR[0]),
        .O(\HRDATA[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[4]_INST_0 
       (.I0(load[4]),
        .I1(last_HADDR[2]),
        .I2(value[4]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[4]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[5]_INST_0 
       (.I0(load[5]),
        .I1(last_HADDR[2]),
        .I2(value[5]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[5]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[6]_INST_0 
       (.I0(load[6]),
        .I1(last_HADDR[2]),
        .I2(value[6]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[6]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[7]_INST_0 
       (.I0(load[7]),
        .I1(last_HADDR[2]),
        .I2(value[7]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[7]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[8]_INST_0 
       (.I0(load[8]),
        .I1(last_HADDR[2]),
        .I2(value[8]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[8]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \HRDATA[9]_INST_0 
       (.I0(load[9]),
        .I1(last_HADDR[2]),
        .I2(value[9]),
        .I3(last_HADDR[0]),
        .I4(last_HADDR[1]),
        .I5(last_HADDR[3]),
        .O(HRDATA[9]));
  LUT4 #(
    .INIT(16'h0080)) 
    \control[3]_i_1 
       (.I0(last_HSEL),
        .I1(p_0_in6_in),
        .I2(last_HWRITE),
        .I3(\HRDATA[3]_INST_0_i_1_n_0 ),
        .O(control_1));
  FDCE \control_reg[0] 
       (.C(HCLK),
        .CE(control_1),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[0]),
        .Q(\control_reg_n_0_[0] ));
  FDCE \control_reg[1] 
       (.C(HCLK),
        .CE(control_1),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[1]),
        .Q(mode));
  FDCE \control_reg[2] 
       (.C(HCLK),
        .CE(control_1),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[2]),
        .Q(\control_reg_n_0_[2] ));
  FDCE \control_reg[3] 
       (.C(HCLK),
        .CE(control_1),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[3]),
        .Q(control));
  FDCE current_state_reg
       (.C(HCLK),
        .CE(1'b1),
        .CLR(timer_irq_i_2_n_0),
        .D(uprescaler16_n_2),
        .Q(current_state));
  FDRE \last_HADDR_reg[0] 
       (.C(HCLK),
        .CE(HREADY),
        .D(HADDR[0]),
        .Q(last_HADDR[0]),
        .R(1'b0));
  FDRE \last_HADDR_reg[1] 
       (.C(HCLK),
        .CE(HREADY),
        .D(HADDR[1]),
        .Q(last_HADDR[1]),
        .R(1'b0));
  FDRE \last_HADDR_reg[2] 
       (.C(HCLK),
        .CE(HREADY),
        .D(HADDR[2]),
        .Q(last_HADDR[2]),
        .R(1'b0));
  FDRE \last_HADDR_reg[3] 
       (.C(HCLK),
        .CE(HREADY),
        .D(HADDR[3]),
        .Q(last_HADDR[3]),
        .R(1'b0));
  FDRE last_HSEL_reg
       (.C(HCLK),
        .CE(HREADY),
        .D(HSEL),
        .Q(last_HSEL),
        .R(1'b0));
  FDRE \last_HTRANS_reg[1] 
       (.C(HCLK),
        .CE(HREADY),
        .D(HTRANS),
        .Q(p_0_in6_in),
        .R(1'b0));
  FDRE last_HWRITE_reg
       (.C(HCLK),
        .CE(HREADY),
        .D(HWRITE),
        .Q(last_HWRITE),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \load[31]_i_1 
       (.I0(last_HSEL),
        .I1(p_0_in6_in),
        .I2(last_HWRITE),
        .I3(\HRDATA[3]_INST_0_i_2_n_0 ),
        .I4(last_HADDR[2]),
        .O(load_0));
  FDCE \load_reg[0] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[0]),
        .Q(load[0]));
  FDCE \load_reg[10] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[10]),
        .Q(load[10]));
  FDCE \load_reg[11] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[11]),
        .Q(load[11]));
  FDCE \load_reg[12] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[12]),
        .Q(load[12]));
  FDCE \load_reg[13] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[13]),
        .Q(load[13]));
  FDCE \load_reg[14] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[14]),
        .Q(load[14]));
  FDCE \load_reg[15] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[15]),
        .Q(load[15]));
  FDCE \load_reg[16] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[16]),
        .Q(load[16]));
  FDCE \load_reg[17] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[17]),
        .Q(load[17]));
  FDCE \load_reg[18] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[18]),
        .Q(load[18]));
  FDCE \load_reg[19] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[19]),
        .Q(load[19]));
  FDCE \load_reg[1] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[1]),
        .Q(load[1]));
  FDCE \load_reg[20] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[20]),
        .Q(load[20]));
  FDCE \load_reg[21] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[21]),
        .Q(load[21]));
  FDCE \load_reg[22] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[22]),
        .Q(load[22]));
  FDCE \load_reg[23] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[23]),
        .Q(load[23]));
  FDCE \load_reg[24] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[24]),
        .Q(load[24]));
  FDCE \load_reg[25] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[25]),
        .Q(load[25]));
  FDCE \load_reg[26] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[26]),
        .Q(load[26]));
  FDCE \load_reg[27] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[27]),
        .Q(load[27]));
  FDCE \load_reg[28] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[28]),
        .Q(load[28]));
  FDCE \load_reg[29] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[29]),
        .Q(load[29]));
  FDCE \load_reg[2] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[2]),
        .Q(load[2]));
  FDCE \load_reg[30] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[30]),
        .Q(load[30]));
  FDCE \load_reg[31] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[31]),
        .Q(load[31]));
  FDCE \load_reg[3] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[3]),
        .Q(load[3]));
  FDCE \load_reg[4] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[4]),
        .Q(load[4]));
  FDCE \load_reg[5] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[5]),
        .Q(load[5]));
  FDCE \load_reg[6] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[6]),
        .Q(load[6]));
  FDCE \load_reg[7] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[7]),
        .Q(load[7]));
  FDCE \load_reg[8] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[8]),
        .Q(load[8]));
  FDCE \load_reg[9] 
       (.C(HCLK),
        .CE(load_0),
        .CLR(timer_irq_i_2_n_0),
        .D(HWDATA[9]),
        .Q(load[9]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    timer_irq_i_10
       (.I0(value[13]),
        .I1(value[15]),
        .I2(value[12]),
        .I3(value[14]),
        .O(timer_irq_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    timer_irq_i_11
       (.I0(value[1]),
        .I1(value[5]),
        .I2(value[4]),
        .I3(value[0]),
        .O(timer_irq_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    timer_irq_i_12
       (.I0(value[9]),
        .I1(value[11]),
        .I2(value[28]),
        .I3(value[30]),
        .O(timer_irq_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer_irq_i_2
       (.I0(HRESETn),
        .O(timer_irq_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    timer_irq_i_4
       (.I0(value[24]),
        .I1(value[31]),
        .I2(value[26]),
        .I3(value[25]),
        .I4(timer_irq_i_7_n_0),
        .O(timer_irq_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    timer_irq_i_5
       (.I0(value[16]),
        .I1(value[7]),
        .I2(value[29]),
        .I3(value[27]),
        .I4(timer_irq_i_8_n_0),
        .O(timer_irq_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    timer_irq_i_6
       (.I0(timer_irq_i_9_n_0),
        .I1(timer_irq_i_10_n_0),
        .I2(timer_irq_i_11_n_0),
        .I3(timer_irq_i_12_n_0),
        .O(timer_irq_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    timer_irq_i_7
       (.I0(value[21]),
        .I1(value[23]),
        .I2(value[6]),
        .I3(value[17]),
        .O(timer_irq_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    timer_irq_i_8
       (.I0(value[2]),
        .I1(value[3]),
        .I2(value[10]),
        .I3(value[8]),
        .O(timer_irq_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    timer_irq_i_9
       (.I0(value[19]),
        .I1(value[20]),
        .I2(value[22]),
        .I3(value[18]),
        .O(timer_irq_i_9_n_0));
  FDCE timer_irq_reg
       (.C(HCLK),
        .CE(1'b1),
        .CLR(timer_irq_i_2_n_0),
        .D(uprescaler16_n_0),
        .Q(timer_irq));
  Zynq_E40S_PMP_AHB2TIMER_0_0_prescaler uprescaler16
       (.E(timer_irq_next1),
        .HCLK(HCLK),
        .Q({\control_reg_n_0_[2] ,\control_reg_n_0_[0] }),
        .current_state(current_state),
        .current_state_reg(uprescaler16_n_0),
        .current_state_reg_0(uprescaler16_n_2),
        .timer_irq(timer_irq),
        .timer_irq_reg(timer_irq_i_4_n_0),
        .timer_irq_reg_0(timer_irq_i_5_n_0),
        .timer_irq_reg_1(timer_irq_i_6_n_0));
  LUT6 #(
    .INIT(64'h5757FFFF54570000)) 
    \value[0]_i_1 
       (.I0(value[0]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[0]),
        .O(value_next[0]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[10]_i_1 
       (.I0(data1[10]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[10]),
        .O(value_next[10]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[11]_i_1 
       (.I0(data1[11]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[11]),
        .O(value_next[11]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[12]_i_1 
       (.I0(data1[12]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[12]),
        .O(value_next[12]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[13]_i_1 
       (.I0(data1[13]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[13]),
        .O(value_next[13]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[14]_i_1 
       (.I0(data1[14]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[14]),
        .O(value_next[14]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[15]_i_1 
       (.I0(data1[15]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[15]),
        .O(value_next[15]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[16]_i_1 
       (.I0(data1[16]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[16]),
        .O(value_next[16]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[17]_i_1 
       (.I0(data1[17]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[17]),
        .O(value_next[17]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[18]_i_1 
       (.I0(data1[18]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[18]),
        .O(value_next[18]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[19]_i_1 
       (.I0(data1[19]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[19]),
        .O(value_next[19]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[1]_i_1 
       (.I0(data1[1]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[1]),
        .O(value_next[1]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[20]_i_1 
       (.I0(data1[20]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[20]),
        .O(value_next[20]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[21]_i_1 
       (.I0(data1[21]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[21]),
        .O(value_next[21]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[22]_i_1 
       (.I0(data1[22]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[22]),
        .O(value_next[22]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[23]_i_1 
       (.I0(data1[23]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[23]),
        .O(value_next[23]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[24]_i_1 
       (.I0(data1[24]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[24]),
        .O(value_next[24]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[25]_i_1 
       (.I0(data1[25]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[25]),
        .O(value_next[25]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[26]_i_1 
       (.I0(data1[26]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[26]),
        .O(value_next[26]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[27]_i_1 
       (.I0(data1[27]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[27]),
        .O(value_next[27]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[28]_i_1 
       (.I0(data1[28]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[28]),
        .O(value_next[28]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[29]_i_1 
       (.I0(data1[29]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[29]),
        .O(value_next[29]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[2]_i_1 
       (.I0(data1[2]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[2]),
        .O(value_next[2]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[30]_i_1 
       (.I0(data1[30]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[30]),
        .O(value_next[30]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[31]_i_2 
       (.I0(data1[31]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[31]),
        .O(value_next[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \value[31]_i_3 
       (.I0(timer_irq_i_8_n_0),
        .I1(\value[31]_i_4_n_0 ),
        .I2(timer_irq_i_7_n_0),
        .I3(\value[31]_i_5_n_0 ),
        .O(\value[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \value[31]_i_4 
       (.I0(value[27]),
        .I1(value[29]),
        .I2(value[7]),
        .I3(value[16]),
        .O(\value[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \value[31]_i_5 
       (.I0(value[25]),
        .I1(value[26]),
        .I2(value[31]),
        .I3(value[24]),
        .O(\value[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[3]_i_1 
       (.I0(data1[3]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[3]),
        .O(value_next[3]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[4]_i_1 
       (.I0(data1[4]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[4]),
        .O(value_next[4]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[5]_i_1 
       (.I0(data1[5]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[5]),
        .O(value_next[5]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[6]_i_1 
       (.I0(data1[6]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[6]),
        .O(value_next[6]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[7]_i_1 
       (.I0(data1[7]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[7]),
        .O(value_next[7]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[8]_i_1 
       (.I0(data1[8]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[8]),
        .O(value_next[8]));
  LUT6 #(
    .INIT(64'hABABFFFFA8AB0000)) 
    \value[9]_i_1 
       (.I0(data1[9]),
        .I1(\value[31]_i_3_n_0 ),
        .I2(timer_irq_i_6_n_0),
        .I3(mode),
        .I4(current_state),
        .I5(load[9]),
        .O(value_next[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 value_next0_carry
       (.CI(1'b0),
        .CO({value_next0_carry_n_0,value_next0_carry_n_1,value_next0_carry_n_2,value_next0_carry_n_3}),
        .CYINIT(value[0]),
        .DI(value[4:1]),
        .O(data1[4:1]),
        .S({value_next0_carry_i_1_n_0,value_next0_carry_i_2_n_0,value_next0_carry_i_3_n_0,value_next0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 value_next0_carry__0
       (.CI(value_next0_carry_n_0),
        .CO({value_next0_carry__0_n_0,value_next0_carry__0_n_1,value_next0_carry__0_n_2,value_next0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(value[8:5]),
        .O(data1[8:5]),
        .S({value_next0_carry__0_i_1_n_0,value_next0_carry__0_i_2_n_0,value_next0_carry__0_i_3_n_0,value_next0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__0_i_1
       (.I0(value[8]),
        .O(value_next0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__0_i_2
       (.I0(value[7]),
        .O(value_next0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__0_i_3
       (.I0(value[6]),
        .O(value_next0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__0_i_4
       (.I0(value[5]),
        .O(value_next0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 value_next0_carry__1
       (.CI(value_next0_carry__0_n_0),
        .CO({value_next0_carry__1_n_0,value_next0_carry__1_n_1,value_next0_carry__1_n_2,value_next0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(value[12:9]),
        .O(data1[12:9]),
        .S({value_next0_carry__1_i_1_n_0,value_next0_carry__1_i_2_n_0,value_next0_carry__1_i_3_n_0,value_next0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__1_i_1
       (.I0(value[12]),
        .O(value_next0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__1_i_2
       (.I0(value[11]),
        .O(value_next0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__1_i_3
       (.I0(value[10]),
        .O(value_next0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__1_i_4
       (.I0(value[9]),
        .O(value_next0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 value_next0_carry__2
       (.CI(value_next0_carry__1_n_0),
        .CO({value_next0_carry__2_n_0,value_next0_carry__2_n_1,value_next0_carry__2_n_2,value_next0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(value[16:13]),
        .O(data1[16:13]),
        .S({value_next0_carry__2_i_1_n_0,value_next0_carry__2_i_2_n_0,value_next0_carry__2_i_3_n_0,value_next0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__2_i_1
       (.I0(value[16]),
        .O(value_next0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__2_i_2
       (.I0(value[15]),
        .O(value_next0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__2_i_3
       (.I0(value[14]),
        .O(value_next0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__2_i_4
       (.I0(value[13]),
        .O(value_next0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 value_next0_carry__3
       (.CI(value_next0_carry__2_n_0),
        .CO({value_next0_carry__3_n_0,value_next0_carry__3_n_1,value_next0_carry__3_n_2,value_next0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(value[20:17]),
        .O(data1[20:17]),
        .S({value_next0_carry__3_i_1_n_0,value_next0_carry__3_i_2_n_0,value_next0_carry__3_i_3_n_0,value_next0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__3_i_1
       (.I0(value[20]),
        .O(value_next0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__3_i_2
       (.I0(value[19]),
        .O(value_next0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__3_i_3
       (.I0(value[18]),
        .O(value_next0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__3_i_4
       (.I0(value[17]),
        .O(value_next0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 value_next0_carry__4
       (.CI(value_next0_carry__3_n_0),
        .CO({value_next0_carry__4_n_0,value_next0_carry__4_n_1,value_next0_carry__4_n_2,value_next0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(value[24:21]),
        .O(data1[24:21]),
        .S({value_next0_carry__4_i_1_n_0,value_next0_carry__4_i_2_n_0,value_next0_carry__4_i_3_n_0,value_next0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__4_i_1
       (.I0(value[24]),
        .O(value_next0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__4_i_2
       (.I0(value[23]),
        .O(value_next0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__4_i_3
       (.I0(value[22]),
        .O(value_next0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__4_i_4
       (.I0(value[21]),
        .O(value_next0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 value_next0_carry__5
       (.CI(value_next0_carry__4_n_0),
        .CO({value_next0_carry__5_n_0,value_next0_carry__5_n_1,value_next0_carry__5_n_2,value_next0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(value[28:25]),
        .O(data1[28:25]),
        .S({value_next0_carry__5_i_1_n_0,value_next0_carry__5_i_2_n_0,value_next0_carry__5_i_3_n_0,value_next0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__5_i_1
       (.I0(value[28]),
        .O(value_next0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__5_i_2
       (.I0(value[27]),
        .O(value_next0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__5_i_3
       (.I0(value[26]),
        .O(value_next0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__5_i_4
       (.I0(value[25]),
        .O(value_next0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 value_next0_carry__6
       (.CI(value_next0_carry__5_n_0),
        .CO({NLW_value_next0_carry__6_CO_UNCONNECTED[3:2],value_next0_carry__6_n_2,value_next0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,value[30:29]}),
        .O({NLW_value_next0_carry__6_O_UNCONNECTED[3],data1[31:29]}),
        .S({1'b0,value_next0_carry__6_i_1_n_0,value_next0_carry__6_i_2_n_0,value_next0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__6_i_1
       (.I0(value[31]),
        .O(value_next0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__6_i_2
       (.I0(value[30]),
        .O(value_next0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry__6_i_3
       (.I0(value[29]),
        .O(value_next0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry_i_1
       (.I0(value[4]),
        .O(value_next0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry_i_2
       (.I0(value[3]),
        .O(value_next0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry_i_3
       (.I0(value[2]),
        .O(value_next0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    value_next0_carry_i_4
       (.I0(value[1]),
        .O(value_next0_carry_i_4_n_0));
  FDCE \value_reg[0] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[0]),
        .Q(value[0]));
  FDCE \value_reg[10] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[10]),
        .Q(value[10]));
  FDCE \value_reg[11] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[11]),
        .Q(value[11]));
  FDCE \value_reg[12] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[12]),
        .Q(value[12]));
  FDCE \value_reg[13] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[13]),
        .Q(value[13]));
  FDCE \value_reg[14] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[14]),
        .Q(value[14]));
  FDCE \value_reg[15] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[15]),
        .Q(value[15]));
  FDCE \value_reg[16] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[16]),
        .Q(value[16]));
  FDCE \value_reg[17] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[17]),
        .Q(value[17]));
  FDCE \value_reg[18] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[18]),
        .Q(value[18]));
  FDCE \value_reg[19] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[19]),
        .Q(value[19]));
  FDCE \value_reg[1] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[1]),
        .Q(value[1]));
  FDCE \value_reg[20] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[20]),
        .Q(value[20]));
  FDCE \value_reg[21] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[21]),
        .Q(value[21]));
  FDCE \value_reg[22] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[22]),
        .Q(value[22]));
  FDCE \value_reg[23] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[23]),
        .Q(value[23]));
  FDCE \value_reg[24] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[24]),
        .Q(value[24]));
  FDCE \value_reg[25] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[25]),
        .Q(value[25]));
  FDCE \value_reg[26] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[26]),
        .Q(value[26]));
  FDCE \value_reg[27] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[27]),
        .Q(value[27]));
  FDCE \value_reg[28] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[28]),
        .Q(value[28]));
  FDCE \value_reg[29] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[29]),
        .Q(value[29]));
  FDCE \value_reg[2] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[2]),
        .Q(value[2]));
  FDCE \value_reg[30] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[30]),
        .Q(value[30]));
  FDCE \value_reg[31] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[31]),
        .Q(value[31]));
  FDCE \value_reg[3] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[3]),
        .Q(value[3]));
  FDCE \value_reg[4] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[4]),
        .Q(value[4]));
  FDCE \value_reg[5] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[5]),
        .Q(value[5]));
  FDCE \value_reg[6] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[6]),
        .Q(value[6]));
  FDCE \value_reg[7] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[7]),
        .Q(value[7]));
  FDCE \value_reg[8] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[8]),
        .Q(value[8]));
  FDCE \value_reg[9] 
       (.C(HCLK),
        .CE(timer_irq_next1),
        .CLR(timer_irq_i_2_n_0),
        .D(value_next[9]),
        .Q(value[9]));
endmodule

(* ORIG_REF_NAME = "prescaler" *) 
module Zynq_E40S_PMP_AHB2TIMER_0_0_prescaler
   (current_state_reg,
    E,
    current_state_reg_0,
    current_state,
    timer_irq_reg,
    timer_irq_reg_0,
    timer_irq_reg_1,
    timer_irq,
    Q,
    HCLK);
  output current_state_reg;
  output [0:0]E;
  output current_state_reg_0;
  input current_state;
  input timer_irq_reg;
  input timer_irq_reg_0;
  input timer_irq_reg_1;
  input timer_irq;
  input [1:0]Q;
  input HCLK;

  wire [0:0]E;
  wire HCLK;
  wire [1:0]Q;
  wire [3:0]counter_reg;
  wire current_state;
  wire current_state_reg;
  wire current_state_reg_0;
  wire [3:0]p_0_in;
  wire timer_irq;
  wire timer_irq_i_3_n_0;
  wire timer_irq_reg;
  wire timer_irq_reg_0;
  wire timer_irq_reg_1;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[2]),
        .I3(counter_reg[3]),
        .O(p_0_in[3]));
  FDRE \counter_reg[0] 
       (.C(HCLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(counter_reg[0]),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(HCLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(counter_reg[1]),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(HCLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(counter_reg[2]),
        .R(1'b0));
  FDRE \counter_reg[3] 
       (.C(HCLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(counter_reg[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    current_state_i_1
       (.I0(current_state),
        .I1(timer_irq_i_3_n_0),
        .O(current_state_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    timer_irq_i_1
       (.I0(timer_irq_i_3_n_0),
        .I1(current_state),
        .I2(timer_irq_reg),
        .I3(timer_irq_reg_0),
        .I4(timer_irq_reg_1),
        .I5(timer_irq),
        .O(current_state_reg));
  LUT6 #(
    .INIT(64'h7FFF0000FFFFFFFF)) 
    timer_irq_i_3
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(timer_irq_i_3_n_0));
  LUT6 #(
    .INIT(64'hA222222222222222)) 
    \value[31]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter_reg[1]),
        .I3(counter_reg[0]),
        .I4(counter_reg[2]),
        .I5(counter_reg[3]),
        .O(E));
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
