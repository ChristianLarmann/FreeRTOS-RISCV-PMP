module set
			#(
					parameter	TAG_ADDRESS		=	18,
					parameter	LINE_WIDTH		=	16, 	//IN BYTES
					parameter	WAYS			=	16		//MAX - 16 WAYS								
			)
			(
				input							clock,
				input							reset,
				
				input							req,
				input							wr_back,
				
				input							cache_cpu_wren,
				input	[TAG_ADDRESS-1	:0]		cache_cpu_tag,								
				output	[(LINE_WIDTH*8)-1	:0]	cache_cpu_dout,
				input	[(LINE_WIDTH*8)-1	:0]	cache_cpu_din,
				
				input							cache_mem_ready,							
				output	[(LINE_WIDTH*8)-1	:0]	cache_mem_dout,
				input	[(LINE_WIDTH*8)-1	:0]	cache_mem_din,
				
				output							hit,
				output							miss,
				output							dirty,
				output reg [TAG_ADDRESS-1:0]	write_back_tag
				
			);

localparam VALID_BIT  = 1;
localparam DIRTY_BIT  = 1;
localparam DATA_WIDTH = (LINE_WIDTH*8);
localparam MAX_ADDR   = (TAG_ADDRESS+VALID_BIT+DIRTY_BIT+DATA_WIDTH);

/////////////////////////////////////////////////////////////////////////////////////
// 1 SET - 16 LINES (WAYS)
// 1 LINE - TAG + VALID + DIRTY + BYTES (16)
/////////////////////////////////////////////////////////////////////////////////////

reg	[MAX_ADDR-1:0]			cache_set			[0:WAYS-1]; 

reg	[WAYS-1:0]				next_evict_line;
reg	[WAYS-1:0]				current_line;
wire[WAYS-1:0]				cache_set_addr;
reg	[WAYS-1:0]				hits;

reg	[(LINE_WIDTH*8)-1	:0]	cache_set_out;
wire[MAX_ADDR-1:0]			cache_set_in;
reg	[(LINE_WIDTH*8)-1:0]	write_back_buffer;

wire						hit_result;
wire                        cache_set_wren;

integer i;
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////

assign cache_mem_dout = write_back_buffer;
assign cache_cpu_dout = cache_set[cache_set_addr][DATA_WIDTH-1:0];

assign cache_set_addr = (cache_mem_ready & miss)	? next_evict_line : current_line; 
assign cache_set_in   = (cache_cpu_wren & hit) 		? {cache_cpu_tag,1'b1,1'b1,cache_cpu_din} : {cache_cpu_tag,1'b1,1'b0,cache_mem_din};
assign cache_set_wren = (cache_mem_ready & miss & (~wr_back)) | (cache_cpu_wren & hit);						
					
initial
begin
    for (i=0;i<WAYS;i=i+1)
        cache_set[i]	<= {TAG_ADDRESS+VALID_BIT+DIRTY_BIT+DATA_WIDTH{1'b0}};
end					
					
always @(posedge clock)
begin
	if (cache_set_wren)			
	begin
	   //cache_set_out <= cache_set_in[DATA_WIDTH-1:0];
	   cache_set[cache_set_addr] <= cache_set_in;
	end
//	else
//	begin		
//	   cache_set_out <= cache_set[cache_set_addr][DATA_WIDTH-1:0];
//	end
end

always @(posedge clock, posedge reset)
begin
	if (reset)
	begin
		write_back_buffer <= 0;
		write_back_tag   <= 0;
	end
	else
	begin
		//if ( cache_set[current_line][MAX_ADDR-(TAG_ADDRESS+VALID_BIT):DATA_WIDTH] == 1'b1 )
		//begin
		write_back_buffer	<= cache_set[next_evict_line][DATA_WIDTH-1:0];
		write_back_tag		<= cache_set[next_evict_line][MAX_ADDR-1:(MAX_ADDR-TAG_ADDRESS)];
		//end
	end
end

always @(posedge clock, posedge reset)
begin
	if (reset)
	begin	
		next_evict_line 	<= 0;
	end
	else
	begin			
		if ( cache_mem_ready & miss & (~dirty) )
			if (next_evict_line == WAYS-1)
				next_evict_line 	<= 0;
			else
				next_evict_line <= next_evict_line + 1;
	end
end

/////////////////////////////////////
/* UNCOMMENT TO IMPROVE TIMING
/////////////////////////////////////
always @(posedge clock, posedge reset)
begin	
		if (reset)
		begin
			for (i=0;i<WAYS;i=i+1)
				hits[i]  <= 1'b0;
		end
		else
			if (req)
				for (i=0;i<WAYS;i=i+1)
					hits[i] <= (cache_set[i][MAX_ADDR-1:(MAX_ADDR-TAG_ADDRESS)] == cache_cpu_tag) & 
									cache_set[i][(MAX_ADDR-TAG_ADDRESS-VALID_BIT)];		
end
*/
/////////////////////////////////////
// COMMENT TO IMPROVE TIMING
/////////////////////////////////////
always @*
begin 
	for (i=0;i<WAYS;i=i+1)
		hits[i] <= (cache_set[i][MAX_ADDR-1:(MAX_ADDR-TAG_ADDRESS)] == cache_cpu_tag) & cache_set[i][(MAX_ADDR-TAG_ADDRESS-VALID_BIT)];			
end
/////////////////////////////////////
always @*
begin	
	case (hits)
	16'b0000_0000_0000_0001: current_line = 0;
	16'b0000_0000_0000_0010: current_line = 1;
	16'b0000_0000_0000_0100: current_line = 2;
	16'b0000_0000_0000_1000: current_line = 3;
	16'b0000_0000_0001_0000: current_line = 4;
	16'b0000_0000_0010_0000: current_line = 5;
	16'b0000_0000_0100_0000: current_line = 6;
	16'b0000_0000_1000_0000: current_line = 7;
	16'b0000_0001_0000_0000: current_line = 8;
	16'b0000_0010_0000_0000: current_line = 9;
	16'b0000_0100_0000_0000: current_line = 10;
	16'b0000_1000_0000_0000: current_line = 11;
	16'b0001_0000_0000_0000: current_line = 12;
	16'b0010_0000_0000_0000: current_line = 13;
	16'b0100_0000_0000_0000: current_line = 14;
	16'b1000_0000_0000_0000: current_line = 15;
	default: 				 current_line = 0;
	endcase

	//current_line	=	0;
	//for (i=0;i<WAYS;i=i+1)
	//	if (hits[i])
	//		current_line	=	i;
end

assign hit_result = hits[current_line];

assign	hit		= req ?  hit_result	: 0;
assign	miss	= req ? ~hit_result : 0;
assign	dirty	= req ? cache_set[next_evict_line][MAX_ADDR-(TAG_ADDRESS+VALID_BIT):DATA_WIDTH] : 0;


endmodule
