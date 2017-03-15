`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2017 04:43:05 PM
// Design Name: 
// Module Name: Counter_x
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


module Counter_x(
input clk,
input rst,
input clk0,
input clk1,
input clk2,
input counter_we,
input [31:0]counter_val,
input [1:0]counter_ch,

output counter0_OUT,
output counter1_OUT,
output counter2_OUT,
output [31:0] counter_out
    );
endmodule
