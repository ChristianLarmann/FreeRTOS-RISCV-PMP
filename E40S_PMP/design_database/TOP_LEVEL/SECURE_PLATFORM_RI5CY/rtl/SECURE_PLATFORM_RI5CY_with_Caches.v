/////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
//
//
// TOP LEVEL TILE - RISC V with L1 CACHE + LOCAL MEM + NI +
//
// Author:  Cezar Reinbrecht
// Date:    Nov/2017
/////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
module SECURE_PLATFORM_RI5CY
		#(
				parameter	integer QTY_SHARED_CACHES = 2,
				parameter	integer SHARED_CACHES_ADDRESSES = 5,
				parameter	integer MY_ADDRESS				= 0,
				parameter	integer FLIT_SIZE 				= 32,
				parameter integer ADDRESS_SIZE 			= 32,
				parameter integer XLEN 							= 32,
				parameter integer ICACHE_SIZE				= 8,
				parameter integer DCACHE_SIZE 			= 8,
				parameter integer ICACHE_BLOCK_SIZE	= 32,
				parameter integer DCACHE_BLOCK_SIZE	= 32,
				parameter integer ICACHE_WAYS				= 2,
				parameter integer DCACHE_WAYS				= 2,
				parameter integer PC_INIT						= 'h200
			)
		(
				input									clock,
				input									reset,
				
				//DEBUG LEDS
				output		[7:0]						output_LEDS,
				//input       [1:0]                       SWITCHES,
				
				//EXTERNAL INTERFACE
				input									BT_RX,
				output									BT_TX,
				output                                  BT_RTS,
				output                                  BT_CTS,
				
				//UA interrupts
				output                                  I_interrupt,
				output                                  D_interrupt,
								
				// For MTVEC init
				input                                   fetch_enable
				//MULTICORE INTERFACE
				//input		[FLIT_SIZE:0]	noc_pkt,
				//input						noc_pkt_ready,
				//output						noc_pkt_accepted,

				//output	[FLIT_SIZE:0]	ni_pkt,
				//output					ni_pkt_ready,
				//input					ni_pkt_accepted
		);

wire [7:0] LEDS;
assign output_LEDS = LEDS[7:0];
localparam BOOT_ADDR = 32'h1c000800;

//Address, Control & Write Data Signals
wire [31:0]		HADDR_INST; //Do not get confuse with this signal
wire [31:0]		HADDR,ins_HADDR,dat_HADDR;
wire [31:0]		HWDATA,ins_HWDATA,dat_HWDATA;
wire 			HWRITE,ins_HWRITE,dat_HWRITE;
wire [1:0] 		HTRANS,ins_HTRANS,dat_HTRANS;
wire [2:0] 		HBURST,ins_HBURST,dat_HBURST;
wire 			HMASTLOCK,ins_HMASTLOCK,dat_HMASTLOCK;
wire [3:0] 		HPROT,ins_HPROT,dat_HPROT;
wire [2:0] 		HSIZE,ins_HSIZE,dat_HSIZE;
//Transfer Response & Read Data Signals
wire [31:0] 	HRDATA,ins_HRDATA,dat_HRDATA;
wire 			HRESP,ins_HRESP,dat_HRESP;
wire 			HREADY,ins_HREADY,dat_HREADY;

//SELECT SIGNALS
wire [3:0] 		MUX_SEL;

wire [31:0]		HADDR_MEM;
wire [31:0]		HADDR_NI;
wire [31:0]		HADDR_DUMP;
wire [31:0]		HADDR_AES;
wire [31:0]		HADDR_UART;
wire [31:0]		HADDR_TIMER;
//wire [31:0]		HADDR_MONITOR;

wire 				HSEL_MEM;
wire 				HSEL_NI;
wire 				HSEL_DUMP;
wire 				HSEL_AES;
wire 				HSEL_UART;
wire 				HSEL_TIMER;
//wire 				HSEL_MONITOR;

//SLAVE READ DATA
wire [31:0] 	HRDATA_MEM;
wire [31:0] 	HRDATA_NI;
wire [31:0] 	HRDATA_DUMP;
wire [31:0] 	HRDATA_AES;
wire [31:0] 	HRDATA_UART;
wire [31:0] 	HRDATA_TIMER;
//wire [31:0] 	HRDATA_MONITOR;

