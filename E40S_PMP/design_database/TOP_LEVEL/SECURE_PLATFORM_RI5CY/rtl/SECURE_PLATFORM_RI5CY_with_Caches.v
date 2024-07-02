/////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
//
// SoC module: RISC-V Core (CV32E40S) + BRAM + Caches + Memory Encrytion 
//             Module + AHB Peripherals     
//
// Modified by:      Christian Larmann
// Date:    August/2024
//
// Original Author:  Cezar Reinbrecht
// Date:    Nov/2017
//
/////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
module SECURE_PLATFORM_RI5CY
		#(
				parameter integer ADDRESS_SIZE 			    = 32
		)
		(
				input									sys_clock,
				input									reset,
				
				//DEBUG LEDS
				output		[3:0]						output_LEDS,
				
				//EXTERNAL INTERFACE
//				input									BT_RX,
//				output									BT_TX,
//				output                                  BT_RTS,
//				output                                  BT_CTS,
				
				//UA interrupts
				output                                  I_interrupt,
				output                                  D_interrupt
		);


localparam BOOT_ADDR        = 32'h1c005000;
localparam INST_BASE_ADDR   = 32'h1c000000;
localparam SIZE_MEMORY      =      'h60000;


wire [7:0] LEDS;
assign output_LEDS = LEDS[3:0];


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
wire 			HRESP,dat_HRESP;
wire 			HREADY,ins_HREADY,dat_HREADY;
wire            ins_encryption_enabled_cpu, dat_encryption_enabled_cpu;
wire            ins_write_back_encryption_enabled, dat_write_back_encryption_enabled;
// Actual control signals for encryption unit
wire            ins_encryption_enabled, dat_encryption_enabled;


//SELECT SIGNALS
wire [3:0] 		MUX_SEL;

wire [31:0]		HADDR_MEM;
wire [31:0]		HADDR_NI;
wire [31:0]		HADDR_DUMP;
wire [31:0]		HADDR_AES;
wire [31:0]		HADDR_UART;
wire [31:0]		HADDR_TIMER;
wire [31:0]		HADDR_KEYS;

wire 			HSEL_MEM;
wire 			HSEL_NI;
wire 			HSEL_DUMP;
wire 			HSEL_AES;
wire 			HSEL_UART;
wire 			HSEL_TIMER;
wire            HSEL_KEYS;


//SLAVE READ DATA
wire [31:0] 	HRDATA_MEM;
wire [31:0] 	HRDATA_NI;
wire [31:0] 	HRDATA_DUMP;
wire [31:0] 	HRDATA_AES;
wire [31:0] 	HRDATA_UART;
wire [31:0] 	HRDATA_TIMER;
wire [31:0] 	HRDATA_KEYS;


//SLAVE HREADYOUT
wire 			HREADYOUT_MEM;
wire 			HREADYOUT_NI;
wire 			HREADYOUT_DUMP;
wire 			HREADYOUT_AES;
wire            HREADYOUT_KEYS;
wire 			HREADYOUT_UART;
wire 			HREADYOUT_TIMER;
wire [31:0]		IRQ;
wire			NI_TX_IRQ, NI_RX_IRQ, TIMER_IRQ, UART_IRQ;

//SYSTEM GENERATES NO ERROR RESPONSE
assign 			HRESP = 1'b0;

