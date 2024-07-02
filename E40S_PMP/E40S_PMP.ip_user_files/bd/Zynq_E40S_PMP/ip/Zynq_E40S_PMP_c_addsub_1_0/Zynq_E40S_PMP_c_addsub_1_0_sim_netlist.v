// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Tue Jul  2 23:01:58 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_c_addsub_1_0/Zynq_E40S_PMP_c_addsub_1_0_sim_netlist.v
// Design      : Zynq_E40S_PMP_c_addsub_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Zynq_E40S_PMP_c_addsub_1_0,c_addsub_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_15,Vivado 2023.1.1" *) 
(* NotValidForBitStream *)
module Zynq_E40S_PMP_c_addsub_1_0
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 32}" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire CLK;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "1" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000000000000000000000000000000" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Zynq_E40S_PMP_c_addsub_1_0_c_addsub_v12_0_15 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
t+D/lypWH6fwN7yYYNT73w33S+bVVyck4/8WCjjwLY/ez6IQX/TUE57fqzCfU5w7pWevdhpSCSn2
zXvV61Url7bv9i+iYHWsiz9cTOGCymnBXdNyjJlbdoChg9jDybZHrJGQmeStldu/30BYLhFqV74Y
yDVT0k46/NjAuAGdrlE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HQKYQhmkjImqmd2ZyukKIZrqsXtnwxVSI0h/RbeaOWyjJT/+6tR50Bg2ja0oRsBv8HsUsHoAaAY3
3JHzRf0dYKqAahMzfJbSzN5YXzQ5FJf5dljklFw/PaRngKRCbZcRqZKIsMY9SVw65PYF8rFg9bct
Y56CkFd1N1wnr7i3ciIgteBGqAi3t4d3T9iBVQkvIiV6/Nea4O5aBYlaMeTwVuR2NOZdFmNxgwXI
SORXpYLta8Y2kmAXgU5OlJjTd+vd6mxoL/r+cgrh3f6ZcetfahzUu5E2XIn+nLcXp2HEV/KrMYH3
lW474UwJo0cachBooMWMFnynhGSshPJpBhhV0g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ibujnzR/fPleB8oyu1kPThVakxUuf1N0UMhtKrfpkhsdysBPAp9U9ytY6n0pAY1tHXY9BHACx4Bd
NE1ju1CAWdr9SY9HmMDz9TjOHB4DiEL/PewNmpVan+JS86CSoZXdpwpP/Ecdl2uLo7wSFy7+Qta9
tdQNvx88ah/DTrXKH5c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AK9F5cgJruRFdvcBrGWq4wcxhuT8dzUmZgfAq9erlxMYnnYLo84OD8Ag1RZLmfTSVqm5EufxQhts
+QMYtDA16Pl7TBmIdnr0kWx+2khxqZqMkQMRYpuhFEyRQA+O/gDe2WXYr19iKO55fRWDN5nwrTcn
mwTWDnRQdo2cQHHIcAlbYtjQkQhCo1dvlDqqqJy0UmQY6A1JlYI+LqqAYNU+E0CPa6R1dZ13biaA
3PT39NEzcXr740dCKCtIs/EX+w/fiotTi2lvfphQS9UmST6T9PEwlqFw5hAerJhhgdDIEYnZM/5V
IZqI+FDGq2tv6NcBMpFYGlGCkI27X8+7D0LRvg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XH8iRNmyMbCgH9EUWAf2MS4SZKcQbJkrDc3kaBP1bxeY2bXdL4a2h9fgWRLo7AVqeSL/OygKS4Lr
9mmY23dIJJTiLKhn7VV0MjhlEGMBuClCYM4qjqNHC9zwZGV8MRmNKQA7mQJyalcqwtu2ZdsCj99m
xpbQYO9Z1d0OuCVBPAePegf2WIos301/4s406laZy9bKuKnuQ1JOfc7j/npKsaamJBUTwBQ2LmI5
1mqPL0SBhYpMgJ/2JNujVVrP988jXUeIFVgfFzQZ7HY/Cvyw5z8Ohp/xW1MJn1zmacI6s29w82M5
ZVqQkiiWJJM77MLYhydJ9TRCozsFF1uNfM5Pig==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
s8ZMaK3tDuFJpSkOx9rYAS1XXk2j1TqhmFXTJqkjW4ISKpRl3Khcn3UYtjvd15GPXhF+PZP8+mJM
m+ldCv1oRV5kXM+0DX1SW+7QUaCWMhCZCiqUEXqegnyiAcmZv8Xb5MZetHm7+7C69r38LYdHwBBP
E3yEVYaXxARIUiuOHShImtqIkCTUXFbZTZmIw2AnJnnOvv0CEc+zSsnJbeNC2SFyD8vw20pHU/5z
1vFU7zsxC/QQ70GyG5qI2TEwyqldgGjKCMCSQdOHceCIQwMYWuNhlCDkmIEXirOHDvJm/EFfB5dX
OvbPWVV0hir6K/l2jBwrE8WddZBZZnwfEm60OQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PQ3Z5HEuFN50eIShx1wL33hF/X7VDM4EIoF3mX//5brhBOpcsecGl9lw4hUpd29R9AaYYJ6dY/wi
qbwrLRkfprhAqqTwLI0GxL7USo9xBHq95GRshuxSOfMKCt9OiFevgByiXMMMMbaYVNs2jtpP+MST
wChJE4Pp2XKjpjv+0Z22RHEH+XX1hDkIr3kUhmGDQImsyM23jua/cV+GFD4nFOzNBNE9jnxe/DvB
dBruSLgt8hI86BMpbn3TvMkH5gmNeROY4aKjEfehNMhWk1a0yIEV5FPrEUOauoCAoE8iEjxETuLL
DhJQQJKqssAHGG3GKn+7K32SVCHZzCge27IvKQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
ZHdvWJJnGWc0mz/sCSea6vvo3rv6wZBxe8NtS4DWN7sy+K06O6uUX3NETlkw/gKUf9NPba7xVsus
x7+wJ37X70EEg0mKn64FCahgFMNZiCevaEOuMQx6SSjp8vdONlSacvPSVUNbeyhvocIz0t/H7hOk
LpzOUYrFmFdsRoRxfW6TntDN1NXxZRR/d97itffW0qDb7yXGnFF7gFGF/Y1ocNX+xhA0zfq8N1ZU
ga0pJX7N5e5FUE8DTRNr/C5vzoUSpoVfjIVI6p6OyxCASMVmeR9MsHrgB+5VZWKrpdkX7GR3shIU
a8uMYJ2jI8Kmks3jsJ73meBEuP2Enrh0LD1VPIWLPOFFjeniWT90qaAxskm/10moU1kMFuQwmXSm
ydtuJkA3EOJ2sOJ72Wl52Z6s2zrH4bv+gaJzK7pegeGjyx5OOK7mLTEkVEgsHR7guQmRwAaxSDG0
gjyo9CUIy9hPmvUUW3R/30fOBCtXK1pfUVEcoWTmaRqMQsaGf8svzQhA

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PH/x3P8aJV7TlRWJ3WgF1/1obgd4Nb0hO2vPZ6VQrryIM4qQhBg36jluPiRgMCeLCwCimdlvO0yQ
ImZut4r8i+VH0lWCpLzDRUHNnTRn8JaNhVXuQ0bmK7HO9PD3g0WEGYIbz7zX6B6Y6K1ClRAo34rR
yT8WuMvTGjloP2GpkWVZFC/G00A5LxPVhuYn/X31fGAB4k6p7TC93ET1er+3MN2lYOfnkwRf1eCR
c+vOQqORpW9VFSjJosHXQP+PrF/u6NfbRSAfdfqzZGwnajvrsP8DwCJX3k2rzr8Y6kmThLSz/Bua
4btXajno4YKvI/Ab6nkmhU5SJww8FwBATP5Xmw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
i61A2LEWBVqIIOaucrI8oBNMAu/E0O3KYIRaxfDpkTb682FD78QDpfRghJ6L0LGUqoY35PLXu+jT
4QdSdX9maKQ0fR6e8W3303WTMFvytkpqMY8s875a5bK7Gni7Nf5RlLTWRs26op9l+lQ10samVVXp
APpoASp+1av2OqRxlXX3lEb4xqmumUuDUYRD/A04+20mexW0uClhJkWS5WGuTD/Vzuvmhu4rOUYB
1DX9ZcB0u33Xtn89v90mCA9tk5iyoVLtU/9mLxGZWzefoSW4g7ClZtElFU03O5YX2BGjNvqJiQjT
3aekcML2NzijKc259w2umXVAcM24rRuCHwp5AA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OSC4ZdwxykL5EmzFsS6x13qvIwcJFl+eJvjFkCtzONVaoNpC0gN/L7HZ1JcZ6Joa5/g8ufhTu1uj
dyQQrG9um5xpkRAdUyLPRJkIswa57dT907p+uCRO0PDLifNV6dKle+kU/C1okFQnSA8PE7cKqmY0
Dr1n4PZDsWdb0cOJgZAZciLxVCrOdikhX39wfJRV+GgF9SGyZSbW6EWKAu5fQiOk5JU4iBCxU/Up
MKAFstPXokRdEqFFsAutOxQwvIIr5zyAUWP/TM60Cp+hAJ5+XEB7AJzdGeMPMNHod+Q31e5PX1ro
VVW/ZpbnrZYNXmg9Ck0Pn9sWAhI5R0w993uhEw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14576)
`pragma protect data_block
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
`pragma protect end_protected
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
