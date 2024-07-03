// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Wed Jul  3 14:34:25 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top Zynq_E40S_PMP_c_addsub_1_0 -prefix
//               Zynq_E40S_PMP_c_addsub_1_0_ Zynq_E40S_PMP_c_addsub_1_0_sim_netlist.v
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
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 32}" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "32" *) 
  (* c_add_mode = "1" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "32" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Zynq_E40S_PMP_c_addsub_1_0_c_addsub_v12_0_15 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
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
g5G59nuHWUtrCt8wAOKoS8f5MMzMEVIyWOQUPqEMkcEonq4Ev4I+3/ccgwKA0nh3RDAq52ETORHv
bh5XuzgVBsqArMgyACtlDFapwJMaZmAdaZiD1l/8oEVnacV+Z2db2NmnEOwQRR3iV0MpoV8LHhM8
ftV+Q+kKjAvtUUOjWy2IvfJRglNshwOAPR7iqslLnQM514zYMAZOIzfMgZQ0fGQPLY3yQOFWoY47
IKPAX7RbeUmeUSqHABMEj6ICN+WaZz//z3NASA8KTF9rFTnUJoCOFtXY/ZJN51MIfhQ9ftAydIA6
emM3y9sT/lLh4uRkHO0dTGyQ9V1bb4gKLlwNGQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jhjJ24ohUv9uIiPicYMw4nh2fZOoHinTEZuBlJ3KZe5oGWvRIcF6yC0mjcWW7hBmBwvF/4JFbWvv
2AG39Gy+Abi7WLiFibVO0z4TdopVWtMfQsb8gXn5l0HkYGHPYBcaWOljlt4ORx+/GgYoZ6g9oeD6
/BbTO3vJgAYQ/DLoDuq8IcPhBZU8WUeGhXd1tEQT6meei+KBKVx+IbOi5mYb8iRKpPIBJFVJyrd6
KXoJFbf9qcVI3ITxhGuX864bJ8RypXHOKsXLMCt4G9x0NlmZyu0vti6tvXpcUlKJAc59jFY/CTnC
DtjWiB9wDWeXVw3dFXKoLkhLz8GBmk2UQMc+Jg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18944)
`pragma protect data_block
Zkhwm5/IY4XSmjLmeUeq2RFCrqX4eFUIwbqMTvIu9LlEXnZ1y3GDBkECat7LwNED24clkxb6Uxos
C4Z0CuQKLxIbEHlFgQ6gWrfVDN3m457883r9Lh5zEBJbECbC9Y7HvsxNcp2icPI5DlUpwdpEGhdr
4XEGKaciV8gxU+zkb2lgwK8uBMkUNqq5GKk3hD+shyPmY847hC4Y6N5kV8yvRRllNYiex5OWIVKf
mupUWNxrbNqOyejKov5btnoVyCm7ky9fPMiyLM2ydy2lPk6e2vALPcWU7l0EjMVc1vmia48v8FQl
3gJhSY0Vja+y3rN1fRzgQ5YpGzzv0OWdeXWNfHUNLDjbuc87Dqy3VZavL589FBX6vIvNIMHP6sGj
2L/Lj7Hix2OR6x2Zr1q0ut/CTiBey//WfQ3cbS9SEAn6+ZjLj8P9aqBKLjeIceNJhEQxZxQu3XJJ
a941JknpLUzph/gByMRFWYW1OWmcoq7Tr0kAMs+cmEe0nw5YCtCGZOPVoCZvb1pEw6s9wBnFGcU4
6TI6x9B6dYZJFALe5lfAPgIt9WXzWPja4+slXtheGCf7NrR6CivuSmAskV7xXCeWtb1Sd318XexB
Q1VzcBbK3zSM39dqMu7u7nNWDv4kn+MTFCkp1/6wcwTbfpK1JkM6g4vHjbqaD2+5hv2XLxI8Xo+U
pETMFJQzR5RHvXJZF/XPxQNLEdeAXLdjVEFxxryx9m7EX9UWcaN5atT0mzDVj7iX545ySEkGauOn
WQMaLJzZL7lWU+SyTLX9/9i3R3QNRQUKYKoSigkaK89ewcCTMKAgwDPVE9sMMf5IiKM1oSZg7goF
uUlB/EYLvN/c65VyY/+lEQC3gVBc6XMTpUhZWWVV8yUypt5mCtJ4ZPIIxFydjH9x5u5TQ3N35qhR
A4z+AV7mwWZxGisAot8WtWyeSfovZUbrV++37LiMohJVhcLMc96dlQ/IjBvNFC+ec65gAy1Yz4+o
RSXjkK9NO0fDjKQR3DFsfGvrXzNl4Ky15KH7u8CnxmXLtZ38NDtW8s8t2BOkNXbtlyxKXlSBk/c9
T9X17glpDXP2EZ4icBUQwPKQx5l3ReMt9Q8dWMM+vjXdrV9hY8ZuP87OxzLRT0enZiL9xQy3kl3C
SNlVr9G85hKVuWGFVxezL98QPXM8JbeddYvjLxG3ROoX/7tOJz79JG5DHez0OW313obX7CseizLN
7/yL5hPOzMRzCf4r/Aevd4DrzBB+HxXTAXCxhdqqcQ7CsNmBqMML/zAKvBtbBc4YYoh9UI67Q2V7
1hC+DlpOnNyldt0Z+m25iXDhoYQQR5vaFthZQbK5JpvqgVw7JOyddJBiXFO5cE+O+UqeOryd0WBl
1hk5sPus0pQPjh5ZC9ztq3VQ8YIuF+PdfIPzT+lmnURTdKSuHUUqLmRY2Q/do+8eVaeBoq0DshUL
u1u+OAIwS0grnT61hqiDniGbtCMZCsJ/JKiMDNC6+PWHw3rsKna8oftTf3NUwFbd2Hs0zN5syJaD
1FjfjRlfVaye4HpiBBF90pRUMqLQ7S/gSbTrNYxz9BMubv0phqjTtTbUQIZRdqRwfbARG0duUwJz
S/8QaakyNBoQ7zaJ8rxjBgwZ+8s3ebbc2ChtzQ5mTDhtAETkuipWkCg0OHJ9TInuXJlbrX5k1c1x
HG4YI2W634OBYU85cjJ4gsS6xqjQHUJmo2LaBRt+N1QT8KkTBgFUmr710HNtI3P7IFW+q2uWgukU
JS6/C8VWHLB4Wn8ZUr/ItapALtHripyp+TWhYCgScTU3hUJ8lsX+v9hZCyGn354vhoIoZslT7PSg
bt7AuhVjzlI5EnrgEpsp/IGvRLUxHhAHzv1mg4129CotTOrD922e5VkshGOX0pfxaIiDgjpuIRfF
shejSTdjLFvlcYwYyndzvB6BOYd9mKagHmFG5+Gze5FPPUh81AC+eHCHTdzqe22lhKFPU4BbJEvk
cDzqfu4etID02OSzddtC3Ej3EFs9ySv0qfCTERF5Zd2PtXNKOnz0fXPm02HF/s6wyplT7xs61shJ
H01GT6Def6nvJWGVBsOy+R+9apngm0DLW004hCcFOzG1gdSJhw6/oD7yCR6G7vAMYbbfkpP4uVbF
IMx/6hWm2OYWLjRyFXTHm7FDukn+YvUwFlQA43GrSLbQH1q8n8LBAoRy9Y5vTEHVW/34i0u3DzAK
WRq+hhhxSaybooCFOaPmQNQEFnwR+NEA9xX76sEn87CzlNKGDt+0mJUl577cZ5iv8sd/CbZAj3em
/El0D6XBLM9X1DJ4R/6ElteBFgzb1nB4xnl3iI9bF7tu9mp0B6Z6/MWOPd2AIZ7knlbTZiony5y7
huSJteZLOvzmFktoaczCsTjHfEDn1w6Y9M5PRQEPj58LErLdvUc/y3yn2fIuaQbMkJlXZ71wvgjw
kp/+M6mV5z0JjhPsCIuBNa9Y0Qs6m3UwtQ0AVyu8eXN5XjLBfqIAwmXgEINuyLeP8Iu+YUNuSdj5
DjieE6ridUAnSuzgzTtpsEczIxZNbhPgIINRH8H8ShMbuqrefIMCL/KzbUIgrMQzrBOVdrSdfOu/
i58NssprLkNHLKSlWH8AXQaD35UOu7AQnA8IYgVBINfqxFMDIOdIG89GGMVvnLRSsMekExig/M9P
vY3aE2aM0Y7nXf+7AyYAx7Q2CUhew5jte9p27ESICXcHTAY3WCRsinzKVzGjxKWYiUp0p7mNMJ7K
XoLDvVCpRNpr+FTzivDEODjcK9beCEzfqOfUs+Tlj0ByKDCY0e1SQ2izIrqo+mQXnv/pHkDXGIsP
vi/ZFYYAVQ4Lu3RCZ4/8ZOPRzpbMEj8Eyt/SZHbzPHCaCU9F8JTvjnJU3VafWFDOhJMTteCTXdBv
4Lt9y5z7N+ZvgJ8+wWSJW4/UZNw09Y1vDlxVpjE7nqifCHplPdqLL6LHg5n685KLa8J2ewC1e6md
gNh2G2AkYwsYojqI/l0ToYGCO3BUhSPOLWcZRzzfkX1fybSah3gjSriUo18FNQlUrMdCjkYSZjmg
eA6rTMowvdzrUS2H2dFwpiYTx0fCSK7qKKwTWe3WLgnx71fc8FIr+UqfjGTJx6KBwuHlqGP+gxPp
e6YsIHC03SECmsHHZC77ozBmvJcBorlCaRzTInWRAlaB1oVsNBvjn7KSNMBzeJ/C9zHEhWJomTZ3
QDvLyOjR77tev+OYdWt7GGKQdcQ+9YPC6+ZaMy+CFRS/ACwBuPgsRiuNuFnGZYy/0EVO1CRr50//
dD8zyxGya2M8+L3DMxJYHq2UzD4lx4rC2fGfH3anaV2o/cS7naW8j/BnXy1zvNjTAiEo/O9ZhRF1
ogOl7Ny+B3i9419R//tYVPLfbnEls7zGlF987o+7eUZh+XOEr/eY679SmY55efHvzXbmEBRIazct
NQnDCYLDqd6HUYcbsjx8sNftDquXwjpcaYLkyrnTuVdZ6Va/7spniAsjXPyl0o2mUq7QMFjr0fFr
CjpBVgkBo9ujsZs265ZmxNzk+iRO8s7LvYNPvvZ8Cd6fwLJPz9XKVnu0pN6ul4MTNcL6w+fwlP6H
BPSx0GUGNkocNX/yIZB/gxcV4pEx7iEdnOpXT9qgMreDi9IbR7oNPK8M2hga9rGE2LypXuD4qgYx
GF86xvxIHUyAeCpkLD+nCUsaze4/G2iOGvTkTqQqcZ3LpuyL3eRmLfLBg340GcrheXI7TwzvJK2h
LUwd14JMuOYDiP+gOadp1ostfuixhNSQj/qkjgqMr9zLNFucSJBPUN74Tj+d4J9fAgNM3fMvi9nU
56mfsi/7wFAUJBkUpKf+AN9qXwZQD4F7bTl7+tg+89J898SmPzNMddvZLXb1i55wsgxtzfC9Oe6O
m4hXODpaYasOSg9IpdMS8U3sVncBLJHEt/kv1NjCvicNEyNG7qbCLdHrbpn38usDnGfpzIvL+tzZ
rwlDtD+PRCd/ICbX45iOg0wfrpAeQ6sH9An04k7PbI3BZbHwwrtw7EsOUu/bRBu6zVhoQ9OmA6Zt
1OnU84gZ3YEhMNMPGbSzMJYNZWeLVZiE8G/nmHzjr4OQVQptNs23ajBQEzUBCZ6dCtpOMj5ZSZAY
yNLF5YoTneVPn5awdO8wSfpxQ1gdgSd+KcY4iGOOZ/cjU9E7HJ3TvWbgQr69Hjk/79zowmceN60a
kodEnxWhu9YCrEhPFg4tJk5FbxH1T/hd0ltrDZ+GtjsU5p2NoY9ISr3a7S3nYpxDv5cB7yRxYFLX
1wdJKcE0QJrSR7oxcfr1yYcUkqIGhxndbJ6kpqGG1BSFphvoLoxC6eREEuj/UhGI9MduB7JqMqhn
BaNXQmlMyd3e2s9ifTJoMw1g/n2lDI836jaSQ8kcJ8NsogSRJFkRkj8dNqQQLt9zqfz0PoMd/IYD
LVAaI7iqxIU3GR9Ln8clqgTBjFdiHsQ9nl7PXi9Cx1fhna4jeZeE3NXwwse1oNqi4b8KA4mwAtDq
4YZ36wLHdr8rog0F3k+5BWSyX4rOi8KKht8zeYkda+YO5Bb7F40OH4KchenFPgChyy8boDudToQU
mhTw7EfYlZ5SPYuEb8LY5C5RIAwHtna1VpyJ4Sg2zkSSNCHCb1BHYLIGbp8G2FW4BJ+0UJtL3cXX
HzonbSvTqWPXdq1e/p4Cf2UchmNkmLtSIiwgjsVm+2XlxVHXudM3CToEfmBcHDarkJXPwCcKL8MC
87SBVovDZb6LLjAWP7dHtq8iDVPhDd0fNWN8UEuHeualKodziAKdNxiOSz6MWfqv01ia42h7UPXn
NEWdwzYw+orsbhTKXHCEFu2mKL6ea/rM24y51mm8JacefZ4+hcwn0EpZ+5/siRQdBVAsXjlP+Rdc
vRpXEwgTVjCE72pV9CoLNbaHQLguU77Ztdg1khrcVRyaO0Fuf+A2jfcXYmRk0Ijzph+L3fi+MSgW
BYG0RdUXeDbUtgBrPQhP2Wx7777lMQybY2dNHElJUapRRjA3NQ9cwR2ws6w/wsezG0+dw9+k0pN/
xw+G7cRqUKb7+WoMyQO0VIUxK9CqsAanNNEOKkhO9mTia+A4YixFlEDblUsddI+4Zz/PYzuAI3MQ
ltcA4aftV67uuWgr7ki5GUQkGvi4oCLFpj4oiqtTBJKD7uXZ6ZwMEBrYu+4Kyyi8eTnpKuyYLmp/
wpZ7hRRvLHpOwkXrJ2iEgavgHIs8C3warCT9o+OA/56f7hw9q+1Ftdg3u5cKVMPCPKcvNtS4aWNM
3yT4YSqV1vDs4hzclKsSQjjl/AyauwPf/TlKqjTnUVtdNYXHZ2832rEf0XPvleNiurEPKT8t4UpJ
GfJK0Wo1nP9j7EJ9TdGZv9ysForXZDXslQX0X5nbMkjCL0xCMadWsQpo4P3+PT2UFlIX/9dbnAGX
NTMpHNbHica/EV0rbce3qgF29cLj56Ak9U98PCF1omJ8A/IeJeslvsn57ADOKk4XgkpwPqnT0nKG
2own6GK7B6OlDsqwi8OsdHWPF3JugEDbvPYijv/Mp6rtK1B+dVNA1HOAWU/iLPN/dywstA8dGnwS
//KqMK8BQamHxkJobJiz5qdlAxNsNXTQZR0T/uDLHuagVwLVt0kmBfNhZwHzGkHh+spu0kVOW5xK
viNtao5KnhW5mJN9W3WPA/aLBroFzxT5Ljzhan8SVc2JItDKoBu5RErzGkdm63HRjKBOOq16OgST
7tHpz2V3m7SduttM7MNDjzyGQBLFvr3Al56ZYNao3025rwDOFkGBylpfN8l/XPB6bccj8/0or6Ve
LGiwfzEQKo4qFNkTw8xQ2w/kY0TGaOa015q45otCpCqO9PmsgyHzMyOYVRDeNIQ6yR94ceZLR7XZ
IX7TphckjrmOu0f7LEeIZVMLfBZttO0o3+VQD48IBqk1qWutqXLAr32SsVFXoXe7I+H+c6oR0Hu4
L3LuJ4LTtz0M3YjoD78kzCLsF/0n4gw/e1P5yMxjhJqj8qkl6rJy2ykwDFW85j6dxguDy/FCM1TA
KaM+nqvw2kwRhLK2TIX+ek2YiPNfUXoFtRe1pROZv34EhLWrveOkLn9a0ZMOFevtsZdHiMa7UkBv
pI0gPuWPy5wO0lhJgb2PdWCuqCy/VMVpV3ntgVxxi56zquB/x2RvWjNVkhWJQZbXtrClD4+QJog5
vtlTUYVTOwmZnMJds33KwZ2/umAxaA8jqVt8YiFPNLxyEytQ949b/vZG1m8v3voAkHIAsWIswJme
qk8f1hTlIFGQJ8z2Ipb6Za45pf8AsHs65gEj1UoWj1bXnZdhOhaI0OrqJTBcVA15OWzw16Vv3mtg
V66VVfkkMehUnS34T3RCqHE5NP2857i3m47xZWD15aFfBFwY9qYg4sA5Gq5TeGFbOHk5eNiHnWzU
Q8KsXTu6YXaocElvClBeTxLSNoU5iitOeAtsD3AcCA0beoMpKvLUDoIZfybFsTRLmpX3s5SAlGC0
O6FB4muhkbpF5ivmVp/iqk7vXBkE0EQJqsnb5PkkGTj7JO8n7QEVdGR2yDCV/k//WwNyJW1tcC3e
abDTyY1DOMPhdXmGc5cWeQAibnFtMRnex2vVccC6yBFb0sgjihzZ8YEogDkLGpVId/i78dSrQ9lk
yZp62qcz3UmkhdKk7yq69qzdOM2Ggsr1tmsd9D1PsbOVfafTSzYdMx7ZlyOVwohGPvyjzPHRe6Hu
Y/taElGtJ/BsypgAN3L+3kMjPp2F1tQT3y2eC6wjvpkSUQYOyNygGsjRuMnmVQrwA1kLSpmXiTjp
seTaJD/IV3exU+wTBVamlKg4Evv0niazLrnA0w52N/C9rusEKBnpM2ldu9UTehb5Agg8vQEXT1VG
Di9XBypBPZA0mXFUyCelGHp/5h9yVPseLj254VMTr3TTrlFFvxU0P5SvGEs/GgmbOjWIIxZrwH2w
QjCipqMZmiHFDcTFnBxTDcVbBNt6fx3xcqOmQVzs5MGPiPozIs4uHAEDyBrUc37mHW5Jjl+6FoaF
vhGhe+XPcMWjqzNSrBnf9wJAz8Ay/2JPSWCK77OfxD8EGphLVbbbbwic3ek+adC4iXMCxqV9f+1F
AKgIfwIYaBxq6fzVRfUTegPh/2hKVifu+geTGNGYISALgUxYN4LoLaR4QqHAqe0lAyznDaw89tnq
7Ar9rJ4FalqqHMd6oeFKEUJTuyShumgLB94PT/jjwtxwohYdPtplJmorIq4Q6hcrECFnlA+9rFpm
DYkKn7EKMkbCaG2BHdvBV4BDbErFExqFBFunwUEBvgMNQqvmIO+w/KTYdtmjHSSNa+YfRX8ReSAQ
4q/KUMfsURxiC+0GRKJhlTP7t+qeUWRwJdZdr2GN9bzTt2PuSorHejAkNwpVA6j6G/QQsTxvnhbD
XzbMuw9E9ya7D09p3nKdQjQtxdJT+Z0Qaq8eDxmv6zsGS1TNSti0CVv0xbKHT291JSeGlJ+3JK5h
W/1F3Z4K+FVQvn/gftttFwszUHiZShIFTMGgjXuBZkYyAKF6yxWrGaNAPRJhqgyX15waBkIhc/yS
aJa5uhpdp4NXBqziIbCfQ8Nfam24FpcGOYwoubLmC6m36K1OwVskPBRoLXG0Kfr9QEQtQwHY/Uho
7WxGG8TdQcjJFjR52VIQ6qN+U/EpLTfqMEPKKpGnsRk3Y59AEq/DLRiLPww8nexVK7BADLKUId89
URpAi35sC/0NawQqV+P5LbxWD4ggScWdQ92r7S4avCBpjO17Vbz0UZWCLK7EwraMnZwLkYlxyEPD
BSEomrHxBv0qO+o5ONRomUZj3UfWob7jogeOkraUk6O0VJ5T6cf8Zjtl5z+aQXrvek4TvK3b5nPx
jMd+iIYASLC0S3Bi6eiL9mkPy9ptPrn8Civy9T3wOMFSaFJSRFCtOs9eLuoVAaTKe/aUP5KyWy62
9MHmkAN11+vJ0rfRS4LpiMn0nuG56rmFnyP5f1Y51F031ctt7Xt1VZIa9Svb3YrIkB4gR19Qerji
3QQVWOZfDcqmjC9jQ8QH9zwEUVq/nZg4XoE5bDLILu8MSiG1VXqGFVru8cCFzz8cY8a+Pm6hK0F5
3s1n9Xy9vfN28hQ9jY7Mr+t0CKwhTuzpjogPC/l3YKBMtNl8gsaIHGmEccLaQSqvxNBaIBdPhcCo
Iq4ywIhPJfML7g56cHuMqkD6voHKqhlErf8JzO8lDs+tMdMZxOK+7BeWjsaN/3adDa7Rag6YBcLc
jEPUWjLhbT303dnRGpY3EuTjai24FWD7svvn9EQiGi5pQSEPHzPjlXCmWxIZUZG0oW4CDAJJ1UCC
xqlQu2fMdEVvXdsS5af68hUHmC4wl0DfKUjWr+uDvOGuYd9fQZdyJy6StoLVd9d+VTBglDirn0jr
ZFcKqfmqjzT7YL8meXuwzTELEdqhe6CDSXSajIKmVJj7fSkXSAVVPBvij3TFnKnBUe2wclKrPlSf
T62ThnIVfbrCEqrfl2rxi/tk7RR3THt1zm+IDMG5gTPjLN/3yJc1VlXRZvN8dZ2Ib8DrUabDA0fT
n8hKpiCiZcyb9czDZs0uavkxh7iEsYUCE8BGAHj42rMd7vO4SRcUme+v8ORv/t7fRVY4NwieeC4V
u6HTRcASN1eO9Av38RbXyQblNb5hEsIHdZ4Lz8+R7a34iJYejD+taeq5El7Gvj4b5Cw+pn3rADhH
WUnw16xPfcne4q1cqxEUpW+Mem+oU0U0h9ULbKn0EtefklOeh2GUzISDMUtjWNOsVtO7IuXUvYRM
exfSvvzKIOql1PvJS/baNAK4XkqUikY/68Pyxk4UXrX31uJmWI11Tv5yjI6WB/4xn431W9NXkUDP
4RiBaG+0bPJ2Ubwqr9vhW28GgU57n3sl+mYkFyDyDERfQ6BzV5eOYDUUfGLnXbtcfD26f0XAivmn
O4x1lMufeHjAjpJAXpMPqFtkw6U4wA0hTu8DoFfUFB87ZcR4Vn13QoZBbqr+fD4msdeEcyFI2PIi
ft7LWrJBk7rFf+GBwd7a6/nitx6gNQarhlQuaDTY3NMPu+dgBMWJB5cz8o9xYlUHMD962bGgpusS
wcZPoRzzvNvr+ljb6fb1HxnyJywWp3BG25uFsDIjf7A9ZLXL25vDfvR1JWT/nDhaFXVnDimCJ20D
VHPe054NN0VkFPRC8hcRtWYgoPoctc7rA3QJMuFPCFxKbgyuSPR/3xzEJaQTDKAFlfhMlEqXnxnD
M2Zg17qEmY/t+ZKe/vDccpuuVB5E+vgH6Fm0McGg5r9N//G4XSaHJQsTiMNeKdatMp1sFA1hrYCh
c53rLfmLdelfwuCP5q7sY+iyqHAkjUNCzwu48cRtwlb/WbNekP0sGs0t8gHYGPWT/LbreXXEhiN4
31U6ILrYd+y5Xo0tzVaqvl+DvaN8hQAkQRKjdwCR8zozjJZDEBtzE75Qm98tF56I1hVoliiy+WHu
x/m8miio4xC2G6HUJqA13X39D8OwAnvbHKclJOEZKk6NzbM0kOqEGgb0yVL3ewoXy75cwcelslqy
2cvQZ0dzaYzJE/HSalFfXRnQZiV70d+ohHtISybpKEKsm4I1ANJ1N2GiqXyzAJV78QsUvsw+xnLy
Iy30J7ERk3+DEJvQQPEFdSXcq0ZOU+VKBbVxSRfDgjv+TD5GST4ONwye1TuSivWaVzEx3qPjFK4A
k6S3dmfnzS1qZzCGQjtk3n/8PUUHRYTQpFdqZdSLNeNzrvwbMmKzDYWls8hxv7/1WFTCBvqXUCqk
sEbG3yWyg47g4p0hLcPzJCzGIsU/XZ1zw8lpNmpi6neVHLMZPKBTZmp6E9NsCayV1jh4ARU5AG4M
D1Mt1/OJw+ShzB1Aa03osJwbHGalK5gMqYqlk/43u+cpcIdhvcE8bd8j5p+M31M4nsZ8mR2jEk+N
HzOKJwyXPYPk0QEfl6uOtsu8vwCvXZIs1WNuCm7C9PAYmO5dGO0u6poNo05yUFOEd5feQL7djsfg
yOLGWflx6VFE8Mb2oK3I2XcoB3Ss5Zxep4M7aJuPvyDMmnqKIsAGYkUnsf1/JnJ+kJ8sqa113Bp0
NK/y3AKWjM16vjDg/GpPQ7TG6ZIWOBXvP8W2GzO7jcYr0FWXsr5yqWsICoJZusWprm8BgQD/S27r
6MM9TfIlQo7Ck6z3fKlOfN4QCKGtw49vfzvP3M01xU/SZNt/Y96MNE5fHsMup4tRlKQtb+hsoXlc
qmvV+cEpRAg7K2roB9TAIrlG9iE+RZL7l44GWyQBhQmLhWc3FQFSSPRCP1Ffgx0lZFlDJj1nVXBb
muDNqnC+w8DRcZnNEL+IcsMh0s/7A9Jc40VRSqU5Iz7dK1lqSR46U/wsfZJhEOFoTCjmZV+J7vai
c9YsyxLTnS55mzug3edsRD3mbszRGXLzMvwBnWB0aFdNsYW6Etkg35AXfiR0YIhfUWUg2AfeYwd8
T4OpdEbnnrWbxMQAIOmn2rQI8wHVy+zKlrW7Px8xBaJBmEurPXL43b6ELXXRGRmxg+jp+4iA9wEf
uqTRw0eQMY3B2jd/T6DYMxxqGkzO427NzT1TcwaQF1hqQjkTz8BeM0gdtHVTPZxfMasxujjC0597
3xHyfK2J2zI6YZQENtPbasNn7JNr+fKLJlpbYeAcZcCEPRIeBNpRDibYj2aJw6IePBQv9qWhV1Hu
d9fhBiRQIOmamp6dX/CZV7L7bJPoOeF2hP3BxH6UTx9mh43xXJ883WxDxrtK4Pn82edRVNSLopAl
kLfzaB9GeC7vbHTfP6ffnjH2H2J31WbA7WCGC6PTzN2x4lceAMNFSy21Ufyus6iyOxwXs0X8XjOG
OJglFYqbgnIT69XQOa3YAAuqQmPRyZyYletzUdDbFndyKnqNkDEW6XdxJasm+1nlgxgLBQS7Ba5O
Ta0b0FfD3JPkpiVdb8/J8c4CeHQTlE5SNXW7FfAa82Alu7Ixe+/A2j3zuRPjTOGwjE6pdSvYTUII
ppeel3F0A0ItbTWX9nTdhlRhkEXIEX4Vco9L+1EonNAjMnvQb0cm/qWWxHN+Wqe31eHef8Ivik+x
bibxzjSTKaHQeLb4sbj17Pi/C/vmo++s8l7L+6grmh/jvSw1UIscoFTIeLvjCcD5ZUr6Iruf9okS
XXNuUyIelEHN6t3cXm8ZHzU8qeFRGm9JWvX09cKMGe5SL8dZWLo9pDIhq6seWVs6tCFV4lzmYJWl
VYMoVgwgrDc2WXzk9JR+pLXVTOqztkflwhwxn2uZJPXX3Wvliv/alTOWno7yz9utGBgyI2xLq/8U
miEb3P4GdmKvCF297kQfvRZ13X3lNzOJp1W7rnIBrrBTjNP0xZayqVOUfyeu2gTDE9OAHZSpmmSx
yMEdKD2jUQNNPix6zHMoDOVznchY/xAWEgjY9LGtZXh496TTDwyXd4hX9KmDeVJTskyH4FftNqD+
XebRmnRJLauPbWp8TOg27llrQrEEoXQgSr9POodvy7ySdskCjWmm+5GNT4pT19XiDNVeK9A1kqxY
awbTqcrK6YlyXBMWZ1WQuZGP+floRkSWnFliYGf4P2dacyNFphr8z1bW32n/wUMRT0ZtGu0TraI7
cs7XLbdnWxzLAL3lMBQlKhWMJxrkS2Cx1QT+F8RIe3/PDXsIcSa+OTsSgRvDK9HCE9WIvy2cK16X
xqEpY4v6mxC3ns198T1V0ZhoTK8Ci2YjPKnnR17taQEZjaRxtAqNnv1QUZjsNDunjk4rdOSeNjRw
qUDotvKyckB7N2a0/bqn7tMPyKWcyswTU3IvUc0oukFwlxh67vX1XuAoRyv8WBHfIMKlq77X7hoc
Nq88SePSe2SBWgyKD5eKU1FtjZwpi7fngTw5gGMCyzKlEEeAOTwxxYZORvJXzhWQSTAmt5rwEfOK
XbFt9LjvApmKoxZ5ryJhRoHEh/wvsEb4uacTYQ6/sxre83M+0toy+BZV4hCOud/2XdIQ5EjC3mma
IcYqUbCq09SojtZqwfLSCgoJaUn89I5XR9wNLnblJjWtBkqXmOSxGmVVT3YPTka2QDxM42u9fjyv
YocrD51M4x/7WyAOwlZPm1AswvUvyDZK2baFSHynzQi/TH9A92KFT4+AELdFAc6kD8DbaF8P69QL
jYu+Il1kQfhRidN1tNKkbH+mngi7lCqGWBpNNg+UGsEeNiGYpliZMwPnlEHVwAZ8DRxxc6MTFtvB
IfM23woKoe6Zu1qsVrl5mVY2bjzonwt7fbvlFX6k4a1xPuNDU+G59yTpPelsVhX2ScKJ+s6xM7B9
DTSjoQJ6a6zx0zTa0JtCTk2vcWHGCJ0gRT4NO+KMAjOvJiavIrw6W30giftWzzvsffsjF5h+Ui50
/Rpf/FhJNduDi9e7SoIYkn8Miy19+CuL3ZPqfZy2q5YmLGZNd4q3AiW6PYNYdlLjfWHg7ol5u2EM
+aSamYrX9gpVcJYPMNECZVSbTXFjbubfdggtik7p9d+GZq2OolXuF5a6mofM6RrH4LA2qLAXDD9t
oiY1V1rDEBw2NyyM3mm3OKQwi0JBm426VLTyEo+QAnJAtXfj2i3G9Z0TMth7XB0A2bnn0l2saLcd
/DfmojpnAW6DvjTgwZMqvQ5qwiBcJ4CScSZzM/fj7okpWdawSPytUjkg224OZdZJH5Y2QEGyuok9
VwWFDbzVStub8sGieTXItH+te4t1EsOKJeUzVvlMvwoARTdcH6YXF1/gbYW9Eki4DqIlmTSHn8+G
OuXzs0pvxuQXt1f8pP5veq+098J6uwkWoVRNXwLSDkArN7eJ87WPOPxNxcIlHLFs3IdCkDyiaCNV
lrfA/7yqxc2qbSyCbE8fI/OFNmiEpo1sBsCK4gyEzNNd8sTQ21oateVP5GQjf0FGzpElTQDOF4KB
qOL6hGDDLociWCF0LUdU19ERoXp6c/+iikcAd2wUlIm1t87pNOGwFzmrW1qc/UezmsR1MMMJKAnc
kCErU2itKhytq3GX3jEcRuoRV2CKUUs9debgd1XKgfYoHqOLZ/nzE77hpjE9TnD+yn48jOFIbpO9
4AVb7dZG031GWpaOL8sHUAWJA1yfIJ0RiRS0H9tZSVxBODuKN6CvSseWqK3Z1dcHKckpYI27sgyS
GPPTr6mNDWIqqQhCw78wPGKDBYUxmO6RkRw68cLC9a0Q0FoNA/T1w4AE3lBg47hpDp40ElChaQoB
BxzAnPH+haicIN8rhabIMT/Wv6Rhw4Vqnqu3EXjTl2ava7iaWaIDkJidjJ0EkqBh6NyV5Tw4CQlq
nMlGv1jxsJwRf3eN1FEyo3FIfbu7FcORA/KwTdocuBjHBmwA1zAGOh1fLSRe4Bg/ABgj6RkrK544
gPWcyQCkLkDFEwKNYtHUvCvmttTX95tHtmdA2WTAtBBXQwjB7otqlY5Vthq+LVp60DyJMezmUhrZ
be093Orgq/SmmNScnLOMIezH2MzyWOgszUvhzgnEW98pbs5T7lalN9MIGH//hGPbtw3MmiJZfOBJ
4MEBBdlUthoM1hdEV+PXRaQMHsVe/l6qnvmd/0nGLZhaDwt27BD4mMhTg44usXO+7UONLv9I460b
Cffv54udsmRG23O+nvhGPnh9/ow+JtztLswpyMNpQE0wxC7CxOz6a6PX7bpk2lCF0dvkXoRTqSNE
0wiB0FQ+vwNvxX5HPJbMrbIkFLaOQ5pOoNKW7ookLa9I58hnTeUESz5h+yMx8LYl60PJl1c3pwS9
2XH66ttOfqeAvgmTo99HBVQkfD7+xNgvetuvTU81SgGoSaNMotJdfSKJ3wMky1im43TxOws9RSV0
HRJjylRegt6bN/Y66tMM/tHpusHysQpNtdCw92WuKZXympgg0tj9+90FpWKoCWzDmt5dLJ+sZX1K
Y3SjnkVvjE6eNUfpdwQzVsd2orDhtssY4EEedFyjSZwoujPcXIrxzAD6/hajtIux6XZ3nFZJi5c3
tZL7xuH1aBTp9Fepgrrx48NVafUmC21irVl94vLFkSa2MBzLFbgvSyB29dNtLLUZX2Tj03R7kJ+4
xOdiNRnvEUQx24CyZ+hc49KPkbSZSo4yHum7+NKSKvivuGWRTu0g+GMlSIJJHndS8eZr6h53sp0a
/NSF7lthu2PR85OwK8+bmfFjxmLtdOiDnwrOjvRFNw4B5g+cjRd0q7zMPtdzHg19bd5+mvrzfYAw
qTTjg4j0ttRkTFTO4JBTMoUMI1Q0rY1rRDBA2tBltNTrEaixUPdcPPHV/1VS8FfTyyS8BlGovT2+
tqNcAxk01rSTiT25ijPlK3mQHmTr6mRHmHMgIUYsm5SJEBYsUdglp5YTsk8Ozhu2k8+QZttNZ+5M
LE5eC31IeVe4sbwyxAMMXeCn+UG1pXxNT4/9M9lcwUx6D+s300PJbv6SbXURPvP9IlDYNl1CWGal
cRNuCpZsSf4gqm/3cDa8a9HiJEGlbV1A9M3ghVTR1gK9leejUZdkRdCXtosmRLV3pSzf6EttE0gd
aoiscm+UE3waSnSjyg5ZdPyzrLB5bfqqZxRVxQDzcqxJrya7Sy+s7jyNlGRRnfXSRbKGOOq9REwN
/2RLwy68741UEQVB1UXa72kqj+jJ0BTN+KxSbaoex+sWpJTjf/MA39XOXOLGAT/vDHAk9WIJLG49
OuwE8w3oinZC3Eut7xeGmXcX5RRZUwbZ3ou+QapVsxbwLig7qXeVoYuWzf63LNzMwBRuSswTn7bS
208tfWogbpFr86Af1K11JtvvX4ulQnnGMkQJMZnP/z0L2DPIvcfckvygqxMDTYRFBVaIieoXGIuO
jg3owJScQaaNqQZSJ6Ph8dtdsEEhi4HX8FbqtpA47Kla8nzWpzsm8/AxowKop+slycs0qPjCeEIz
POLZzgoZBRQbe3JAG7InSznBmIcsTA88zk9sFBj0Xd1RmrIOYGPgxHMk9qHH8J/Z4ZnhYhijuCpF
Y7aLXtjWww/yfR0HXmCzCzGLxz+rIYs55upaIj2gtaue9SgTgsIfPVbXuJnJRn96wLWx85p4nyAz
xevf/gJRREGauRpk7QYgiiPzTOjskIdK4NEDWbPkTR1EsBE0ho5Q4q/U0TTgNHvE54iCrDAZenKW
QHVPjyNrE57WpOPIXevPdxTsNNEiOJRFSjoZYJZCN7Hsi5J5cFOkDMfl42X7GWMU1aDg9nGqTVtH
dXt3TG+sBOUtijJEw55wzty7ac2o1bn+PdzpHJ9UmKkXAJv+SWf0B01jkfzlbXSGIA/duvIstkup
zjAQm/yRiRwJuA3rQqTCRCBE/RI66SYsxGy+VJQcyT67FejOAMBDP+NgugZ3RYfToIpgWARGhMbX
CUIMl4MyxcxvsbGtYTRj8LkMvucn1KaVMtLrvhIONgZKKoXw91N/31Q/ew+vaf1VsNdhYH8C9jmP
hQHC8gYyLo4c68LHls2PxxPWKbPSYoJO7/hHe7E/tViGDdCr1E0cF2HK6e94itJi4ajM+9gnsLNl
WafyTjM30m+acQ/wvf6zfUiEUDbrw4bj9u9j55KNBZQ9pWj6JqB8/l1gdMtwN/J2BREmyj4v1kRI
chTs+vBxGKFA/7hgBKzS75ZFNHKVjayKFV5uplb3n5pOxbYX2CquMsawHgWhSzrLQZT8LErujQPs
CWduwJNBiPXtvDpXDe5A+ssRtcntmrH/wYrfSZw76AhHw+8yB3M+BnP4GgOqIlhmMTedct4UfL1o
PwfIF0uxn+F6GZlSFZpyy1bmAWMhEz6OW1fPjFdKzHOlyiJziHrfnB5gwdZBCK9HaZsKrqQK8C3y
vEQG42lZGXsvc0yTSiuiKejSMEKPBupSQq5GJs1lPNzB0/R+l9F/VNPrNc8ogo1pWhWPxFEql1Na
Chk/DrBcmD4rNeV6YykDCaLJ+7FjwIuJ/TgW8L8lELpUnNL/In2qCWtQYg/rdIkM7BbFZTuqGzqx
ionrMf7VyYMaY2aqBTnk6zK5OgQww1ArSrPam7VYUoZEMPluyaKQ6EsBsURVmUsfYFp90Mf1wk+3
/L45kHXCP6VDZ9FdOG74I/GL0YRPr0GvcUT0VNinGzG0NCU0PQ21IVtfjAejpdhxOkwhiFf0i3PL
ezIxIi4NhB3RPOgYnXVekzxahfFCcl3T53keAM8b/vkqPu/eRNLAZxoGedOdNcy6In+adRBCQuOb
l5+2OFb4cInq/9TBbG1yxUTT6ywkWha50IWqkYiyVDfxYOzl8UGqCi/Ubs6xtkVcXGuAWJcKetub
8jvtcUjgCg+c3DjMRzoFsYbvXyWhd4eEbDqYvWRWsDDnNidAN+9+txVKg06XNfftyuIEzabnTB8g
rQw8qUDrpANNhYVivrx1mtNzNuYOTjTnOjuUxiH6QZd02oi9G9IMrlpD7e59gEIHIfX/2xY2gDn/
xRhvckM796REPRIuC0Pz9yQazAz1udpLH/W4sps9WBvGfvlbC6pd/mp3IGYfhM2LiZv1xLMzSwVS
zPqA+/TFEa6tIeAOzEG1/nYsLDuhQkR6NdlS+rG4wHFz4X1rEH9qxoJm5l5R8u4pbH+7B92e3Rpw
/1E5elhBIzypKfB0ASztyyQmio7+J9wxKbqRL6S+UY0q6SputkAzGINXe1jhx2CVseldbQkPjtpC
TczcNxqpK/1tmHSucCXaynqFiTTLhF3TgQMVLe1C8xWIUwKj2IXBrCdnkVQ9z31ZczP59lrmyQD9
lOyopDEEPJzvS6rTn8wsWIB1FHCYtd5YwElJCx+9r7NKwcRZbjJjS0str11iBonH+Etr47tzcblg
2ouOnyvrhLBzXhFNSPBU6XWsBzx7rDjIyy/lc5K2uiPLSFtW9p4COBxfh+K4CgthH8L8Vc0qK+E2
owQ7qI2YS8ayJILwHm9RbXBwBQnPjQA8sDIfQ33yOM8yAZjFoTfCYS6Fr2NaIWcaxSz+43xF7h6X
UwwU3xGPEivJj79HCev+pubY3POdiPVD3KDfrWLdGSEnPNe5naKxDGoJn3TwYf+MyW0KGW6Eb6Il
2r0pkVtv1UcuddjIc1j1DHkNNBGafs9IXViJrGd2wGsaxb/zpWF+4RJpautUpvIroq6MFhvqGwUT
NIry9b8ZHoqc3tXEcOlfEZJ48WQX2fc3DPSp3niYgGEGEvYkB3iApbIOxHRcEYmgR2ESnz/UJjiA
eLPV2jPJ93wa7XB+6tSQ2OUiNo0aHqlA4F0f+JiZS7/g/ztH5be6rJlgNQfHdCIPrXL6F554ZiOi
6o8E8h13GKfNDjwD/EUXATIWI7mzOV7byOMWKGXGQgmp42ZwAXGemZfw4eeqMyIWI/7RTOW3++84
0eAhuNIZCllwOVxLzv5LSYipZT2L3FgCD+0Z1YTB/sROfkGZbqY5E7kxuqEmESC4Fp3GKlpJEcfm
qVD0SbncKgn7N989ANZ7QzOja0qONysehVgjOjfMzU0q0Dz2LxRo/t0tgpWgm6jW6ZEMJtrqwovu
BmQGIuaEyvkxzXMAejusTWvIa9JXlw1CFMnakNp5CNwt6hXT85cm3W4aUCh8SP+0lmRDgfAQRFLr
zZOZzlhDpY178apQHCKqy5B0+hby/mhiHkRDbXr9O9fGA/xkQZ2fC5QL+Q35NtXEKy0yabzGhmF8
1xB2IXZU/vEWEq+mQypdOXonio22VZ/lZBPYV09D9a7APAwGW+8IV9REZHfxoQcwihbRX2dQQvhd
Mvom4hvVUk3QWCZMCQq22XkJfe938sXckf4Uuo8z4FIAF94pqu0LUPFRjjaLJuWeBA//XhO2c47m
VUCNXfOio96YSYlST5fVv809qc8gq9V+qUJy/8OJuRkfnSUl2HBJ9xBc9sm76c65p/KyXmsx2ByE
7ybsm7Uvyzael0Rgl26+N6RbYz9uXu/qRcR/EasrBLNpwJPu0dhJuL82o59WFJSBDwMimoxLh+qY
76XBAjpAvB3yjuXdV1mfjrVNsgJIVBI3/+M3ndCkgiUj/xsvPVfov+mT9IjTmTrGms6hZBK0onDc
ygkB2G+sNTdIBw1TJ8aApvqQ6nC6BFQ3TKEPJxGzHcrADtvMdT4HvNhweR9F5R8pRHSPJyVxaj7b
OC9iQJF+mACpTqpsObdNzJ30EEUQZsL0i0NPzdWnwqW7OqXSH+TeQUTVvP1GtuLgfP8Hri5wMMyX
uyA5/zRWNDZJoGOxR0/VkT7Ym1bqxYYr1kzOh15ru7eYnckVWS0n7R7YqnsEZRH4insrvVIlCLUt
k6p9BpEgoj5NWCG2PewPlmCli+Fg88zCsDSK7sJB6gJ5VEHdn6dZY2Iuwfa0PXFNp1kX6Vqiz10P
IAwbgsr87L1auXLxXbyflnK8dOiY4A6gyCR2ji3UvCWF9ANpK+oKWXQ7XqVNu+VxaDqOLpgcFnzY
sMbPgMGXOiIyMUROwBSBe41022XNGZO5Shzodg8joeG7bgxCki8I/tQj8YZiQuBfG2iZ2J0ASnIT
2aaPfkGamsz3QtUclORhxiD7lRDj1tmx/M0TE7X3J5PMBkG4hJkDrmo7ZVpnfOg++mxNjVT1o48x
jnNx2v3ZfKfcq1ngbgkz45ffvDE8KxShnv8bHmyJyP2ix7d1pLrFWlFPpAwT47prGGJ1m8Pma2rt
+09ruj5Gnk/+9V0c7nu0o8ORias6Pijc61w3cdsJU9RHyZIl8PCWo6aWyyY84j3ohskfPdE4dFbj
fwjwQogxwd8iVsdf2I4Np7I00E97KzeOZz4FOBq7sQsaTHYyJK07yZ7Iw0OKFsSsuL/M5tChLQtE
JJursDkVZ9yRRI93ZnYcT8rrwaHrqPO8rT5c3OEWZNMyWgbsJc6tnn9QuzPhR+XsbBZHZ/yb+eVa
TJiZHyoFSLrVQfvjER0l/gyqxgGdt2mspXYwtHiM5oIsAkJcnV6m3mU5SYBGQ72wMwVR5BYhOeJS
mEViZuFYbQojerNGFM7MG1AFd3TJBlCbxSp0YMoXMYeAeAiL47BcvmsVmRAPuzlSOpZ1/GNrnBeK
xSXoM57IpELHfAx2cXlkcsFjFs9SXeYAibD0duzqyZZ7XFcLrtWXvEmZ4LrArSDCGxa6Z/MsyLmk
Q1LmwKCfaLquscL6gvJvIufOD5IzHY52Zdve2wLA7QYMMVl6BLcZhFMJn00UDITFhxHuLTdgjQaO
wabes/v+Am4OTTPgMEpXudmUQMYjoN/kbAbe+sgIeE06dQEwU83/qEkw7TplGyzrfBjels+0Urs7
J2cTY+JfAa8VupaZGS4E5dDxhJXZg3TXdSIyaGYBk9pUQxWC5irySnwo7bGHkZms5iFIoLIgltXj
jl4YLmeWx9N0JTJ+W6+gNuogItNrEeWmttBA31e+wy9fWbzDjJgwRmbOlRg1S7A7fKgwFUiR7uGb
dteVoENAV6Mkm1JgjNUna+HH5kbj+MIFxVNuBfUWw8faT+HY742nn+Heg7azbJfHXbl7VQXkWosN
90qxdYDa5m7F/DTINqK60Q5XPiaYmYUKuZq4V/h4+yLRCTOADJw/4oymuTN9EPx5TjCIIXzH8ZPX
pfqABbm96xCNv8SVqmkHJeG7LQ25NKlbJK+gCqP2EHUnptoPVUtS7HXd3cCGM3JlPviaOuJCaTU5
ZDXErkeqb7k3VxFiIvFAj9jVTjf0uDPldAN/zCZDtQGuPxFC93L/Oj5mW/+yi2vzDBYK3kKbhtPh
V47U1f6zhuUDWdBRyMWo+7rtEnGbbpNe72krhCU624MqlB0iLZM1ZwkYiWrhd+VZUTZmEi8f+++E
T5tmyTld5tJ0p52JgCxotsYuhGgTldfQFjDZ3u/IHJ2R4Q6jpvVMDA2rq5wFtoWe/GleeWZPvWnM
r/XurBoc1uHqnNZ+T88Hu2u8I45xK1CDHmyTOqMesITtEWuQWC5lP4sUjr0358/3NIM30vKJyq23
iVDd/m8QXoloM4gApBrC3zrUBNCOGMrlX0oQ4C+zPajuYWpd3EiIxwoQgHD2OyiBfrFA7IRmbZgd
/8gNGkpKLWcBqm+awaVLbax7GQZ4YACRGTfgVVjNwS+TNNHCHs3n2gP+5o6gy9t87hGb74DXk5fL
fVi+9FguFr4vkBcG4a8G0GZUC+XEDoD60GG8fNGVRgoYSJKb0yiYoeFbyySjnMHURH1rthXi8f+s
TiOHOhNsKKjZjpMHv9mU3oDpWlWeKAZBHsZSPf0AuGKfxmEROduS0E82tM0GT7ReDVCpOlI1UpeX
LxPt8LGeDtx8Zv9c778a1Gjpd0DU318irzx7m8vp6mumm8xDC75l6KIkAaCfnt7ODWPvtLQUmfVe
egDRD0Omqyma0PHCa3AYhxl642czu/VtA5/rfAHloMGv0hobCYdM7ZnNSJeFfxhOWZuK7IYwKctO
oxO5tmdH+94Z6NWy9xWrNp0A7Ki6M3tsZMiMCdl2pebP63hH+i5XjQjtEu9Unrsv0xQYz0xDE/Oq
GycaOJB0mLEwKofiaIaBr4TQHQo7oA42Uh9eZyz+pEPiz+WLqRpmFXMyJo1wZh+6zAxjUs43U/GF
xes4Jdizd7AmymF8rUHXaaxW+RN0Tbg/eW6RF0+JTzA3B0UZyv2H4BqbBG4qtnDTeiwyCUE22Xny
3X2k/dxERVtPB2lau4ypLQPV5D8avGR/E1a4RYGqkbTLBUhrEIRr0cDEHmIunP5yj2/arkTopGHO
E5Gw3arU8bnIx734JZQZ21A/uatoQqMo3S1PQ4V4srIAr5qPQpqLmSQtPp/dHmuSdYDmjQunlaVK
k3SCFyTDSImTWGZ0rz6iXL16oLWZCkBoL7zVKrz+hFUKo/PUfJbKpDYRIlJ7LZUYxetL74wSngCa
uJiUWNFYoKl4GYIUvoMB2riRenVbonHr63Asn4mnLk/gVYutAQFrWyGA5IKm0uq2xFLWPhKD8mr8
Bo7eFICvL0JOC8MbnGgiaPBLglDDP3upF5BT37tInVJJCLGdxa/CAJN5qg8XkyxhLBPS9F86R4ET
xyFcbUrJcKcdqHr++/MeSCPQuDQ8dUrPHfsIEPaK9p50OJNaJ1NNdJau3VnUXS0kiEHZh8QbBzf3
V9oHmyXgUv7AIRusdirOC+yX4YTa7YfzySgeZfOAxV0u+bHZy7Ot7WlZpu9LCMhx/08cWoci759n
VihtBd/l8SEGlRBESmt8TBA7P93NxqjlkpEVypJlzQjPvGfIUIyiryVS39nz6ZROZSz3Wza0tkv7
78tN2mcBhMz80zeSU+fwT2iQ6aPxD6QQMIrS7yASKOB1IK/6NJUBb3CuS2etLHAqeFM3jiNfvgnQ
DOLi8EC+l9Sqd7SpncOxGPuO+7KScaU9gcbSLrueXB6vUw9udjJqNNHAuH41chWVspGuLCpRokDO
5fjt1J9ltqYAqldJK8aBCzN1PsiFOsIYgE+9LGXxgnaKrnGmtzLI4srpKw+3JHZjHMgTu3emEoa5
M2eegi2alM6cjpiMBF290M0ffElEms/1VvinLC1eK6HM6zAjlCCspgrevZ7qe83vgkeZJKVzvTUO
auuYDLLbDShncBaK4yGBIbTSE2tQYkOrtgEoYksd4V52W18/XSLvAPH7ffCwDympQwVAozThgruR
siXw7yG8mnRS5bKxwfUB6F0Zbp6BARhRTOTnmTh30E5UGZIs5fvBAnb16+SZC26nBkh20lJnCwZE
P3tVSYK8C+F2ML5bmHAPRB4HM2ZzlejV7Mg5L6ZHbL0yQNCcIe6Ucp2J8jq1pKw8VYqwdfPveUpy
LR0E0ziJtTI6jR7SK/JjlcyPeYQbRW94QfioiIyxMF7qCEpajUQX5pKIWVm/WiWGf3aQBvxEZPuN
rGmNOv+xUHOzztp64GRrj7kqGmFVdRmp3sfP4bwofl4ysnuj2tdaGm/dKLBy0TV7u/pyjHZfh1Y0
ScS+fDf1kaSaWM3FL5gyety4XX/07xKH2mGQ9PTQXTiPENUU2KjwRjReXMzSTIhNsVpQWDJgJXMo
xDOFIhpAjGgtVyMOAEkNaqSt5rKM0ye8YxNPySl2g+9j4Fhp1yBkoOG4eO7Truvy0P+ALbB4HvH5
TQRLWrKLncrYgYGp83t8+E2SClkp/s8Oa3RTaUqdapjAweURCOKxIVOOHAFOOm6VIFaHDbjOdBsP
Li6whaMFB3BSZWXux7swVwpIpBmc1SZ/Ur3lanSd1G/zhmWjRwZg3KQMFUX3gCW7/C1AP4E6WXYU
U6fl0J7DJBxZCFy3Y5nxR5lp4LTaAM5LazTd23bBOLsCIxaz7Yn6dbGcr7vbOjwhtTTWYDHcNeHC
kVQBw+iX8Z9TQKl2c/zvbaMVeB6IAAmGwdPFoVrf8IBz0JCXhpQbDQ9xILYeY/n3FodMEZiJvhp3
wemTL/DHz9oEeYT4RP/bmu8FnYY2rSGYO1i+mavr1sy52Hwv5lMfepfDxvY7VGYwWQmU1aWi9zut
J7G2ZNNAjZ2oaLTna3Fm3+qqCId6pSGh4qGPdzxFnlwVcXI1Jh+x6LBKzyLuqOOZ7p8WUXO5T/mf
6TI+7OZSXjFF7aEVi3C/k4PSZPrcbvlHuKopqmDYFHXb1xKn7c91bJoUj87R/iHCpMfONpjhWyic
jyveg/oX+QAZlsT1batAwA1FKr3dnRnw4ZUMTpqQQ7xFGAzIeAn122I2DYbIgIdw+MwZWY9UFoQY
GSRc6TD/r8Ye4RYo4iMN6UYjmA/+l3rj0peEjsSLq6q2nIrOYy2bP/2OrzFEDP80DjCVTQ8SwZUF
Lv4sanuqDb0wNVzV/BumAmaYwO7xbpDcmdWFWRxbDE2lYb4WnbOHQe4EBTiWalFGuNQw43WpYpPS
wYyaaK0DNLyBdLQKWi3vq0ZoL5TbBjZAjTt/Qz5hi8NhuZeXPYfH8CCWjD67WunxiURtjn4qtDyG
Q4A9suD3IYuJx1BXgVlWWbFIV7bmhpDNZCkRKton/P5UmvcdXYuh+icYrxoep13OVNNwLEzW5onO
PqGFvhiRvt3a6MHUhcBv6G4SU3EwUzr6Zd/21Cz8jlsjB+hGncw7ftxBNBMz0CQcM4uFgy7Qnazn
Kng2HF6j97QNxxqClFdZZA/4aRDboDdyUV0/6OTAwxBuWl9TqYu+ZZwcRGvyKZVPZuhdVmHpxd9M
zrHWonYzsH50BEDEE0bowsote5xqqtRgHAjwId6UWTIObt/bdvaCOh5tztXYifj3mF9/cjrngjQG
Gsw0DnvANRU91kTJZ/0Bf/EQR4EnRC4D3TbSz5XkE8V+Ga1yzQtPrxldgQiDS7vS0/JDejHUNwon
kfCmMq1NW5y0XUga2r5aSo9ED5g7rnFDoIg2LTzcyyRcBQCwLxM/+ov+I05fIGhnX6ME8+iKCw8c
Uah1RImgPQLIxIg3ZLVPGZ90gC9+4lMXfDQUCZweL2iMvlzK/Dc0iFSUYi64Ufc8Lu+EiAG5GdDm
pE0XlTGAz/wxB2pZeF5j1y9doBvAfPJEo+mlnj1vPP7Is7yTOXpJDlDtZPthNLbXhL2uSDHMu2mO
YYeoEVjLUoTb2uKKlUk9G9NYknhy3yiDEJ0tXcod2WfBzMTj+eCxWej+GYzcEiCVlRzaqZ8Z0DpQ
/xPrn6zwD0W99Bwj9aNudqDIZJV37RehavYeBCnEfqRLTeb7J3PsrdqjEZ9tFSkZzgFm1i1YAGUR
FQmBh/DLYhTErt/juY6Ee/3nzz0cHJXDrxrOBEk3RDixgr9/Ih0tpAnKuNmpu7v3DSIbQ2/9myBt
mzq083Q1lXq3pZOOTOh2o5ECokd0rBX4Rj9c39T87Jfhghm1j8x9nEL9O81r4lkM3YMhZPsYurrp
NGsTW6JahRpbL4l/vQXwWQjadXe213tToMQq4FzxdFZ7jMeitMLguwgEtZSL7QUKK+4vTvKRu7QZ
WipAitubha1A8+nBa/oFI6saNFVFupP7JfJUwW4N+BalNpQm72NcDKUaMiU+A9hMH6o2X5xo6ZR/
xC7Q8Bh9buqagd1VyoJzFeEoWEvfSk08iGhEDDrNYjecsR+eicwWjHN59QAVGHgvRmKKZ2SFFsQG
LA/cX3PD0kQp55fUYdgnKLmvxYTYC+QWHuLi3AJIqYXKMWX6xauJeLF4oF7y9DJ4jYwaK3NJhoCy
0Lz08yY9JWryJ9+5Er/DzH9Vv/Z69E4BzSycGeu9WrCIumduWDC9eg5mmRJy+WiVL1q8IwN+nU4r
sLjFDTxAGL9214wSO7lwIL9T2gvIW3O8FzxIwtmSBIOqoSRdmOhEfYHH7Aki1GXPUfthRwXW0ase
HQI3BL8yrqQrcG2p8Hic1beVYyRiXcKH4yuBmLXSvyKVbsCsiesSX6lg8h++iCDn5wb7fb3ZqWiF
vd5PFN3Pwip4DWnFMFN5nRj5xeNMK9eOsoxyX9KNg/NBdE/TcXfsREkmbxZRyhWxk0AhN90kVxxk
jauqkNmfkUjD8RomucjwSnnksWOusk2uukFZ/RfD3/V+/EXE14AtRKiIvC69OdEJTrVQTLPpqlIF
D0xuDjshSTu78khoQKIAO7hkc8sXYAX3DkRsNg8+cDscxCjaQr6KS3yWVF5yIVO1L8cPExX0Hcts
pknfauhu8X9RpISbqayaUcZWt2XZEcbDU6gc/Y+vdHOBd7ja9t7nbn+dvgqiHhrRmekNBVflDiKH
3Lpieg1L3TluQy3DKD3Lj+9WVv7otIhqrLZvGOv5SEL03RVINe/vI8SYFimxAluzjPDQelugmtw/
KzuZOicjkQ5tfH9zHJ1OYUSWv2nj8JPGpXXS4dZaxmQGbvB5BwPPlNRWMmItViHOG7pbgSAp++f+
fQV8IAq7NcmkkZL3QyxeUpxNvm+t58NTyOQEeDb4wDpQtF2ssVsQQnmOSyrIuywHteaE398DfKn8
+oZEiesviQWx4zstxFhygE9MYf/DPw1Egk1XIizLjUqppJjiVjn/YsXvbER7MtG0lBznXIcKboQn
pvu6Ocv9XnXyWePy7vgPYNbKdm3B+ro7pGCbl+wQJuExSOAhbhgY8aHngdTssDaONoy/q8fXks+Y
k63JwoCC4G3ppfPuKEoVRbYkBe8Vkwdrdfa4XeQw3m/GtyuSl73AvFEJCnLMm9RDoiyzOykUtn6O
eWb0f7vp6iHQ9OFs1ZWzSmhfO3oCpiwD4xdgL53cQyVQgWDZDI93nltKTIUhk8BOyeIUGMfu2ZGh
WIS6MpkojJAvyC6u12WlpdPUJz4I5wiVU8f0yq3B6aBYguRXM1sov/C0IEWPlZaqk8FmGhcIcFZe
CatzkXD7gGhf3MW5Dug0j9lM72bPMBLUSIGRafdsAsw2fkepjWf+rkMLMKOUg1iyd5dKXZbcgtE+
gR17omSJ8VCaBnkH1fU/WQ18LLE=
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
