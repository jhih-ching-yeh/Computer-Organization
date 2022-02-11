// 0613144������  0613149 �ΦЫG

//Subject:     CO project 3 - Simple Single CPU
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:      0613144������  0613149 �ΦЫG
//----------------------------------------------
//Date:        108.05.15
//----------------------------------------------
//Description: 
//--------------------------------------------------------------------------------

module Reg_File(
    clk_i,
	rst_i,
	return_addr,
    RSaddr_i,
    RTaddr_i,
    RDaddr_i,
    RDdata_i,
    RegWrite_i,
    RSdata_o,
     im_outt,
    RTdata_o
    );
          
//I/O ports
input           clk_i;
input           rst_i;
input           return_addr;
input           RegWrite_i;
input  [5-1:0]  RSaddr_i;
input  [5-1:0]  RTaddr_i;
input  [5-1:0]  RDaddr_i;
input  [32-1:0] RDdata_i;
input  [6-1:0]  im_outt;

output [32-1:0] RSdata_o;
output [32-1:0] RTdata_o;   

//Internal signals/registers           
reg  signed [32-1:0] Reg_File [0:32-1];     //32 word registers
wire        [32-1:0] RSdata_o;
wire        [32-1:0] RTdata_o;
wire        [32-1:0] return_addr;

parameter return = 5'b11111;
//assign RegDst_o = (instr_op_i == 6'b000000)? 1'b1:1'b0;
//Read the data
assign RSdata_o = Reg_File[RSaddr_i] ;
assign RTdata_o = Reg_File[RTaddr_i] ;
//Writing data when postive edge clk_i and RegWrite_i was set.
always @( posedge rst_i or posedge clk_i  ) begin
    if(rst_i == 0) begin
	    Reg_File[0]  <= 0; Reg_File[1]  <= 0; Reg_File[2]  <= 0; Reg_File[3]  <= 0;
	    Reg_File[4]  <= 0; Reg_File[5]  <= 0; Reg_File[6]  <= 0; Reg_File[7]  <= 0;
        Reg_File[8]  <= 0; Reg_File[9]  <= 0; Reg_File[10] <= 0; Reg_File[11] <= 0;
	    Reg_File[12] <= 0; Reg_File[13] <= 0; Reg_File[14] <= 0; Reg_File[15] <= 0;
        Reg_File[16] <= 0; Reg_File[17] <= 0; Reg_File[18] <= 0; Reg_File[19] <= 0;      
        Reg_File[20] <= 0; Reg_File[21] <= 0; Reg_File[22] <= 0; Reg_File[23] <= 0;
        Reg_File[24] <= 0; Reg_File[25] <= 0; Reg_File[26] <= 0; Reg_File[27] <= 0;
        Reg_File[28] <= 0; Reg_File[29] <= 128; Reg_File[30] <= 0; Reg_File[31] <= 0;
	end
    else begin
        if(im_outt == 6'b000011 )begin
            Reg_File[return] <= return_addr;
        end
        if(RegWrite_i) 
            Reg_File[RDaddr_i] <= RDdata_i;	
		else 
		    Reg_File[RDaddr_i] <= Reg_File[RDaddr_i];
	end
end
endmodule     
