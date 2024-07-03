// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Wed Jul  3 18:38:33 2024
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
bpmNNGSfzU7HoMe9VFSILd7Ilt1RLC71hkb7OdjKHRIS/H6AD0uqSo2bdUE9UYXYs4d3tB1Wfr/a
EBcrSlT0B+DfFtspKzDMAN37X5L4XLR6wOXMxZO1d8FrYtTkrvQqcanYJ/RNtEidlDEm05jOPL1Y
TUNty58rRB/gF0Fyon0OaLCNlL+etF34oL0S6Ye5ugFcz8QWkdVE/2vobevmHh98XfztXP6MhxFC
sFs2GqyWd7UqwcnbUMf0FMdbzJasSNhsFidAaPUO4ndSLT9jkZ1ccSmywXLHcjIHX3WJoTSZGGDC
JSnMuO8bAkN5RnR4fVz7fD7HCP4FeekUL/a2hQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uRmLPshQQRtC2klpjMKrGmc37+vnWSTz/xTy/GIdIVm/lRk2cAtO5FW8GfCA5pOjMFeeIYXThK+L
QqE2ep6xzpE6HAwgyy/cPlvu9OgYUPtG1cm2/hT8nXKnO+RAMdo+vpzQbg1V2q7zIgt7Fsn1qyMx
aw+cV/NAEIuVLBfdTdd9HyAMSq3cep9PzVmzX/nb/qxz+sbTyA49mE1d0ymlblUsPDMly8DoSUIv
BW5Q4Lim4Un2PhEPhYjmeP93+M6oYUYvvT8w523huGXJr7zgkr6HPC5UJLf0vIx8aGQtkC0IcPQZ
4Jze3dRH2F86AyEKUEHXuh3gBsqFczF0OTJTOg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19184)
`pragma protect data_block
TG9WfW1qCSFhkKrtTxOj98Z1UGcGT/egiZUlHqQMHSsl86xJFbkNMCoY3no5HcOTk8Yc9i9mNgvw
BY8L1g9LDhVK/SwA9epcjNDtGlTjR1HcLA4PN+L0WMuGdHQygMh5nVk44Fo/e35lXc9VqwiOPTTL
JOvjx66WO/IbmNbSlJ8y2aTUT1ZBIwJwXsMfEVEb7N4613bJ5PHy0wYEaanF2rz+9XZnEftkM4YU
jKttSuLdmmj7P5SwPrcNruwpOu46BEEyOfXHZnelaA0es7ZSUo6KdiEHusQ4aN2eUCYbLn8vzPcR
DkEjWQ2N9JclgYGW4rn3i8O16tNC1c0Fll5f/g6SnzXk8V9XiNkX7DXmJ8oJJcPqTtIz58WMXFJR
gAj7a7qy/VC028957xM40xHD8hSv+/mw7C9stI94pN/BOmr/SjO8rrrBDeaset5xV39dZEs4Rxh5
JFYX1glFdzsutx8apKrgOtZ7t2wlfHrzBUZ919GWA4ziPt9wxO1jM+/PA+yk3fdF9/aexNyu/TdI
xR5WOWzOwUKTVSoBnxJLUoiyc/aOZ6iHdes+g/rMBK6Iy9J1g5J3kwlqWLY7Q4D9mJFVj1Tjpsu+
tuaB8RUgUNJZznIyZ1zWhUHLytMz5IyjMDigHetypgEC+WRTesm3oCkiNiWuXW38zcgrV8gdN0Aj
yf6pg5mvjFLtQHihf6i8oQGgsFwuNgf66/jceRlM9rlUEZmYl6NKz9I9AMFMub2IRyONrQO3+/G+
bGvyaLNOvXwdjAkLcyKh7ywyzYaa+ecUmBl/1+VuFoch26gMPyqTAcTZ9Q+yGWJJSRNR76pf6f6p
ntyhtvuMNXdmUDiZ0/RXajs5Q1n0H1bg2JrqPy1J47X73dYXaaAMfq1p6KlMPye+RVpFAFTmgcqY
fR+h+GO5Mi1Y/MDHRT/S8CemuLpuH8FnntJ72yWdylN3RgP4qsnt/o6TsdwdY7u1t+Hd4Xj2Va5h
sZGGLqouWtqqcKKhq+ftq4IGMuwhSSRZ5hCr6fDzCEMlDRtgdTc1VXuvVrSuI65Oic/MFfP33imu
mn2OCOVvf0kIK3jZwakJ/vQAXSXtEbPHz6RAo3P+KZX/V/U/I8s+2IDDyhgKu2sjZh6oI5dFnhcb
Oa2NCZ9eTEOgbeRLMHS/s0cQIOZiwv/VWlw6VIEt9Z8ZVgBu2fO4sXAKIT0s+jJNW21gvFgptRa7
zqi0Jnb5si+QePZ9g7RP7V9EK3f5vEDH59rHclGX43pjutlm+RTA9mMLxG47mN7R9ExfvH832win
kCvMXSyrvIyjGEINJ9ZXC3xUhWwRfGRYwmXu9qPHh830fBn3BrhKiA769jaNSJf0o3Zl1n4wjipB
2fqWuBmO29y5ip8yd+wYufVB5a7Bq5dV5XC8WTIA3MVvgcuwt/qaOM2P2u7Hb8WgJ8TxW7oJz7V1
WLng+WWzkfPfTEyi+sfzLG/yi4IVzKmniU5fmPxLeJHP14FkKF7yxrq28L0L3jFSE7QtIp90hsfy
lgDlWO5HEPLD6MAx1BymHLrujM2/VX29/RL4tzhN3MESb+JgmzA9VMSmKpWNupH/A6sZ90TkuBA7
MX+0Lqo5fDhi3+DGYYjA7IENLKDwDIJ8raAootheu0ZfhtAAElMc5+RaRT2LhCMrfuXpemDkdc4L
qPCTbxTJjIZSxJSrDA8Xt1hzre+o2aenIBMOvaSQppPGVG1pLzH50Eb9x+fzoIaP+6rNchQ92dLW
QWJlKOvcn5QUA25jqukfZhdN+23nHvkh74Brbhj/DGBAnXT8ROhsOT6wQkHRiDvKUB6BleOlasRt
dOf2brnm20shouUTpYrfYAiiZgvCigzZu5JXtK8qsLUQv5Mac7O3hog9lRe5GPFvlUxQfKRgstU0
v3cm2ZhFpZnaKVReIAu3cSLmg+Tj4AN/eNIUiT/5siovhIjpp/0QCXQVoNpMCJlw6Ylvo2jqPwcN
/ymdOF8Da1v7raKJr7hAMKGsmhiOloJKoc9hVPTv2b9Mvx1Bt4/bdZB96y0oL76JQCFmGb0UOsmR
6EjhRyvYnTj7uNtK2FQsTCX9JKs00hsb8LgopE++gGjFchxSwElGETwLLy3ijKllTDXoEXPzR2CW
azUXSFJq+g4uLpIs6uhWF0VpbCaz6pm4fGteYrac2wE7bcdKPwHjLE7wyVaoNbuKBJBTVT5Y/i0g
OIO2TAMOia+F/EQ5wfpFK+404IrhohZERk+DEXiSlU8TYQDQnxcUaLYLml5OrlSGVn/qdaZPhv7N
bRUTJHhGMwIHS2ySvcFT2Nq9jsLvV3xcl88r2EmCAZ8Xw/QYHD9Xc8ne43E5gh5jkqp983EdtVeC
XnkUFLK2YJNTxFeJSuwJvIuL4NSUTDOpk3hjY2LywTfqTFpXv31Xor8FFJ7hRfVobuAjSEfQpe6N
QOD8Yr2z/h5bitEKQqYPISk3e7CzP86tT48UWnqN3esentPcxkZClZobuh3YJWKy6AMaUPxDd8pK
ugvbY1chXjw+qpIZvMCFotorhmYRHv8/OQYMQ7Fj46OJ1/NU4GQpeCU+WNIUVE7v9RZhboyCb63c
nZFi8QFExQiqvFfETXOM7p6WfFea0OugsHWkkoY7ayT3TJM0R0ST17qjpDDathNMDkkMu686sSO+
YG8TkmcWO6DRfLHrUKAF4IXwX9a3xcBxq6Ci5ohuXRp137BgZqVwJxePdoFLVW1KqadjpnfmqVKr
aOWleoT3qTQnBib+wYigAWBhQcJmz5sL2obLFYx4OcxMQ8u86cOzNuO0ER3DPFFT9V2VBWhx3TXU
kVySznTAW1Rwjpc7DpceB4+FyHuKZV1ppXrCGJyX7hCH9EQk1uvJ3MCwyNg/5wlGdELUoBACG1xW
EOFGKhB7g3a8T+TP05/3Iyy2c1eeb+H5smqdZG6R1Xb3Zi5Yv+1X6TNYHUREmf8DSDIq59B1AVxv
n+D7oRzILzgV/PF5Kt+JiQ6+ax9fkWFah8aodoKtfBG+IE4ds+xzpTOyhpwVTaUs8sc61rLkaNvW
S2aceKbOTIVRGQMnE/Kwgv+tE+ocFtQq94+ZHXZ7Tf1OMXseL3pnKJQjNNzk/yz3belMP0rSQG57
dZGKFs2SjCNUICxAz+jyi55wq3nzMO35TejvBTN75fJihM2SUy3aurIIdx12USWYYGDBON9jWQgT
cBvpF8Q/XWjJw9jzIGipghWmH8k4Xj+iZv3FoFoWxsilvR2EYIfp3xcBfCadvOApTKjcbf5Ned1e
cK38sN6q/6zlP6XWoNsvT2IjW4VgLGRs5hOPWjPcB0Hu6wLvgxk0JFgwlJd0OLM1LAsqYaue+PDA
vv7ppuiCCal0CPNhrA93tzjkOTq8ylGEHFLOGkDA80xVzvjg+SWBo5E+e1Pxkut3OYaHy7781u7d
UjhRccMWxIRHJ4GRFnpJad1mq6Y3sVYS3W8wTlsYQLPZe3PdKqD/o4XQX8NRWPnaWRFoIztk9JJQ
P0IHlSfuvZRYVnovIN3CsN+eoAw07pD51pj9tCuRLmIfMqkyI8q9h2UGiTiK/tQ37FbaEgGN7SWX
LcuVbQpVAMzEa+WmOBOHRrNQCviFdncqXpzRiN4isKrYOcXR77HfYpZbDgZVk4cKjkKIqg99HTLM
ywfcGgR2RX1Q4n5q+Av0ARhzqQISn2clCZVbsWkoMgWXCd+ipIel8X1CH99/VYp+V5G45l2P/Hd1
QAf58CUg+K84XK2Cyjme+ys4YySHYfIOa8dwBTes/vFJkUHxo45XTj0b7xw72c0kT2+50yPRiUgm
xR0ljQPF8CP9uC2y1B/1bZQgt0rOod1hpnUv4eDsZ2VgmbScr1kayZlhUtuiWgPm1gZkSI3vMe/1
K3gOa/pjJSL3uP8JDdnNG6jhPnUxoewOkkT42GB5KL/SQJ8jlx1c1bU4ZwpPQu+TQeBdvFh9spix
pRv2L1azyv1tD1IivE6c3HWOYz/ynxvOl153AofMylCPFtpWUqT49GgID79uZfDs12h9Jzv5LwGJ
md/0m+qWUivUHC14N9upqvCnGX9OCI13O5qblq7SNryCAxdTtNn3BCzGMEJ5KThrM0J95idRBRVT
9u2grAnP+geap+Z9UgCqbIdKBHXvQcRXl+SRQCvEZTzITQ5G7LcM+OR+dpAKY7pjbwfavt/sKBU9
w4gqYVUe/BR2J3apher8iZ9oXwfaTf7gKIxSMtCtqssZoOYaPN8UhmUGdbWlqBQFyyLHmlSlklV2
zb0POqFA8uFAoZon+PTPZeqKOqfqQH3/qDF/orV271HitlZSrk3kqV9v+XIQv7eiE2Hn71oNKzB3
2Y+Lz+Iksc/CAgW5TicpQ4YQy04u9YW0APKngh/h+vSRli4PbhBz3WexkYkWILqEJxrL5gkTFh4m
ODNEgPxAz9OJf7SfxfBJIrt2KUF9LLKaDWaz1yahjhBV3SD7WUrnoQb+XKd8doDDhd6T8lpC12+v
lC/RFER7c4OkTtU9ot6Nt8U5IYOXN6Pbh9q3kxmEP5pda+ClUJyPBvb9QNarnllbbnjIJZ1c9ct2
yZdorF/bbf8OEmm9nWZADkVPeinoECdl3WsWL8rUFgZ8iv2kybvAlullp1PyjF/a7HL3XWGIdgN4
gE4m2uhLciOGV5Gui3aXKFioBFqjcmlCrjkrR9Qolei1HpLRlzLB0vKtHIgR13HP8ZZckvN94qMl
pBe0ACwKZlWO8a0Vq5VHhGxirPEjA8LpkqT8W8KUdfGflJYhOqi5DFVnNa02lcJmx3AXvd3fo3YT
tw9fsuAFVZLxMW30nqMxwORu6QRFV/2JF5RP1N2Osz7rI9kRykqMp0Z2csEeneXCVv9oDYQGS0ak
k6Fx8nsWO3vRyy27D+4gE6s4lhaaZT+BmSr/zSI0UmeKjn25vrGfdUW4mj2ZYd6wCdzrsFmY2gcv
dXgFXD3erhgZv9sfu1w+Qh+rdiNCfYAS8+EQruSBvwKdAreOebioBDrvFP3/pWR+1isu5CvrJwZT
FSqCw2RDqi5fWfYbQ+iWPOaR+gQG3KZqZ3x9xYYFXlyb2qEAONI85zPOP19Up4M1FLAwM6WS2sT9
l4h0lx06H58tUafJTO7b9J3mAfPPkOVKmM8gfRTm3Y8qxfAoxhPNjGDBn1wGNkRVh5sevacjI3Ly
qdoP09fC/fXmAdDeBMdFtsRiopIZzAhBKwxrAAh1E6awTq4rfAYPzOxrb9VJflepSHV53CM3YZ+q
PSwRjHFYGPdzhg7WulV3Pcelkaa8uSGvrEkzOAGS6XdbuDgFawJJrz0+z1tR+aW7ZAIPK0pMJISf
/lBAxAhRQzL2OOcHbQrVuQg9bGBtd7adTC0BdB6U2u3FJpf3cSKZP5TLPB8TtldXPTHjCkRxtlJy
mABksNmNi42+AyY/svFswQCIZWqcVo7jIgG2VVzfTED11mLJE7vTRm2wvE/I4OdWkfZ9dlxnHJ7U
BCkPVR+MxwxojyEM+XYnKpTloschyhQrWzev8yqO1gdDBlA/Zl4h0OLY2iLMTmHbzgx3GQk8qAjM
mwVh/NRL3F3+POz3HtA8XPmnSSBopoxxuW+psGTp/KYRGk9HfxoZFtHOFJvUWpVkay7w9RDrff7g
/2kt4pag0MsJ4NTMHxjLm2Py5dLBAdh2w35FS6lA9svNSBiwG6JndQ5jYsyzH4epOGJXP+XKJKI/
YSEGslS1+9fnQpTuipV6ub0UDFF3z1nx+AY91Q3VU/MTY6wHmxkynpIo/rTcJ6tgFrGc8t8YF0ET
g4X583lg8c+O5LCwWsc3GzUeRBAe573Jkop8jUW4J4lW7RN5oEg+lsV/aga64rMTfKZ+ZVGvy12B
CI3/t0NXUjUB9n5Va8ShV+sQNQGHdSndEBJkcPgpLb7TiwoVn92qHUYFzoAn+HbiDzV/3BHkZDtM
9DuhyWOqSc4crnY/MiugWE02gK48ZXNm/HKuDOpuVpq33aQJ66A7ay/J6NOBFULR6jJO7yzsWYEU
5EpFqqgz9XnwLbp9YMKacDqddCEvec1BL5PyQxxYmqg5JeOyk1igXqadzhq3DEbOnk9y5uMJ5cpC
2V409OzkiB+S2djzkklHo8RDOJ3b7XqtGQPSjcF/mp5G9lTWaXp1S7LxZFc5O0bOwg7T9d76Y8uK
x4lvSqEbtEKW+2X8UCFw3M4E3x1iyn0JhyLWq6ATbat5YfFEoQ1y6NIelJP21OAmTvMiG5JxKdNX
fVLi3rLZ8MkFsS7/a18uqAt56UgHVwdDL6mwhj4tHLKDe8n/51SqOAMLdrF/eJpgcM3VPXSw1ZLW
bcUX5Je2tn12XGXLDlXJi7yORt0uHnUIRvgRiZ5Vf5T6nYTQWi6d3hpsaGs7TpB/n6ZtFO7mYnLs
n2XzrMRmU55vd4j6KNLHJSAtEWph/UinU2SQdIab8sQ/h1Xqw6uQhZIzQUFLN7Ocv8cr8OKmYvpv
Sx6gDOOmovE0rim8TJyyNNt2Nt4L7oFZeyKjoEus/CnKDvQOXmtNDDFPvKwzfGo9fPQMWVRQZjas
7hw+v0cMRA0DUc5ImqtqyGiV8yw46zI9qnQsoHT+b7RGpUmMV9svY3UFvmZMWaoMfFbot2xbBXXb
66Xid7lxII7l5wU/8kkt7ZD/eM4Z36Ev3y9wpzcKiL/AFPCVG9XBN0UVFj7TdK3TPhGObxdo9xlK
6o7iJnJTQYcKg30UFJCx9EsJrMb2Zv9wgFl1enHNaHHBLTems+gLqr7tIpUjfXwon8KhMkorMWCa
5xh2lQIVSwaEEWZnQf2qqjxEw4wsxbe3j6zEKv5oEh0Xqo/M6i5kAYrjxQmzY0julA6Xhe8DXZon
Xz42pm/UV1xkeSiDjuXuxn9iRzjBQKbsRNIIPPgNFD5j4HUoUwX5DZYMP5IueDxT98pjYtifoZOP
V3A0Rfx2Hce0k0U7PqPP4NKUBqMIabc4KvM1iM1hvFwgk1JPJExesZg4PTEC+yELyA1R/SYY+1l8
QEo60C26hNdYeI4PGp23RcHU7fnM/6y9luzp/UN4N2vvg63D5HPnCeOdnlpOLtYdOzFD/gFBcLXG
2y0fus5hHAdM88WlODab7ZZ56MiNRhq2Jq5fuw7P/wF2knwcBKQzHqYZ9fPugESNus4nO45NStZR
QWY0A0CXoOPthe4lih1HkzddnsWo96SP2LgIj10k3BqQ7WrMAYZjCm3l4ZCXxG83e8TR4E+eDbLP
dIjbeDkAyCcSVzwCvxRl2soglrSQcyeODjguFq53lviHHa2SZMHDcEpnKsU34SF1p4kLgH29n6mG
lQ1tZUBTpad0jdOMoIGlDV2oMIjoJv6tQ1iNeKy5nq1Iiw9eDlHmrw7Rl333PZ3bfL7p2fTOiUbj
DqW3CPkr6LnYs7x3abK3Clr1SQ0+9T3saRZ2YZ404xP8mb6/qlops5RXRrMfSmHXvmH7UQKAUTai
WqZUklsQAsDh9uzobKCGRRNfQJF+/UjghgCcaOHs8LnQDRSYFc+GQeLUPgIEzsGYsQ4wgbatxtRH
B6Tdg8pC85iGJ9wVB24tBhxZ7Si9zSxXY+P9LXifEqx3z9wgrPwP7+26kDH26ZQstqLVKXLk1Spu
ypJVtXcV7p3LmvACET80a8IYemKZGVnm0ugBWfyJX25jyH5b8iVRWqkuf7LcTsPJ2K4JBhInU539
D9k8lMT7d13dwHpbSzH7xjL47gDCzHAsFkCwbBj4c92M7ZD0uWeMwlIPEMgUKrLo4KaLLNT+RdcT
z6VDcY68siA9RjN/IaNIyWMmnsQBUTlmej5D3wjfEUrfmEOQPZJx2gbdx3rm5LtbPxHx1v30e1/a
pNeuIQjmpEYoxPwJDtE80lmfRg/ROT54uppxNjVN/f2CY/7w9WHKrg8944+5SDtE6IudGk003s7t
PEYiS+LWQvjUBQoAzfUXcedH36AGnkZvE4PTTaI/baK3xY5YL+Cm3w0OVrQmExXxEVDArGdwVsKK
gICLbGZNT5YuXUMpqqFBMVs6HOmoKvgt0mZayDhpCSahVzpDTp70Pzfi4Aavu/hsowEeu1S6dd5d
3sD9VYMsPcEiPWnHFChl+5U7O8wxsy42RGzhe33T2CvDBeEeS/zxhRecBpcqyHz02xDsLJkTo/6g
oIyIT7HjuzEIU04yV7E8YxEUq3F5ZvWIf/rDFakdRr8q1rcAwN7EKup+HcvpTbYmW7or34sp8Dsx
NYWdSX/4eRY4BnS5vJEHugSn7dkph5kbDVi4XHysYaVBgnGjlxsucWQTuALQtooEwVaDTrFfLop+
m+z4qZbwI41UbeRxNw2V2mgm2tMSzF9Jf8oH53O5X1BjQqVaFXL0ZDasGISwwIebftsl9aYYY1+s
cKZxZhflntr3CA+Vd//KSE9M/asyU13xxRR4NzOEwfp7dc1avu+bESSHtL9qYMHs6wv2pBZ+CPlj
ybP3O7HGRtQtkdioVCWH4jAo9pC4J3WZic+xMvgCXmn0NNZiOyyW4z6mm9SMxLiXDitdoeebJ6OI
wKLMb2iyq30TcDRc8VJetroCwZjmRg3jAoFEF+AXcfQX0WgNcDLDFHH75G1KxW7NNeZvIBFZ+HTr
qELEbzna1l39tUn4PHkpRX/Rg3ZWZDGwEd0EXa8qgrYsXkMdLkPMBiQ3tuaSWiXwkCYiPAe1k4Dn
qEmj4XI9HuQphSR3DdwUZlWqJzwyET+++FIz2U8j4tGu4payv8rgWLxVcQbv/DzIK0YiI9zOf6Cs
kVBxFGE7Yf/pN5M+E7r2F+zkwPbjWOdc9oeVBoJw7JIJrZsiJxn5c3zp4HSv4Anp3wVjVmm3+Opf
69F9LJirbboTO4pz7lRCVnEjraR9qpAVxglzufuO2bcciuPY8/51RGWNHViW2x5xudEADNTZ/T1H
apVl3ctCef4jvljdNNvbUkXajQ5ACbHA+wbQPPbr09ThHnfkpPA18b9uK2sLaF/wTz1PmvvtoeGh
S2kKI/GzjQKRgsjQuRDNFmKywLhDHdVbRFG989SfBaSHONkFlbyxDfFFXBVSOv/700yF0Iw74RUK
dNdVNJ0REuDDDfLzuH7BYHYvwW89pmA92zYXnkojCmjoZYQxsT92qjOZvrOYhvOtkW9Jr6jqy4I8
TOxifGq5mx3V6rZP93AVBfjbzKkIJWMmY9PC96SwYjdqP4uanzhJ7esnVHUfaHIVFYbjGrhUr/2D
/NraFzebn37QlZhHZEcwKY7aJen1ZavIL7VnQDuYCD+33KmS8Ebak2Q+3Reyol3Wk2NzNouUgGhX
13sHp9nxB5VO1Ws8Kmm0TTl5dfddsQJKBuG9TZ5RoAWDixi9Chq2wrUObbkHUtmdvNEZraMaLRVP
NLbm4e+gtW7SJFh/UGfGIB2rcl/skfsgmq+QfUjmYrqhsV6M42ly33bvU5zN4D03FHBXymViv7l6
v/TabunfHOTI7mKgQmNFLeNmVE0WC/S/H3SoO2x5VEliIX5IEPBZMSR/MQgIqi7pPROpymulW0sQ
MjZEWal6yxKRLpBDifOJAt7IINoo+rzc9qOvydgr13IB+NMJIrhuWOQwpZ3sScf/I7qQv2tkYfGd
Zs2DFn55uW9EZ3b4x4MrbR3FXVhivkVVXww4rBuPHN7w6pAHklZh/vybKG/T0TSN8enSHnjH+LlB
sGvtPY6MibioBnkcwrR80/OyaWQDmcBxegQx5x1UBG4AY7u7DNasSWmkRxnjkkWwT/3B4jZ48JHM
o7DfqALDWrhVPJYPhygbg1ZZdrU1EbWSZX60x1ctZzcP6h0eT6IUanF2dFSPZH6cWn4n0mjE7Yg7
ipsvGYa7MZIRKPmg234swzyaYfJwUG5Hz/Pruqso97thLTsE8LjZgq/TuiIC4NdBYLK4rPMKCCfm
6Pr8zUi1hq+uXV2qQM0iahW/Tf3mFz9r79E+QFZ4ghoWZLL2X7h5irG3Vc/na1Rhep5KHMcUGIfN
/eEjqHS/TU9bsj/wTXom9RcMO4oUqQ31DCBmXhhgtP2llH7o6S9gSldV41j55YWJVcfhpGv5aya4
JQ62KOGyifFi7qjcseAQdEov0xY6rTl9idFJpUvX+GpQNYVo6U6lOZzEA7iq6r0F5WInw+OLED+i
eoh1U1eA1pxxmzqf1BCMQ72MB4l8dwHrn4Rv/DSkif1XAiKtOWXbDKpif9Qyp07apRt169vtlVyG
ltfTKF5kX+gGesuUTTf/bSi2C7X12xA+8YWknDkXVV2GJGhWl6h8dLDWR8iupiCRWI34dabwCJ4A
Dv0REDJdVCUPDWJcF+4qZrpi4KyL4QQpkzK8WYmRc0YzSYPCaxiaXoS5AzLxtjNt/j4H5+JzUCL2
vB2xqXHErgnNtl8RVNeBLcoKhkX8+MRPdL60A+3+1LjsKGg7O3xySJFNci6lyQ2nDczsKpAq0CwA
TEw3WU7X63rEfOK9tOIG3q6gTuG4QDK2/N+nmPRdsB4EVfpKbvyLEkJzaKcCaAaxalVBKIBOl8KR
LTSI5Nia489DC9AIb6XqS+y9k/If0Vi3FdW1teKr0ZkhFvAZ3IlKFlGlgdQn+vHxgJsQh3CRP3bI
M0htsw0Urm2eliJxqtsNzw5IPY+QV7EK0YryjbDSWcQ3X/r6deal5nk5okOCyUYRHVWJELMaf8KV
vjLPi6tfytKxmkY+xFC4/QZi0+TPZ+6e4dbVEPrPjhz6T/ZN8ddL2Qc7U9YU2YmkgQeANA548Wga
e3A4407BLPm+Fx0evXY64ew02ocWgWIWgp1AYuKf68IPL/p71oIGDDb0ik1mak57dTOI+zVyDl+G
hO1bfrZP5RbXxMFp1UOZVYIzBqEtTgO4FaodQGNBwpU/9+xZhH2dTLl/aEDfNqncq5C0UBZoNSRx
/lLSNPbly5JHI8maDLtTE7igcVXpMFrnogyquIiNQ5dLcbf/p7lBFg2wtv3u3rszi/6acZKGpsFN
k7Ysq5xwrSOj+5+Pn37nAMfuyQf9tNLZTOIX3QwiZc7iGAJjNMV16TZtdskWEqXlntpr0F6L8G5G
qw6Kpb/Hbg+67QyirWlnUkb2ber4GuEguzOcJFFSuGO37CIaZGEjFR0BOQEaxIm1KxgbiENpnkiT
RQHFW8rraVBcvGT8RJgom2KQpLtNUzMj5WmWaSNHa3hR34ZZlk8ndnmW6WkRH+Z55PbwNLuaj9BM
yARlv0eXIPicf4zy1jAqqu7GpvlyRvWiqVMEK4PBcZuOjRgCd4iURfyIqov8rGylEFpyim1G13hl
ofcEt6K5SnBEoZ5AB9mvQcHs/Re8lbbrXpMtWlkbhDbT7PL2umkI7W6KNwNLiIYYtFZ4+DH8yCka
s0mJ0nh6ZuJDFtwMQZPnuXu9pQ/+KOJ3nd3QQEqR39/fFm7UuTEaJsE5wib2eTm6+Zfpm0cFIWD4
GaFHyNRo0uBXFAr/FMJBIGZLC9IeTWBQu3ODm3HE5H8yovYr8BxqDXfOf3PGIaRC1oKeft5qnAcN
tXax52ER5WTbNJJ+nr98oq4jldZcjNwaPlpq7E7Inm9R6bWpm0Q/OnE7GnVJYGZINJ+bq68U/MAa
Qtbmqn8qhPll31ohMBh1w91byT5rwJRwF4f141oiOU9csUPWzxVaItmYCH4oup8drzfOQ2oL1kx4
NkCBilyqdizcBzZN1SPa/yaAZ+aKAjSxw6nE4LDtdX2762UK6XOeobc5YhIzMQ4QazsSfXbAeLyD
GMk+IqJ5g9SbZI4HjYEtRpJy4gkDpT1wVnJapGwfYywoN4V2oXTf2ifY/+tMA0OOP1dGCPhr1VSR
uXyHtF6wKYRHDYwuV4ZdtHabwxM5+yvfw7CbAzEyVXlbi0ElResaCxS++egmdU73HWImn0H4konZ
d8DT+sLO0bjWDTAFMjTdLVJRDxyhO44L/H0V6jWBAdl/ChXmdtmrRIooKj/SFpKgETlvTzZ9nR7n
4OMuAuTQILQ8hmNIOTK+3Gxc+nuOhwWeuV6I7ekOvhpVGYt8eoOfztAviZDRiV0XMGhgffZ3OfV5
hyPkYQcybTlc7nSDoupGTkE+ZzoN8XKVeaH/TvRLBrs/T2H8gAsFw2IJLecmJiFntQEZfCenmeza
FBRJFq6h0Kn/oyhHwBJtzSZwvpWIzjrp+LK54hH93neiK+U3V/pdnLs8PHhFXB1DNxKIdBGrhhel
7nSBAhUgKySVB+phr8+qlRhVErl4/v3LK2e+ugzSLkgdxvgJtO50vQZxE9BuZhCyRMqwVSWlA+BG
nShNfqtTgN0pm9axM7mizcKP8dbKz4AN8JEjWBG95Bd3mvggF4/LROksVWaFH4Ox97nUgTJQk070
IYqFT9SpFjyHimISBRI4swEVJefINx01qKH7EBSLqLhmy7YlM2yp6mbCd4UDt4Lbh+xEatgldQB4
DZIM98PXr3hqqZeR48nrSdqJC9AMg+YYBnHmXqvHNeTTqPU7o+2eNruPvWFVnKcDUzQwde6Pl/dV
aqdoXsmuIcKpQGJllZ9sTJ+dOwbdYeGb624OoWHdW0ISeRXvLbEmnBm7QZam5agiw3C1V0q+JFbY
nPOsALwCLRhqGabDPR5VjbzgTOgXqly7sAQxX71f+++HwkGEYJBNHgzoqF9uxF3Ax4g6J4zFEQg7
GDZqN8HgvmJVWE/6iryJ0vEM2DOZeMoHgSejGmEC62kn/hTP2yxf8qLvuEjgW9NqbCYKc5P7KM9S
11GVlxulPLtGlvPhT90Nm5Hpx4L4XbFAE/OSZHa6MPL+OzeDhdEU29Z4Gx/hIW3O1pn498CqH8Ql
j0qkCa/DUvz/YURYXg1fR5274Y2KAOVii/7szX/6GxK4P0fMxThav7o02M6Vx6UAai6EJ4NHJ0Nv
w+k6GVvyD7DIvUi8pf8BsBtbOR4n5TElUIHpzKosgOOKqynMj5C4csPSw/rt0J9akUDDNR8snxvt
/VFcD9peWL3x1bbhv+I1m1eT9MP2IHxlNQfVgUnwQ8Qu8FIedEE3nMioMTQn/WxDuPbXRwkdGpP+
Xz7JP46cc2CxmbrJRrjFX/U2hTAT/+cHs+ishL7ZWfP2dP5Fn6apY/ioIFs3c111OSlXuqXhSTD0
Sjzk5ABEz9/XBl1IJ0Jnmdj/mZ3yS7tl1ei71Wkq2cwRQQTw7YsfZktTlU/bgc84lZQb4EIW42Cj
3GhTzfdy9jONIJCzHvregtFSix2ikuWG+Ms96X+nepxQg9j9i6HzBkVH1E5MqDXVkkjkY02qOtPI
9vUy2Ito37V5tOFaeDRkc6s6A/xBOK4yyRh418sL/y6IIjwafmBOA2Y9+OvMfDJUtW+te0Z32Spr
iFJdsBg6WkfUd+zPHO1Mek4eH4TwO+gTvbG/67EcEvMeCmW1yr+woSComTB6QBYDH7+Za9/SOO2c
CAyaX+AddVNtR+5GuiAw1HibBxjcqQKpsRipOGbRgUFIqn9OUHDD5tSkAp2kDA2bbZEr6ne1cSJz
+xX+HhsGUienKgbpSH/GtCg0vTH4oQVDWonRy+N1aOJ5aasXuf3nGdGLZZnJ/DfSqxXxUNxuXae2
JpjkwWbbL+elhx/0do/ov5oT95Q/+4QQQ5KwD/RB7gRXoQBPsge0iHrimT05X+UZOLmQb7xhKibV
9wVRgufPVOGuMYt+L8nFQzhjpg7+JuQsISRL2soTJ1FZvBpjoVrGDszPtiALAPJZ2qnydmOQUk6U
Ny0UOG5NgT2Ug93Rw61dboaubuqnxXA7X+HHJinhXYIAve2ApH/oIlZHk9TLV3ettGd6I/veaUTp
6I29lPn0DZm5fvqHDmLhvZPFm7lJ+IRQBqcd2POG6hcGihJYKAPWCf7LzWKJLxUsgcwaNPPQlRiB
kD36AOEUMyZz2dLy7ViGX7eQmlQDq/xvEaR22qcDhOT9Dofh7kvkUj4HtBPt88PrnkMKAga5WCxm
TQHdAZL8RixMRGOnjpuxKc4Y3rFHs7qj7ELPbht+lHT1meDJ7QMBJTingeJvQZolltK+Lo+NzJPG
DEXBqqOyBUo7Lxm+SuIyQ7vD/geGAy9XONRiGoY2KaDFp7VGiO9QDF2i4Bfz4VJXijil3a1BG9J4
S7eE2LPQ8mG46X+7czeGYWDpkRxFImkaYCNqx/RqktwVPdIxWn+hkIl6PChSK7h136NlWzR5a8Gt
RRuUN1kzV0llk356YStJb7sGZ6LSMv4a6myWKslunOoC6mRhzpjDGxP2oRqKykilaOmGWXcqNfh2
K0NSMp1sSg/9u/AlDEaSTY/ZTOdidZ4GJgpNAfff7+gtoawph0lyE896wy0ZeQMX15rHjhb9IMaI
YgcFVfZkv4pisZznDL6sqiGbjR0h/3IusuMn5s+QST+m5kIySh8E7ajo5E5xdffxxJgqtzXSfqJs
kdKKkMlERNetYYhpW33QfiKNqKMH1Wj9BSRK/dEVsyMw4GFHt04DnNqZT737B1oR/sOmKMlNRwyC
xK393EtRe0L4wv6jvOh4othjvaGofsr8Zsnd5s9gv2kmSsi86LvhJnYXqFNvTVjMBpSZfiKiRBjI
Og/vGCaO8GGPzRuBzQen4IQI85xfnj0OixcWWWD1SKnhvkoQTTDqn8AWs1foXCU0GdvopaXHW78p
UkdYlGwc+6weE3jn6wRZY7EheFVC6EfD6N1pd8CekoxkmUS9vsO+P5naMlCrygPtIjArrlp21tgc
38xrTzQavUdrMZ7licioe/M7FcE/t6szXO84aak3iRZcNtYQKwbmGvjAADX3fjYzPUsd3gPDIVkP
DRPeY+aH/sDLeru/RENelX8m6hDPAwPtSIXptsukhAxGkVNNRdsDoyzUCHiMl/TdyBSyvVwl4nu5
iCY/RxPGW9Ci/O5lovVRczeINaO92RLi6vCqM/5rqvBES4QHEfuiHTzq4CXS7ctU3GUHmb7nWBus
vLVHm1eS3ktBL4bqv/kZQjiJnHiyWr9fN1TEgoRvJTQwGwNcjn64XR1ZM1JSx8QJkOvUQeG6EbEW
EEAFKeZJQO6sHYf/x9v4c9erXYRd6ab1FdG4sB8HzhiHmJSV9yFDlT/5TCYlQYOpcZifL9S+gUd3
YxGjVs0TqY+ldxo7wMJG3kbb2gI8q5zuyuhIJqjGNfcZDnjXJkYHFvAJ0IhIAPnPI2j3lJ9IXNs3
Ln6nR0nEcpTZX02cTJ/t2dvRjbZ8ffNDdRzPMBA95Zup1uKzd22d0ScMN+L02q1SWwcIntRfzHGr
hREr7gFFJ+83HaznYZZg3kQELGkfL1GXlIPjzYGOxaMihf2SO/8tBMof6W0UorbsdbkO0JzUGzb1
cRlC+5eUMH7yJNYW1BqXF3gku9gMHU1CPYzyDHm0fvrhmdjezr6xGLogP7JD3+40SQOxYjnXlQJN
GAEtwvkTGYspB+n6ZMHaUWeaHRYoz5VqljPfd7as6Imh14EQKehB32lvw8ZQ1uu8ghm3wvx1r9c/
AIV8h6g2kkhSW8ThMG4OLa8/5sSovxGYfxKQE0VXXQQB3n7XFzteBOwRtwi7ZrhhyP1ijag+QbVA
8aC194jV0D4eUfwQxLhr1BdHHYXL6FPKu2rdtRQH3SRID6aaNilPmmUJGo7c5hdUzVgNWdeiFBI9
zhO6kb2dlJEhXdePc3RfcN27W3bjiVBD6cax/VSW0O00cr9zVdAwKi0u8tsiXlsqyfI5jx3LUmU8
nNAmk8mCkPx5APw1GCwOwAdOcy0AnxHjx0Mc/NkECkJl5alU515vI0ewN883XbLFlY+pJ5rQSfrs
L7OblP4A4ve8cu+68Z1IxCIebvA6lZ0car+XiXVEYSG+aWhhdYM9D78jA9xfEWQjA69GwSpOSST5
MM3iTPrXjo7FgZ8Nl3ywBrTAn2fH7NdtEXwqY6e7OkFN6T1jU9LARKX68W/311awa0Ac2EpGgBqK
1hAyYo+ERUuMOh7kMSNqQKdjxfcwgcvkPqQQh+cOb+T1dxLwcfEYO7iWx54a7U8KCM9+eKcNMVcO
zPi2rvrGXpubopV9WPmlrFO8jehWkwzbpdNy1QjEDcWtymkWiwXXiCIuxTnWtDa2wsQTRlowgE38
FzVay/ely0Di7oHnubrrS05cqdoN25yPHp/PpFCYS1W56+FQEXFJTstEJqSOR8N5EIyR1l47DmEh
47zo3o4JUfS/JB/lrLNCgLM+N6a6P1BkDqnodOQiF0uXLhIxQ9m0j0us2VJUT3/ne8CrhTA9ZmQ2
wBqywnKAKgUaNwwLydpd5YUfDz9NZltTC03sj5xBmBv4KknyNYlCcgSRCNLdWwe23Gd2Rje4M6+/
taGeTALDV9N5HujMk8T6VIlC4lHN6D8asFhlDo4im6HxU6fL1E7S2pLRIBqe9JkbEdT2k25P1UAk
HPuaDO+6D6RCq8JsoMtugBZ201HfwJT0Yyo3ekKaXML/I1raMERKQCBY9wGHv98+j1hVmjxUcz0s
ScAYrz1rgB/SpnSxKky9M0L8Ue+4DrjaQnOCcOAnjzB1+DrBPh/QiFES+9qgbYRQkJ03rgME89cq
pbTxpcTPdqVXR4tKRmwezjZpaBAKFBctdjKpnGbvGf1vhjO9QelBFXW1ZHf0Y/bWBcMvtmNDPVkO
yTMkVQQ6w/QdruA3nWZ1459jk7MC7baXkHAf9ahc9hztLBut4NgAsxGu0higvNWtJmPGqKRVCzSL
mNCIzX3zTgDK7DR+O1AmyjBoVDUH6nJQX4LE3h7Oaj2bobYeBU+6mPFCkxBHOoiIb8x42bUmZ70D
+tooh8+C+DwaKgVTIAijcO4jwjBInuCTy9l4huBAgKZOdytHthtIUIFvx7E4RgmJsPJvc6PGAiaU
08nH3UeP4zWfveMovQoTQ2hSv7+ujyW4Qgz9wvNyCEgjANnLq+cOeJ6WGtgtIIGCyIaqaWOetTTa
i3Q3Al/+Bl6BwUe932Um2I2H4bubSFwVKSu1KPkVHqL33/Y5kawFevPVYncbvLfz8NfNPNAk6r+t
30CBq+0OBtCN1zfgL5dTU6g8Ok/HnPJ8Dec0rxa7++/yfieAdUywKIueVLxscGpwVhW0h4OMDt3J
KlkD3r0ts+R1j6BI26NDVMnT1tMzcNt+EjC/jrhtDyl4jCzfYtNfs6i3OissvT7NN6hOX28oeu5j
r1DoNqLYzAgChQnrJZwepOhyzZL44+OJ55sexigjKStVtBde5nKjsBkmRO54AMN68pQZ0fdRG3JI
vzB9NDX+9nOYNActgJ3So4JbI69AdJ68qxKuAbaRPlJhugEtEquaA5AZzJdR2ir8GzGqoFVpef3W
KRkxJItQwbNfISKb0GrhA17VNODbpfg6osmBg11OYBgfCDmYXlPKo8lqDahS9R0cmZ7dApCeOIKX
7wHYvefiGpRYJ2jdU1nr8/OmZcJhJD0IhP2Tsqk3Fu1hPu9BsNOvzi1BHYkZTIdLSG5HjJ+0VIId
na9wcsx+jpG1FLLqgu5U1b/jtqNsIc+EhW2eY9Fq8+7a2BhFHrT/1ziprzNa1KlYcMfHD0MHg7Ru
NvTLPUT0aUHLxURJIctDdTukmA0H4aDmVkRF++R9ew8lQH8pz5a63S3ndCXnw3rnK4lfCpQtrwwL
wI6/KIiKnoCDxSQ9+4y+Fl4uueD7nnMxt5W42X68P+kPMZXo4RRAuvRV6TkEeQpl+L4F7t0wanGr
PSEqdxZZIvA/C8XEv/Y/mY+st4liHo0hW7qLc0BGGqtis4+ENAXiBboWiibgXVA/Eqe8/Nbx76Mh
Q75C7LJpW4pLfE4a2HOJ88qn9krX8F8q2j8eCPvGhWefsNCW0V3WImcOTy2MMW1yLW4RB0rm5ATq
y1HMtXemMJqLTm978xz99u1Xw+eKtm2Qc3z8j7xiZQgv4LA3sqJTtqrFZiTHOvh/e+NcptbXol+U
3lxvd1oHSFh/3DycSKSjFlvjR34zn0j/aHpmCbunuBV1qLH/kiunVXkJiJwo2pkqkk0m07hMcVYh
DaR8UY0rTDMi6+SSvTWYcjjWw92+GC9U0ZX0VXHKnJHCI7BYTjlphi2jTjIa5fOJ7zR9wfYJe4av
uhJZkaQ+PJsAaTguFoV1fgzhwgxusupZ100WOkrp7FhAOZnR9BH6Mh+u9QgG/LDlXmPO47kDpETS
Dudg+pnFMs2xTjUqDKfsrfgzRxdrqUuE1s4zs0ROHmmJs1XpA81/cQ+DwHBNBwkBWVNMUzlFOTE7
r/7MSzNKCm+eUeep3P2uQlsIpwDSUlTBVglE/cOGA6l6tZfIlMyzTjMyuwBBLfrHPQAMdRr4mr2v
ADaaK0hEa9TX7QKwKHwGTZzbjCn/44IhWZj4HSP0LVic21NCYmrflEQh65lEevP0aDzxbqgx7/ZV
7kwOsQMVGhEfqxl/uGHkeOzl0glvEBHcM6gJ/edh1MitrVPy+aKhv9GpGVPfT+9NovbkIiPE9P5E
LTozBU7nObO+VTKuGnYQRDEZ7aCiZmua57IIOtqoiHsJ6iCXI/E9D1GR8MytfFm+hFajAAu8mviN
72UAV0WkTnGHRH7P1QFZACWcvD6bEoM5O9cPQ6mfDZq1dXSAc0FsBZipovYASYxnYt1o+zPMl+kb
g9vwAcEVxYeyD9b3gAXH7+tl3P806PTS9NGLMTjUuYYgC15D9lazRASDM47jGprQKKgy+7+R4L4C
ZocoG34AtPkGXLCHd7EuiFzvPRAWpgbP32mJxB1vj5VomrNsQJZA41EKv0ZR3b2I3UGo6kIjzd3Y
UWIux/AMFDx2DEzYAOsa3mTDs2z3prSBKB7mUs2OIi6sCsic4h2CGOz/aIDntZi0agoBpHkZkT6J
l2jEIeBaaqfXV8Y548JSJxCXuzlUE3uZUIj1gsd4N4dQray4fH9q20u5LGcS5wob6WzJVnAsoj0q
UkeDxeksnydBo0PAD3h+eH05QG6mVeUAvNXDbJI0tMb64BHAwqNZWomX+elpPwGG7hyZgMI/X87H
MlDjIEhw3taRY7xUlzanJh0fUYcp0OD6DQrnOZhhc7jMTxKycJpXwt88xZaWTOGa+lo8ErChOKKM
ZCts4ZoBZytyYE1bqUvZUsLkH09jIcIUhPoYPTCWl0o44EIfKa1VJcMLLTEwk9WA6yHuYG3g1jiE
IG1D50BY2hnd85Uex3Xrp2F/cpu5bsgEzVeaxn1paCFah0QSEj55yzAUcIeVI6B37m8xE5RRxXwI
6KAgqhbQYttaxgi6tC9ImvSGAxlj3B/FpfgrOHHjg/a1egWn8u0GBIF42FbbfMjta73AuPNGMZ7l
sIhjIeJvZ27Jm+v7SpEJx1tYBLANLHsYGm3SaShjkwUvlQg5MxJiFb4T+L6etE4PcxzPS7bsdswk
FLiDxkW6VJ0uNb789VCg788GTUzUozc6+zRTqBfkRfwvaYPQD6qLuUmusKolCQbWSOtyi9ReOniJ
MuIeVhLzJX1fZUQ9EtKIL97GHXn1/QxZHrS0zOvgbzTShgBtT1+hVDlXyctOHcyJRpNU50F8Om4m
jXmJwc+CbW/DYSEVD0rjylfmCB61Xq1Awd52KKFshUHU9kXIgus7B+YZfAnYsYI27KwnJA5CbbZr
rSefw3uMJs67FDJhGEyRpyZTB+CUf5ISk5NVedlxUNavX67OgUV1YNc1NqQ10Z0OZQKgm2DmUlXZ
zkaMCiorUuYOtKdZFV2r8M+owfuImxLg0tIl2EHM5kw4ZT57ur3ClB5AnDL5NZjqM8YIZnCCR7F9
pr6A/LCWfTZ06JzGkJVc/TIJIyTyCPTgv4gjOPXgce2WgfbK27XaoRzcWniecgAofsMSifTQq1cY
22a2PCxgFWUdVTh3heaYiL7Eg1pqhnucWXj9NypVJoYUqSCIbaYZMNYprfAFI1ZuohAWvXewCcXN
x/eRkohlKPd/DavY6MbdhIjn6txWOKRBzqAh29jIohxJPm7iSfDqy4cMGY/FQ+wVomSPATlDiuwC
wQ5BVfGBy8nvQSY/Retr+TvdujtyFjcRleTNwcTMGwp1MHeqKzU6RRt0hEJO3AXobwrqwBvRIKHR
dJxOzg1xL5KE6Oax+SiH3F2foioOR97VxHbOdYDvIbesq7EGGHFAbCHgsBTgHXcw0td3bL59dfVA
F6PJqBfD1oMEvKcO4ZGA07ibLmmcBCJVtDI23Rw7dGAh7P4lcFqxO9k4XT/NWuMYndUALHznUBxg
E/qlMU28IC0LViMVh+IVnm8dbBS/uXsP3hjUpIhh2VJ6mQA+ilUI7VAkj0W7K/KNAND/qM5uK04V
k5NE8Nznn4FFCUZMtK7GPHLtbh/soNZUD+q40WpvJmnSCvrOIusxUL/ngkSDo4B7bfIb1FKvkC3D
j45UAyOlFS/rYji71IxZcpreytnLJRcVIQe1JZOz9QnEGnasNOWiWl8bkE6ugxcGGA55GrwyQB6N
f8P+R5Xm5uL7Ab5LQFIQw237ncJf+gx72avWFbp8UDokaLux/5tSvBifROVTeUzbNGJgEklwVTi5
Q3Mzb1EOxqKGVXacgCewXA8nZ7tqfr7AJKIZ75zM+N5CNWUnKwBIiYi7bBuTKDuZk4oruCjEWNHb
tcmzzCCFkhziialarrZ/q7G72tTDb5kFkLx7uA1a8FzyB6cvDygV0UlfDkIIdONf5kQdhQ7WLXpw
5lxYED/q9MO+9i/xJBnaRN10M+0mw2IJw3Bl68Ismp4v4Mcx6zgFMfN0TJWLqbMqIWVUVXART+uz
1HsIFOyuA9zXr5PANkJvcYokFX/hdUs4F7CGEYJG4xK7rzRN0yMWFOjiKMmmpWsqGa53NIXh9kHB
JPc/9lyhVgsx+Uk7cFWusuZE1Jr80dyVHEeED3ZmKg7hLARrFDaxYyJECOhymN2kpFuqKdGuwspD
zq1UyDnnO9EEVWFBphPX4qyttNvZxBM3Lvq3BQu168celg0VfY61/hrlU5zHHFbgDX9jiT0Dn5vj
Vldck2Sr+H65lwEIWlNcSQIS9i8lZgrje+ChEtDKOnZr+TvQRSMjqNL/nBRpRnQw41tmCBY9Opiz
SRSoMvN5n9EUts2oxjFFBJmgAfJGK3laLEzVaKrxOxNBjOjlh1p3f+pQ/ncZ8wlAag6YOKtUFzlX
nydIOf9RAp4q/LkMtVkY5krgTkm4f8LozbA3tjT1lxAwKT/pY3MssVV80bXHftIJ21ZgQiuoi/v1
zqVR+2c7bllDVzLx5Y/TyYL9uUlf6a3jqC4gg2x7ZkGSexaYFJdShL4DvPF/HIyECO6L4KEfilV2
Rb7YBKskmzQyJTT/23p8IP5F7rEAO41DjvbWcIrGQZWp/wsepv4pkM9HOCkiqEz7E3MDJEPeET90
4zXuDgI7t4RD5lfPXPNxYENd87ZpC67r+sM/hCJjHjt8tlCe+/8rhObNN4zXk7PHONCl/TQ4tf02
JWZpwKskWAAv7r3vSIDPogXH+TgMO2Q2mvdp8EzwTtCgIyR1zmR6Aeu8Upt3eXht8SEKwzhuUD8Y
HEtn3oqmeJKlaEpaKgFsSzSWjmVyObKDq/u2DrPSfhkkBzAYwTCxFGJaYspUbC70i6patxdFyW3Y
bjy736vRvRVChF+kXm9/jSySnqr/9u2kkTowQwzj8RAj1r6IKYtecR1XJZvRCjOL9YSq+NOu3Dea
cB7Ud2e7Ek1S3tgaxM7LZv1ZEaFCxRxW+KcrnY4YRHLLic9fuYVK0yXqr/lwOOUcOG+1QgDhbt62
OrBq3mty2LYueMFMqmlxN/sv+YHPyaFrHXsZo/68Zi6yo2dUiFD9XChUbswJicqo6K59TuAj2obS
WeSaz7E/vP7guyXkk/DeIEoTzZDLWzwsBicYcw+Or+wdJqKiWT2WJMgQ58FJk2AMaVzf6+2PoPyj
W1NT54KWWSqlUOl8sDFZtX48L5wj/PiMQdp1zu7DUulunh2u+AFdsbgM12ZuV0onra7784bikH/a
X4aKoWXpmiPgnwPpOaJSY2d1o9R/mCYLinOT02LLOXGcUqszoHaV/XFJkm26NxuWUQ/WC8AYmrST
gkTrbXL53ou5BWHnCfvl4qT61jmn4NCxepxQXMa9FdW6a0meuRx8yRG3yUD1WWs8fJ8zESO2Vxmn
pfd6gb3v5lAzCMvycPbLy1Iwca0LW+BxZgBWvRCLV4uFhpQ3HyeFGTwB+PkK6FyUHaqZih4fKfhE
CBFDXjeKxI1XjqTUppKgs0lmmsFG8W6wDjQNsjrN36uyMGc0jKF2PwrGtF6QJE1K5I1ww3WkzAXW
vjU5Kf2oLBWZYAMY6ICXkT/eonjbnGJgJSoo7kla7DoTVRd9eecvgjaEzrwST4NGvQWQAQsaJ0QM
PoAylX+WlVS0R5dxw7hgy50/9AYQW1Hb/P+VfSTkD0V9p9xd01vWwuU02RzHBXJn1VpZAERJ5AiK
QgrvX7y7N6+GPAbMREZLM0LgX+KiVEkd8u1by1aUhBcepouBjkSDU1Ep+0FSo4CWO7z0t9JyFMU4
E0uqVT2nHj5kKocwz/HL2zjW8LGYEfxEX+Uaa9cF9UmPZ2pF2UmAe/It4C/qavjF6IA1ZxNx++DW
q9nQOwFLqEq2Pqbn8ah0AqVN/tJjyCHKJ+x1CaDSL8hmxWiCn3HhuY6q+SMyTRGcc5N+ZUZaWXM9
zFjEEQ6eZFSk3hfOqqo0a4IG+PDbz2pIrtSEG1l6XeZ6roiE+HhvvzsBBYrlA+Z3+Xcy3Ifjs0Ff
5P5X2dyBpuzc4Yv9uZTvsj3i4tik0ZRa8sbzrvjfGNvWyODSB24PyslwqCMVb0l2eGVoILam9Cmd
0eBrLfLq/CQTiNv/cI3OV6Ad5YTh8JqBa26rGbP6M6zKgcv2+pVeDkO3kdEf5qp5W4N3OeCVXzky
SxJnSrXGUWK3R4VHnB0J2xHiy1FIhO7dnpvssn8WODmafkT5p03T6wR0nnMXvluL78Oc4gDTX5Ow
PEfx8vma5zm3oww1SKHHQFea9fZrwhA4nVWkfHLQUgJaytDK3UQD7mNE0HtGhCXgr280DuP117QM
m1C9/ri+ciVifqawVasR/rJkQtbqwTev+XZ52Y3X082uJoGJ6a146qahQU2MGx7Rh+CRgONCzri+
FiQgNqksnYSfCGhyaafb62jV+4Jp/q5A9rb3vExoLteEgyEbRdj6ywBf4sKDMDM98vzEKtIG0Zt7
iQEE7r99DWrru+1dRXMEE87Oub4l+Xn+u77NYq7535MIQje+b75dI1c/Rfes4VoryufesExQ9Zpo
HEJDObSFu5CHJ4wjU41UpMBALsimkOYDTkwMOe6wQbArE9wbzfZEOKlfdu4VE3XejwTt7USP4Tju
hOCByANEcD61m3kLS5obs1zqpAMuAYXVzAQrwqfFr9mqEuLU70vGEVhDdj5sPnD3d9T05KliGAvo
CSq6pSxo3PhtswcoX6prFx4O80+NxULn/t0VkJd3aYe1jThDVrKCwUctFtrTKzjoBjVhBghgCZzS
Asu5aPDi7uyXK/qlA1cR5wkPn50FMLSTtIY/ySSpTipCNRVuz0VO4XXKPp6Gb3e+1v9/xsGiqTZ0
8n/MPxrtezfLqom5BjqlI1cjHxQpM3+RZbADGiPjKXIAgOBNN6jd+B0zryftcj49tmFGCh8pArXA
USbO03P6ZJYXO4VrKHViZt4e/Z+MnZCL+Og1aMZONlKIK0EHOsBtIPmsAUkY9g5Qzdb+5aslfymC
X4kkK5dOO2+Tr1LliuKVZPuXVwbaP4FXeljeNfOmFjD+NjeEbMojHm6Eqcg3+Yu5n0yBbXPDFUGR
ZqavL9XLsbpcs/o59F4r6Rg/6+yj+j7yBrlM9R3tJ/OnB7NDkFjntoMVHGUlG8r0EcTD4fgsuk63
gKsZ4MKfDXwLLMViPEvDqXKrvub7W6XrteRZLRCca6qIIrL7zVxAlloW0EZ3IUe4rICnUQT4jHHW
vH3bnmUGc4zcReRAsOc7LaoKKbBYyRsQm/sP8t0U4aSdybNGvweC2Wgkqfur/vk2+V0oTF4fjwVr
y56HCLqrmtcvh2L2bdYbwNtldC/BErCXuqxpbrcM5EPpMaEw6rwzNQIOjrz6sDF830PaCUCrEJTb
8T8stWLqS1WxBGHQoUyl80y8QKgyEdUnU0tP9CGxZ6wGo+N81VeNuYetSooS7df/2Wsc2A3a6494
S1Br7Swiv8iDd5Q4VcaV01i8huCjJczwjwkKP5a3pTR/MDhsPhiOHVYugpm+xaduNdV3crw+94El
6r9ST5+OHo9WV8m59LkBuq1UufrJasTrv33+gmH3Txo5LSbTPd+RWsksEc4spu2FMDl+iy5Y4B9B
1OpaUkus5WRnBPvZJ80A4HSJ7Fd9ElDX+Y7DAGySH8ILzWpUpwvk76HNNI45k1P84B6IkU3jgqMa
ku/zELL6p2DIaGre6yNe9k5fEmEIvpqTyQIuaZO6xuxLgUoJmu/d/Avmt2hl/+EOPCf/b6pjLONI
yI451MLWr2Ihod3dHh4/5M/5zqldtdjX7MEL2kFUbnAI0NCOcPPucV8+TWYNxSQE44bdK1Z5l7oZ
Rt5JAMSMqP/ITtdn840y4MMf66aINkvD1di1B1ZNXfCzDi4YblAp1FBPefhzcDWFy79XNn7Trc/w
aQQREQR5sXQDk2e2qKaoF2ox9wtkmh+bKoqRyM20l7lSg5r5oEo1Ka2vCF971XhOEWoRetA03ujV
2PVz85RMErs1by8Y3Zy4sToyG4GH8uoiSSVQkpQX21zBKnJqFAJ2qz5zvTZafjJhq9Ax4XUmkTHx
5Bwee9QtbGByz6FSDcDeGR53hgs45iirtk0yKYM1rjTrEs3PvZPns/8xI3jxR5hg9k0S8zy0AHt+
QdErsquSV75aJTm6dmti0+990m1K07K77pe4ErwzPQVSJI+F+/424mmN5wtuI6j3M86SNoIZNmC4
CcGKImH1d6S9vBA0V3es0/iubWVahAVHf+wLRSiqrYrEql1ljLcIMR3SdJcvSPmwkiheHHXERO3n
3S9R81FNI55MgvgicC0i9wCruU7yLclH29p+Y87MtNqmGfHsFy0lrax38anUS58bI6+z4LMNTr+h
VUZBbTkdwL4K4iSr+IDnhTXITaWx4z5mBxc7mckg9CzprmEtgx1PVxEnt5zvhZWbw2eM/nHW56r+
VCpWvbmYhkV+j5GD4RvoekK9s2VzDYMAfa/88/QeZEp3e1Hn0BYiLGz/ETzk6zy3hVdgzGAZFyal
NOSR6aeZyzqrUoGocqAPNw9iD/PB7yHNcnyu2Yxx60CeCQgY4VlkhvV2UqvC+81XWhuha7aZptkW
BxBNQU4Nk6N1TIcioHS1S2flXjcynbFFoqCxvOHg+MHGhJxxI7iflb9peKHx59xwPW5sz1hT8OSd
Z1vzwlvOb89RAM8jxQGp4xBm0v0EeHPQaxzrDYzidJMEe4nRjqL49tf/0ZPQQwDV46KPmYFkYA6d
j1XcIe+VSmxha/5e7xWBmX+pKxdaJ0rWVofL3wMHIOTIU6kwuOpLhIS4f2Awz+eaXATKViPtKlRw
LX28kg8UFfo9cEsFUOXIcN/58M9M5RP7OKTok2lbLYraVqgVBTYY8nhMO5WHXZ8o/mL/Lpf1pSWn
iNkOsVtq90K8geG+bZmi1q/THQJKOp0Btb5tvtprRqo=
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
