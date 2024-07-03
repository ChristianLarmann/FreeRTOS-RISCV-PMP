// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Wed Jul  3 16:08:37 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB2UART_0_0/Zynq_E40S_PMP_AHB2UART_0_0_sim_netlist.v
// Design      : Zynq_E40S_PMP_AHB2UART_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Zynq_E40S_PMP_AHB2UART_0_0,AHB2UART,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "AHB2UART,Vivado 2023.1.1" *) 
(* NotValidForBitStream *)
module Zynq_E40S_PMP_AHB2UART_0_0
   (HCLK,
    HRESETn,
    HADDR,
    HTRANS,
    HWDATA,
    HWRITE,
    HREADY,
    HREADYOUT,
    HRDATA,
    HSEL,
    RsRx,
    RsTx,
    uart_irq);
  input HCLK;
  input HRESETn;
  input [31:0]HADDR;
  input [1:0]HTRANS;
  input [31:0]HWDATA;
  input HWRITE;
  input HREADY;
  output HREADYOUT;
  output [31:0]HRDATA;
  input HSEL;
  input RsRx;
  output RsTx;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 uart_irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME uart_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output uart_irq;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]HADDR;
  wire HCLK;
  wire [1:0]\^HRDATA ;
  wire HREADY;
  wire HRESETn;
  wire HSEL;
  wire [1:0]HTRANS;
  wire [31:0]HWDATA;
  wire HWRITE;
  wire RsRx;
  wire RsTx;
  wire uart_irq;

  assign HRDATA[31] = \<const0> ;
  assign HRDATA[30] = \<const0> ;
  assign HRDATA[29] = \<const0> ;
  assign HRDATA[28] = \<const0> ;
  assign HRDATA[27] = \<const0> ;
  assign HRDATA[26] = \<const0> ;
  assign HRDATA[25] = \<const0> ;
  assign HRDATA[24] = \<const0> ;
  assign HRDATA[23] = \<const0> ;
  assign HRDATA[22] = \<const0> ;
  assign HRDATA[21] = \<const0> ;
  assign HRDATA[20] = \<const0> ;
  assign HRDATA[19] = \<const0> ;
  assign HRDATA[18] = \<const0> ;
  assign HRDATA[17] = \<const0> ;
  assign HRDATA[16] = \<const0> ;
  assign HRDATA[15] = \<const0> ;
  assign HRDATA[14] = \<const0> ;
  assign HRDATA[13] = \<const0> ;
  assign HRDATA[12] = \<const0> ;
  assign HRDATA[11] = \<const0> ;
  assign HRDATA[10] = \<const0> ;
  assign HRDATA[9] = \<const0> ;
  assign HRDATA[8] = \<const0> ;
  assign HRDATA[7] = \<const0> ;
  assign HRDATA[6] = \<const0> ;
  assign HRDATA[5] = \<const0> ;
  assign HRDATA[4] = \<const0> ;
  assign HRDATA[3] = \<const0> ;
  assign HRDATA[2] = \<const0> ;
  assign HRDATA[1:0] = \^HRDATA [1:0];
  assign HREADYOUT = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  Zynq_E40S_PMP_AHB2UART_0_0_AHB2UART inst
       (.HADDR(HADDR[7:0]),
        .HCLK(HCLK),
        .HRDATA(\^HRDATA ),
        .HREADY(HREADY),
        .HRESETn(HRESETn),
        .HSEL(HSEL),
        .HTRANS(HTRANS[1]),
        .HWDATA(HWDATA[7:0]),
        .HWRITE(HWRITE),
        .RsRx(RsRx),
        .RsTx(RsTx),
        .uart_irq(uart_irq));
endmodule

