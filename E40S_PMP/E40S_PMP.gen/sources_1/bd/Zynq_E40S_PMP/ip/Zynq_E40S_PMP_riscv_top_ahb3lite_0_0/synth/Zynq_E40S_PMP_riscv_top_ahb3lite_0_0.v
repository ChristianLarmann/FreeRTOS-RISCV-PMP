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


// IP VLNV: xilinx.com:module_ref:riscv_top_ahb3lite:1.0
// IP Revision: 1

(* X_CORE_INFO = "riscv_top_ahb3lite,Vivado 2023.1.1" *)
(* CHECK_LICENSE_TYPE = "Zynq_E40S_PMP_riscv_top_ahb3lite_0_0,riscv_top_ahb3lite,{}" *)
(* CORE_GENERATION_INFO = "Zynq_E40S_PMP_riscv_top_ahb3lite_0_0,riscv_top_ahb3lite,{x_ipProduct=Vivado 2023.1.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=riscv_top_ahb3lite,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,BOOT_ADDR=0x1c005000,N_EXT_PERF_COUNTERS=0,INSTR_RDATA_WIDTH=32,PULP_SECURE=0,FPU=0,SHARED_FP=0,SHARED_DSP_MULT=0,SHARED_INT_DIV=0,SHARED_FP_DIVSQRT=0,WAPUTYPE=0,APU_NARGS_CPU=3,APU_WOP_CPU=6,APU_NDSFLAGS_CPU=15,APU_NUSFLAGS_CPU=5,PMP_ENCRYPTION_ENABLED=0}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Zynq_E40S_PMP_riscv_top_ahb3lite_0_0 (
  HCLK,
  HRESETn,
  ins_HADDR,
  ins_HMASTLOCK,
  ins_HPROT,
  ins_HSIZE,
  ins_HTRANS,
  ins_HWDATA,
  ins_HWRITE,
  ins_HRDATA,
  ins_HREADY,
  ins_HENCRYPT,
  dat_HADDR,
  dat_HMASTLOCK,
  dat_HPROT,
  dat_HSIZE,
  dat_HTRANS,
  dat_HWDATA,
  dat_HWRITE,
  dat_HRDATA,
  dat_HREADY,
  dat_HENCRYPT,
  irqs,
  debug_req_i,
  debug_gnt_o,
  debug_rvalid_o,
  debug_addr_i,
  debug_we_i,
  debug_wdata_i,
  debug_rdata_o,
  debug_halted_o,
  debug_halt_i,
  debug_resume_i,
  fetch_enable_i,
  core_busy_o,
  dmem_access_req_debug_o
);

input wire HCLK;
input wire HRESETn;
output wire [31 : 0] ins_HADDR;
output wire ins_HMASTLOCK;
output wire [3 : 0] ins_HPROT;
output wire [2 : 0] ins_HSIZE;
output wire [1 : 0] ins_HTRANS;
output wire [31 : 0] ins_HWDATA;
output wire ins_HWRITE;
input wire [31 : 0] ins_HRDATA;
input wire ins_HREADY;
output wire ins_HENCRYPT;
output wire [31 : 0] dat_HADDR;
output wire dat_HMASTLOCK;
output wire [3 : 0] dat_HPROT;
output wire [2 : 0] dat_HSIZE;
output wire [1 : 0] dat_HTRANS;
output wire [31 : 0] dat_HWDATA;
output wire dat_HWRITE;
input wire [31 : 0] dat_HRDATA;
input wire dat_HREADY;
output wire dat_HENCRYPT;
input wire [31 : 0] irqs;
input wire debug_req_i;
output wire debug_gnt_o;
output wire debug_rvalid_o;
input wire [14 : 0] debug_addr_i;
input wire debug_we_i;
input wire [31 : 0] debug_wdata_i;
output wire [31 : 0] debug_rdata_o;
output wire debug_halted_o;
input wire debug_halt_i;
input wire debug_resume_i;
input wire fetch_enable_i;
output wire core_busy_o;
output wire dmem_access_req_debug_o;

  riscv_top_ahb3lite #(
    .BOOT_ADDR(32'H1c005000),
    .N_EXT_PERF_COUNTERS(0),
    .INSTR_RDATA_WIDTH(32),
    .PULP_SECURE(0),
    .FPU(0),
    .SHARED_FP(0),
    .SHARED_DSP_MULT(0),
    .SHARED_INT_DIV(0),
    .SHARED_FP_DIVSQRT(0),
    .WAPUTYPE(0),
    .APU_NARGS_CPU(3),
    .APU_WOP_CPU(6),
    .APU_NDSFLAGS_CPU(15),
    .APU_NUSFLAGS_CPU(5),
    .PMP_ENCRYPTION_ENABLED(0)
  ) inst (
    .HCLK(HCLK),
    .HRESETn(HRESETn),
    .ins_HADDR(ins_HADDR),
    .ins_HMASTLOCK(ins_HMASTLOCK),
    .ins_HPROT(ins_HPROT),
    .ins_HSIZE(ins_HSIZE),
    .ins_HTRANS(ins_HTRANS),
    .ins_HWDATA(ins_HWDATA),
    .ins_HWRITE(ins_HWRITE),
    .ins_HRDATA(ins_HRDATA),
    .ins_HREADY(ins_HREADY),
    .ins_HENCRYPT(ins_HENCRYPT),
    .dat_HADDR(dat_HADDR),
    .dat_HMASTLOCK(dat_HMASTLOCK),
    .dat_HPROT(dat_HPROT),
    .dat_HSIZE(dat_HSIZE),
    .dat_HTRANS(dat_HTRANS),
    .dat_HWDATA(dat_HWDATA),
    .dat_HWRITE(dat_HWRITE),
    .dat_HRDATA(dat_HRDATA),
    .dat_HREADY(dat_HREADY),
    .dat_HENCRYPT(dat_HENCRYPT),
    .irqs(irqs),
    .debug_req_i(debug_req_i),
    .debug_gnt_o(debug_gnt_o),
    .debug_rvalid_o(debug_rvalid_o),
    .debug_addr_i(debug_addr_i),
    .debug_we_i(debug_we_i),
    .debug_wdata_i(debug_wdata_i),
    .debug_rdata_o(debug_rdata_o),
    .debug_halted_o(debug_halted_o),
    .debug_halt_i(debug_halt_i),
    .debug_resume_i(debug_resume_i),
    .fetch_enable_i(fetch_enable_i),
    .core_busy_o(core_busy_o),
    .dmem_access_req_debug_o(dmem_access_req_debug_o)
  );
endmodule
