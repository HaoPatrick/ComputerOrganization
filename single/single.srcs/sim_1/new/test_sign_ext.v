`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2017 10:34:11 AM
// Design Name: 
// Module Name: test_sign_ext
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


module test_sign_ext();

reg [15:0] i_16;
wire [31:0] o_32;

sign_ext s0(.i_15(i_16),.o_31(o_32));
always begin
#50 i_16=16'hffff;
#50 i_16=16'h0;
end
 
endmodule
