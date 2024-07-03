// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Wed Jul  3 18:39:49 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB2DUMP_0_0/Zynq_E40S_PMP_AHB2DUMP_0_0_sim_netlist.v
// Design      : Zynq_E40S_PMP_AHB2DUMP_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Zynq_E40S_PMP_AHB2DUMP_0_0,AHB2DUMP,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "AHB2DUMP,Vivado 2023.1.1" *) 
(* NotValidForBitStream *)
module Zynq_E40S_PMP_AHB2DUMP_0_0
   (HSEL,
    HCLK,
    HRESETn,
    HREADY,
    HADDR,
    HTRANS,
    HWRITE,
    HSIZE,
    HWDATA,
    HREADYOUT,
    HRDATA,
    LEDS);
  input HSEL;
  input HCLK;
  input HRESETn;
  input HREADY;
  input [31:0]HADDR;
  input [1:0]HTRANS;
  input HWRITE;
  input [2:0]HSIZE;
  input [31:0]HWDATA;
  output HREADYOUT;
  output [31:0]HRDATA;
  output [7:0]LEDS;

  wire \<const0> ;
  wire \<const1> ;
  wire HCLK;
  wire HREADY;
  wire HRESETn;
  wire HSEL;
  wire [1:0]HTRANS;
  wire [31:0]HWDATA;
  wire HWRITE;
  wire [7:0]LEDS;

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
  assign HRDATA[7:0] = LEDS;
  assign HREADYOUT = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  Zynq_E40S_PMP_AHB2DUMP_0_0_AHB2DUMP inst
       (.HCLK(HCLK),
        .HREADY(HREADY),
        .HRESETn(HRESETn),
        .HSEL(HSEL),
        .HTRANS(HTRANS[1]),
        .HWDATA(HWDATA[7:0]),
        .HWRITE(HWRITE),
        .LEDS(LEDS));
endmodule

(* ORIG_REF_NAME = "AHB2DUMP" *) 
module Zynq_E40S_PMP_AHB2DUMP_0_0_AHB2DUMP
   (LEDS,
    HREADY,
    HWRITE,
    HCLK,
    HTRANS,
    HSEL,
    HWDATA,
    HRESETn);
  output [7:0]LEDS;
  input HREADY;
  input HWRITE;
  input HCLK;
  input [0:0]HTRANS;
  input HSEL;
  input [7:0]HWDATA;
  input HRESETn;

  wire APhase_HSEL;
  wire APhase_HWRITE;
  wire HCLK;
  wire HREADY;
  wire HRESETn;
  wire HSEL;
  wire [0:0]HTRANS;
  wire [7:0]HWDATA;
  wire HWRITE;
  wire [7:0]LEDS;
  wire LEDS0_n_0;
  wire \LEDS[7]_i_1_n_0 ;
  wire p_0_in;

  FDCE APhase_HSEL_reg
       (.C(HCLK),
        .CE(HREADY),
        .CLR(\LEDS[7]_i_1_n_0 ),
        .D(HSEL),
        .Q(APhase_HSEL));
  FDCE \APhase_HTRANS_reg[1] 
       (.C(HCLK),
        .CE(HREADY),
        .CLR(\LEDS[7]_i_1_n_0 ),
        .D(HTRANS),
        .Q(p_0_in));
  FDCE APhase_HWRITE_reg
       (.C(HCLK),
        .CE(HREADY),
        .CLR(\LEDS[7]_i_1_n_0 ),
        .D(HWRITE),
        .Q(APhase_HWRITE));
  LUT3 #(
    .INIT(8'h80)) 
    LEDS0
       (.I0(APhase_HSEL),
        .I1(APhase_HWRITE),
        .I2(p_0_in),
        .O(LEDS0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \LEDS[7]_i_1 
       (.I0(HRESETn),
        .O(\LEDS[7]_i_1_n_0 ));
  FDCE \LEDS_reg[0] 
       (.C(HCLK),
        .CE(LEDS0_n_0),
        .CLR(\LEDS[7]_i_1_n_0 ),
        .D(HWDATA[0]),
        .Q(LEDS[0]));
  FDCE \LEDS_reg[1] 
       (.C(HCLK),
        .CE(LEDS0_n_0),
        .CLR(\LEDS[7]_i_1_n_0 ),
        .D(HWDATA[1]),
        .Q(LEDS[1]));
  FDCE \LEDS_reg[2] 
       (.C(HCLK),
        .CE(LEDS0_n_0),
        .CLR(\LEDS[7]_i_1_n_0 ),
        .D(HWDATA[2]),
        .Q(LEDS[2]));
  FDCE \LEDS_reg[3] 
       (.C(HCLK),
        .CE(LEDS0_n_0),
        .CLR(\LEDS[7]_i_1_n_0 ),
        .D(HWDATA[3]),
        .Q(LEDS[3]));
  FDCE \LEDS_reg[4] 
       (.C(HCLK),
        .CE(LEDS0_n_0),
        .CLR(\LEDS[7]_i_1_n_0 ),
        .D(HWDATA[4]),
        .Q(LEDS[4]));
  FDCE \LEDS_reg[5] 
       (.C(HCLK),
        .CE(LEDS0_n_0),
        .CLR(\LEDS[7]_i_1_n_0 ),
        .D(HWDATA[5]),
        .Q(LEDS[5]));
  FDCE \LEDS_reg[6] 
       (.C(HCLK),
        .CE(LEDS0_n_0),
        .CLR(\LEDS[7]_i_1_n_0 ),
        .D(HWDATA[6]),
        .Q(LEDS[6]));
  FDCE \LEDS_reg[7] 
       (.C(HCLK),
        .CE(LEDS0_n_0),
        .CLR(\LEDS[7]_i_1_n_0 ),
        .D(HWDATA[7]),
        .Q(LEDS[7]));
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
