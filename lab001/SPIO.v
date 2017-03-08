`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:25:15 03/08/2017 
// Design Name: 
// Module Name:    SPIO 
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
module SPIO(
	input clk,
	input rst,
	input EN,
	input Start,
	input [31:0]P_Data,
	output reg[1:0] counter_set,
	output [15:0]LED_out,
	output reg [13:0] GPIOf0,
	output led_clk,
	output led_sout,
	output LED_PEN,
	output led_clrn
    );


endmodule
