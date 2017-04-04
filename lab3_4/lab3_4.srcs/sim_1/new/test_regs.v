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

initial begin
clk=0;
rst=0;
R_addr_A=0;
R_addr_B=0;
wt_data=0;
Wt_addr=0;
#1000 $finish;
end

always begin
#10 clk=~clk;
end

always begin
#100 L_S=1;
Wt_addr=5'b1;
wt_data=32'hf5f5;

#100
Wt_addr=5'b10;
wt_data=32'h5f5f;

#100
L_S=0;
R_addr_A=5'b1;
R_addr_B=5'b10;
end

endmodule
