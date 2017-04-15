`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2017 09:21:13 AM
// Design Name: 
// Module Name: test_pc
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


module test_pc();
reg [8:0] reg_temp_pc;
wire [8:0] i_pc;
wire [8:0] o_pc;
reg clk,rst;
single_pc_plus4 s0(.i_pc(reg_temp_pc),.o_pc(i_pc));
single_pc s1(.clk(clk),.rst(rst),.i_pc(reg_temp_pc), .o_pc(o_pc));

initial begin
clk=1'b0;
rst=1'b0;
reg_temp_pc=9'b0;
end

always @(posedge clk) begin
reg_temp_pc=i_pc;
end

always begin
#10 clk=~clk;
end
endmodule