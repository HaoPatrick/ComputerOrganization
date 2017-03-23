`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2017 04:20:56 PM
// Design Name: 
// Module Name: test_regs
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


module test_regs();
reg clk;
reg rst;
reg L_S;
reg [4:0]R_addr_A,R_addr_B,Wt_addr;
reg [31:0]wt_data;
wire [31:0]rdata_A,rdata_B;
regs T1(clk,rst,L_S,R_addr_A,R_addr_B,Wt_addr,wt_data,rdata_A,rdata_B);

endmodule
