`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2017 10:17:05 AM
// Design Name: 
// Module Name: test_mux
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


module test_mux();
reg [4:0]A,B;
reg C;
wire [4:0]S;
mux m0(.A(A),.B(B),.C(C),.S(S));

initial begin
A=5'b11111;
B=5'b00000;
C=1'b0;
end

always begin
#20 C=~C;
end

endmodule

