`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2017 09:15:05 AM
// Design Name: 
// Module Name: pc
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


module single_pc(
input wire clk,rst,
input wire  [8:0] i_pc,
output reg [8:0] o_pc
    );
    always @(posedge clk) begin
        assign o_pc=i_pc;
    end
endmodule

module single_pc_plus4(
input wire [8:0] i_pc,
output wire [8:0] o_pc
);
assign o_pc=i_pc+4;
endmodule
