`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2017 04:12:35 PM
// Design Name: 
// Module Name: regs
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


module regs(
input clk,rst,L_S,
input [4:0] R_addr_A,R_addr_B,Wt_addr,
input [31:0] wt_data,
output [31:0] rdata_A, rdata_B
    );
reg [31:0]register[0:31];
integer i;
assign rdata_A=(R_addr_A==0)?0:register[R_addr_A];
assign rdata_B=(R_addr_B==0)?0:register[R_addr_B];

always @(posedge clk or posedge rst) begin
if (rst==1) for(i=0;i<32;i=i+1) register[i]<=0;
else if ((Wt_addr!=0)&&(L_S==1)) register[Wt_addr]<=wt_data;
end

endmodule
