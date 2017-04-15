`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2017 10:47:19 AM
// Design Name: 
// Module Name: test_single_add
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


module test_single_add();
reg [31:0] i_op1,i_op2;
wire [31:0] o_out;

single_add s0(.i_op1(i_op1),.i_op2(i_op2),.o_out(o_out));
initial begin
i_op1=0;
i_op2=0;
end

always begin
# 50
i_op1=32'h1111;
i_op2=32'h2222;
# 50
i_op1=32'h1234;
i_op2=32'h789A;
end
endmodule
