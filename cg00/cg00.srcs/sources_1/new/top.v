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
    inout [3:0]BTN_Y,
    output SEGLED_CLK,
    output SEGLED_CLR,
    output SEGLED_DO,
    output SEGLED_PEN
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

reg [31:0]Data0;
reg [31:0]data1;
reg [31:0]data2;
reg [31:0]data3;
reg [31:0]data4;
reg [31:0]data5;

Multi_8CH32 U5(.clk(clk),.rst(0),.EN(1),.Test(SW[2:0]),.point_in(6'b111111),.LES(6'b111111),
        .Data0(Data0),.data1(data1),.data2(data2),.data3(data3),.data4(data4),.data5(data5),.data6(disp6),.data7(disp7));

wire [31:0] segTestData;
wire [3:0]sout;
Seg7Device segDevice(.clkIO(clkdiv[3]), .clkScan(clkdiv[15:14]), .clkBlink(clkdiv[25]),
	.data(segTestData), .point(8'h0), .LES(8'h0),
	.sout(sout));
	assign SEGLED_CLK = sout[3];
    assign SEGLED_DO = sout[2];
    assign SEGLED_PEN = sout[1];
    assign SEGLED_CLR = sout[0];
	
endmodule
