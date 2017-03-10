`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:18:52 03/08/2017 
// Design Name: 
// Module Name:    SEnter_2_32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module SEnter_2_32(
input clk,
input	[4:0]Din,
input D_ready,
input [2:0]BTN,
input [4:0]Ctrl,
output reg readn,
output reg[31:0]Ai=32'h87654321,
output reg[31:0]Bi=32'h12345678,
output reg[7:0]blink
    );


endmodule
