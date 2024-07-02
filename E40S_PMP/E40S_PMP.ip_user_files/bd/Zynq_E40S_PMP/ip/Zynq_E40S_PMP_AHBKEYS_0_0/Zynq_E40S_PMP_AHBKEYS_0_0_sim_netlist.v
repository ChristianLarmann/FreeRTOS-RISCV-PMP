// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Tue Jul  2 23:06:16 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHBKEYS_0_0/Zynq_E40S_PMP_AHBKEYS_0_0_sim_netlist.v
// Design      : Zynq_E40S_PMP_AHBKEYS_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Zynq_E40S_PMP_AHBKEYS_0_0,AHBKEYS,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "AHBKEYS,Vivado 2023.1.1" *) 
(* NotValidForBitStream *)
module Zynq_E40S_PMP_AHBKEYS_0_0
   (HCLK,
    HRESETn,
    HADDR,
    HWRITE,
    HSEL,
    HREADY,
    HRDATA,
    HREADYOUT);
  input HCLK;
  input HRESETn;
  input [31:0]HADDR;
  input HWRITE;
  input HSEL;
  input HREADY;
  output [31:0]HRDATA;
  output HREADYOUT;

  wire \<const1> ;
  wire [31:0]HADDR;
  wire HCLK;
  wire [27:2]\^HRDATA ;
  wire HSEL;
  wire HWRITE;

  assign HRDATA[31:28] = \^HRDATA [27:24];
  assign HRDATA[27:24] = \^HRDATA [27:24];
  assign HRDATA[23:20] = \^HRDATA [27:24];
  assign HRDATA[19:16] = \^HRDATA [27:24];
  assign HRDATA[15:12] = \^HRDATA [27:24];
  assign HRDATA[11:8] = \^HRDATA [27:24];
  assign HRDATA[7:4] = \^HRDATA [27:24];
  assign HRDATA[3] = \^HRDATA [27];
  assign HRDATA[2] = \^HRDATA [2];
  assign HRDATA[1:0] = \^HRDATA [25:24];
  assign HREADYOUT = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  Zynq_E40S_PMP_AHBKEYS_0_0_AHBKEYS inst
       (.HADDR(HADDR[11:0]),
        .HCLK(HCLK),
        .HRDATA({\^HRDATA [27:24],\^HRDATA [2]}),
        .HSEL(HSEL),
        .HWRITE(HWRITE));
endmodule

(* ORIG_REF_NAME = "AHBKEYS" *) 
module Zynq_E40S_PMP_AHBKEYS_0_0_AHBKEYS
   (HRDATA,
    HCLK,
    HADDR,
    HSEL,
    HWRITE);
  output [4:0]HRDATA;
  input HCLK;
  input [11:0]HADDR;
  input HSEL;
  input HWRITE;

  wire [11:0]HADDR;
  wire HCLK;
  wire [4:0]HRDATA;
  wire \HRDATA[31]_i_1_n_0 ;
  wire \HRDATA[31]_i_3_n_0 ;
  wire \HRDATA[31]_i_4_n_0 ;
  wire HSEL;
  wire HWRITE;
  wire [31:2]p_1_in;

  LUT6 #(
    .INIT(64'h00FF000000A60000)) 
    \HRDATA[28]_i_1 
       (.I0(HADDR[2]),
        .I1(HADDR[3]),
        .I2(\HRDATA[31]_i_4_n_0 ),
        .I3(HWRITE),
        .I4(HSEL),
        .I5(\HRDATA[31]_i_3_n_0 ),
        .O(p_1_in[28]));
  LUT6 #(
    .INIT(64'h0004000404040004)) 
    \HRDATA[29]_i_1 
       (.I0(HWRITE),
        .I1(HSEL),
        .I2(\HRDATA[31]_i_3_n_0 ),
        .I3(HADDR[3]),
        .I4(HADDR[2]),
        .I5(\HRDATA[31]_i_4_n_0 ),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFF9FF)) 
    \HRDATA[2]_i_1 
       (.I0(HADDR[3]),
        .I1(\HRDATA[31]_i_4_n_0 ),
        .I2(\HRDATA[31]_i_3_n_0 ),
        .I3(HSEL),
        .I4(HWRITE),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000F900)) 
    \HRDATA[30]_i_1 
       (.I0(HADDR[3]),
        .I1(\HRDATA[31]_i_4_n_0 ),
        .I2(\HRDATA[31]_i_3_n_0 ),
        .I3(HSEL),
        .I4(HWRITE),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0001FFFF)) 
    \HRDATA[31]_i_1 
       (.I0(HADDR[11]),
        .I1(HADDR[10]),
        .I2(HADDR[9]),
        .I3(\HRDATA[31]_i_3_n_0 ),
        .I4(HSEL),
        .I5(HWRITE),
        .O(\HRDATA[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30203030)) 
    \HRDATA[31]_i_2 
       (.I0(\HRDATA[31]_i_3_n_0 ),
        .I1(HWRITE),
        .I2(HSEL),
        .I3(\HRDATA[31]_i_4_n_0 ),
        .I4(HADDR[3]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \HRDATA[31]_i_3 
       (.I0(HADDR[6]),
        .I1(HADDR[7]),
        .I2(HADDR[4]),
        .I3(HADDR[5]),
        .I4(HADDR[1]),
        .I5(HADDR[0]),
        .O(\HRDATA[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \HRDATA[31]_i_4 
       (.I0(HADDR[9]),
        .I1(HADDR[10]),
        .I2(HADDR[11]),
        .I3(HADDR[8]),
        .O(\HRDATA[31]_i_4_n_0 ));
  FDRE \HRDATA_reg[28] 
       (.C(HCLK),
        .CE(\HRDATA[31]_i_1_n_0 ),
        .D(p_1_in[28]),
        .Q(HRDATA[1]),
        .R(1'b0));
  FDRE \HRDATA_reg[29] 
       (.C(HCLK),
        .CE(\HRDATA[31]_i_1_n_0 ),
        .D(p_1_in[29]),
        .Q(HRDATA[2]),
        .R(1'b0));
  FDRE \HRDATA_reg[2] 
       (.C(HCLK),
        .CE(\HRDATA[31]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(HRDATA[0]),
        .R(1'b0));
  FDRE \HRDATA_reg[30] 
       (.C(HCLK),
        .CE(\HRDATA[31]_i_1_n_0 ),
        .D(p_1_in[30]),
        .Q(HRDATA[3]),
        .R(1'b0));
  FDRE \HRDATA_reg[31] 
       (.C(HCLK),
        .CE(\HRDATA[31]_i_1_n_0 ),
        .D(p_1_in[31]),
        .Q(HRDATA[4]),
        .R(1'b0));
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
