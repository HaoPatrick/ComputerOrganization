`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2017 03:35:55 PM
// Design Name: 
// Module Name: test_for_alu
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


module test_for_alu();

reg [31:0]A;
reg [31:0]B;
wire [31:0]res;
reg [2:0]alu_op;
wire zero;
wire overflow;
ALU t1(alu_op,A,B,res,zero,overflow);

initial begin
A=32'h7A5A5A5A;
B=32'hA5A5A5A5;
alu_op=3'b000;
#1000 $finish;
end

always begin
#100 alu_op=alu_op+1'b1;
end

//always begin
//#700 
//B=32'h7A5A5A5A;
//A=32'hA5A5A5A5;
//end
endmodule
