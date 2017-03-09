`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:59:38 03/08/2017 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
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
input clk_100mhz,
input [15:0]SW,
input RSTN,
input [3:0]BTN_y,
output [4:0]BTN_x,
	output seg_clk,
	output seg_sout,
	output SEG_PEN,
	output seg_clrn,
	output LED_out,
	output GPIOf0,
	output led_clk,
	output led_sout,
	output LED_PEN,
	output led_clrn,
	output RDY,
	output readn,
	output CR,
	output buzzer
    );

wire Key_ready;
wire [4:0]Key_out;
wire [3:0]Pulse;
wire [3:0]BTN_OK;
wire [15:0]SW_OK;
wire rst;

assign RDY=Key_ready;
assign CR=CR;
assign buzzer=1;
wire [7:0]point_out;
SAnti_jitter U9(
	.RSTN(RSTN),
	.clk(clk_100mhz),
	.Key_y(BTN_y),
	.Key_x(BTN_x),
	.SW(SW),
	.readn(readn),
	.CR(CR),
	.Key_out(Key_out),
	.Key_ready(Key_ready),
	.pulse_out(Pulse),
	.SW_OK(SW_OK),
	.rst(rst),
	.BTN_OK(BTN_OK)
	);

reg [31:0]clkdiv;
always@(posedge clk_100mhz) begin
	clkdiv <= clkdiv + 1'b1;
end

wire [31:0] Div;
wire Clk_CPU;
clk_div U8(.clk(clk_100mhz),
	.rst(rst),
	.SW2(SW_OK[2]),
	.clkdiv(Div),
	.Clk_CPU(Clk_CPU)
	);


wire [31:0]Ai;
wire [31:0]Bi;
wire [7:0]blink;
SEnter_2_32 M4(.clk(clk_100mhz),
	.Din(Key_out),
	.D_ready(Key_ready),
	.BTN(BTN_OK[2:0]),
	.Ctrl({SW_OK[7:5],SW_OK[15],SW_OK[0]}),
	.readn(readn),
	.Ai(Ai),
	.Bi(Bi),
	.blink(blink)
	);

wire [31:0]Disp_num;
wire [7:0]LE_out;
SSeg7_Dev U6(
	.clk(clk_100mhz),
	.rst(rst),
	.Start(Div[20]),
	.SW0(SW_OK[0]),
	.flash(Div[25]),
	.Hexs(Disp_num),
	.point(point_out),
	.LES(LE_out),
	.seg_clk(seg_clk),
	.seg_sout(seg_sout),
	.SEG_PEN(SEG_PEN),
	.seg_clrn(seg_clrn)
);

wire [31:0]ram_data;
wire [31:0]disp6;

Multi_8CH32 U5(
	.clk(clk_100mhz),
	.rst(rst),
	.EN(1'b1),
	.Test(SW_OK),
	.point_in({Div,Div}),
	.LES({12'b0,blink[3:0],32'b0,blink[7:0],blink[7:0]}),
	.Data0(Ai),
	.data1(Bi),
	.data2(Div),
	.data3(1'b1),
	.data4(1'b1),
	.data5(1'b1),
	.data6(disp6),
	.data7(ram_data),
	.Disp_num(Disp_num),
	.point_out(point_out),
	.LE_out(LE_out)
);

wire [31:0]foobar;
//SPIO U7(
//	.clk(clk_100mhz),
//	.rst(rst),
//	.EN(EN),
//	.Start(Div[20]),
//	.P_Data(31'b1),
//	.counter_set(foobar),
//	.LED_out(foobar),
//	.GPIOf0(foobar),
//	.led_clk(led_clk),
//	.led_sout(led_sout),
//	.LED_PEN(LED_PEN),
//	.led_clrn(led_clrn)
//);

wire [15:0] ledData;
assign ledData = SW_OK;
ShiftReg #(.WIDTH(16)) ledDevice (.clk(clkdiv[3]), .pdata(~ledData), .sout({led_clk,led_sout,LED_PEN,led_clrn}));


RAM_B U3(
	.clka(~clk_100mhz),
	.wea(SW_OK[4]),
	.dina(disp6),
	.addra({N0,N0,N0,N0,N0,SW_OK[3],Div[27:24]}),
	.douta(ram_data)
);

ROM_D U2(
	.a({N0,N0,N0,N0,N0,SW_OK[3],Div[27:24]}),
	.spo(disp6)
);

endmodule

