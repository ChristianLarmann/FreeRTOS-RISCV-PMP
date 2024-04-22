//`include "riscv_core.sv"
module riscv_top_ahb3lite #(
					parameter BOOT_ADDR        	  = 32'h8080,
				    parameter N_EXT_PERF_COUNTERS =  0,
					parameter INSTR_RDATA_WIDTH   = 32,
					parameter PULP_SECURE         =  0,
					parameter FPU                 =  0,
					parameter SHARED_FP           =  0,
					parameter SHARED_DSP_MULT     =  0,
					parameter SHARED_INT_DIV      =  0,
					parameter SHARED_FP_DIVSQRT   =  0,
					parameter WAPUTYPE            =  0,
					parameter APU_NARGS_CPU       =  3,
					parameter APU_WOP_CPU         =  6,
					parameter APU_NDSFLAGS_CPU    = 15,
					parameter APU_NUSFLAGS_CPU    =  5
 )
(
				  //AHB interfaces
					input  wire			HCLK,
					input  wire			HRESETn,
				  
				  // AHB-LITE MASTER PORT - INSTRUCTION
					output wire [31:0] 	ins_HADDR,
					output wire [ 2:0] 	ins_HBURST,
					output wire        	ins_HMASTLOCK,
					output wire [ 3:0] 	ins_HPROT,
					output wire [ 2:0] 	ins_HSIZE,
					output wire [ 1:0] 	ins_HTRANS,
					output wire [31:0] 	ins_HWDATA,
					output wire        	ins_HWRITE,
					input  wire [31:0] 	ins_HRDATA,
					input  wire        	ins_HREADY,
					input  wire        	ins_HRESP,
				
				// AHB-LITE MASTER PORT - DATA				
					output wire [31:0] 	dat_HADDR,
					output wire [ 2:0] 	dat_HBURST,
					output wire        	dat_HMASTLOCK,
					output wire [ 3:0] 	dat_HPROT,
					output wire [ 2:0] 	dat_HSIZE,
					output wire [ 1:0] 	dat_HTRANS,
					output wire [31:0] 	dat_HWDATA,
					output wire        	dat_HWRITE,
					input  wire [31:0] 	dat_HRDATA,
					input  wire        	dat_HREADY,
					input  wire        	dat_HRESP,
				  
				  //Interrupts
					input  wire [31:0]       irqs,                 // level sensitive IR lines

					// Debug Interface
					input  wire        debug_req_i,
					output wire        debug_gnt_o,
					output wire        debug_rvalid_o,
					input  wire [14:0] debug_addr_i,
					input  wire        debug_we_i,
					input  wire [31:0] debug_wdata_i,
					output wire [31:0] debug_rdata_o,
					output wire        debug_halted_o,
					input  wire        debug_halt_i,
					input  wire        debug_resume_i,

					// CPU Control Signals
					input  wire        fetch_enable_i,
					output wire        core_busy_o,
					
					// Debug
					output wire        dmem_access_req_debug_o
);

wire			core_instr_req;
wire			core_instr_gnt;
wire			core_instr_rvalid;
wire [31:0]		core_instr_addr;
wire [31:0]		core_instr_rdata;
 
wire			core_lsu_req;
wire			core_lsu_gnt;
wire			core_lsu_rvalid;
wire [31:0]		core_lsu_addr;
wire			core_lsu_we;
wire [3:0]		core_lsu_be;
wire [31:0]		core_lsu_rdata;
wire [31:0]		core_lsu_wdata;


// Debug
assign dmem_access_req_debug_o = core_lsu_req;

integer i;
reg  [4:0] irq_id;
 
  always @(*)
  begin
   irq_id = 0;
   for (i = 0; i < 32; i=i+1) begin
    if(irqs[i]) begin
     irq_id = i[4:0];
    end
  end
 end
 
 // ---------- NEW ----------- //
 
 
