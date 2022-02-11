// 0613144¸­¤§´¸  0613149 ¯Î¦Ð«G

//Subject:     CO project 2 - Simple Single CPU
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:      0613144¸­¤§´¸  0613149 ¯Î¦Ð«G
//----------------------------------------------
//Date:        108.04.28
//----------------------------------------------
//Description: 
//--------------------------------------------------------------------------------
module ProgramCounter(
    clk_i,
	rst_i,
	pc_in_i,
	pc_out_o
	);
     
//I/O ports
input           clk_i;
input	        rst_i;
input  [32-1:0] pc_in_i;
output [32-1:0] pc_out_o;
 
//Internal Signals
reg    [32-1:0] pc_out_o;
 

    
//Main function
always @(posedge clk_i) begin
    if(~rst_i)
	    pc_out_o <= 0;
	else
	    pc_out_o <= pc_in_i;
end

endmodule



                    
                    