//SLAVE HREADYOUT
wire 				HREADYOUT_MEM;
wire 				HREADYOUT_NI;
wire 				HREADYOUT_DUMP;
wire 				HREADYOUT_AES;
wire 				HREADYOUT_UART;
wire 				HREADYOUT_TIMER;
//wire 				HREADYOUT_MONITOR;

//CM0-DS Sideband signals
//wire 				LOCKUP;
//wire 				TXEV;
//wire 				SLEEPING;
wire [31:0]			IRQ;
wire				NI_TX_IRQ, NI_RX_IRQ, TIMER_IRQ, UART_IRQ;
//SYSTEM GENERATES NO ERROR RESPONSE
assign 			HRESP = 1'b0;

//CM0-DS INTERRUPT SIGNALS  
assign 			IRQ = {30'd0,UART_IRQ,TIMER_IRQ}; // CL: Changed NI_TX_IRQ and NI_RX_IRQ because Z

//assign 			LED[7] = LOCKUP;
wire    sys_reset;
wire	sys_reset_N;
wire    sys_clock;
wire    sys_clock10;
wire    mon_clock;

assign          BT_CTS = 0;   //UART doesn't drive CTS pin
assign          BT_RST = 1;   //UART doesn't drive RST pin

assign	sys_reset_N = ~reset;

// Debug
wire unmapped_addr_requested;
wire dmem_access_req_debug;
assign unmapped_addr_requested = dmem_access_req_debug && HSEL_NOMAP;


//clk_wiz_0
//clk_wiz_0
//    (
//        .clk_in1(clock),
//        .reset(reset),
//        .locked(sys_reset_N),
//        
//        .clk_100(mon_clock),
//        .clk_10(sys_clock10)
//    );
/*    
reg     [6:0]     clk_div;    
always @(posedge sys_clock10, negedge sys_reset_N)
begin: clk_division
    if (~sys_reset_N)
        clk_div <= 7'd0;
    else
        if ( clk_div == 7'd79 ) 
            clk_div <= 7'd0;
        else
            clk_div <= clk_div + 1;
end

assign sys_clock = (clk_div < 7'd40);
*/
assign sys_clock = clock;


(* dont_touch = "true" *) riscv_top_ahb3lite 
#(
	.BOOT_ADDR(BOOT_ADDR + 8'h80)
)
RISC_V
(
				  //AHB interfaces
				  .HRESETn(sys_reset_N),
				  .HCLK(sys_clock),
				  
				  .ins_HADDR(ins_HADDR),
				  .ins_HWDATA(ins_HWDATA),
				  .ins_HRDATA(ins_HRDATA),
				  .ins_HWRITE(ins_HWRITE),
				  .ins_HSIZE(ins_HSIZE),
				  .ins_HBURST(ins_HBURST),
				  .ins_HPROT(ins_HPROT),
				  .ins_HTRANS(ins_HTRANS),
				  .ins_HMASTLOCK(ins_HMASTLOCK),
				  .ins_HREADY(ins_HREADY),	
				  .ins_HRESP(ins_HRESP),
				  
				  .dat_HADDR(dat_HADDR),
				  .dat_HWDATA(dat_HWDATA),
				  .dat_HRDATA(dat_HRDATA),
				  .dat_HWRITE(dat_HWRITE),
				  .dat_HSIZE(dat_HSIZE),
				  .dat_HBURST(dat_HBURST),
				  .dat_HPROT(dat_HPROT),
				  .dat_HTRANS(dat_HTRANS),
				  .dat_HMASTLOCK(dat_HMASTLOCK),
				  .dat_HREADY(dat_HREADY),
				  .dat_HRESP(dat_HRESP),
				  //Interrupts
				  .irqs(IRQ),
				  
				  //Debug
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
				  //CPU CONTROL
				  .fetch_enable_i(fetch_enable),
				  .core_busy_o(),
				  
				  .dmem_access_req_debug_o ( dmem_access_req_debug )
);

//Address Decoder 

(* dont_touch = "true" *) AHBDCD uAHBDCD (
	.HADDR(dat_HADDR),
	
	.HSEL_S0(HSEL_MEM),
	.HSEL_S1(),  // TODO: Not connected, SOC_PERIPHERALS_ADDR in core-v-freertos
	.HSEL_S2(HSEL_DUMP),
	.HSEL_S3(HSEL_AES),
	.HSEL_S4(HSEL_UART),
	.HSEL_S5(),
	.HSEL_S6(),
	.HSEL_S7(HSEL_TIMER),
	.HSEL_S8(),
	.HSEL_S9(),
	.HSEL_NOMAP(HSEL_NOMAP),
	 
	.MUX_SEL(MUX_SEL)
);

//Slave to Master Mulitplexor

(* dont_touch = "true" *) AHBMUX uAHBMUX (
	.HCLK(sys_clock),
	.HRESETn(sys_reset_N),
	.MUX_SEL(MUX_SEL),
	 
	.HRDATA_S0(HRDATA_MEM),
	.HRDATA_S1(),
	.HRDATA_S2(HRDATA_DUMP),
	.HRDATA_S3(HRDATA_AES),
	.HRDATA_S4(HRDATA_UART),
	.HRDATA_S5(),
	.HRDATA_S6(),
	.HRDATA_S7(HRDATA_TIMER),
	.HRDATA_S8(),
	.HRDATA_S9(),
	.HRDATA_NOMAP(32'hDEADBEEF),
	 
	.HREADYOUT_S0(HREADYOUT_MEM),
	.HREADYOUT_S1(1'b1),
	.HREADYOUT_S2(HREADYOUT_DUMP),
	.HREADYOUT_S3(HREADYOUT_AES),
	.HREADYOUT_S4(HREADYOUT_UART),
	.HREADYOUT_S5(1'b1),
	.HREADYOUT_S6(1'b1),
	.HREADYOUT_S7(HREADYOUT_TIMER),
	.HREADYOUT_S8(1'b1),
	.HREADYOUT_S9(1'b1),
	.HREADYOUT_NOMAP(1'b1),
    
	.HRDATA(dat_HRDATA),
	.HREADY(dat_HREADY)
);

///////////////////////////////////////////
// AHBLite Peripherals
///////////////////////////////////////////

//AHBLite Instruction Memory 
assign HADDR_INST = (ins_HADDR-BOOT_ADDR);

 AHB_CACHE #(.MEM_ADDR_BITS(12),.INSTRUCTION(1)) uAHB2MEM (
	//AHBLITE Signals
	.HSEL(1'b1),
	.HCLK(sys_clock), 
	.HRESETn(sys_reset_N), 
	.HREADY(ins_HREADY),     
	.HADDR(HADDR_INST[31:0]),
	.HTRANS(ins_HTRANS), 
	.HWRITE(ins_HWRITE),
	.HSIZE(ins_HSIZE),
	.HWDATA(ins_HWDATA), 
	
	.HRDATA(ins_HRDATA), 
	.HREADYOUT(ins_HREADY),
	
    .interrupt(I_interrupt)
	//.debug(I_debug)
);
//AHB2MEM_I uAHB2MEM (
//	//AHBLITE Signals
//	.HSEL(1'b1),
//	.HCLK(sys_clock), 
//	.HRESETn(sys_reset_N), 
//	.HREADY(ins_HREADY),     
//	.HADDR((ins_HADDR-BOOT_ADDR)),
//	.HTRANS(ins_HTRANS), 
//	.HWRITE(ins_HWRITE),
//	.HSIZE(ins_HSIZE),
//	.HWDATA(ins_HWDATA), 
	
//	.HRDATA(ins_HRDATA), 
//	.HREADYOUT(ins_HREADY)	
//);



//AHBLite Data Memory
assign HADDR_MEM = {16'd0,dat_HADDR[15:0]};  // addr - 1c01_0000
AHB_CACHE #(.MEM_ADDR_BITS(12),.INSTRUCTION(0)) uAHB2DMEM (
	//AHBLITE Signals
	.HSEL(HSEL_MEM),
	.HCLK(sys_clock), 
	.HRESETn(sys_reset_N), 
	.HREADY(dat_HREADY),     
	.HADDR(HADDR_MEM),
	.HTRANS(dat_HTRANS), 
	.HWRITE(dat_HWRITE),
	.HSIZE(dat_HSIZE),
	.HWDATA(dat_HWDATA), 
	
	.HRDATA(HRDATA_MEM), 
	.HREADYOUT(HREADYOUT_MEM),
	
	.interrupt(D_interrupt)
	//.debug(D_debug)
);

//AHBLite Network Interface (MULTICORE Interface)
/*
assign HADDR_NI = {16'd0,dat_HADDR[15:0]};
(* dont_touch = "true" *) AHB2NI #(
	.FIFO_SIZE(10'd32),
	.MY_ADDRESS(MY_ADDRESS),
	.CACHE_ADDRESS(10'd0),
	.XLEN(XLEN),
	.PHYS_ADDR_SIZE(XLEN),
	.FLIT_SIZE(FLIT_SIZE)
)
AHB2NI  (
	.resetN(sys_reset_N),
	.clock(sys_clock),

	.HSEL(HSEL_NI),

	.HADDR(HADDR_NI),
	.HWDATA(dat_HWDATA),
	.HWRITE(dat_HWRITE),
	.HSIZE(dat_HSIZE),
	.HBURST(dat_HBURST),
	.HPROT(dat_HPROT),
	.HTRANS(dat_HTRANS),
	//.HMASTLOCK(dat_HMASTLOCK),

	.HRDATA(HRDATA_NI),
	.HREADY(HREADYOUT_NI),
	//.HRESP(),

	//Interrupts
	.interrupt_irq_recv(NI_RX_IRQ),
	.interrupt_irq_send(NI_TX_IRQ),

	.packet_input(noc_pkt),
	.packet_input_ready(noc_pkt_ready),
	.packet_input_accepted(noc_pkt_accepted),
	.packet_output(ni_pkt),
	.packet_output_ready(ni_pkt_ready),
	.packet_output_accepted(ni_pkt_accepted) );
*/

//AHBLite Dump Peripheral (Simple Debug purposes)
assign HADDR_DUMP = {16'd0,dat_HADDR[15:0]};	
AHB2DUMP uAHB2DUMP (
	//AHBLITE Signals
	.HSEL(HSEL_DUMP),
	.HCLK(sys_clock), 
	.HRESETn(sys_reset_N), 
	.HREADY(dat_HREADY),     
	.HADDR(HADDR_DUMP),
	.HTRANS(dat_HTRANS), 
	.HWRITE(dat_HWRITE),
	.HSIZE(dat_HSIZE),
	.HWDATA(dat_HWDATA), 
	
	.HRDATA(HRDATA_DUMP), 
	.HREADYOUT(HREADYOUT_DUMP),
	
	.LEDS(LEDS)
);

// AHBLite UART Pheripheral - to PC TERM
assign HADDR_UART = {16'd0,dat_HADDR[15:0]};
AHB2UART uAHBUART(
	.HSEL(HSEL_UART),
	.HCLK(sys_clock),
	.HRESETn(sys_reset_N),
	.HREADY(dat_HREADY),
	.HADDR(HADDR_UART),
	.HTRANS(dat_HTRANS),
	.HWRITE(dat_HWRITE),
	.HWDATA(dat_HWDATA),
	
	.HRDATA(HRDATA_UART),
	.HREADYOUT(HREADYOUT_UART),
	
	.RsRx(BT_RX),
	.RsTx(BT_TX),
	.uart_irq(UART_IRQ)
);

// AHBLite timer
assign HADDR_TIMER = {16'd0,dat_HADDR[15:0]};
    AHB2TIMER uAHBTIMER(
    .HSEL(HSEL_TIMER),
	.HCLK(sys_clock),
    .HRESETn(sys_reset_N),
    .HREADY(dat_HREADY),
	.HADDR(HADDR_TIMER),
    .HTRANS(dat_HTRANS),
    .HWRITE(dat_HWRITE),
	.HWDATA(dat_HWDATA),
        
    .HREADYOUT(HREADYOUT_TIMER),
    .HRDATA(HRDATA_TIMER),
    
    .timer_irq(TIMER_IRQ)
  );


//AHBLite HW Monitor
//assign HADDR_MONITOR = {16'd0,dat_HADDR[15:0]};
/*
AHB2MONITOR uAHB2MONITOR (
	//AHBLITE Signals
	.HSEL(HSEL_MONITOR),
	.HCLK(sys_clock), 
	.HRESETn(sys_reset_N), 
	.HREADY(dat_HREADY),     
	.HADDR(HADDR_MONITOR),
	.HTRANS(dat_HTRANS), 
	.HWRITE(dat_HWRITE),
	.HSIZE(dat_HSIZE),
	.HWDATA(dat_HWDATA), 
	
	.HRDATA(HRDATA_MONITOR), 
	.HREADYOUT(HREADYOUT_MONITOR),
	
	.MONITOR_CLOCK(mon_clock)
);	
*/

endmodule
