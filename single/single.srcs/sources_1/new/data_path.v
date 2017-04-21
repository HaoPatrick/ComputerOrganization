`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2017 08:30:05 PM
// Design Name: 
// Module Name: data_path
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


module data_path(
    input wire clk,
    input wire rst,
    input wire data_in,
    input wire [25:0]inst_field,
    input wire reg_dst,
    input wire alu_src_b,
    input wire mem2reg,
    input wire jump,
    input wire branch,
    input wire reg_write,
    input wire [2:0]alu_control,
    output reg pc_out,
    output reg addr_out,
    output reg data_out
    );


endmodule
