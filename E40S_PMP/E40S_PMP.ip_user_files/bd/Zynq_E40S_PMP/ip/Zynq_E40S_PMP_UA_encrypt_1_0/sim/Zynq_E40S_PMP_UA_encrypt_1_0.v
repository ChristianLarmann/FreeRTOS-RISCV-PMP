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


// IP VLNV: xilinx.com:module_ref:UA_encrypt:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Zynq_E40S_PMP_UA_encrypt_1_0 (
  clock,
  reset,
  decryption_enabled_cpu,
  write_back_encryption_enabled,
  cache_rdata,
  cache_wdata,
  cache_address,
  cache_req,
  cache_rw_enable,
  cache_ready,
  mem_rdata,
  mem_wdata,
  mem_address,
  mem_req,
  mem_rw_enable,
  mem_valid,
  debug
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *)
input wire clock;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
input wire decryption_enabled_cpu;
input wire write_back_encryption_enabled;
output wire [127 : 0] cache_rdata;
input wire [127 : 0] cache_wdata;
input wire [14 : 0] cache_address;
input wire cache_req;
input wire cache_rw_enable;
output wire cache_ready;
input wire [127 : 0] mem_rdata;
output wire [127 : 0] mem_wdata;
output wire [14 : 0] mem_address;
output wire mem_req;
output wire mem_rw_enable;
input wire mem_valid;
output wire [7 : 0] debug;

  UA_encrypt #(
    .ADDRESS_SIZE(32),
    .NUMBER_OF_BYTES(16),
    .DATA_WIDTH(128),
    .MEM_ADDR_BITS(15),
    .ENABLE_ADDR_TWEAK(0)
  ) inst (
    .clock(clock),
    .reset(reset),
    .decryption_enabled_cpu(decryption_enabled_cpu),
    .write_back_encryption_enabled(write_back_encryption_enabled),
    .cache_rdata(cache_rdata),
    .cache_wdata(cache_wdata),
    .cache_address(cache_address),
    .cache_req(cache_req),
    .cache_rw_enable(cache_rw_enable),
    .cache_ready(cache_ready),
    .mem_rdata(mem_rdata),
    .mem_wdata(mem_wdata),
    .mem_address(mem_address),
    .mem_req(mem_req),
    .mem_rw_enable(mem_rw_enable),
    .mem_valid(mem_valid),
    .debug(debug)
  );
endmodule
