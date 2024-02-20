module mem_ip 
				#(
					parameter	MAIN_ADDRESS	= 12,
					parameter	MAIN_MEM_DELAY	= 100,
					parameter	MAIN_DATA		= 128
				)
				(
					input clock,
					input reset,
					
					input	[31	:0]		address,
					input	[31	:0]		din,
					output	[31	:0]		dout,
					input				req,
					input				rw_enable,
					output				ready,
					
					output	[MAIN_ADDRESS-1:0]	mem_address,
					output	[MAIN_DATA-1:0]		mem_dout,
					output						mem_rw_enable,
					input	[MAIN_DATA-1:0]		mem_din
				);
				
	reg		[31:0]		cont;
	wire	[31:0]		mem_address_int;
	wire				mem_req;
	wire				mem_ready;
	
	assign	mem_address	= mem_address_int[MAIN_ADDRESS-1:0];
		
	cache_16_way	
		#(
			.WAYS(16),		//MAX - 16 WAYS	
			.CACHE_SIZE(1024),						
			.LINE_WIDTH(16),	//IN BYTES (MAIN MEM)
			.WORD_WIDTH(4),	//IN BYTES (CPU)												
			.ADDRESS_SIZE(32)
		)
	cache_16_way
		(
			.clock(clock),
			.reset(reset),
			
			.cpu_address(address),
			.cpu_din(din),
			.cpu_dout(dout),
			.cpu_req(req),
			.cpu_rw_enable(rw_enable),
			.cpu_ready(ready),
			
			.mem_din(mem_din),
			.mem_dout(mem_dout),
			.mem_address(mem_address_int),
			.mem_req(mem_req),
			.mem_rw_enable(mem_rw_enable),
			.mem_ready(mem_ready)						
		);
	
	always @(posedge clock, posedge reset)
	begin
		if (reset)
			cont <= 0;
		else
			if (mem_req & (cont < MAIN_MEM_DELAY))
				cont <= cont + 1;
			else
				cont <= 0;
	end
					
	assign mem_ready = (cont == MAIN_MEM_DELAY);
					
endmodule
