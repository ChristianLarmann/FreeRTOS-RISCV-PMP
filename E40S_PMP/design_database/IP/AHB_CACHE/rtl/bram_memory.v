module bram_memory
			#(
				parameter MEM_DATA_BITS = 128,
				parameter MEM_ADDR_BITS = 12,
				parameter INSTRUCTION = 1,
                parameter MAIN_MEM_DELAY = 5
			)
			(
				input						clk,
				input                       rst,
				input						mem_req,
				input						mem_write,
				input [MEM_ADDR_BITS-1:0]	mem_addr,
				input [MEM_DATA_BITS-1:0]	mem_wdata,
				
				output reg [MEM_DATA_BITS-1:0]	mem_rdata,
				output reg                  mem_ready,  // CL: Probably not used as ready but as valid
                output wire                  mem_valid   // memory available after delay
			);

// Memory Array initialization
reg     [MEM_DATA_BITS:0]       memory[0:(2**(MEM_ADDR_BITS)-1)];
//wire we;
integer i;
reg		[31:0]					delay;

initial  
begin
if (INSTRUCTION)
    //$readmemh("code128_orig.dat", memory);
    $readmemh("code.dat", memory);
    //$readmemh("code128_siphash_S.dat", memory);
    //$readmemh("code128_siphash_D.dat", memory);
    //$readmemh("code128_prince_siphash_S.dat", memory);    
    //$readmemh("code128_prince_siphash_D.dat", memory);    
else
    //$readmemh("data128_orig.dat", memory);
    $readmemh("data.dat", memory);
    //$readmemh("data128_siphash_S.dat", memory);
    //$readmemh("data128_siphash_D.dat", memory);
    //$readmemh("data128_prince_siphash_S.dat", memory);
    //$readmemh("data128_prince_siphash_D.dat", memory);
end
//*/

// MAIN MEMORY INSTANTIATION
// we = mem_req & mem_write; 
always @(posedge clk, negedge rst)
begin
    if (~rst)
        delay <= 0;
    else 
    begin
        if(mem_write)
        begin
           mem_rdata 			<= mem_wdata;
           memory[mem_addr] 	<= mem_wdata;		
        end
        else
        begin
            mem_rdata 			<= memory[mem_addr];

        end    

        // Simulate memory delay
        if (mem_req & (delay < MAIN_MEM_DELAY))
        begin
            delay <= delay + 1;
            mem_ready <= 0;  // During accessing memory, the BRAM cannot handle any other reqs
        end
        else
        begin
            delay <= 0;
            mem_ready <= 1;
        end
    end
end

assign mem_valid = (delay == MAIN_MEM_DELAY);

endmodule
