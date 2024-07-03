// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Wed Jul  3 18:38:32 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHBDCD_0_0/Zynq_E40S_PMP_AHBDCD_0_0_sim_netlist.v
// Design      : Zynq_E40S_PMP_AHBDCD_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Zynq_E40S_PMP_AHBDCD_0_0,AHBDCD,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "AHBDCD,Vivado 2023.1.1" *) 
(* NotValidForBitStream *)
module Zynq_E40S_PMP_AHBDCD_0_0
   (HADDR,
    RESET,
    HSEL_S0,
    HSEL_S2,
    HSEL_S4,
    HSEL_S5,
    HSEL_S7,
    HSEL_NOMAP,
    MUX_SEL);
  input [31:0]HADDR;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESET;
  output HSEL_S0;
  output HSEL_S2;
  output HSEL_S4;
  output HSEL_S5;
  output HSEL_S7;
  output HSEL_NOMAP;
  output [3:0]MUX_SEL;

  wire [31:0]HADDR;
  wire HSEL_NOMAP;
  wire HSEL_S0;
  wire HSEL_S0_INST_0_i_1_n_0;
  wire HSEL_S0_INST_0_i_2_n_0;
  wire HSEL_S2;
  wire HSEL_S2_INST_0_i_1_n_0;
  wire HSEL_S2_INST_0_i_2_n_0;
  wire HSEL_S2_INST_0_i_3_n_0;
  wire HSEL_S4;
  wire HSEL_S4_INST_0_i_1_n_0;
  wire HSEL_S5;
  wire HSEL_S5_INST_0_i_1_n_0;
  wire HSEL_S7;
  wire HSEL_S7_INST_0_i_1_n_0;
  wire [2:0]\^MUX_SEL ;
  wire \MUX_SEL[0]_INST_0_i_1_n_0 ;
  wire \MUX_SEL[1]_INST_0_i_1_n_0 ;
  wire \MUX_SEL[2]_INST_0_i_1_n_0 ;
  wire \MUX_SEL[3]_INST_0_i_1_n_0 ;
  wire \MUX_SEL[3]_INST_0_i_2_n_0 ;
  wire \MUX_SEL[3]_INST_0_i_3_n_0 ;

  assign MUX_SEL[3] = HSEL_NOMAP;
  assign MUX_SEL[2:0] = \^MUX_SEL [2:0];
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    HSEL_S0_INST_0
       (.I0(HSEL_S0_INST_0_i_1_n_0),
        .I1(HADDR[26]),
        .I2(HADDR[29]),
        .I3(HADDR[27]),
        .I4(HADDR[28]),
        .I5(HSEL_S0_INST_0_i_2_n_0),
        .O(HSEL_S0));
  LUT6 #(
    .INIT(64'h0001010000010001)) 
    HSEL_S0_INST_0_i_1
       (.I0(HADDR[20]),
        .I1(HADDR[24]),
        .I2(HADDR[25]),
        .I3(HADDR[17]),
        .I4(HADDR[16]),
        .I5(HADDR[18]),
        .O(HSEL_S0_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    HSEL_S0_INST_0_i_2
       (.I0(HADDR[30]),
        .I1(HADDR[31]),
        .I2(HADDR[22]),
        .I3(HADDR[23]),
        .I4(HADDR[21]),
        .I5(HADDR[19]),
        .O(HSEL_S0_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    HSEL_S2_INST_0
       (.I0(HSEL_S2_INST_0_i_1_n_0),
        .I1(HADDR[20]),
        .I2(HSEL_S2_INST_0_i_2_n_0),
        .I3(HSEL_S0_INST_0_i_2_n_0),
        .I4(HSEL_S2_INST_0_i_3_n_0),
        .I5(HADDR[29]),
        .O(HSEL_S2));
  LUT3 #(
    .INIT(8'h01)) 
    HSEL_S2_INST_0_i_1
       (.I0(HADDR[17]),
        .I1(HADDR[16]),
        .I2(HADDR[18]),
        .O(HSEL_S2_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'hF7)) 
    HSEL_S2_INST_0_i_2
       (.I0(HADDR[25]),
        .I1(HADDR[24]),
        .I2(HADDR[26]),
        .O(HSEL_S2_INST_0_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    HSEL_S2_INST_0_i_3
       (.I0(HADDR[27]),
        .I1(HADDR[28]),
        .O(HSEL_S2_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    HSEL_S4_INST_0
       (.I0(HSEL_S4_INST_0_i_1_n_0),
        .I1(HADDR[26]),
        .I2(HADDR[29]),
        .I3(HADDR[27]),
        .I4(HADDR[28]),
        .I5(HSEL_S0_INST_0_i_2_n_0),
        .O(HSEL_S4));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    HSEL_S4_INST_0_i_1
       (.I0(HADDR[20]),
        .I1(HADDR[24]),
        .I2(HADDR[25]),
        .I3(HADDR[18]),
        .I4(HADDR[16]),
        .I5(HADDR[17]),
        .O(HSEL_S4_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    HSEL_S5_INST_0
       (.I0(HSEL_S5_INST_0_i_1_n_0),
        .I1(HADDR[26]),
        .I2(HADDR[29]),
        .I3(HADDR[27]),
        .I4(HADDR[28]),
        .I5(HSEL_S0_INST_0_i_2_n_0),
        .O(HSEL_S5));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    HSEL_S5_INST_0_i_1
       (.I0(HADDR[20]),
        .I1(HADDR[25]),
        .I2(HADDR[24]),
        .I3(HADDR[18]),
        .I4(HADDR[16]),
        .I5(HADDR[17]),
        .O(HSEL_S5_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00001000)) 
    HSEL_S7_INST_0
       (.I0(HSEL_S0_INST_0_i_2_n_0),
        .I1(HADDR[26]),
        .I2(HADDR[29]),
        .I3(HSEL_S2_INST_0_i_1_n_0),
        .I4(HSEL_S7_INST_0_i_1_n_0),
        .O(HSEL_S7));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    HSEL_S7_INST_0_i_1
       (.I0(HADDR[28]),
        .I1(HADDR[27]),
        .I2(HADDR[20]),
        .I3(HADDR[24]),
        .I4(HADDR[25]),
        .O(HSEL_S7_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \MUX_SEL[0]_INST_0 
       (.I0(\MUX_SEL[0]_INST_0_i_1_n_0 ),
        .I1(HADDR[29]),
        .I2(HADDR[27]),
        .I3(HADDR[28]),
        .I4(HSEL_S0_INST_0_i_2_n_0),
        .I5(\MUX_SEL[3]_INST_0_i_1_n_0 ),
        .O(\^MUX_SEL [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF44F)) 
    \MUX_SEL[0]_INST_0_i_1 
       (.I0(HADDR[24]),
        .I1(HADDR[20]),
        .I2(HADDR[26]),
        .I3(HADDR[25]),
        .O(\MUX_SEL[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \MUX_SEL[1]_INST_0 
       (.I0(\MUX_SEL[1]_INST_0_i_1_n_0 ),
        .I1(\MUX_SEL[3]_INST_0_i_3_n_0 ),
        .I2(HSEL_S0_INST_0_i_2_n_0),
        .I3(HSEL_S2_INST_0_i_3_n_0),
        .I4(HADDR[29]),
        .I5(HADDR[26]),
        .O(\^MUX_SEL [1]));
  LUT6 #(
    .INIT(64'hFFFFFEFFFEFFFED2)) 
    \MUX_SEL[1]_INST_0_i_1 
       (.I0(HADDR[18]),
        .I1(HADDR[16]),
        .I2(HADDR[17]),
        .I3(HADDR[20]),
        .I4(HADDR[25]),
        .I5(HADDR[24]),
        .O(\MUX_SEL[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \MUX_SEL[2]_INST_0 
       (.I0(\MUX_SEL[2]_INST_0_i_1_n_0 ),
        .I1(HADDR[29]),
        .I2(HADDR[27]),
        .I3(HADDR[28]),
        .I4(HSEL_S0_INST_0_i_2_n_0),
        .I5(\MUX_SEL[3]_INST_0_i_1_n_0 ),
        .O(\^MUX_SEL [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF70F)) 
    \MUX_SEL[2]_INST_0_i_1 
       (.I0(HADDR[25]),
        .I1(HADDR[24]),
        .I2(HADDR[26]),
        .I3(HADDR[20]),
        .O(\MUX_SEL[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFFFEFFFF)) 
    \MUX_SEL[3]_INST_0 
       (.I0(HSEL_S0_INST_0_i_2_n_0),
        .I1(\MUX_SEL[3]_INST_0_i_1_n_0 ),
        .I2(\MUX_SEL[3]_INST_0_i_2_n_0 ),
        .I3(HSEL_S7_INST_0_i_1_n_0),
        .I4(HADDR[29]),
        .I5(\MUX_SEL[3]_INST_0_i_3_n_0 ),
        .O(HSEL_NOMAP));
  LUT6 #(
    .INIT(64'hFFFEFEFFFFFEFF0E)) 
    \MUX_SEL[3]_INST_0_i_1 
       (.I0(HADDR[25]),
        .I1(HADDR[24]),
        .I2(HADDR[20]),
        .I3(HADDR[17]),
        .I4(HADDR[16]),
        .I5(HADDR[18]),
        .O(\MUX_SEL[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA95AAFFAAFFAAFF)) 
    \MUX_SEL[3]_INST_0_i_2 
       (.I0(HADDR[26]),
        .I1(HADDR[25]),
        .I2(HADDR[24]),
        .I3(HADDR[29]),
        .I4(HADDR[27]),
        .I5(HADDR[28]),
        .O(\MUX_SEL[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \MUX_SEL[3]_INST_0_i_3 
       (.I0(HADDR[25]),
        .I1(HADDR[24]),
        .I2(HADDR[20]),
        .O(\MUX_SEL[3]_INST_0_i_3_n_0 ));
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