cv32e40s_core
 #(
  .PMP_GRANULARITY ( 0 ),  // 2^(PMP_GRANULARITY+2), 4 -> 64 bytes
  .PMP_NUM_REGIONS ( 16 ),
  .DEBUG ( 0 )
 )
 RISCV_CORE
 (
    .clk_i ( HCLK),
    .rst_ni ( HRESETn  ),
    .scan_cg_en_i ( 1'b0 ),  // Enable all clock gates for testing

    // Core ID, Cluster ID, debug mode halt address and boot address are considered more or less static
    // for all "input logic [31:0]"
    .boot_addr_i ( BOOT_ADDR   ),
    //.mtvec_addr_i ( {30'h8070, 2'h1} ) ,// ???
    .mtvec_addr_i ( 32'h8081 ),// CL: What is the purpose of this? It gets overwritten in SW anyway
    .dm_halt_addr_i ( 32'h0             ),
    .mhartid_i ( 32'b0 ),
    .dm_exception_addr_i ( 32'hD ),

    // Instruction memory interface
    .instr_req_o ( core_instr_req    ),
    .instr_gnt_i ( core_instr_gnt    ),
    .instr_rvalid_i ( core_instr_rvalid ),
    .instr_addr_o ( core_instr_addr   ),
    .instr_rdata_i ( core_instr_rdata  ),
    .instr_memtype_o ( ),
    .instr_prot_o ( ),
    .instr_dbg_o ( ),
    .instr_err_i ( 1'b0 ), 
    
     // ???
    .instr_reqpar_o (  ),         // secure
    .instr_gntpar_i ( 1'b0 ),         // secure
    .instr_rvalidpar_i ( 1'b0 ),      // secure
    .instr_achk_o (  ),           // secure
    .instr_rchk_i ( 5'b0 ),           // secure

    // Data memory interface
    .data_req_o     ( core_lsu_req      ),
    .data_gnt_i     ( core_lsu_gnt      ),
    .data_rvalid_i  ( core_lsu_rvalid   ),
    .data_addr_o    ( core_lsu_addr     ),
    .data_be_o      ( core_lsu_be       ),
    .data_we_o      ( core_lsu_we       ),
    .data_memtype_o (                   ),
    .data_prot_o    (                   ),
    .data_dbg_o     (                   ),
    .data_wdata_o   ( core_lsu_wdata    ),
    .data_rdata_i   ( core_lsu_rdata    ),
    .data_err_i     ( 1'b0              ),
    
    .data_gntpar_i  ( 1'b1              ),
    .data_rvalidpar_i ( 1'b1              ),
    .data_rchk_i    ( 5'b0              ),

    // apu-interconnect
    // handshake signals
    //.apu_req_o (             ),
    //.apu_gnt_i ( 1'b1        ),
    // request channel
    //.apu_operands_o (             ),
    //.apu_op_o (             ),
    //.apu_flags_o (             ),
    // response channel
    //.apu_rvalid_i ( 1'b0          ),
    //.apu_result_i ( 32'd0          ),
    //.apu_flags_i ( 5'd0          ),

    // Interrupt inputs
    .irq_i ((irqs)),  // CLINT interrupts + CLINT extension interrupts
    //.irq_ack_o (                   ),
    //.irq_id_o (                   ),
    
    .clic_irq_i         ( 1'b0              ),
    .clic_irq_id_i      ( 5'b0              ),
    .clic_irq_level_i   ( 8'b0              ),
    .clic_irq_priv_i    ( 2'b0              ),
    .clic_irq_shv_i     ( 1'b0              ),

    // Debug Interface
    .debug_req_i ( 1'b0              ),
    .debug_havereset_o ( ),
    .debug_running_o ( ),
    .debug_halted_o ( ),
    .debug_pc_valid_o ( ),
    .debug_pc_o ( ),

    // CPU Control Signals
    .fetch_enable_i ( fetch_enable_i 	 ),
    .core_sleep_o ( core_busy_o 	 ),
    
    // CL: Set external handshake to 1 to avoid stalling after fence.i
    // Maybe this must be connected to the cache to make sure everything is written 
    // before the next instruction is fetched. However, this is most probably not 
    // needed as the core waits for the memory to finish.
    .fencei_flush_ack_i ( 1'b1 ),
    
    .mimpid_patch_i( 4'b0100 ),  // Arbitrary number for machine implementation ID  
    .wu_wfe_i( 1'b0 )  // Wake-for-event wakeup not used
  );
    
 
 // ---------- NEW END ----------- //
 
 // ---------- OLD ----------- //
 /*
 riscv_core
 #(
  .N_EXT_PERF_COUNTERS (     0       ),
  .FPU                 (     0       ),
  .SHARED_FP           (     0       ),
  .SHARED_FP_DIVSQRT   (     2       )
 )
 RISCV_CORE
 (
  .clk_i           ( HCLK              ),
  .rst_ni          ( HRESETn           ),

  .clock_en_i      ( 1'b1 			   ),
  .test_en_i       ( 1'b0 	           ),

  .boot_addr_i     ( BOOT_ADDR        ),
  .core_id_i       ( 4'h0              ),
  .cluster_id_i    ( 6'h0              ),

  .instr_addr_o    ( core_instr_addr   ),
  .instr_req_o     ( core_instr_req    ),
  .instr_rdata_i   ( core_instr_rdata  ),
  .instr_gnt_i     ( core_instr_gnt    ),
  .instr_rvalid_i  ( core_instr_rvalid ),

  .data_addr_o     ( core_lsu_addr     ),
  .data_wdata_o    ( core_lsu_wdata    ),
  .data_we_o       ( core_lsu_we       ),
  .data_req_o      ( core_lsu_req      ),
  .data_be_o       ( core_lsu_be       ),
  .data_rdata_i    ( core_lsu_rdata    ),
  .data_gnt_i      ( core_lsu_gnt      ),
  .data_rvalid_i   ( core_lsu_rvalid   ),
  .data_err_i      ( 1'b0              ),

  .irq_i           ( (|irqs)),
  .irq_id_i        ( irq_id            ),
  .irq_ack_o       (                   ),
  .irq_id_o        (                   ),
  .irq_sec_i       ( 1'b0              ),
  .sec_lvl_o       (                   ),

  .debug_req_i     ( 1'b0              ),
  .debug_gnt_o     (                   ),
  .debug_rvalid_o  (                   ),
  .debug_addr_i    ( 15'd0              ),
  .debug_we_i      ( 1'b0              ),
  .debug_wdata_i   ( 32'd0              ),
  .debug_rdata_o   (                   ),
  .debug_halted_o  (                   ),
  .debug_halt_i    ( 1'b0              ),
  .debug_resume_i  ( 1'b0              ),

  .fetch_enable_i  ( fetch_enable_i 	 ),
  .core_busy_o     ( core_busy_o	     ),

  // apu-interconnect
  // handshake signals
  .apu_master_req_o      (             ),
  .apu_master_ready_o    (             ),
  .apu_master_gnt_i      ( 1'b1        ),
  // request channel
  .apu_master_operands_0_o(             ),
  .apu_master_operands_1_o(             ),
  .apu_master_operands_2_o(             ),
  .apu_master_op_o       (             ),
  .apu_master_type_o     (             ),
  .apu_master_flags_o    (             ),
  // response channel
  .apu_master_valid_i    ( 1'b0          ),
  .apu_master_result_i   ( 32'd0          ),
  .apu_master_flags_i    ( 5'd0          ),

  .ext_perf_counters_i (               )
 );
 */
 // ---------- OLD END ----------- //
 
 
core2ahb3lite
#(
    .AHB_ADDR_WIDTH(32),
    .AHB_DATA_WIDTH(32)
)
INST_WRAPPER
(
    .clk_i				(HCLK),
    .rst_ni				(HRESETn),

    .req_i				( core_instr_req    ),
    .gnt_o				( core_instr_gnt    ),
    .rvalid_o			( core_instr_rvalid ),
    .addr_i				( core_instr_addr   ),
    .we_i				( 1'b0			    ),
    .be_i				( 4'b1111			),
    .rdata_o			( core_instr_rdata  ),
    .wdata_i			( 32'd0			    ),

	.HADDR_o			(ins_HADDR),
	.HWDATA_o			(ins_HWDATA),
	.HRDATA_i			(ins_HRDATA),
	.HWRITE_o			(ins_HWRITE),
	.HSIZE_o			(ins_HSIZE),
	.HBURST_o			(ins_HBURST),
	.HPROT_o			(ins_HPROT),
	.HTRANS_o			(ins_HTRANS),
	.HMASTLOCK_o		(ins_HMASTLOCK),
	.HREADY_i			(ins_HREADY),
	.HRESP_i			(ins_HRESP)
	
);

core2ahb3lite
#(
    .AHB_ADDR_WIDTH(32),
    .AHB_DATA_WIDTH(32)
)
DATA_WRAPPER
(
    .clk_i				(HCLK),
    .rst_ni				(HRESETn),

    .req_i				(core_lsu_req),
    .gnt_o				(core_lsu_gnt),
    .rvalid_o			(core_lsu_rvalid),
    .addr_i				(core_lsu_addr),
    .we_i				(core_lsu_we),
    .be_i				(core_lsu_be),
    .rdata_o			(core_lsu_rdata),
    .wdata_i			(core_lsu_wdata),

	.HADDR_o			(dat_HADDR),
	.HWDATA_o			(dat_HWDATA),
	.HRDATA_i			(dat_HRDATA),
	.HWRITE_o			(dat_HWRITE),
	.HSIZE_o			(dat_HSIZE),
	.HBURST_o			(dat_HBURST),
	.HPROT_o			(dat_HPROT),
	.HTRANS_o			(dat_HTRANS),
	.HMASTLOCK_o		(dat_HMASTLOCK),
	.HREADY_i			(dat_HREADY),
	.HRESP_i			(dat_HRESP)
	
);


endmodule
