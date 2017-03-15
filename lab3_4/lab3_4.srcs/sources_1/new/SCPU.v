`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2017 04:19:44 PM
// Design Name: 
// Module Name: SCPU
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


module SCPU(
input wire clk,
input wire reset,
input wire MIO_ready,

input wire [31:0]inst_in,
input wire [31:0]Data_in,

output wire mem_w,
output wire [31:0]PC_out,
output wire [31:0]Addr_out,
output wire [31:0]Data_out,
output wire CPU_MIO,
input wire INT
    );
endmodule
