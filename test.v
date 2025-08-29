
module testmem (
 
    input clk,         
    input wr_en,        

    input  [16:0] addr,    
    input  [7:0]  data_in, 
	 
    output  reg [7:0]  data_out 
);


    localparam DATA_WIDTH   = 8;    
    localparam MEM_DEPTH    = 76800;  
    localparam ADDR_WIDTH   = 17;      

    reg [DATA_WIDTH-1:0] mem [MEM_DEPTH-1:0];

    
    always @(posedge clk) begin
        if (wr_en) begin
            mem[addr] <= data_in;
        end
		  
	  data_out = mem[addr];
		
    end
	 


   
    

endmodule
