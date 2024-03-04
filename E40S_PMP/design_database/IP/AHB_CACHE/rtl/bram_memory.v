module bram_memory
			#(
				parameter MEM_DATA_BITS = 128,
				parameter MEM_ADDR_BITS = 12,
				parameter INSTRUCTION = 1
			)
			(
				input						clk,
				input						mem_req,
				input						mem_write,
				input [MEM_ADDR_BITS-1:0]	mem_addr,
				input [MEM_DATA_BITS-1:0]	mem_wdata,
				
				output reg [MEM_DATA_BITS-1:0]	mem_rdata,
				output reg data_valid
			);

// Memory Array initialization
reg     [MEM_DATA_BITS:0]       memory[0:(2**(MEM_ADDR_BITS)-1)];
//wire we;
integer i;

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
always @(posedge clk)
begin
    if(mem_write)
    begin
       mem_rdata 			<= mem_wdata;
       memory[mem_addr] 	<= mem_wdata;		
       data_valid           <= 1;
    end
    else
    begin
        mem_rdata 			<= memory[mem_addr];
        data_valid          <= mem_req;
    end    
end

endmodule
