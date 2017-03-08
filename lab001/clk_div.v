`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:21 03/08/2017 
// Design Name: 
// Module Name:    clk_div 
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
module clk_div(
input clk,
input rst,
input SW2,
output reg [31:0]clkdiv,
output Clk_CPU
    );

//reg [31:0]reg_clk;
always @(posedge clk) begin
    if (clkdiv[31] == 1) begin
	 clkdiv <= 0; 
	end
	 else  begin 
	 clkdiv<=clkdiv+1;
	 end
end

//assign clkdiv=reg_clk;
assign Clk_CPU = SW2 ? clkdiv[24] : clkdiv[2];


endmodule
