// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:AHB2DUMP:1.0
// IP Revision: 1

(* X_CORE_INFO = "AHB2DUMP,Vivado 2023.1.1" *)
(* CHECK_LICENSE_TYPE = "Zynq_E40S_PMP_AHB2DUMP_0_0,AHB2DUMP,{}" *)
(* CORE_GENERATION_INFO = "Zynq_E40S_PMP_AHB2DUMP_0_0,AHB2DUMP,{x_ipProduct=Vivado 2023.1.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=AHB2DUMP,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Zynq_E40S_PMP_AHB2DUMP_0_0 (
  HSEL,
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
  LEDS
);

input wire HSEL;
input wire HCLK;
input wire HRESETn;
input wire HREADY;
input wire [31 : 0] HADDR;
input wire [1 : 0] HTRANS;
input wire HWRITE;
input wire [2 : 0] HSIZE;
input wire [31 : 0] HWDATA;
output wire HREADYOUT;
output wire [31 : 0] HRDATA;
output wire [7 : 0] LEDS;

  AHB2DUMP inst (
    .HSEL(HSEL),
    .HCLK(HCLK),
    .HRESETn(HRESETn),
    .HREADY(HREADY),
    .HADDR(HADDR),
    .HTRANS(HTRANS),
    .HWRITE(HWRITE),
    .HSIZE(HSIZE),
    .HWDATA(HWDATA),
    .HREADYOUT(HREADYOUT),
    .HRDATA(HRDATA),
    .LEDS(LEDS)
  );
endmodule