//CM0-DS INTERRUPT SIGNALS  
assign 			IRQ = {25'd0, TIMER_IRQ, 5'd0, UART_IRQ, 1'd0}; // CL: Changed NI_TX_IRQ and NI_RX_IRQ because Z

wire    sys_reset;
wire	sys_reset_N;
wire    sys_clock;
wire    sys_clock10;
wire    mon_clock;

assign          BT_CTS = 0;   //UART doesn't drive CTS pin
assign          BT_RST = 1;   //UART doesn't drive RST pin

assign	sys_reset_N = ~reset;


// Debug: unmapped_addr_requested is high when the requested address does
//        not match any address mapped peripheral
wire unmapped_addr_requested;
wire dmem_access_req_debug;
assign unmapped_addr_requested = dmem_access_req_debug && HSEL_NOMAP;


(* dont_touch = "true" *) riscv_top_ahb3lite 
#(
	.BOOT_ADDR(BOOT_ADDR),
	.PMP_ENCRYPTION_ENABLED(1)
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
				  .ins_HENCRYPT(ins_encryption_enabled_cpu),
				  
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
				  .dat_HENCRYPT(dat_encryption_enabled_cpu),
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
				  .fetch_enable_i(1'b1),
				  .core_busy_o(),
				  
				  .dmem_access_req_debug_o ( dmem_access_req_debug )
);

//Address Decoder 

(* dont_touch = "true" *) AHBDCD uAHBDCD (
	.HADDR(dat_HADDR),
	.RESET(sys_reset_N),
	
	.HSEL_S0(HSEL_MEM),
	.HSEL_S1(),  // TODO: Not connected, SOC_PERIPHERALS_ADDR in core-v-freertos
	.HSEL_S2(HSEL_DUMP),
	.HSEL_S3(HSEL_AES),
	.HSEL_S4(HSEL_UART),
	.HSEL_S5(HSEL_KEYS),
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
	.HRDATA_S5(HRDATA_KEYS),
	.HRDATA_S7(HRDATA_TIMER),
	.HRDATA_S8(),
	.HRDATA_S9(),
	.HRDATA_NOMAP(32'hDEADBEEF),
	 
	.HREADYOUT_S0(HREADYOUT_MEM),
	.HREADYOUT_S1(1'b1),
	.HREADYOUT_S2(HREADYOUT_DUMP),
	.HREADYOUT_S3(HREADYOUT_AES),
	.HREADYOUT_S4(HREADYOUT_UART),
	.HREADYOUT_S5(HREADYOUT_KEYS),
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
localparam NUMBER_BRAM_ENTRIES = SIZE_MEMORY / 'h10;  // 16 byte per bram line
localparam BRAM_ADDR_BITS = $clog2(NUMBER_BRAM_ENTRIES + 1);


// SIGNALS BETWEEN BRAM AND BRAM-FSM
wire	[128-1:0]              cache_mem_rdata;
reg	[128-1:0]		           cache_mem_wdata;
reg	[BRAM_ADDR_BITS-1:0]       cache_mem_addr;
reg						       cache_mem_write;
wire                           cache_mem_rdy;   

// SIGNALS BETWEEN CACHES AND BRAM-FSM
wire	[31:0]		           inst_cache_mem_rdata;
wire	[128-1:0]		       inst_cache_mem_wdata;
wire	[BRAM_ADDR_BITS-1:0]   inst_cache_mem_addr;
wire                           inst_cache_mem_req;
wire						   inst_cache_mem_write;
reg                            inst_cache_mem_rdy;

wire	[31:0]		           data_cache_mem_rdata;
wire	[128-1:0]		       data_cache_mem_wdata;
wire	[BRAM_ADDR_BITS-1:0]   data_cache_mem_addr;
wire                           data_cache_mem_req;
wire						   data_cache_mem_write;
reg						       data_ua_bram_valid;


// WIRES BETWEEN CACHE AND UA MODULE
// BRAM_ADDR_BITS was MEM_ADDR_BITS
wire	[128-1:0]	            cache_ua_inst_rdata;
wire	[128-1:0]	            cache_ua_inst_wdata;
wire	[BRAM_ADDR_BITS-1:0]	            cache_ua_inst_addr;
wire							cache_ua_inst_req;
wire							cache_ua_inst_write;
wire							cache_ua_inst_rdy;

wire	[128-1:0]           	cache_ua_data_rdata;
wire	[128-1:0]            	cache_ua_data_wdata;
wire	[BRAM_ADDR_BITS-1:0]	            cache_ua_data_addr;
wire							cache_ua_data_req;
wire							cache_ua_data_write;
wire							cache_ua_data_valid;


//AHBLite Instruction Memory 
assign HADDR_INST = (ins_HADDR-INST_BASE_ADDR);

AHB_CACHE #(.MEM_ADDR_BITS(BRAM_ADDR_BITS)) uAHB2MEM (
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
	
	.BRAM_MEM_REQ(cache_ua_inst_req),
	.BRAM_MEM_WRITE(cache_ua_inst_write),
	.BRAM_MEM_ADDR(cache_ua_inst_addr),
	.BRAM_WDATA(cache_ua_inst_wdata),
	.BRAM_RDATA(cache_ua_inst_rdata),
	.BRAM_MEM_VALID( cache_ua_inst_rdy ),
	
    .interrupt(I_interrupt),
	//.debug(I_debug)
	
	.enc_bit_for_cache_line_i(ins_encryption_enabled_cpu),
	.write_back_encryption_enabled_o()
);


//AHBLite Data Memory
assign HADDR_MEM = (dat_HADDR-INST_BASE_ADDR);  // 4 because 4 bits are cut off when accessing the bram
AHB_CACHE #(.MEM_ADDR_BITS(BRAM_ADDR_BITS)) uAHB2DMEM (
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
	
	.BRAM_MEM_REQ(cache_ua_data_req),
	.BRAM_MEM_WRITE(cache_ua_data_write),
	.BRAM_MEM_ADDR(cache_ua_data_addr),
	.BRAM_WDATA(cache_ua_data_wdata),
	.BRAM_RDATA(cache_ua_data_rdata),
	.BRAM_MEM_VALID(cache_ua_data_valid),
	
	.interrupt(D_interrupt),
	//.debug(D_debug)
	
	.enc_bit_for_cache_line_i(dat_encryption_enabled_cpu),
	.write_back_encryption_enabled_o(dat_write_back_encryption_enabled)
);


wire [128-1:0]	            ua_mem_rdata;
reg	[128-1:0]	            ua_mem_wdata;
reg	[BRAM_ADDR_BITS-1:0]	ua_mem_addr;
reg							ua_mem_req;
reg							ua_mem_write;
wire                        ua_mem_valid;

BRAM_ARBITER bram_arbiter ( 

    .ua_mem_wdata(ua_mem_wdata),
	.ua_mem_req(ua_mem_req),
	.ua_mem_write(ua_mem_write),
	.ua_mem_addr(ua_mem_addr),
	.ua_mem_valid(ua_mem_valid),
	.data_ua_bram_valid(data_ua_bram_valid),
	.ua_mem_rdata_i(ua_mem_rdata_i),
	.ua_mem_rdata_o(ua_mem_rdata_o),



	// SIGNALS BETWEEN CACHES AND BRAM-FSM
	//input  wire	[31:0]		               inst_cache_mem_rdata,
	.inst_cache_mem_wdata(inst_cache_mem_wdata),
	.inst_cache_mem_addr(inst_cache_mem_addr),
	.inst_cache_mem_req(inst_cache_mem_req),
	.inst_cache_mem_write(inst_cache_mem_write),
	.inst_cache_mem_rdy(inst_cache_mem_rdy),

	//input  wire	[31:0]		               data_cache_mem_rdata,
	.data_cache_mem_wdata(data_cache_mem_wdata),
	.data_cache_mem_addr(data_cache_mem_addr),
	.data_cache_mem_req(data_cache_mem_req),
	.data_cache_mem_write(data_cache_mem_write),
	.data_cache_mem_rdy(data_cache_mem_rdy)

);


assign ins_encryption_enabled = cache_ua_inst_write ? ins_write_back_encryption_enabled : ins_encryption_enabled_cpu; // this should be alway sins_encryption_enabled_cpu
assign dat_encryption_enabled = cache_ua_data_write ? dat_write_back_encryption_enabled : dat_encryption_enabled_cpu;

// Encryption and MAC unit for instructions
UA_encrypt
    #(.ADDRESS_SIZE(BRAM_ADDR_BITS))
UA_inst
    (
        .clock              (sys_clock),
        .reset              (!sys_reset_N),
        
        .decryption_enabled_cpu         (ins_encryption_enabled_cpu),
        .write_back_encryption_enabled  (ins_write_back_encryption_enabled),
        
        .cache_rdata        (cache_ua_inst_rdata),
        .cache_wdata        (cache_ua_inst_wdata),
        .cache_address      (cache_ua_inst_addr),
        .cache_req          (cache_ua_inst_req),
        .cache_rw_enable    (cache_ua_inst_write),
        .cache_ready        (cache_ua_inst_rdy),
        
        .mem_rdata          (ua_mem_rdata),
        .mem_wdata          (inst_cache_mem_wdata),
        .mem_address        (inst_cache_mem_addr),
        .mem_req            (inst_cache_mem_req),
        .mem_rw_enable      (inst_cache_mem_write),
        .mem_valid          (inst_cache_mem_rdy),
        
        //.interrupt          (interrupt),
        
        .debug              ()
    );
    
    
integer fd;
initial fd = $fopen("01_data_debug.txt", "w");
    
    
always @(posedge cache_ua_data_req)
begin
    if(cache_ua_data_write) begin
        $fwrite(fd, "UA write to %x, cache_ua_data_wdata: %x, enc: %x\n", cache_ua_data_addr, cache_ua_data_wdata, dat_encryption_enabled);
    end else
    begin
        $fwrite(fd, "UA read from %x, enc: %x...\n", cache_ua_data_addr, dat_encryption_enabled);
    end
end    

always @(posedge cache_ua_data_valid)
begin
    $fwrite(fd, "... cache_ua_data_rdata: %x \n", cache_ua_data_rdata);
end
        
    // Encryption and MAC unit for data
UA_encrypt
    #(.ADDRESS_SIZE(BRAM_ADDR_BITS))
UA_data
    (
        .clock              (sys_clock),
        .reset              (!sys_reset_N),
        
        .decryption_enabled_cpu         (dat_encryption_enabled_cpu),
        .write_back_encryption_enabled  (dat_write_back_encryption_enabled),
        
        .cache_rdata        (cache_ua_data_rdata),
        .cache_wdata        (cache_ua_data_wdata),
        .cache_address      (cache_ua_data_addr),
        .cache_req          (cache_ua_data_req),
        .cache_rw_enable    (cache_ua_data_write),
        .cache_ready        (cache_ua_data_valid),
        
        .mem_rdata          (ua_mem_rdata),
        .mem_wdata          (data_cache_mem_wdata),
        .mem_address        (data_cache_mem_addr),
        .mem_req            (data_cache_mem_req),
        .mem_rw_enable      (data_cache_mem_write),
        .mem_valid          (data_ua_bram_valid),
        
        //.interrupt          (interrupt),
        
        .debug              ()
    );


always @(posedge ua_mem_req)
begin
    if(ua_mem_write) begin
        $fwrite(fd, "   BRAM write to %x, cache_ua_data_wdata: %x\n", ua_mem_addr, ua_mem_wdata);
    end else
    begin
        $fwrite(fd, "   BRAM read from %x...\n", ua_mem_addr);
    end
end   

always @(posedge ua_mem_valid)
begin
    $fwrite(fd, "   ... ua_mem_rdata: %x, ua_mem_addr: %x \n", ua_mem_rdata, ua_mem_addr);
end
    

// BRAM connected to caches
bram_memory	#(.MEM_ADDR_BITS(BRAM_ADDR_BITS))
ram (
    .clk(sys_clock),
    .rst(sys_reset_N),
    
    .mem_req(ua_mem_req),
    .mem_write(ua_mem_write),
    .mem_addr(ua_mem_addr),
    .mem_wdata(ua_mem_wdata),
    .mem_rdata(ua_mem_rdata),
    
    .mem_ready(  ),// ???
    .mem_valid( ua_mem_valid ) 
);


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
	
	.RsRx(1'b0),
	.RsTx(),
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
  
// Secure key storage
assign HADDR_KEYS = {16'd0,dat_HADDR[15:0]};
AHBKEYS uAHBKEYS(
	.HCLK(sys_clock),
    .HRESETn(sys_reset_N),
    .HREADY(dat_HREADY),
	.HADDR(HADDR_KEYS),
	.HSEL(HSEL_KEYS),
	.HWRITE(dat_HWRITE),
        
    .HREADYOUT(HREADYOUT_KEYS),
    .HRDATA(HRDATA_KEYS)
);
  
endmodule
