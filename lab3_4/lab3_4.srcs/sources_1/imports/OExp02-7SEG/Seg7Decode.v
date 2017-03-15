`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:15:51 03/10/2017 
// Design Name: 
// Module Name:    Seg7Decode 
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
module Seg7Decode(
	input [31:0] hex, input [7:0] point, input [7:0] LE,input SW0,
	output [63:0] pattern
);
	wire [63:0] digits;
	wire [63:0]segPattern;
	wire [63:0]graphPattern;
	SegmentDecoder
		U0(.hex(hex[ 3: 0]), .segment(digits[ 6: 0])),
		U1(.hex(hex[ 7: 4]), .segment(digits[14: 8])),
		U2(.hex(hex[11: 8]), .segment(digits[22:16])),
		U3(.hex(hex[15:12]), .segment(digits[30:24])),
		U4(.hex(hex[19:16]), .segment(digits[38:32])),
		U5(.hex(hex[23:20]), .segment(digits[46:40])),
		U6(.hex(hex[27:24]), .segment(digits[54:48])),
		U7(.hex(hex[31:28]), .segment(digits[62:56]));
	assign {digits[63], digits[55], digits[47], digits[39], digits[31], digits[23], digits[15], digits[7]} = ~point;
	assign segPattern[ 7: 0] = digits[ 7: 0] | {8{LE[0]}};
	assign segPattern[15: 8] = digits[15: 8] | {8{LE[1]}};
	assign segPattern[23:16] = digits[23:16] | {8{LE[2]}};
	assign segPattern[31:24] = digits[31:24] | {8{LE[3]}};
	assign segPattern[39:32] = digits[39:32] | {8{LE[4]}};
	assign segPattern[47:40] = digits[47:40] | {8{LE[5]}};
	assign segPattern[55:48] = digits[55:48] | {8{LE[6]}};
	assign segPattern[63:56] = digits[63:56] | {8{LE[7]}};

	GraphicDecoder U9(.Disp_num(hex), .segment(graphPattern));
	
	assign pattern=SW0?graphPattern:segPattern;

endmodule