///////////////////////////////////////////////////////////////////////////
/// 
/// ADDRESS - |TAG | SET | WORD | BYTE |
///
//TAG - HIGH ADDRESS THAT DEFINES THE SET (direct Map)
//VALID BIT - INDICATES THAT THE SLOT HAS DATA 
//DIRTY BIT - INDICATES THAT THE SLOT HAS MODIFIED DATA
//ADDRESS_WORD - ADDRESS TO IDENTIFY WHICH WORD IN CACHE LINE
//ADDRESS_BYTE - WHEN USED, IDENTIFY WHICH BYTE OF THE WORD
///////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////
 module	cache_16_way
					#(
						parameter	WAYS			=	16,	
						parameter	CACHE_SIZE		=	128,						
						parameter	LINE_WIDTH		=	16,	//IN BYTES (MAIN MEM)
						parameter	WORD_WIDTH		=	4,	//IN BYTES (CPU)												
						parameter	ADDRESS_SIZE	=	32,
						parameter	MEM_ADDR_BITS	=	15						
					)
					(
						input							clock,
						input							reset,
						
						input	[ADDRESS_SIZE-1	    :0]	cpu_address,
						input	[(WORD_WIDTH*8)-1	:0]	cpu_din,
						output	reg [(WORD_WIDTH*8)-1	:0]	cpu_dout,						
						input							cpu_req,
						input							cpu_rw_enable,
						output	reg						cpu_ready,
						input	[3:0]					cpu_byte_en,
						
						input	[(LINE_WIDTH*8)-1	:0]	mem_din,
						output	[(LINE_WIDTH*8)-1	:0]	mem_dout,
						output	[MEM_ADDR_BITS-1	:0]	mem_address,
						output							mem_req,
						output							mem_rw_enable,
						input							mem_ready,
						
						input                           enc_bit_i,
				        output                          write_back_encryption_enabled_o
						
					);
				
localparam	NUMBER_OF_SETS	=	(CACHE_SIZE/WAYS);
localparam	WORD_OFFSET		=	$clog2(WORD_WIDTH);
localparam	BYTE_OFFSET		=	2;
localparam	SET_ADDRESS		=	$clog2(NUMBER_OF_SETS);
localparam	TAG_ADDRESS		=	(ADDRESS_SIZE - SET_ADDRESS - WORD_OFFSET - BYTE_OFFSET);
localparam  WORD_ADDRESS	=	(ADDRESS_SIZE - TAG_ADDRESS - SET_ADDRESS);
				
localparam	IDLE = 0, WBACK = 1, HIT = 2, MISS = 3;					
localparam	STATE_BITS = 2; 
 /////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////

 reg	[STATE_BITS-1:0]		state, next_state;
  
 wire	[NUMBER_OF_SETS-1:0]	hits,misses,dirties;
 reg	[NUMBER_OF_SETS-1:0]	cache_mem_ready;
 wire	[NUMBER_OF_SETS-1:0]    write_back_encryption_enabled;
 
 wire	[TAG_ADDRESS-1:0]		write_back_tags [0:NUMBER_OF_SETS-1];
 
 wire	[(LINE_WIDTH*8)-1:0]	cache_cpu_out	[0:NUMBER_OF_SETS-1];
 reg	[(LINE_WIDTH*8)-1:0]	cache_cpu_in;
 
 wire	[(LINE_WIDTH*8)-1:0]	cache_mem_dout	[0:NUMBER_OF_SETS-1];
 wire	[(LINE_WIDTH*8)-1:0]	cache_mem_din;
 
 wire	[TAG_ADDRESS-1:0]		tag;
 wire	[SET_ADDRESS-1:0]		set_index;
 wire	[WORD_OFFSET-1:0]		word_index;
 

