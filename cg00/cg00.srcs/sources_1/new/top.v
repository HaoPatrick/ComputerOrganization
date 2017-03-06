`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2017 08:18:50 PM
// Design Name: 
// Module Name: top
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


module top(
	input clk,
	input [15:0]SW,
	inout [4:0]BTN_X,
    inout [3:0]BTN_Y
    );
    
reg [31:0]clkdiv;
always@(posedge clk) begin
   clkdiv <= clkdiv + 1'b1;
end
 
wire [4:0] keyCode;
wire keyReady;
wire [15:0] SW_OK;
keypad k0 (.clk(clkdiv[15]), .keyX(BTN_Y), .keyY(BTN_X), .keyCode(keyCode), .ready(keyReady));
AntiJitter #(4) a0[15:0](.clk(clkdiv[15]), .I(SW), .O(SW_OK));

wire [31:0]disp6;
wire [31:0]disp7;

dist_mem_gen_0 U2(.addra(clk),.douta(disp6));
blk_mem_gen_0 U3(.clka(clk),.wea(SW_OK[4]),.addra(addra),.dina(disp6),.douta(disp7));


endmodule
