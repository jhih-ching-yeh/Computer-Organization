// 0613144������  0613149 �ΦЫG

//Subject:     CO project 2 - Simple Single CPU
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:      0613144������  0613149 �ΦЫG
//----------------------------------------------
//Date:        108.04.28
//----------------------------------------------
//Description: 
//--------------------------------------------------------------------------------

module Adder(
    src1_i,
	src2_i,
	sum_o
	);
     
//I/O ports
input  [32-1:0]  src1_i;
input  [32-1:0]	 src2_i;
output [32-1:0]	 sum_o;

//Internal Signals
wire    [32-1:0]	 sum_o;
//Parameter
assign sum_o =  src1_i + src2_i;
//Main function
endmodule





                    
                    