/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////  
 assign		tag				= cpu_address[ADDRESS_SIZE-1:ADDRESS_SIZE-TAG_ADDRESS];	
 assign		set_index		= cpu_address[ADDRESS_SIZE-TAG_ADDRESS-1:ADDRESS_SIZE-TAG_ADDRESS-SET_ADDRESS]; 	
 assign		word_index		= cpu_address[WORD_ADDRESS-1:WORD_ADDRESS-BYTE_OFFSET];	 
 
 assign		mem_dout 		= cache_mem_dout[set_index];	
 
 // HERE I THINK IT SHOULD BE DOWNTO 4 INSTEAD OF DOWNTO 2
 assign		mem_address		= (state == WBACK) ? {2'b00,write_back_tags[set_index],cpu_address[ADDRESS_SIZE-TAG_ADDRESS-1:4]} : 
													{2'b00,cpu_address[31:4]};
					
assign write_back_encryption_enabled_o = write_back_encryption_enabled[set_index];
													
 assign		mem_req			= (state == WBACK) | (state == MISS) ? 1'b1 : 1'b0;
 assign		mem_rw_enable	= (state == WBACK) ? 1'b1 : 1'b0;
 
 assign		cache_mem_din 	= mem_din;
 
always @*
begin	
	cache_cpu_in	=	cache_cpu_out[set_index];
	case (word_index)
	3: begin 
		if (cpu_byte_en[0])
			cache_cpu_in[7:0  ] 	 = cpu_din[7:0];
		if (cpu_byte_en[1])
			cache_cpu_in[15:8 ] 	 = cpu_din[15:8];
		if (cpu_byte_en[2])
			cache_cpu_in[23:16] 	 = cpu_din[23:16];
		if (cpu_byte_en[3])
			cache_cpu_in[31:24] 	 = cpu_din[31:24];
	end
	2: begin 
		if (cpu_byte_en[0])
			cache_cpu_in[39:32] 	 = cpu_din[7:0];
		if (cpu_byte_en[1])
			cache_cpu_in[47:40] 	 = cpu_din[15:8];
		if (cpu_byte_en[2])
			cache_cpu_in[55:48] 	 = cpu_din[23:16];
		if (cpu_byte_en[3])
			cache_cpu_in[63:56] 	 = cpu_din[31:24];
	end
	1: begin 
		if (cpu_byte_en[0])	
			cache_cpu_in[71:64] 	 = cpu_din[7:0];
		if (cpu_byte_en[1])		
			cache_cpu_in[79:72] 	 = cpu_din[15:8];
		if (cpu_byte_en[2])
			cache_cpu_in[87:80] 	 = cpu_din[23:16];
		if (cpu_byte_en[3])
			cache_cpu_in[95:88] 	 = cpu_din[31:24];
	end
	0: begin 
		if (cpu_byte_en[0])
		cache_cpu_in[103:96] 	 = cpu_din[7:0];
		if (cpu_byte_en[1])
		cache_cpu_in[111:104] 	 = cpu_din[15:8];
		if (cpu_byte_en[2])
		cache_cpu_in[119:112] 	 = cpu_din[23:16];
		if (cpu_byte_en[3])
		cache_cpu_in[127:120] 	 = cpu_din[31:24];
	end
	//4: cache_cpu_in[159:128] = cpu_din;
	//5: cache_cpu_in[191:160] = cpu_din;
	//6: cache_cpu_in[223:192] = cpu_din;
	//7: cache_cpu_in[255:224] = cpu_din;
	default: cache_cpu_in	=	cache_cpu_out[set_index];
	endcase
end						

always @*
begin
	cpu_dout = cache_cpu_out[set_index][31:0];
	case (word_index)
	3: cpu_dout = cache_cpu_out[set_index][31:0] 	;
	2: cpu_dout = cache_cpu_out[set_index][63:32] 	;
	1: cpu_dout = cache_cpu_out[set_index][95:64] 	;
	0: cpu_dout = cache_cpu_out[set_index][127:96] ;
	//4: cpu_dout = cache_cpu_out[set_index][159:128];
	//5: cpu_dout = cache_cpu_out[set_index][191:160];
	//6: cpu_dout = cache_cpu_out[set_index][223:192];
	//7: cpu_dout = cache_cpu_out[set_index][255:224];
	default: cpu_dout = cache_cpu_out[set_index][31:0];
	endcase
end

always @*
begin
	cache_mem_ready = {NUMBER_OF_SETS{1'b0}};
	cache_mem_ready[set_index] = mem_ready;
end
  

/////////////////////////////////////////////////////////////////////////////////////
// FSM
/////////////////////////////////////////////////////////////////////////////////////   
  always @(posedge clock, posedge reset)
  begin
		if (reset)
		begin
			state <= IDLE;
			cpu_ready <= 1'b0;
		end
		else
		begin
			state <= next_state;		
			cpu_ready <= (state == HIT);
		end
  end

  always @*
  begin
	case (state)
		IDLE	: 	if (hits[set_index])		
						next_state = HIT;
					else 
						if (misses[set_index])	
							if (dirties[set_index])
								next_state = WBACK; 
							else
								next_state = MISS; 
						else
							next_state = IDLE;		
		WBACK	:	if (mem_ready)				next_state = MISS;	
					else						next_state = WBACK;	
		MISS	: 	if (mem_ready) 				next_state = HIT; 
					else 						next_state = MISS;	
		HIT		: next_state = IDLE; 
	endcase
  end

/////////////////////////////////////////////////////////////////////////////////////
// INSTANTIATION OF SETS
/////////////////////////////////////////////////////////////////////////////////////
   
  genvar i;
  generate
    for ( i = 0; i < NUMBER_OF_SETS; i = i + 1 ) begin : sets_gen
		set
			#(
				.WAYS(WAYS),				
				.LINE_WIDTH(LINE_WIDTH),
				.TAG_ADDRESS(TAG_ADDRESS)
			)
		sets
			(
				.clock(clock),
				.reset(reset),
				
				.req(cpu_req & (set_index==i) & (~cpu_ready)),								
				.wr_back((state == WBACK)),
				
				.cache_cpu_tag(tag),					
				.cache_cpu_dout(cache_cpu_out[i]),
				.cache_cpu_din(cache_cpu_in),
				.cache_cpu_wren(cpu_rw_enable),
				
				.cache_mem_dout(cache_mem_dout[i]),
				.cache_mem_din(cache_mem_din),
				.cache_mem_ready(cache_mem_ready[i]),				
				
				.hit(hits[i]),
				.miss(misses[i]),
				.dirty(dirties[i]),
				.write_back_tag(write_back_tags[i]),
				
				.enc_bit_i(enc_bit_i),
				.write_back_encryption_enabled_o(write_back_encryption_enabled[i])
			);
	end
 endgenerate
  
 
 
 
    //Test stuff to count cache misses
    //Cache and memory accesss counters to measure cache missrate
    reg     [31:0]                  miss_ctr;
    reg     [31:0]                  hit_ctr;
    reg     [31:0]                  req_ctr;
    
    always @(posedge clock,  posedge reset)
    begin
        if(reset) begin
            miss_ctr    <=  0;
            hit_ctr     <=  0;
            req_ctr     <=  0;
        end
        else begin
            if((state == MISS) & (next_state != MISS)) begin
                miss_ctr    =   miss_ctr + 1;
            end
            if((state == HIT) & (next_state != HIT)) begin
                hit_ctr     =   hit_ctr + 1;
            end
            if((state == IDLE) & (next_state != IDLE)) begin
                req_ctr     =   req_ctr + 1;
            end
        end	
    end
 endmodule
 
