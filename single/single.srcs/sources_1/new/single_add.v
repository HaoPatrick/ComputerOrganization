`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2017 10:43:37 AM
// Design Name: 
// Module Name: single_add
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


module single_add (i_op1, i_op2, o_out);
parameter N=32;
input wire[N-1:0] i_op1,i_op2;
output wire[N-1:0] o_out;
assign o_out= i_op1+i_op2;
endmodule

