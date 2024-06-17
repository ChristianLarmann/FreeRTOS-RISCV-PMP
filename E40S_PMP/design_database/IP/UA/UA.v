//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 14:35:18
// Design Name: 
// Module Name: UA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module UA
    #(
        parameter	ADDRESS_SIZE	=	32,
        parameter	NUMBER_OF_BYTES	=	16,
        parameter	DATA_WIDTH		=	NUMBER_OF_BYTES * 8,
        parameter   ENCRYPT_EN      =   0,          // Enables encryption/decryption
        parameter   HASH_EN         =   0,          // Enables hashing and verification
        parameter   HASH_WIDTH      =   64,
        parameter   DOUBLE_HASH     =   1           // Enables storing two hashes of successive data addresses in one line
    )
    (
        //Clock and reset
        input   wire                    clock,
        input   wire                    reset,
        
        //Cache side connections
        output  wire [DATA_WIDTH-1:0]   cache_rdata,
        input   wire [DATA_WIDTH-1:0]   cache_wdata,
        input   wire [ADDRESS_SIZE-1:0] cache_address,
        input   wire                    cache_req,
        input   wire                    cache_rw_enable,
        output  wire                    cache_ready,
        
        //Memory side connections
        input   wire [DATA_WIDTH-1:0]   mem_rdata,
        output  wire [DATA_WIDTH-1:0]   mem_wdata,
        output  wire [ADDRESS_SIZE-1:0] mem_address,
        output  wire                    mem_req,
        output  wire                    mem_rw_enable,
        input   wire                    mem_ready,
        
        //Hash arror interrrupt
        output  wire                    interrupt
    );
    
    //Hashing/encryption key
    localparam                  KEY     =   128'h000102030405060708090a0b0c0d0e0f;
    

    
    // Registers and states for state machine
    reg		[3:0]                   state, next_state;
    localparam                      IDLE    =   4'b0000,
                                    READ    =   4'b0001,
                                    DECRYPT =   4'b0010,
                                    VERIFY  =   4'b0011,
                                    WRITE   =   4'b0100,
                                    ENCRYPT =   4'b0101,
                                    HASH    =   4'b0110,
                                    UPDATE  =   4'b0111,
                                    END     =   4'b1000,
                                    ERROR   =   4'b1111;
                
    // Wires and registers for internal signals
    // Data address
    reg     [ADDRESS_SIZE-1:0]      address;
    // Hash address
    wire     [ADDRESS_SIZE-1:0]     hash_address;
    // Data coming from memory
    reg     [DATA_WIDTH-1:0]        data_in;
    // Hash coming from memory
    reg     [DATA_WIDTH-1:0]        hash_in;
    // Data or hash going to memory
    reg     [DATA_WIDTH-1:0]        data_out;
    // Updated hash going to memory
    reg     [DATA_WIDTH-1:0]        hash_out;

    // Tells READ state to request hash from memory
    reg                             fetch_hash;
    // Tells WRITE state to write hash to memory
    reg                             write_hash;
    // Used by VERIFY to check if calculated hash is same as stored
    wire                            hash_correct;
    // Holds request signal to memory
    reg                             mem_request;
    // Holds whether data is read or written to memory. 1 is write.
    reg                             mem_rw;
    // Output for when calculated hash differs from hash in memory
    reg                             interrupt_reg;
    
    //  Encryption block signals
    reg                             cry_enc_dec;
    reg     [DATA_WIDTH-1:0]        cry_din;
    wire    [DATA_WIDTH-1:0]        cry_dout;
    wire                            cry_rdy;
    reg                             cry_run;
    
    // Hashing block signals
    wire                            hash_rdy;
    reg                             hash_run;
    reg     [DATA_WIDTH-1:0]        hash_din;
    wire    [HASH_WIDTH-1:0]        hash_dout;

    // Assign output wires    
    assign  cache_rdata     =   ((state == END) ? (ENCRYPT_EN ? cry_dout : data_in) : 0);
    assign  mem_wdata       =   data_out;
    assign  mem_address     =   address;
    assign  mem_req         =   mem_request;
    assign  mem_rw_enable   =   mem_rw;
    assign  cache_ready     =   ((state == END) ? 1 : 0);
    assign  interrupt       =   interrupt_reg;
    
    // Assign internal wires
    assign hash_address     =   {DOUBLE_HASH ? {21'b0,1'b1,1'b0,cache_address[9:1]} : {21'b0,1'b1,cache_address[9:0]}};
    assign hash_correct     =   {DOUBLE_HASH ? {cache_address[0] ? (hash_dout == hash_in[HASH_WIDTH-1:0]) : (hash_dout == hash_in[DATA_WIDTH-1:HASH_WIDTH])} : {(hash_dout == hash_in[HASH_WIDTH-1:0])}};
    
    
    // Reset and state switches
    always @(posedge clock, negedge reset)
    begin
        if (reset) begin
            state                       <=  IDLE;
        end
        else begin
            state                       <=  next_state;
        end
    end
    
    
    // State machine
    // Events per state to switch to next state
    always @*
    begin
        case (state)		
        //  IDLE STATE================================================================================
            IDLE: begin 
                // When cache wants something, start state machine
                if(cache_req) begin
                    // If write operation
                    if(cache_rw_enable) begin
                        // If encryption is enabled go encrypt first
                        if(ENCRYPT_EN) begin
                            next_state  =  ENCRYPT;
                        end
                        // If encryption is not enabled, go write data 
                        else begin
                            next_state  =  WRITE;
                        end
                    end
                    // If read operation
                    else begin
                        // Go read data from memory
                        next_state      =  READ;
                    end              
                end
                else begin
                    next_state          =   IDLE;
                end
            end
            
            
        //  READ STATE================================================================================
            READ: begin
                // When the cache requests a write operation and a hash has to be read and updated
                if(cache_rw_enable) begin
                    // State machine will only get here from the hash state, but for clarity
                    if(HASH_EN & fetch_hash) begin
                        next_state                  =  HASH;
                    end                  
                end    
                // When the cache requests a read operation    
                else begin
                    // When encryption is enabled data must be decrypted
                    if(ENCRYPT_EN) begin
                        // When hashing is enabled and hash has been read, go verify correctness
                        if(HASH_EN & fetch_hash) begin
                            if(mem_ready) begin
                                next_state          =  VERIFY;
                            end
                        end
                        // When data has been received, go decrypt
                        else begin
                            if(mem_ready) begin 
                                next_state          =  DECRYPT;
                            end
                        end
                    end
                    // When encryption is disabled
                    else begin
                        // When hashing is enabled
                        if(HASH_EN) begin
                            // When hash has been read, go verify correctness
                            if(fetch_hash) begin
                                if(mem_ready) begin
                                    next_state      =  VERIFY;
                                end
                            end
                            // When data has been read, go calculate hash
                            else begin
                                if(mem_ready) begin
                                    next_state      =  HASH;
                                end 
                            end
                        end
                        // When both hashing and encryption are disabled
                        else begin
                            if(mem_ready) begin
                                next_state          =  END;
                            end
                        end
                    end
                end
            end
            
        //  DECRYPT STATE===========================================================================
            DECRYPT: begin
                // When hashing is enabled, go calculate and fetch hash
                if(HASH_EN) begin
                    next_state      =   HASH;
                end
                // When hashing is not enabled, go straight to end once decryption is complete
                else begin
                    if(cry_rdy) begin
                        next_state      =   END;
                    end
                end
            end
            
        //  HASH VERIFICATION STATE=================================================================
            VERIFY: begin
                // When encyption is enabled, wait until both decryption and hashing are done before
                // continuing
                if(ENCRYPT_EN) begin
                    if(cry_rdy) begin
                        if(hash_rdy) begin
                            // When calculated hash is identical to stored hash, go to end
                            if(hash_correct) begin
                                next_state  =   END;
                            end
                            //When calculated hash differs from stored hash, go to error
                            else begin
                                next_state  =   ERROR;
                            end
                        end
                    end
                end
                // When encryption is disabled, wait until hashing is completed before continuing
                else begin
                    if(hash_rdy) begin
                        // When calculated hash is identical to stored hash, go to end
                        if(hash_correct) begin
                            next_state  =   END;
                        end
                        //When calculated hash differs from stored hash, go to error
                        else begin
                            next_state  =   ERROR;
                        end
                    end
                end
            end

        //  WRITE STATE============================================================================
            WRITE: begin
                // When hashing is enabled
                if(HASH_EN) begin
                    // Go calculate hash while writing data to memory
                    if(!write_hash) begin
                        next_state      =   HASH;       
                    end
                    // Go to end when done writing the hash to memory
                    else begin
                        if(mem_ready) begin
                            next_state  =   END;
                        end
                    end
                end         
                // When hashing is not enabled, go straight to end when done writing data to memory
                else begin
                    if(mem_ready) begin
                        next_state      =   END;
                    end
                end
            end 
            
            
        //  ENCRYPT STATE==========================================================================
            ENCRYPT: begin
                // When encryption is done, go to write data to memory
                if(cry_rdy) begin
                    next_state          =   WRITE;
                end
            end
            
        //  HASHING STATE==========================================================================
            HASH: begin
                // When the cache requests a write operation
                if(cache_rw_enable) begin
                    // When two hashes are stored in one line, this line must be read from memory
                    // to only update required hash
                    if(DOUBLE_HASH) begin
                        // Go fetch hash from memory after data is done being written
                        if(mem_ready) begin
                            next_state      =   READ;
                        end
                    end
                    // When only one hash is stored in a line, reading this line is not needed. Go 
                    // straight to update 
                    else begin
                        next_state      =   UPDATE;
                    end
                end
                // When the cache requests a read operation go fetch the hash from memory
                else begin
                    next_state          =   READ;
                end
            end
            
        //  HASH UPDATING STATE====================================================================
            UPDATE: begin
                // When two hashes are stored in one line, we need to wait until that line has been
                // read from memory as well as the hash has been calculated
                if(DOUBLE_HASH) begin
                    if(mem_ready) begin
                        if(hash_rdy) begin
                            next_state          =   WRITE;
                        end
                    end
                end
                // When there is only one hash in a line, this line does not need to be read. Go 
                // straight to write once the hash has been calculated
                else begin
                    if(hash_rdy) begin
                        next_state              = WRITE;
                    end
                end
            end
            
        //  ERROR STATE==========================================================================
            ERROR: begin
                next_state              =   END;
            end
            
        //  END STATE============================================================================
            END: begin
                next_state              =   IDLE;
            end
        endcase
    end
    
    
    
    // State descriptions
    // Activities performed per state
    always @ (posedge clock, posedge reset)
    begin
        if(reset) begin
            fetch_hash                  <=  0;
            write_hash                  <=  0;
        
            mem_request                 <=  0;
            mem_rw                      <=  0;
            address                     <=  0;
            
            cry_run                     <=  0;
            hash_run                    <=  0;
            
            cry_din                     <=  0;
            hash_din                    <=  0;
            cry_enc_dec                 <=  0;

            data_out                    <=  0;
            hash_out                    <=  0;
            
            hash_in                     <=  0;
            data_in                     <=  0;
            
            interrupt_reg               <=  0;
        end 
        else begin
            case (state)
            //  READ STATE-------------------------------------
                READ: begin
                    // When the read starts
                    if(!mem_ready) begin
                        // Send read request to memory
                        mem_request         <=  1;
                        mem_rw              <=  0;
                        // If the hash is requested, fetch the hash from memory
                        if(HASH_EN & fetch_hash) begin
                            hash_in         <=  mem_rdata;  
                            address         <=  hash_address;
                        end
                        // Otherwise request data from memory
                        else begin
                            data_in         <=  mem_rdata;  
                            address         <=  cache_address;
                        end
                    end
                    // Once the memory is done, set request back to zero
                    else begin
                        mem_request         <=  0;
                    end
                end
                
            //  WRITE STATE-------------------------------------------
                WRITE: begin
                    // When the write starts
                    if(!mem_ready) begin
                        mem_request         <=  1;
                        mem_rw              <=  1;
                        if(!write_hash) begin
                            if(ENCRYPT_EN) begin
                                address     <=  cache_address;
                                data_out    <=  cry_dout;
                            end
                            else begin
                                address     <=  cache_address;
                                data_out    <=  cache_wdata;
                            end
                        end
                        else begin
                            data_out        <=  hash_out;
                            address         <=  cache_address;
                        end
                    end
                    // Once the memory is done, set request back to zero
                    else begin
                        mem_request         <=  0;
                    end
                end
                
            //  ENCRYPT STATE--------------------------------------------
                ENCRYPT: begin
                    // Let crypto block read data and start encrypting
                    cry_din             <=  cache_wdata;
                    cry_enc_dec         <=  1;
                    cry_run             <=  1;
                end
                            
            //  DECRYPT STATE-------------------------------------
                DECRYPT: begin 
                    // Let crypto block read data and start decrypting 
                    cry_din             <=  data_in;
                    cry_enc_dec         <=  0;          
                    cry_run             <=  1;
                end
                
            //  CALCULATE HASH STATE-----------------------------------------------
                HASH: begin
                    // If writingDOUBLE_HASH
                    if(cache_rw_enable) begin
                        if(ENCRYPT_EN) begin
                            hash_din        <=  cry_dout;
                        end
                        else begin
                            hash_din        <=  cache_wdata;
                        end
                        hash_run            <=  1;
                        write_hash          <=  1;   
                        // If data is done being written, set req to 0
                        // so next WRITE can start properly.
                        // This assumes writing data takes longer than 
                        // the hash function.
                        if(mem_ready) begin
                            mem_request     <=  0;
                        end
                    end
                    // If reading
                    else begin
                        mem_request     <=  0;     
                        fetch_hash      <=  1;
                        hash_din        <=  data_in;
                        hash_run        <=  1;
                    end
                end
                
            //  VERIFY HASH STATE------------------------------
                VERIFY: begin
                    // When there are two hashes stored in one line, compare the correct one
//                    if(DOUBLE_HASH) begin
//                        if(cache_address[0]) begin
//                            hash_correct        <=  (hash_dout == hash_in[HASH_WIDTH-1:0]);                   
//                        end
//                        else begin
//                            hash_correct        <=  (hash_dout == hash_in[DATA_WIDTH-1:HASH_WIDTH]); 
//                        end
//                    end
//                    // When there is only one hash per line, just compare that one
//                    else begin
//                        hash_correct        <=  (hash_dout == hash_in[HASH_WIDTH-1:0]);     
//                    end
                end
                
                
            // UPDATE HASH STATE-------------------------------------------
                UPDATE: begin
                    // When there are two hashes stored in one line, update the correct one
                    if(DOUBLE_HASH) begin
                        if(cache_address[0]) begin
                            hash_out            <=  {hash_in[DATA_WIDTH-1:HASH_WIDTH],hash_dout};
                        end
                        else begin
                            hash_out            <=  {hash_dout, hash_in[HASH_WIDTH-1:0]};
                        end
                    end
                    // When there is only one hash per line, just update that one
                    else begin
                        hash_out                <=  {32'b0, hash_dout};
                    end
                end
                
            //  ERROR STATE---------------------------------------------
                ERROR: begin
                    //Raises an interrupt when there is a hashing error
                    interrupt_reg       <=  1;
                end

                
            //  END STATE-----------------------------------------------
                END: begin
                    // Resets internal flags back to idle values
                    fetch_hash          <=  0;
                    write_hash          <=  0;
                    hash_run            <=  0;
                    cry_run             <=  0;
                end

            endcase
        end
    end
        
    
    // Encryption/decryption block
    crypto
    crypto_prince
        (
            .clock(clock),
            .reset(reset),
            .key(KEY),
            .run(cry_run),
            .din(cry_din),
            .enc_dec(cry_enc_dec),
            .dout(cry_dout),
            .ready(cry_rdy)
        );
        
    // Hashing block
    hash
    hash_sip
        (
            .clock(clock),
            .reset(reset),
            .key(KEY),
            .run(hash_run),
            .din(hash_din),
            .dout(hash_dout),
            .ready(hash_rdy)
        );
    
endmodule