(* ORIG_REF_NAME = "AHB2UART" *) 
module Zynq_E40S_PMP_AHB2UART_0_0_AHB2UART
   (RsTx,
    HRDATA,
    uart_irq,
    HCLK,
    HWDATA,
    HRESETn,
    HREADY,
    HADDR,
    HWRITE,
    HSEL,
    HTRANS,
    RsRx);
  output RsTx;
  output [1:0]HRDATA;
  output uart_irq;
  input HCLK;
  input [7:0]HWDATA;
  input HRESETn;
  input HREADY;
  input [7:0]HADDR;
  input HWRITE;
  input HSEL;
  input [0:0]HTRANS;
  input RsRx;

  wire [7:0]HADDR;
  wire HCLK;
  wire [1:0]HRDATA;
  wire HREADY;
  wire HRESETn;
  wire HSEL;
  wire [0:0]HTRANS;
  wire [7:0]HWDATA;
  wire HWRITE;
  wire RsRx;
  wire RsTx;
  wire b_rate;
  wire b_rate_i_1_n_0;
  wire b_rate_i_2_n_0;
  wire b_rate_i_3_n_0;
  wire b_tick;
  wire [1:1]current_state;
  wire [7:7]data_next;
  wire [7:0]last_HADDR;
  wire last_HSEL;
  wire last_HWRITE;
  wire p_0_in1_in;
  wire [1:1]p_1_in;
  wire [6:0]r_data;
  wire tx_done;
  wire tx_empty;
  wire uFIFO_RX_n_0;
  wire uFIFO_RX_n_1;
  wire uFIFO_RX_n_3;
  wire uUART_TX_n_1;
  wire uart_irq;

  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    b_rate_i_1
       (.I0(HWDATA[0]),
        .I1(p_0_in1_in),
        .I2(last_HADDR[2]),
        .I3(b_rate_i_2_n_0),
        .I4(b_rate_i_3_n_0),
        .I5(b_rate),
        .O(b_rate_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    b_rate_i_2
       (.I0(last_HWRITE),
        .I1(last_HSEL),
        .O(b_rate_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    b_rate_i_3
       (.I0(uFIFO_RX_n_3),
        .I1(last_HADDR[3]),
        .I2(last_HADDR[6]),
        .I3(last_HADDR[7]),
        .O(b_rate_i_3_n_0));
  FDPE b_rate_reg
       (.C(HCLK),
        .CE(1'b1),
        .D(b_rate_i_1_n_0),
        .PRE(uUART_TX_n_1),
        .Q(b_rate));
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
  FDRE \last_HADDR_reg[4] 
       (.C(HCLK),
        .CE(HREADY),
        .D(HADDR[4]),
        .Q(last_HADDR[4]),
        .R(1'b0));
  FDRE \last_HADDR_reg[5] 
       (.C(HCLK),
        .CE(HREADY),
        .D(HADDR[5]),
        .Q(last_HADDR[5]),
        .R(1'b0));
  FDRE \last_HADDR_reg[6] 
       (.C(HCLK),
        .CE(HREADY),
        .D(HADDR[6]),
        .Q(last_HADDR[6]),
        .R(1'b0));
  FDRE \last_HADDR_reg[7] 
       (.C(HCLK),
        .CE(HREADY),
        .D(HADDR[7]),
        .Q(last_HADDR[7]),
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
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE last_HWRITE_reg
       (.C(HCLK),
        .CE(HREADY),
        .D(HWRITE),
        .Q(last_HWRITE),
        .R(1'b0));
  Zynq_E40S_PMP_AHB2UART_0_0_BAUDGEN uBAUDGEN
       (.CO(b_tick),
        .HCLK(HCLK),
        .b_rate(b_rate),
        .\count_reg_reg[0]_0 (uUART_TX_n_1));
  Zynq_E40S_PMP_AHB2UART_0_0_UFIFO uFIFO_RX
       (.HCLK(HCLK),
        .HRDATA(HRDATA[0]),
        .Q(last_HADDR),
        .full_reg_reg_0(uFIFO_RX_n_0),
        .full_reg_reg_1(uUART_TX_n_1),
        .\last_HADDR_reg[0] (uFIFO_RX_n_3),
        .\last_HADDR_reg[7] (uFIFO_RX_n_1),
        .last_HSEL(last_HSEL),
        .last_HWRITE(last_HWRITE),
        .p_0_in1_in(p_0_in1_in),
        .p_1_in(p_1_in),
        .uart_irq(uart_irq));
  Zynq_E40S_PMP_AHB2UART_0_0_UFIFO_0 uFIFO_TX
       (.D(data_next),
        .HCLK(HCLK),
        .HCLK_0(r_data),
        .HRDATA(HRDATA[1]),
        .\HRDATA[1] (uFIFO_RX_n_1),
        .HWDATA(HWDATA),
        .current_state(current_state),
        .empty_reg_reg_0(uUART_TX_n_1),
        .last_HSEL(last_HSEL),
        .last_HWRITE(last_HWRITE),
        .p_0_in1_in(p_0_in1_in),
        .tx_done(tx_done),
        .tx_empty(tx_empty));
  Zynq_E40S_PMP_AHB2UART_0_0_UART_RX uUART_RX
       (.CO(b_tick),
        .HCLK(HCLK),
        .RsRx(RsRx),
        .\count_reg_reg[2]_0 (uUART_TX_n_1),
        .empty_reg_reg(uFIFO_RX_n_0),
        .p_1_in(p_1_in));
  Zynq_E40S_PMP_AHB2UART_0_0_UART_TX uUART_TX
       (.CO(b_tick),
        .D(data_next),
        .\FSM_sequential_current_state_reg[1]_0 (current_state),
        .HCLK(HCLK),
        .HRESETn(HRESETn),
        .HRESETn_0(uUART_TX_n_1),
        .RsTx(RsTx),
        .\data_reg_reg[6]_0 (r_data),
        .tx_done(tx_done),
        .tx_empty(tx_empty));
endmodule

(* ORIG_REF_NAME = "BAUDGEN" *) 
module Zynq_E40S_PMP_AHB2UART_0_0_BAUDGEN
   (CO,
    HCLK,
    \count_reg_reg[0]_0 ,
    b_rate);
  output [0:0]CO;
  input HCLK;
  input \count_reg_reg[0]_0 ;
  input b_rate;

  wire [0:0]CO;
  wire HCLK;
  wire b_rate;
  wire baudtick_carry__0_i_1_n_0;
  wire baudtick_carry__0_i_2_n_0;
  wire baudtick_carry__0_i_3_n_0;
  wire baudtick_carry__0_i_4_n_0;
  wire baudtick_carry__0_n_1;
  wire baudtick_carry__0_n_2;
  wire baudtick_carry__0_n_3;
  wire baudtick_carry_i_1_n_0;
  wire baudtick_carry_i_2_n_0;
  wire baudtick_carry_i_3_n_0;
  wire baudtick_carry_i_4_n_0;
  wire baudtick_carry_n_0;
  wire baudtick_carry_n_1;
  wire baudtick_carry_n_2;
  wire baudtick_carry_n_3;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_3_n_0 ;
  wire \count_reg[0]_i_4_n_0 ;
  wire \count_reg[0]_i_5_n_0 ;
  wire \count_reg[0]_i_6_n_0 ;
  wire \count_reg[12]_i_2_n_0 ;
  wire \count_reg[12]_i_3_n_0 ;
  wire \count_reg[12]_i_4_n_0 ;
  wire \count_reg[12]_i_5_n_0 ;
  wire \count_reg[16]_i_2_n_0 ;
  wire \count_reg[16]_i_3_n_0 ;
  wire \count_reg[16]_i_4_n_0 ;
  wire \count_reg[16]_i_5_n_0 ;
  wire \count_reg[20]_i_2_n_0 ;
  wire \count_reg[20]_i_3_n_0 ;
  wire \count_reg[4]_i_2_n_0 ;
  wire \count_reg[4]_i_3_n_0 ;
  wire \count_reg[4]_i_4_n_0 ;
  wire \count_reg[4]_i_5_n_0 ;
  wire \count_reg[8]_i_2_n_0 ;
  wire \count_reg[8]_i_3_n_0 ;
  wire \count_reg[8]_i_4_n_0 ;
  wire \count_reg[8]_i_5_n_0 ;
  wire [21:0]count_reg_reg;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[0]_i_1_n_0 ;
  wire \count_reg_reg[0]_i_1_n_1 ;
  wire \count_reg_reg[0]_i_1_n_2 ;
  wire \count_reg_reg[0]_i_1_n_3 ;
  wire \count_reg_reg[0]_i_1_n_4 ;
  wire \count_reg_reg[0]_i_1_n_5 ;
  wire \count_reg_reg[0]_i_1_n_6 ;
  wire \count_reg_reg[0]_i_1_n_7 ;
  wire \count_reg_reg[12]_i_1_n_0 ;
  wire \count_reg_reg[12]_i_1_n_1 ;
  wire \count_reg_reg[12]_i_1_n_2 ;
  wire \count_reg_reg[12]_i_1_n_3 ;
  wire \count_reg_reg[12]_i_1_n_4 ;
  wire \count_reg_reg[12]_i_1_n_5 ;
  wire \count_reg_reg[12]_i_1_n_6 ;
  wire \count_reg_reg[12]_i_1_n_7 ;
  wire \count_reg_reg[16]_i_1_n_0 ;
  wire \count_reg_reg[16]_i_1_n_1 ;
  wire \count_reg_reg[16]_i_1_n_2 ;
  wire \count_reg_reg[16]_i_1_n_3 ;
  wire \count_reg_reg[16]_i_1_n_4 ;
  wire \count_reg_reg[16]_i_1_n_5 ;
  wire \count_reg_reg[16]_i_1_n_6 ;
  wire \count_reg_reg[16]_i_1_n_7 ;
  wire \count_reg_reg[20]_i_1_n_3 ;
  wire \count_reg_reg[20]_i_1_n_6 ;
  wire \count_reg_reg[20]_i_1_n_7 ;
  wire \count_reg_reg[4]_i_1_n_0 ;
  wire \count_reg_reg[4]_i_1_n_1 ;
  wire \count_reg_reg[4]_i_1_n_2 ;
  wire \count_reg_reg[4]_i_1_n_3 ;
  wire \count_reg_reg[4]_i_1_n_4 ;
  wire \count_reg_reg[4]_i_1_n_5 ;
  wire \count_reg_reg[4]_i_1_n_6 ;
  wire \count_reg_reg[4]_i_1_n_7 ;
  wire \count_reg_reg[8]_i_1_n_0 ;
  wire \count_reg_reg[8]_i_1_n_1 ;
  wire \count_reg_reg[8]_i_1_n_2 ;
  wire \count_reg_reg[8]_i_1_n_3 ;
  wire \count_reg_reg[8]_i_1_n_4 ;
  wire \count_reg_reg[8]_i_1_n_5 ;
  wire \count_reg_reg[8]_i_1_n_6 ;
  wire \count_reg_reg[8]_i_1_n_7 ;
  wire [3:0]NLW_baudtick_carry_O_UNCONNECTED;
  wire [3:0]NLW_baudtick_carry__0_O_UNCONNECTED;
  wire [3:1]\NLW_count_reg_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_reg_reg[20]_i_1_O_UNCONNECTED ;

  CARRY4 baudtick_carry
       (.CI(1'b0),
        .CO({baudtick_carry_n_0,baudtick_carry_n_1,baudtick_carry_n_2,baudtick_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baudtick_carry_O_UNCONNECTED[3:0]),
        .S({baudtick_carry_i_1_n_0,baudtick_carry_i_2_n_0,baudtick_carry_i_3_n_0,baudtick_carry_i_4_n_0}));
  CARRY4 baudtick_carry__0
       (.CI(baudtick_carry_n_0),
        .CO({CO,baudtick_carry__0_n_1,baudtick_carry__0_n_2,baudtick_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baudtick_carry__0_O_UNCONNECTED[3:0]),
        .S({baudtick_carry__0_i_1_n_0,baudtick_carry__0_i_2_n_0,baudtick_carry__0_i_3_n_0,baudtick_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    baudtick_carry__0_i_1
       (.I0(count_reg_reg[21]),
        .O(baudtick_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baudtick_carry__0_i_2
       (.I0(count_reg_reg[20]),
        .I1(count_reg_reg[19]),
        .I2(count_reg_reg[18]),
        .O(baudtick_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baudtick_carry__0_i_3
       (.I0(count_reg_reg[17]),
        .I1(count_reg_reg[16]),
        .I2(count_reg_reg[15]),
        .O(baudtick_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baudtick_carry__0_i_4
       (.I0(count_reg_reg[14]),
        .I1(count_reg_reg[13]),
        .I2(count_reg_reg[12]),
        .O(baudtick_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baudtick_carry_i_1
       (.I0(count_reg_reg[11]),
        .I1(count_reg_reg[10]),
        .I2(count_reg_reg[9]),
        .O(baudtick_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h0420)) 
    baudtick_carry_i_2
       (.I0(b_rate),
        .I1(count_reg_reg[8]),
        .I2(count_reg_reg[7]),
        .I3(count_reg_reg[6]),
        .O(baudtick_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h1001)) 
    baudtick_carry_i_3
       (.I0(count_reg_reg[4]),
        .I1(count_reg_reg[3]),
        .I2(count_reg_reg[5]),
        .I3(b_rate),
        .O(baudtick_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h4020)) 
    baudtick_carry_i_4
       (.I0(count_reg_reg[2]),
        .I1(b_rate),
        .I2(count_reg_reg[1]),
        .I3(count_reg_reg[0]),
        .O(baudtick_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_2 
       (.I0(count_reg_reg[0]),
        .I1(CO),
        .O(\count_reg[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_3 
       (.I0(count_reg_reg[3]),
        .I1(CO),
        .O(\count_reg[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_4 
       (.I0(count_reg_reg[2]),
        .I1(CO),
        .O(\count_reg[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_5 
       (.I0(count_reg_reg[1]),
        .I1(CO),
        .O(\count_reg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count_reg[0]_i_6 
       (.I0(count_reg_reg[0]),
        .I1(CO),
        .O(\count_reg[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[12]_i_2 
       (.I0(count_reg_reg[15]),
        .I1(CO),
        .O(\count_reg[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[12]_i_3 
       (.I0(count_reg_reg[14]),
        .I1(CO),
        .O(\count_reg[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[12]_i_4 
       (.I0(count_reg_reg[13]),
        .I1(CO),
        .O(\count_reg[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[12]_i_5 
       (.I0(count_reg_reg[12]),
        .I1(CO),
        .O(\count_reg[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[16]_i_2 
       (.I0(count_reg_reg[19]),
        .I1(CO),
        .O(\count_reg[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[16]_i_3 
       (.I0(count_reg_reg[18]),
        .I1(CO),
        .O(\count_reg[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[16]_i_4 
       (.I0(count_reg_reg[17]),
        .I1(CO),
        .O(\count_reg[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[16]_i_5 
       (.I0(count_reg_reg[16]),
        .I1(CO),
        .O(\count_reg[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[20]_i_2 
       (.I0(count_reg_reg[21]),
        .I1(CO),
        .O(\count_reg[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[20]_i_3 
       (.I0(count_reg_reg[20]),
        .I1(CO),
        .O(\count_reg[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[4]_i_2 
       (.I0(count_reg_reg[7]),
        .I1(CO),
        .O(\count_reg[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[4]_i_3 
       (.I0(count_reg_reg[6]),
        .I1(CO),
        .O(\count_reg[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[4]_i_4 
       (.I0(count_reg_reg[5]),
        .I1(CO),
        .O(\count_reg[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[4]_i_5 
       (.I0(count_reg_reg[4]),
        .I1(CO),
        .O(\count_reg[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[8]_i_2 
       (.I0(count_reg_reg[11]),
        .I1(CO),
        .O(\count_reg[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[8]_i_3 
       (.I0(count_reg_reg[10]),
        .I1(CO),
        .O(\count_reg[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[8]_i_4 
       (.I0(count_reg_reg[9]),
        .I1(CO),
        .O(\count_reg[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[8]_i_5 
       (.I0(count_reg_reg[8]),
        .I1(CO),
        .O(\count_reg[8]_i_5_n_0 ));
  FDCE \count_reg_reg[0] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[0]_i_1_n_7 ),
        .Q(count_reg_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg_reg[0]_i_1_n_0 ,\count_reg_reg[0]_i_1_n_1 ,\count_reg_reg[0]_i_1_n_2 ,\count_reg_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count_reg[0]_i_2_n_0 }),
        .O({\count_reg_reg[0]_i_1_n_4 ,\count_reg_reg[0]_i_1_n_5 ,\count_reg_reg[0]_i_1_n_6 ,\count_reg_reg[0]_i_1_n_7 }),
        .S({\count_reg[0]_i_3_n_0 ,\count_reg[0]_i_4_n_0 ,\count_reg[0]_i_5_n_0 ,\count_reg[0]_i_6_n_0 }));
  FDCE \count_reg_reg[10] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[8]_i_1_n_5 ),
        .Q(count_reg_reg[10]));
  FDCE \count_reg_reg[11] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[8]_i_1_n_4 ),
        .Q(count_reg_reg[11]));
  FDCE \count_reg_reg[12] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[12]_i_1_n_7 ),
        .Q(count_reg_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg_reg[12]_i_1 
       (.CI(\count_reg_reg[8]_i_1_n_0 ),
        .CO({\count_reg_reg[12]_i_1_n_0 ,\count_reg_reg[12]_i_1_n_1 ,\count_reg_reg[12]_i_1_n_2 ,\count_reg_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg_reg[12]_i_1_n_4 ,\count_reg_reg[12]_i_1_n_5 ,\count_reg_reg[12]_i_1_n_6 ,\count_reg_reg[12]_i_1_n_7 }),
        .S({\count_reg[12]_i_2_n_0 ,\count_reg[12]_i_3_n_0 ,\count_reg[12]_i_4_n_0 ,\count_reg[12]_i_5_n_0 }));
  FDCE \count_reg_reg[13] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[12]_i_1_n_6 ),
        .Q(count_reg_reg[13]));
  FDCE \count_reg_reg[14] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[12]_i_1_n_5 ),
        .Q(count_reg_reg[14]));
  FDCE \count_reg_reg[15] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[12]_i_1_n_4 ),
        .Q(count_reg_reg[15]));
  FDCE \count_reg_reg[16] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[16]_i_1_n_7 ),
        .Q(count_reg_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg_reg[16]_i_1 
       (.CI(\count_reg_reg[12]_i_1_n_0 ),
        .CO({\count_reg_reg[16]_i_1_n_0 ,\count_reg_reg[16]_i_1_n_1 ,\count_reg_reg[16]_i_1_n_2 ,\count_reg_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg_reg[16]_i_1_n_4 ,\count_reg_reg[16]_i_1_n_5 ,\count_reg_reg[16]_i_1_n_6 ,\count_reg_reg[16]_i_1_n_7 }),
        .S({\count_reg[16]_i_2_n_0 ,\count_reg[16]_i_3_n_0 ,\count_reg[16]_i_4_n_0 ,\count_reg[16]_i_5_n_0 }));
  FDCE \count_reg_reg[17] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[16]_i_1_n_6 ),
        .Q(count_reg_reg[17]));
  FDCE \count_reg_reg[18] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[16]_i_1_n_5 ),
        .Q(count_reg_reg[18]));
  FDCE \count_reg_reg[19] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[16]_i_1_n_4 ),
        .Q(count_reg_reg[19]));
  FDCE \count_reg_reg[1] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[0]_i_1_n_6 ),
        .Q(count_reg_reg[1]));
  FDCE \count_reg_reg[20] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[20]_i_1_n_7 ),
        .Q(count_reg_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg_reg[20]_i_1 
       (.CI(\count_reg_reg[16]_i_1_n_0 ),
        .CO({\NLW_count_reg_reg[20]_i_1_CO_UNCONNECTED [3:1],\count_reg_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg_reg[20]_i_1_O_UNCONNECTED [3:2],\count_reg_reg[20]_i_1_n_6 ,\count_reg_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,\count_reg[20]_i_2_n_0 ,\count_reg[20]_i_3_n_0 }));
  FDCE \count_reg_reg[21] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[20]_i_1_n_6 ),
        .Q(count_reg_reg[21]));
  FDCE \count_reg_reg[2] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[0]_i_1_n_5 ),
        .Q(count_reg_reg[2]));
  FDCE \count_reg_reg[3] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[0]_i_1_n_4 ),
        .Q(count_reg_reg[3]));
  FDCE \count_reg_reg[4] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[4]_i_1_n_7 ),
        .Q(count_reg_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg_reg[4]_i_1 
       (.CI(\count_reg_reg[0]_i_1_n_0 ),
        .CO({\count_reg_reg[4]_i_1_n_0 ,\count_reg_reg[4]_i_1_n_1 ,\count_reg_reg[4]_i_1_n_2 ,\count_reg_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg_reg[4]_i_1_n_4 ,\count_reg_reg[4]_i_1_n_5 ,\count_reg_reg[4]_i_1_n_6 ,\count_reg_reg[4]_i_1_n_7 }),
        .S({\count_reg[4]_i_2_n_0 ,\count_reg[4]_i_3_n_0 ,\count_reg[4]_i_4_n_0 ,\count_reg[4]_i_5_n_0 }));
  FDCE \count_reg_reg[5] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[4]_i_1_n_6 ),
        .Q(count_reg_reg[5]));
  FDCE \count_reg_reg[6] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[4]_i_1_n_5 ),
        .Q(count_reg_reg[6]));
  FDCE \count_reg_reg[7] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[4]_i_1_n_4 ),
        .Q(count_reg_reg[7]));
  FDCE \count_reg_reg[8] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[8]_i_1_n_7 ),
        .Q(count_reg_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg_reg[8]_i_1 
       (.CI(\count_reg_reg[4]_i_1_n_0 ),
        .CO({\count_reg_reg[8]_i_1_n_0 ,\count_reg_reg[8]_i_1_n_1 ,\count_reg_reg[8]_i_1_n_2 ,\count_reg_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg_reg[8]_i_1_n_4 ,\count_reg_reg[8]_i_1_n_5 ,\count_reg_reg[8]_i_1_n_6 ,\count_reg_reg[8]_i_1_n_7 }),
        .S({\count_reg[8]_i_2_n_0 ,\count_reg[8]_i_3_n_0 ,\count_reg[8]_i_4_n_0 ,\count_reg[8]_i_5_n_0 }));
  FDCE \count_reg_reg[9] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg_reg[8]_i_1_n_6 ),
        .Q(count_reg_reg[9]));
endmodule

(* ORIG_REF_NAME = "UART_RX" *) 
module Zynq_E40S_PMP_AHB2UART_0_0_UART_RX
   (p_1_in,
    RsRx,
    CO,
    empty_reg_reg,
    HCLK,
    \count_reg_reg[2]_0 );
  output [0:0]p_1_in;
  input RsRx;
  input [0:0]CO;
  input empty_reg_reg;
  input HCLK;
  input \count_reg_reg[2]_0 ;

  wire [0:0]CO;
  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire \FSM_sequential_current_state[1]_i_4_n_0 ;
  wire \FSM_sequential_current_state[1]_i_5_n_0 ;
  wire \FSM_sequential_current_state[1]_i_6_n_0 ;
  wire \FSM_sequential_current_state[1]_i_7_n_0 ;
  wire HCLK;
  wire RsRx;
  wire b_next;
  wire [3:0]b_reg;
  wire \b_reg[0]_i_1_n_0 ;
  wire \b_reg[1]_i_1_n_0 ;
  wire \b_reg[1]_i_2_n_0 ;
  wire \b_reg[2]_i_1__0_n_0 ;
  wire \b_reg[3]_i_2_n_0 ;
  wire \b_reg[3]_i_3_n_0 ;
  wire count_next;
  wire [2:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[1]_i_1_n_0 ;
  wire \count_reg[2]_i_1_n_0 ;
  wire \count_reg_reg[2]_0 ;
  wire [1:0]current_state;
  wire empty_reg_reg;
  wire [0:0]p_1_in;

  LUT6 #(
    .INIT(64'h00004555FFFFAAAA)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_4_n_0 ),
        .I1(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I2(current_state[1]),
        .I3(CO),
        .I4(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I5(current_state[0]),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0CF00CF058F018F0)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(CO),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I5(\FSM_sequential_current_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(b_reg[2]),
        .I1(CO),
        .I2(b_reg[3]),
        .I3(\FSM_sequential_current_state[1]_i_5_n_0 ),
        .I4(\b_reg[3]_i_3_n_0 ),
        .I5(\FSM_sequential_current_state[1]_i_6_n_0 ),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(b_reg[2]),
        .I1(b_reg[1]),
        .I2(b_reg[0]),
        .I3(b_reg[3]),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000404000000FF)) 
    \FSM_sequential_current_state[1]_i_4 
       (.I0(\FSM_sequential_current_state[1]_i_7_n_0 ),
        .I1(CO),
        .I2(b_reg[3]),
        .I3(RsRx),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(\FSM_sequential_current_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_current_state[1]_i_5 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(\FSM_sequential_current_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_current_state[1]_i_6 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(\FSM_sequential_current_state[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_current_state[1]_i_7 
       (.I0(b_reg[0]),
        .I1(b_reg[1]),
        .I2(b_reg[2]),
        .O(\FSM_sequential_current_state[1]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "start_st:01,stop_st:11,idle_st:00,data_st:10" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[2]_0 ),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "start_st:01,stop_st:11,idle_st:00,data_st:10" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[2]_0 ),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(current_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h444444F4)) 
    \b_reg[0]_i_1 
       (.I0(b_reg[0]),
        .I1(\b_reg[1]_i_2_n_0 ),
        .I2(RsRx),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\b_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010FF10FF101010)) 
    \b_reg[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(RsRx),
        .I3(\b_reg[1]_i_2_n_0 ),
        .I4(b_reg[1]),
        .I5(b_reg[0]),
        .O(\b_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFAAAA2AAA)) 
    \b_reg[1]_i_2 
       (.I0(current_state[0]),
        .I1(b_reg[1]),
        .I2(b_reg[0]),
        .I3(b_reg[2]),
        .I4(b_reg[3]),
        .I5(current_state[1]),
        .O(\b_reg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF00FE22E)) 
    \b_reg[2]_i_1__0 
       (.I0(RsRx),
        .I1(current_state[0]),
        .I2(\b_reg[3]_i_3_n_0 ),
        .I3(b_reg[2]),
        .I4(current_state[1]),
        .O(\b_reg[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hBC00BF03)) 
    \b_reg[3]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(CO),
        .I4(RsRx),
        .O(b_next));
  LUT6 #(
    .INIT(64'hD2D2D0D0D2D2FF00)) 
    \b_reg[3]_i_2 
       (.I0(b_reg[2]),
        .I1(\b_reg[3]_i_3_n_0 ),
        .I2(b_reg[3]),
        .I3(RsRx),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(\b_reg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \b_reg[3]_i_3 
       (.I0(b_reg[1]),
        .I1(b_reg[0]),
        .O(\b_reg[3]_i_3_n_0 ));
  FDCE \b_reg_reg[0] 
       (.C(HCLK),
        .CE(b_next),
        .CLR(\count_reg_reg[2]_0 ),
        .D(\b_reg[0]_i_1_n_0 ),
        .Q(b_reg[0]));
  FDCE \b_reg_reg[1] 
       (.C(HCLK),
        .CE(b_next),
        .CLR(\count_reg_reg[2]_0 ),
        .D(\b_reg[1]_i_1_n_0 ),
        .Q(b_reg[1]));
  FDCE \b_reg_reg[2] 
       (.C(HCLK),
        .CE(b_next),
        .CLR(\count_reg_reg[2]_0 ),
        .D(\b_reg[2]_i_1__0_n_0 ),
        .Q(b_reg[2]));
  FDCE \b_reg_reg[3] 
       (.C(HCLK),
        .CE(b_next),
        .CLR(\count_reg_reg[2]_0 ),
        .D(\b_reg[3]_i_2_n_0 ),
        .Q(b_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \count_reg[0]_i_1 
       (.I0(current_state[1]),
        .I1(count_next),
        .I2(count_reg[0]),
        .O(\count_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \count_reg[1]_i_1 
       (.I0(count_reg[0]),
        .I1(current_state[1]),
        .I2(count_next),
        .I3(count_reg[1]),
        .O(\count_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \count_reg[2]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(current_state[1]),
        .I3(count_next),
        .I4(count_reg[2]),
        .O(\count_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000003000)) 
    \count_reg[2]_i_2 
       (.I0(\FSM_sequential_current_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_current_state[1]_i_7_n_0 ),
        .I2(CO),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(b_reg[3]),
        .O(count_next));
  FDCE \count_reg_reg[0] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[2]_0 ),
        .D(\count_reg[0]_i_1_n_0 ),
        .Q(count_reg[0]));
  FDCE \count_reg_reg[1] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[2]_0 ),
        .D(\count_reg[1]_i_1_n_0 ),
        .Q(count_reg[1]));
  FDCE \count_reg_reg[2] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(\count_reg_reg[2]_0 ),
        .D(\count_reg[2]_i_1_n_0 ),
        .Q(count_reg[2]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \r_ptr_reg[3]_i_3 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(CO),
        .I3(empty_reg_reg),
        .I4(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .O(p_1_in));
endmodule

(* ORIG_REF_NAME = "UART_TX" *) 
module Zynq_E40S_PMP_AHB2UART_0_0_UART_TX
   (RsTx,
    HRESETn_0,
    \FSM_sequential_current_state_reg[1]_0 ,
    tx_done,
    HCLK,
    D,
    \data_reg_reg[6]_0 ,
    CO,
    tx_empty,
    HRESETn);
  output RsTx;
  output HRESETn_0;
  output [0:0]\FSM_sequential_current_state_reg[1]_0 ;
  output tx_done;
  input HCLK;
  input [0:0]D;
  input [6:0]\data_reg_reg[6]_0 ;
  input [0:0]CO;
  input tx_empty;
  input HRESETn;

  wire [0:0]CO;
  wire [0:0]D;
  wire \FSM_sequential_current_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2__0_n_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[1]_0 ;
  wire HCLK;
  wire HRESETn;
  wire HRESETn_0;
  wire RsTx;
  wire b_next;
  wire [3:0]b_reg;
  wire \b_reg[0]_i_1__0_n_0 ;
  wire \b_reg[1]_i_1__0_n_0 ;
  wire \b_reg[2]_i_1_n_0 ;
  wire \b_reg[3]_i_2__0_n_0 ;
  wire count_next;
  wire [2:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[1]_i_1_n_0 ;
  wire \count_reg[2]_i_1_n_0 ;
  wire \count_reg[2]_i_3_n_0 ;
  wire [0:0]current_state;
  wire [6:0]data_next;
  wire data_next_0;
  wire [0:0]data_reg;
  wire [6:0]\data_reg_reg[6]_0 ;
  wire \data_reg_reg_n_0_[1] ;
  wire \data_reg_reg_n_0_[2] ;
  wire \data_reg_reg_n_0_[3] ;
  wire \data_reg_reg_n_0_[4] ;
  wire \data_reg_reg_n_0_[5] ;
  wire \data_reg_reg_n_0_[6] ;
  wire \data_reg_reg_n_0_[7] ;
  wire tx_done;
  wire tx_empty;
  wire tx_next;

  LUT6 #(
    .INIT(64'h77777777080800FF)) 
    \FSM_sequential_current_state[0]_i_1__0 
       (.I0(CO),
        .I1(\FSM_sequential_current_state[1]_i_2__0_n_0 ),
        .I2(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I3(tx_empty),
        .I4(\FSM_sequential_current_state_reg[1]_0 ),
        .I5(current_state),
        .O(\FSM_sequential_current_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \FSM_sequential_current_state[1]_i_1__0 
       (.I0(\FSM_sequential_current_state_reg[1]_0 ),
        .I1(\FSM_sequential_current_state[1]_i_2__0_n_0 ),
        .I2(current_state),
        .I3(CO),
        .O(\FSM_sequential_current_state[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_current_state[1]_i_2__0 
       (.I0(b_reg[3]),
        .I1(b_reg[2]),
        .I2(b_reg[1]),
        .I3(b_reg[0]),
        .O(\FSM_sequential_current_state[1]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "start_st:01,stop_st:11,idle_st:00,data_st:10" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(HRESETn_0),
        .D(\FSM_sequential_current_state[0]_i_1__0_n_0 ),
        .Q(current_state));
  (* FSM_ENCODED_STATES = "start_st:01,stop_st:11,idle_st:00,data_st:10" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(HRESETn_0),
        .D(\FSM_sequential_current_state[1]_i_1__0_n_0 ),
        .Q(\FSM_sequential_current_state_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \b_reg[0]_i_1__0 
       (.I0(current_state),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(b_reg[0]),
        .O(\b_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \b_reg[1]_i_1__0 
       (.I0(current_state),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(b_reg[0]),
        .I3(b_reg[1]),
        .O(\b_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0EE0E0E0)) 
    \b_reg[2]_i_1 
       (.I0(current_state),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(b_reg[2]),
        .I3(b_reg[1]),
        .I4(b_reg[0]),
        .O(\b_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3FF50005)) 
    \b_reg[3]_i_1__0 
       (.I0(tx_empty),
        .I1(\FSM_sequential_current_state[1]_i_2__0_n_0 ),
        .I2(current_state),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(CO),
        .O(b_next));
  LUT6 #(
    .INIT(64'h0EE0E0E0E0E0E0E0)) 
    \b_reg[3]_i_2__0 
       (.I0(current_state),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(b_reg[3]),
        .I3(b_reg[0]),
        .I4(b_reg[1]),
        .I5(b_reg[2]),
        .O(\b_reg[3]_i_2__0_n_0 ));
  FDCE \b_reg_reg[0] 
       (.C(HCLK),
        .CE(b_next),
        .CLR(HRESETn_0),
        .D(\b_reg[0]_i_1__0_n_0 ),
        .Q(b_reg[0]));
  FDCE \b_reg_reg[1] 
       (.C(HCLK),
        .CE(b_next),
        .CLR(HRESETn_0),
        .D(\b_reg[1]_i_1__0_n_0 ),
        .Q(b_reg[1]));
  FDCE \b_reg_reg[2] 
       (.C(HCLK),
        .CE(b_next),
        .CLR(HRESETn_0),
        .D(\b_reg[2]_i_1_n_0 ),
        .Q(b_reg[2]));
  FDCE \b_reg_reg[3] 
       (.C(HCLK),
        .CE(b_next),
        .CLR(HRESETn_0),
        .D(\b_reg[3]_i_2__0_n_0 ),
        .Q(b_reg[3]));
  LUT3 #(
    .INIT(8'h38)) 
    \count_reg[0]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1]_0 ),
        .I1(count_next),
        .I2(count_reg[0]),
        .O(\count_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h2F80)) 
    \count_reg[1]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1]_0 ),
        .I1(count_reg[0]),
        .I2(count_next),
        .I3(count_reg[1]),
        .O(\count_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \count_reg[2]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(count_next),
        .I4(count_reg[2]),
        .O(\count_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00D00000F0000000)) 
    \count_reg[2]_i_2__0 
       (.I0(count_reg[2]),
        .I1(\count_reg[2]_i_3_n_0 ),
        .I2(\FSM_sequential_current_state[1]_i_2__0_n_0 ),
        .I3(current_state),
        .I4(CO),
        .I5(\FSM_sequential_current_state_reg[1]_0 ),
        .O(count_next));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count_reg[2]_i_3 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(\count_reg[2]_i_3_n_0 ));
  FDCE \count_reg_reg[0] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(HRESETn_0),
        .D(\count_reg[0]_i_1_n_0 ),
        .Q(count_reg[0]));
  FDCE \count_reg_reg[1] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(HRESETn_0),
        .D(\count_reg[1]_i_1_n_0 ),
        .Q(count_reg[1]));
  FDCE \count_reg_reg[2] 
       (.C(HCLK),
        .CE(1'b1),
        .CLR(HRESETn_0),
        .D(\count_reg[2]_i_1_n_0 ),
        .Q(count_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[0]_i_1 
       (.I0(\data_reg_reg_n_0_[1] ),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\data_reg_reg[6]_0 [0]),
        .O(data_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[1]_i_1 
       (.I0(\data_reg_reg_n_0_[2] ),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\data_reg_reg[6]_0 [1]),
        .O(data_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2]_i_1 
       (.I0(\data_reg_reg_n_0_[3] ),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\data_reg_reg[6]_0 [2]),
        .O(data_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3]_i_1 
       (.I0(\data_reg_reg_n_0_[4] ),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\data_reg_reg[6]_0 [3]),
        .O(data_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[4]_i_1 
       (.I0(\data_reg_reg_n_0_[5] ),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\data_reg_reg[6]_0 [4]),
        .O(data_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[5]_i_1 
       (.I0(\data_reg_reg_n_0_[6] ),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\data_reg_reg[6]_0 [5]),
        .O(data_next[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[6]_i_1 
       (.I0(\data_reg_reg_n_0_[7] ),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\data_reg_reg[6]_0 [6]),
        .O(data_next[6]));
  LUT5 #(
    .INIT(32'h0088000F)) 
    \data_reg[7]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2__0_n_0 ),
        .I1(CO),
        .I2(tx_empty),
        .I3(current_state),
        .I4(\FSM_sequential_current_state_reg[1]_0 ),
        .O(data_next_0));
  FDCE \data_reg_reg[0] 
       (.C(HCLK),
        .CE(data_next_0),
        .CLR(HRESETn_0),
        .D(data_next[0]),
        .Q(data_reg));
  FDCE \data_reg_reg[1] 
       (.C(HCLK),
        .CE(data_next_0),
        .CLR(HRESETn_0),
        .D(data_next[1]),
        .Q(\data_reg_reg_n_0_[1] ));
  FDCE \data_reg_reg[2] 
       (.C(HCLK),
        .CE(data_next_0),
        .CLR(HRESETn_0),
        .D(data_next[2]),
        .Q(\data_reg_reg_n_0_[2] ));
  FDCE \data_reg_reg[3] 
       (.C(HCLK),
        .CE(data_next_0),
        .CLR(HRESETn_0),
        .D(data_next[3]),
        .Q(\data_reg_reg_n_0_[3] ));
  FDCE \data_reg_reg[4] 
       (.C(HCLK),
        .CE(data_next_0),
        .CLR(HRESETn_0),
        .D(data_next[4]),
        .Q(\data_reg_reg_n_0_[4] ));
  FDCE \data_reg_reg[5] 
       (.C(HCLK),
        .CE(data_next_0),
        .CLR(HRESETn_0),
        .D(data_next[5]),
        .Q(\data_reg_reg_n_0_[5] ));
  FDCE \data_reg_reg[6] 
       (.C(HCLK),
        .CE(data_next_0),
        .CLR(HRESETn_0),
        .D(data_next[6]),
        .Q(\data_reg_reg_n_0_[6] ));
  FDCE \data_reg_reg[7] 
       (.C(HCLK),
        .CE(data_next_0),
        .CLR(HRESETn_0),
        .D(D),
        .Q(\data_reg_reg_n_0_[7] ));
  LUT3 #(
    .INIT(8'hCB)) 
    tx_reg_i_1
       (.I0(data_reg),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(current_state),
        .O(tx_next));
  LUT1 #(
    .INIT(2'h1)) 
    tx_reg_i_2
       (.I0(HRESETn),
        .O(HRESETn_0));
  FDPE tx_reg_reg
       (.C(HCLK),
        .CE(1'b1),
        .D(tx_next),
        .PRE(HRESETn_0),
        .Q(RsTx));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \w_ptr_reg[3]_i_3 
       (.I0(CO),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(current_state),
        .I3(\FSM_sequential_current_state[1]_i_2__0_n_0 ),
        .O(tx_done));
endmodule

(* ORIG_REF_NAME = "UFIFO" *) 
module Zynq_E40S_PMP_AHB2UART_0_0_UFIFO
   (full_reg_reg_0,
    \last_HADDR_reg[7] ,
    HRDATA,
    \last_HADDR_reg[0] ,
    uart_irq,
    HCLK,
    full_reg_reg_1,
    p_1_in,
    last_HWRITE,
    last_HSEL,
    p_0_in1_in,
    Q);
  output full_reg_reg_0;
  output \last_HADDR_reg[7] ;
  output [0:0]HRDATA;
  output \last_HADDR_reg[0] ;
  output uart_irq;
  input HCLK;
  input full_reg_reg_1;
  input [0:0]p_1_in;
  input last_HWRITE;
  input last_HSEL;
  input p_0_in1_in;
  input [7:0]Q;

  wire HCLK;
  wire [0:0]HRDATA;
  wire [7:0]Q;
  wire empty_next0__6;
  wire empty_reg_i_1__0_n_0;
  wire empty_reg_i_3__0_n_0;
  wire full_next0__6;
  wire full_reg_i_1__0_n_0;
  wire full_reg_i_3__0_n_0;
  wire full_reg_reg_0;
  wire full_reg_reg_1;
  wire \last_HADDR_reg[0] ;
  wire \last_HADDR_reg[7] ;
  wire last_HSEL;
  wire last_HWRITE;
  wire p_0_in1_in;
  wire [0:0]p_1_in;
  wire [3:0]r_ptr_reg0;
  wire \r_ptr_reg[3]_i_1_n_0 ;
  wire [3:0]r_ptr_reg_reg;
  wire rx_empty;
  wire uart_irq;
  wire uart_rd__2;
  wire \w_ptr_reg[0]_i_1__0_n_0 ;
  wire \w_ptr_reg[1]_i_1__0_n_0 ;
  wire \w_ptr_reg[2]_i_1__0_n_0 ;
  wire \w_ptr_reg[3]_i_1__0_n_0 ;
  wire \w_ptr_reg[3]_i_2__0_n_0 ;
  wire [3:0]w_ptr_reg_reg;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \HRDATA[0]_INST_0 
       (.I0(rx_empty),
        .I1(\last_HADDR_reg[7] ),
        .O(HRDATA));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \HRDATA[1]_INST_0_i_1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[3]),
        .I3(\last_HADDR_reg[0] ),
        .I4(Q[2]),
        .O(\last_HADDR_reg[7] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \HRDATA[1]_INST_0_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(\last_HADDR_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0A0FCF0)) 
    empty_reg_i_1__0
       (.I0(full_reg_reg_0),
        .I1(empty_next0__6),
        .I2(rx_empty),
        .I3(uart_rd__2),
        .I4(p_1_in),
        .O(empty_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h2AAA800080002AAA)) 
    empty_reg_i_2__0
       (.I0(empty_reg_i_3__0_n_0),
        .I1(r_ptr_reg_reg[2]),
        .I2(r_ptr_reg_reg[0]),
        .I3(r_ptr_reg_reg[1]),
        .I4(r_ptr_reg_reg[3]),
        .I5(w_ptr_reg_reg[3]),
        .O(empty_next0__6));
  LUT6 #(
    .INIT(64'h0140802010040802)) 
    empty_reg_i_3__0
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(r_ptr_reg_reg[1]),
        .I4(r_ptr_reg_reg[0]),
        .I5(r_ptr_reg_reg[2]),
        .O(empty_reg_i_3__0_n_0));
  FDPE empty_reg_reg
       (.C(HCLK),
        .CE(1'b1),
        .D(empty_reg_i_1__0_n_0),
        .PRE(full_reg_reg_1),
        .Q(rx_empty));
  LUT5 #(
    .INIT(32'hCECCCE0C)) 
    full_reg_i_1__0
       (.I0(full_next0__6),
        .I1(full_reg_reg_0),
        .I2(uart_rd__2),
        .I3(p_1_in),
        .I4(rx_empty),
        .O(full_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h2AAA800080002AAA)) 
    full_reg_i_2__0
       (.I0(full_reg_i_3__0_n_0),
        .I1(w_ptr_reg_reg[2]),
        .I2(w_ptr_reg_reg[1]),
        .I3(w_ptr_reg_reg[0]),
        .I4(w_ptr_reg_reg[3]),
        .I5(r_ptr_reg_reg[3]),
        .O(full_next0__6));
  LUT6 #(
    .INIT(64'h0842100010000842)) 
    full_reg_i_3__0
       (.I0(r_ptr_reg_reg[0]),
        .I1(r_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[0]),
        .I3(w_ptr_reg_reg[1]),
        .I4(w_ptr_reg_reg[2]),
        .I5(r_ptr_reg_reg[2]),
        .O(full_reg_i_3__0_n_0));
  FDCE full_reg_reg
       (.C(HCLK),
        .CE(1'b1),
        .CLR(full_reg_reg_1),
        .D(full_reg_i_1__0_n_0),
        .Q(full_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr_reg[0]_i_1__0 
       (.I0(r_ptr_reg_reg[0]),
        .O(r_ptr_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr_reg[1]_i_1 
       (.I0(r_ptr_reg_reg[0]),
        .I1(r_ptr_reg_reg[1]),
        .O(r_ptr_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_ptr_reg[2]_i_1__0 
       (.I0(r_ptr_reg_reg[1]),
        .I1(r_ptr_reg_reg[0]),
        .I2(r_ptr_reg_reg[2]),
        .O(r_ptr_reg0[2]));
  LUT3 #(
    .INIT(8'hD0)) 
    \r_ptr_reg[3]_i_1 
       (.I0(rx_empty),
        .I1(p_1_in),
        .I2(uart_rd__2),
        .O(\r_ptr_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_ptr_reg[3]_i_2 
       (.I0(r_ptr_reg_reg[2]),
        .I1(r_ptr_reg_reg[0]),
        .I2(r_ptr_reg_reg[1]),
        .I3(r_ptr_reg_reg[3]),
        .O(r_ptr_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \r_ptr_reg[3]_i_4 
       (.I0(last_HWRITE),
        .I1(last_HSEL),
        .I2(p_0_in1_in),
        .I3(\last_HADDR_reg[7] ),
        .O(uart_rd__2));
  FDCE \r_ptr_reg_reg[0] 
       (.C(HCLK),
        .CE(\r_ptr_reg[3]_i_1_n_0 ),
        .CLR(full_reg_reg_1),
        .D(r_ptr_reg0[0]),
        .Q(r_ptr_reg_reg[0]));
  FDCE \r_ptr_reg_reg[1] 
       (.C(HCLK),
        .CE(\r_ptr_reg[3]_i_1_n_0 ),
        .CLR(full_reg_reg_1),
        .D(r_ptr_reg0[1]),
        .Q(r_ptr_reg_reg[1]));
  FDCE \r_ptr_reg_reg[2] 
       (.C(HCLK),
        .CE(\r_ptr_reg[3]_i_1_n_0 ),
        .CLR(full_reg_reg_1),
        .D(r_ptr_reg0[2]),
        .Q(r_ptr_reg_reg[2]));
  FDCE \r_ptr_reg_reg[3] 
       (.C(HCLK),
        .CE(\r_ptr_reg[3]_i_1_n_0 ),
        .CLR(full_reg_reg_1),
        .D(r_ptr_reg0[3]),
        .Q(r_ptr_reg_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    uart_irq_INST_0
       (.I0(rx_empty),
        .O(uart_irq));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr_reg[0]_i_1__0 
       (.I0(w_ptr_reg_reg[0]),
        .O(\w_ptr_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr_reg[1]_i_1__0 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .O(\w_ptr_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \w_ptr_reg[2]_i_1__0 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .O(\w_ptr_reg[2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB0)) 
    \w_ptr_reg[3]_i_1__0 
       (.I0(uart_rd__2),
        .I1(full_reg_reg_0),
        .I2(p_1_in),
        .O(\w_ptr_reg[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \w_ptr_reg[3]_i_2__0 
       (.I0(w_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[0]),
        .I3(w_ptr_reg_reg[3]),
        .O(\w_ptr_reg[3]_i_2__0_n_0 ));
  FDCE \w_ptr_reg_reg[0] 
       (.C(HCLK),
        .CE(\w_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(full_reg_reg_1),
        .D(\w_ptr_reg[0]_i_1__0_n_0 ),
        .Q(w_ptr_reg_reg[0]));
  FDCE \w_ptr_reg_reg[1] 
       (.C(HCLK),
        .CE(\w_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(full_reg_reg_1),
        .D(\w_ptr_reg[1]_i_1__0_n_0 ),
        .Q(w_ptr_reg_reg[1]));
  FDCE \w_ptr_reg_reg[2] 
       (.C(HCLK),
        .CE(\w_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(full_reg_reg_1),
        .D(\w_ptr_reg[2]_i_1__0_n_0 ),
        .Q(w_ptr_reg_reg[2]));
  FDCE \w_ptr_reg_reg[3] 
       (.C(HCLK),
        .CE(\w_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(full_reg_reg_1),
        .D(\w_ptr_reg[3]_i_2__0_n_0 ),
        .Q(w_ptr_reg_reg[3]));
endmodule

(* ORIG_REF_NAME = "UFIFO" *) 
module Zynq_E40S_PMP_AHB2UART_0_0_UFIFO_0
   (HCLK_0,
    tx_empty,
    D,
    HRDATA,
    HCLK,
    HWDATA,
    empty_reg_reg_0,
    current_state,
    tx_done,
    p_0_in1_in,
    last_HWRITE,
    last_HSEL,
    \HRDATA[1] );
  output [6:0]HCLK_0;
  output tx_empty;
  output [0:0]D;
  output [0:0]HRDATA;
  input HCLK;
  input [7:0]HWDATA;
  input empty_reg_reg_0;
  input [0:0]current_state;
  input tx_done;
  input p_0_in1_in;
  input last_HWRITE;
  input last_HSEL;
  input \HRDATA[1] ;

  wire [0:0]D;
  wire HCLK;
  wire [6:0]HCLK_0;
  wire [0:0]HRDATA;
  wire \HRDATA[1] ;
  wire [7:0]HWDATA;
  wire [0:0]current_state;
  wire empty_next0__6;
  wire empty_reg_i_1_n_0;
  wire empty_reg_i_3_n_0;
  wire empty_reg_reg_0;
  wire full_next0__6;
  wire full_reg_i_1_n_0;
  wire full_reg_i_3_n_0;
  wire last_HSEL;
  wire last_HWRITE;
  wire p_0_in1_in;
  wire [7:7]r_data;
  wire [3:0]r_ptr_reg0;
  wire \r_ptr_reg[0]_i_1_n_0 ;
  wire [3:0]r_ptr_reg_reg;
  wire tx_done;
  wire tx_empty;
  wire tx_full;
  wire w_en;
  wire [3:0]w_ptr_reg0;
  wire \w_ptr_reg[3]_i_1_n_0 ;
  wire [3:0]w_ptr_reg_reg;
  wire [1:0]NLW_array_reg_reg_0_15_0_5_DOD_UNCONNECTED;
  wire NLW_array_reg_reg_0_15_6_7_SPO_UNCONNECTED;
  wire NLW_array_reg_reg_0_15_6_7__0_SPO_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \HRDATA[1]_INST_0 
       (.I0(tx_full),
        .I1(\HRDATA[1] ),
        .O(HRDATA));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/uFIFO_TX/array_reg_reg_0_15_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M array_reg_reg_0_15_0_5
       (.ADDRA({1'b0,r_ptr_reg_reg}),
        .ADDRB({1'b0,r_ptr_reg_reg}),
        .ADDRC({1'b0,r_ptr_reg_reg}),
        .ADDRD({1'b0,w_ptr_reg_reg}),
        .DIA(HWDATA[1:0]),
        .DIB(HWDATA[3:2]),
        .DIC(HWDATA[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(HCLK_0[1:0]),
        .DOB(HCLK_0[3:2]),
        .DOC(HCLK_0[5:4]),
        .DOD(NLW_array_reg_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(HCLK),
        .WE(w_en));
  LUT5 #(
    .INIT(32'h00002000)) 
    array_reg_reg_0_15_0_5_i_1
       (.I0(p_0_in1_in),
        .I1(tx_full),
        .I2(last_HWRITE),
        .I3(last_HSEL),
        .I4(\HRDATA[1] ),
        .O(w_en));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/uFIFO_TX/array_reg_reg_0_15_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D array_reg_reg_0_15_6_7
       (.A0(w_ptr_reg_reg[0]),
        .A1(w_ptr_reg_reg[1]),
        .A2(w_ptr_reg_reg[2]),
        .A3(w_ptr_reg_reg[3]),
        .A4(1'b0),
        .D(HWDATA[6]),
        .DPO(HCLK_0[6]),
        .DPRA0(r_ptr_reg_reg[0]),
        .DPRA1(r_ptr_reg_reg[1]),
        .DPRA2(r_ptr_reg_reg[2]),
        .DPRA3(r_ptr_reg_reg[3]),
        .DPRA4(1'b0),
        .SPO(NLW_array_reg_reg_0_15_6_7_SPO_UNCONNECTED),
        .WCLK(HCLK),
        .WE(w_en));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/uFIFO_TX/array_reg_reg_0_15_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D array_reg_reg_0_15_6_7__0
       (.A0(w_ptr_reg_reg[0]),
        .A1(w_ptr_reg_reg[1]),
        .A2(w_ptr_reg_reg[2]),
        .A3(w_ptr_reg_reg[3]),
        .A4(1'b0),
        .D(HWDATA[7]),
        .DPO(r_data),
        .DPRA0(r_ptr_reg_reg[0]),
        .DPRA1(r_ptr_reg_reg[1]),
        .DPRA2(r_ptr_reg_reg[2]),
        .DPRA3(r_ptr_reg_reg[3]),
        .DPRA4(1'b0),
        .SPO(NLW_array_reg_reg_0_15_6_7__0_SPO_UNCONNECTED),
        .WCLK(HCLK),
        .WE(w_en));
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[7]_i_2 
       (.I0(r_data),
        .I1(current_state),
        .O(D));
  LUT5 #(
    .INIT(32'hE0E0FCF0)) 
    empty_reg_i_1
       (.I0(tx_full),
        .I1(tx_done),
        .I2(tx_empty),
        .I3(empty_next0__6),
        .I4(w_en),
        .O(empty_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h2AAA800080002AAA)) 
    empty_reg_i_2
       (.I0(empty_reg_i_3_n_0),
        .I1(r_ptr_reg_reg[2]),
        .I2(r_ptr_reg_reg[0]),
        .I3(r_ptr_reg_reg[1]),
        .I4(r_ptr_reg_reg[3]),
        .I5(w_ptr_reg_reg[3]),
        .O(empty_next0__6));
  LUT6 #(
    .INIT(64'h0140802010040802)) 
    empty_reg_i_3
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(r_ptr_reg_reg[1]),
        .I4(r_ptr_reg_reg[0]),
        .I5(r_ptr_reg_reg[2]),
        .O(empty_reg_i_3_n_0));
  FDPE empty_reg_reg
       (.C(HCLK),
        .CE(1'b1),
        .D(empty_reg_i_1_n_0),
        .PRE(empty_reg_reg_0),
        .Q(tx_empty));
  LUT5 #(
    .INIT(32'hAEAAAE0A)) 
    full_reg_i_1
       (.I0(tx_full),
        .I1(full_next0__6),
        .I2(tx_done),
        .I3(w_en),
        .I4(tx_empty),
        .O(full_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h2AAA800080002AAA)) 
    full_reg_i_2
       (.I0(full_reg_i_3_n_0),
        .I1(w_ptr_reg_reg[2]),
        .I2(w_ptr_reg_reg[1]),
        .I3(w_ptr_reg_reg[0]),
        .I4(w_ptr_reg_reg[3]),
        .I5(r_ptr_reg_reg[3]),
        .O(full_next0__6));
  LUT6 #(
    .INIT(64'h0842100010000842)) 
    full_reg_i_3
       (.I0(r_ptr_reg_reg[0]),
        .I1(r_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[0]),
        .I3(w_ptr_reg_reg[1]),
        .I4(w_ptr_reg_reg[2]),
        .I5(r_ptr_reg_reg[2]),
        .O(full_reg_i_3_n_0));
  FDCE full_reg_reg
       (.C(HCLK),
        .CE(1'b1),
        .CLR(empty_reg_reg_0),
        .D(full_reg_i_1_n_0),
        .Q(tx_full));
  LUT3 #(
    .INIT(8'hD0)) 
    \r_ptr_reg[0]_i_1 
       (.I0(tx_empty),
        .I1(w_en),
        .I2(tx_done),
        .O(\r_ptr_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr_reg[0]_i_2 
       (.I0(r_ptr_reg_reg[0]),
        .O(r_ptr_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr_reg[1]_i_1__0 
       (.I0(r_ptr_reg_reg[0]),
        .I1(r_ptr_reg_reg[1]),
        .O(r_ptr_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_ptr_reg[2]_i_1 
       (.I0(r_ptr_reg_reg[1]),
        .I1(r_ptr_reg_reg[0]),
        .I2(r_ptr_reg_reg[2]),
        .O(r_ptr_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_ptr_reg[3]_i_1__0 
       (.I0(r_ptr_reg_reg[2]),
        .I1(r_ptr_reg_reg[0]),
        .I2(r_ptr_reg_reg[1]),
        .I3(r_ptr_reg_reg[3]),
        .O(r_ptr_reg0[3]));
  FDCE \r_ptr_reg_reg[0] 
       (.C(HCLK),
        .CE(\r_ptr_reg[0]_i_1_n_0 ),
        .CLR(empty_reg_reg_0),
        .D(r_ptr_reg0[0]),
        .Q(r_ptr_reg_reg[0]));
  FDCE \r_ptr_reg_reg[1] 
       (.C(HCLK),
        .CE(\r_ptr_reg[0]_i_1_n_0 ),
        .CLR(empty_reg_reg_0),
        .D(r_ptr_reg0[1]),
        .Q(r_ptr_reg_reg[1]));
  FDCE \r_ptr_reg_reg[2] 
       (.C(HCLK),
        .CE(\r_ptr_reg[0]_i_1_n_0 ),
        .CLR(empty_reg_reg_0),
        .D(r_ptr_reg0[2]),
        .Q(r_ptr_reg_reg[2]));
  FDCE \r_ptr_reg_reg[3] 
       (.C(HCLK),
        .CE(\r_ptr_reg[0]_i_1_n_0 ),
        .CLR(empty_reg_reg_0),
        .D(r_ptr_reg0[3]),
        .Q(r_ptr_reg_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr_reg[0]_i_1 
       (.I0(w_ptr_reg_reg[0]),
        .O(w_ptr_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr_reg[1]_i_1 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .O(w_ptr_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \w_ptr_reg[2]_i_1 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .O(w_ptr_reg0[2]));
  LUT3 #(
    .INIT(8'hB0)) 
    \w_ptr_reg[3]_i_1 
       (.I0(tx_done),
        .I1(tx_full),
        .I2(w_en),
        .O(\w_ptr_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \w_ptr_reg[3]_i_2 
       (.I0(w_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[0]),
        .I3(w_ptr_reg_reg[3]),
        .O(w_ptr_reg0[3]));
  FDCE \w_ptr_reg_reg[0] 
       (.C(HCLK),
        .CE(\w_ptr_reg[3]_i_1_n_0 ),
        .CLR(empty_reg_reg_0),
        .D(w_ptr_reg0[0]),
        .Q(w_ptr_reg_reg[0]));
  FDCE \w_ptr_reg_reg[1] 
       (.C(HCLK),
        .CE(\w_ptr_reg[3]_i_1_n_0 ),
        .CLR(empty_reg_reg_0),
        .D(w_ptr_reg0[1]),
        .Q(w_ptr_reg_reg[1]));
  FDCE \w_ptr_reg_reg[2] 
       (.C(HCLK),
        .CE(\w_ptr_reg[3]_i_1_n_0 ),
        .CLR(empty_reg_reg_0),
        .D(w_ptr_reg0[2]),
        .Q(w_ptr_reg_reg[2]));
  FDCE \w_ptr_reg_reg[3] 
       (.C(HCLK),
        .CE(\w_ptr_reg[3]_i_1_n_0 ),
        .CLR(empty_reg_reg_0),
        .D(w_ptr_reg0[3]),
        .Q(w_ptr_reg_reg[3]));
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
