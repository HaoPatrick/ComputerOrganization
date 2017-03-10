`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:23:12 03/08/2017 
// Design Name: 
// Module Name:    SSeg7_Dev 
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
module SSeg7_Dev(
	input clk,
	input rst,
	input Start,
	input SW0,
	input flash,
	input [31:0]Hexs,
	input [7:0]point,
	input [7:0]LES,
	output seg_clk,
	output seg_sout,
	output SEG_PEN,
	output seg_clrn
);

wire [63:0] dispData;
wire [31:0] dispPattern;

Seg7Decode U0(.hex(Hexs), .point(point),
	.LE(LES & {8{flash}}), .pattern(dispData), .SW0(SW0));

wire [3:0]sout;
ShiftReg #(.WIDTH(64)) U2(.clk(clk), .pdata(dispData), .sout(sout));
assign seg_clk = sout[3];
assign seg_sout = sout[2];
assign SEG_PEN = sout[1];
assign seg_clrn = sout[0];

endmodule
