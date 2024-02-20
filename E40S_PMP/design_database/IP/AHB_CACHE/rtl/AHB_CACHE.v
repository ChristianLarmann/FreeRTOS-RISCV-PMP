//////////////////////////////////
/////
///// CACHE SIZE = (MEM_DATA_BITS/4)*CACHE_LINES = 
/////   ex: (128/4)*64  = 2kB
/////   ex: (128/4)*128 = 4kB
/////
///// MAIN MEMORY SIZE - (MEM_DATA_BITS/4) * (2**MEM_ADDR_BITS)
/////   ex: (128/4) * (2**11) = 32kB
/////
//////////////////////////////////
module AHB_CACHE
	#(
		parameter CACHE_LINES		=   128,		
		parameter CPU_ADDR_BITS		=	32,
		parameter CPU_DATA_BITS		=	32,
		parameter MEM_ADDR_BITS		=	15,	
		parameter MEM_DATA_BITS		=	128,
		parameter INSTRUCTION		=	1,
		parameter MAIN_MEM_DELAY	=	100
	)
	(
		//AHBLITE INTERFACE
		//Slave Select Signals
			input wire HSEL,
		//Global Signal
			input wire HCLK,
			input wire HRESETn,
		//Address, Control & Write Data
			input wire HREADY,
			input wire [31:0] HADDR,
			input wire [1:0] HTRANS,
			input wire HWRITE,
			input wire [2:0] HSIZE,
			
			input wire [31:0] HWDATA,
		// Transfer Response & Read Data
			output wire HREADYOUT,
			output wire [31:0] HRDATA,
			
        //Interrupt output of hash 
            output wire interrupt,
			
			
        // Debug output
            output wire [9:0]   debug
	);
	
	assign debug[9]    =       cache_rdy;
	assign debug[8]    =       cache_req;
	assign debug[7:0]  =       UA_debug;
	
wire    [7:0]                   UA_debug;
	
	
// Registers to store Adress Phase Signals
reg 							APhase_HSEL;
reg 							APhase_HWRITE;
reg 	[1:0] 					APhase_HTRANS;
reg 	[31:0] 					APhase_HADDR;
reg 	[2:0] 					APhase_HSIZE;
reg	    [31:0]					APhase_HWDATA;
reg                             APhase_HREADYOUT;

// Help signals for timing of data
reg                             DataPhase;

// WIRES TO CACHE
wire                            cache_req;
wire                            cache_rdy;
wire    [31:0]                  cache_din;

// WIRES BETWEEN CACHE AND UA MODULE
wire	[MEM_DATA_BITS-1:0]		cache_ua_rdata;
wire	[MEM_DATA_BITS-1:0]		cache_ua_wdata;
wire	[MEM_ADDR_BITS-1:0]		cache_ua_addr;
wire							cache_ua_req;
wire							cache_ua_write;
wire							cache_ua_rdy;

// WIRES TO MEMORY MODULE
wire	[MEM_DATA_BITS-1:0]		mem_rdata;
wire	[MEM_DATA_BITS-1:0]		mem_wdata;
wire	[MEM_ADDR_BITS-1:0]		mem_addr;
wire							mem_req;
wire							mem_write;
wire							mem_rdy;


reg		[31:0]					delay;



reg cache_req_reg;


//Cache and memory accesss counters to measure cache missrate
reg     [31:0]                  cache_ctr;
reg     [31:0]                  mem_ctr;

always @(posedge HCLK,  negedge HRESETn)
begin
    if(!HRESETn) begin
        cache_ctr   <=  0;
        mem_ctr     <=  0;
    end
    else begin
        if(cache_rdy) begin
            cache_ctr = cache_ctr + 1;
        end
        if(mem_rdy & !mem_write) begin
            mem_ctr = mem_ctr + 1;
        end 
    end	
end

// Assign signals 
// Set to 1 on start request, set to zero once ready
assign cache_req = (HSEL & (HTRANS ==2) ? 1 : (cache_rdy ? 0 : cache_req_reg)) ;

always @(posedge HCLK, negedge HRESETn)
begin
    if(!HRESETn)
        cache_req_reg <= 0;
    else
        cache_req_reg <= cache_req;
end

// Select correct data to cache to deal with non-standard AHB behaviour
assign cache_din = (DataPhase) ? HWDATA : APhase_HWDATA;
assign HREADYOUT = APhase_HREADYOUT;

// Main process to sample signals
always @(posedge HCLK, negedge HRESETn)
begin
    // RESET
    if(!HRESETn)
    begin
        APhase_HSEL         <=  1'b0;
        APhase_HWRITE       <=  1'b0;
        APhase_HTRANS       <=  2'b00;
        APhase_HADDR        <=  32'h0;
		APhase_HSIZE 	    <=  3'b000;
        APhase_HWDATA       <=  32'h0;
        DataPhase           <=  1'b0;
        APhase_HREADYOUT    <=  1'b1;
    end
    // IF READY, SAMPLE INPUT
    else 
    begin
        if (HREADY)
        begin
            APhase_HSEL 	<= HSEL;
            APhase_HWRITE 	<= HWRITE;
            APhase_HTRANS 	<= HTRANS;
            APhase_HADDR 	<= HADDR;
            APhase_HSIZE 	<= HSIZE;
        end 
           
        // Cache data input logic
        if(HSEL & (HTRANS == 2))
        begin
            DataPhase       <=  1'b1;
        end
        else
        begin
            DataPhase       <=  1'b0;
        end
            
        // Read correct data during AHB data phase
        if (DataPhase)
        begin
            APhase_HWDATA   <=  HWDATA;
        end
            
        // Process to handle READY output
        if (cache_rdy)
        begin
            APhase_HREADYOUT <= 1'b1;
        end
        else if (HSEL & (HTRANS == 2))
        begin
            APhase_HREADYOUT <= 1'b0; 
        end
    end
