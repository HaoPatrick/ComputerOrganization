`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:25:44 03/08/2017 
// Design Name: 
// Module Name:    MUX8T1_32 
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
module  MUX16T1_32(input [2:0]s,
						input [31:0]I0,
						input [31:0]I1,
						input [31:0]I2,
						input [31:0]I3,
						input [31:0]I4,
						input [31:0]I5,
						input [31:0]I6,
						input [31:0]I7,
						input [31:0]I8,
						input [31:0]I9,
						input [31:0]I10,
						input [31:0]I11,
						input [31:0]I12,
						input [31:0]I13,
						input [31:0]I14,
						input [31:0]I15,
						
						output reg[31:0]o
						);

		always@*			//32位8选一,I0、I1、I2、……对应选择通道0、1、2、……
			case(s)
				4'b000: o <= I0;
				4'b001: o <= I1;
				4'b010: o <= I2;
				4'b011: o <= I3;
				4'b100: o <= I4;
				4'b101: o <= I5;
				4'b110: o <= I6;
				4'b111: o <= I7;
				4'b1000: o<= I8;
			endcase
endmodule
