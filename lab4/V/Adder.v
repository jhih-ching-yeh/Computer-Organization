//0613149 �ΦЫG 0613144 ������

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