end

// Decode the bytes lanes depending on HSIZE & HADDR[1:0]

  wire tx_byte = ~APhase_HSIZE[1] & ~APhase_HSIZE[0];
  wire tx_half = ~APhase_HSIZE[1] &  APhase_HSIZE[0];
  wire tx_word =  APhase_HSIZE[1];
  
  wire byte_at_00 = tx_byte & ~APhase_HADDR[1] & ~APhase_HADDR[0];
  wire byte_at_01 = tx_byte & ~APhase_HADDR[1] &  APhase_HADDR[0];
  wire byte_at_10 = tx_byte &  APhase_HADDR[1] & ~APhase_HADDR[0];
  wire byte_at_11 = tx_byte &  APhase_HADDR[1] &  APhase_HADDR[0];
  
  wire half_at_00 = tx_half & ~APhase_HADDR[1];
  wire half_at_10 = tx_half &  APhase_HADDR[1];
  
  wire word_at_00 = tx_word;
  
  wire byte0 = word_at_00 | half_at_00 | byte_at_00;
  wire byte1 = word_at_00 | half_at_00 | byte_at_01;
  wire byte2 = word_at_00 | half_at_10 | byte_at_10;
  wire byte3 = word_at_00 | half_at_10 | byte_at_11;

// CACHE INSTANTIATION
cache_16_way
        #(
            .WAYS(16),		//Do not Change. If you do, it is required internal modifications in Cache	
			.CACHE_SIZE(CACHE_LINES),	// TOTAL NUMBER OF LINES IN THE CACHE					
			.LINE_WIDTH(MEM_DATA_BITS/8),	//IN BYTES (MAIN MEM)
			.WORD_WIDTH(CPU_DATA_BITS/8),	//IN BYTES (CPU)												
			.ADDRESS_SIZE(CPU_ADDR_BITS),
			.MEM_ADDR_BITS(MEM_ADDR_BITS)			
)
cache
	(
		.clock		(HCLK),
		.reset		(!HRESETn),
		
		// "CPU" side
		.cpu_req 		(cache_req & ~(HTRANS == 2)),
		.cpu_rw_enable	(APhase_HWRITE),
		.cpu_address  	(APhase_HADDR[31:0]),
		.cpu_din 		(cache_din),		
		.cpu_ready   	(cache_rdy),
		.cpu_dout 		(HRDATA),
		.cpu_byte_en	({byte3,byte2,byte1,byte0}),

		// Memory side
//		.mem_req		(mem_req),
//		.mem_rw_enable 	(mem_write),
//		.mem_address	(mem_addr),
//		.mem_dout 		(mem_wdata),		
//		.mem_ready		(mem_rdy),		
//		.mem_din 		(mem_rdata)
		
		// To UA
        .mem_req		(cache_ua_req),
		.mem_rw_enable 	(cache_ua_write),
		.mem_address	(cache_ua_addr),
		.mem_dout 		(cache_ua_wdata),		
		.mem_ready		(cache_ua_rdy),		
		.mem_din 		(cache_ua_rdata)
    );
    

    
    
// UA INSTANTIATION

//(* dont_touch = "true" *) 
//UA_encrypt
//    #(
    
//    )
//UA
//    (
//        .clock              (HCLK),
//        .reset              (!HRESETn),
        
//        .cache_rdata        (cache_ua_rdata),
//        .cache_wdata        (cache_ua_wdata),
//        .cache_address      (cache_ua_addr),
//        .cache_req          (cache_ua_req),
//        .cache_rw_enable    (cache_ua_write),
//        .cache_ready        (cache_ua_rdy),
        
//        .mem_rdata          (mem_rdata),
//        .mem_wdata          (mem_wdata),
//        .mem_address        (mem_addr),
//        .mem_req            (mem_req),
//        .mem_rw_enable      (mem_write),
//        .mem_ready          (mem_rdy),
        
//        //.interrupt          (interrupt),
        
//        .debug              (UA_debug)
//    );
    
/*
ram1 ram (
    .addra_0(mem_addr),
    .clka_0(HCLK),
    .dina_0(mem_wdata),
    .douta_0(mem_rdata),
    .ena_0(mem_req),
    .wea_0(mem_write)
);
*/
bram_memory
		#(
			.MEM_DATA_BITS(MEM_DATA_BITS),
			.MEM_ADDR_BITS(MEM_ADDR_BITS),
			.INSTRUCTION(INSTRUCTION)
		)
ram
		(
			.clk(HCLK),
			.mem_req(cache_ua_req),
			.mem_write(cache_ua_write),
			.mem_addr(cache_ua_addr),
			.mem_wdata(cache_ua_wdata),
			.mem_rdata(cache_ua_rdata),
			.data_valid(cache_ua_rdy)
			
//			.cache_rdata        (cache_ua_rdata),
//        .cache_wdata        (cache_ua_wdata),
//        .cache_address      (cache_ua_addr),
//        .cache_req          (cache_ua_req),
//        .cache_rw_enable    (cache_ua_write),
//        .cache_ready        (cache_ua_rdy),
		);
//*/

// Reading from memory 
  
  always @(posedge HCLK, negedge HRESETn)
	begin
		if (~HRESETn)
			delay <= 0;
		else
			if (mem_req & (delay < MAIN_MEM_DELAY))
				delay <= delay + 1;
			else
				delay <= 0;
	end
					
    assign mem_rdy = (delay == MAIN_MEM_DELAY);
    
endmodule

