`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:17:01 03/10/2017 
// Design Name: 
// Module Name:    SegmentDecoder 
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
module SegmentDecoder(
	input [3:0] hex, input SW0, output reg [6:0] segment
);

	always @*
	begin
		if(SW0) begin
		case(hex)
			4'h0: segment[6:0] <= 7'b1000000;
			4'h1: segment[6:0] <= 7'b1111001;
			4'h2: segment[6:0] <= 7'b0100100;
			4'h3: segment[6:0] <= 7'b0110000;
			4'h4: segment[6:0] <= 7'b0011001;
			4'h5: segment[6:0] <= 7'b0010010;
			4'h6: segment[6:0] <= 7'b0000010;
			4'h7: segment[6:0] <= 7'b1111000;
			4'h8: segment[6:0] <= 7'b0000000;
			4'h9: segment[6:0] <= 7'b0010000;
			4'hA: segment[6:0] <= 7'b0001000;
			4'hB: segment[6:0] <= 7'b0000011;
			4'hC: segment[6:0] <= 7'b1000110;
			4'hD: segment[6:0] <= 7'b0100001;
			4'hE: segment[6:0] <= 7'b0000110;
			4'hF: segment[6:0] <= 7'b0001110;
		endcase
		end
		else begin
		case(hex)
			4'h0: segment[6:0] <= 7'b1000000;
			4'h1: segment[6:0] <= 7'b1111001;
			4'h2: segment[6:0] <= 7'b0100100;
			4'h3: segment[6:0] <= 7'b0110000;
			4'h4: segment[6:0] <= 7'b0011001;
			4'h5: segment[6:0] <= 7'b0010010;
			4'h6: segment[6:0] <= 7'b0000010;
			4'h7: segment[6:0] <= 7'b1111000;
			4'h8: segment[6:0] <= 7'b0000000;
			4'h9: segment[6:0] <= 7'b0010000;
			4'hA: segment[6:0] <= 7'b0001000;
			4'hB: segment[6:0] <= 7'b0000011;
			4'hC: segment[6:0] <= 7'b1000110;
			4'hD: segment[6:0] <= 7'b0100001;
			4'hE: segment[6:0] <= 7'b0000110;
			4'hF: segment[6:0] <= 7'b0001110;
		endcase
		end
	end

endmodule
