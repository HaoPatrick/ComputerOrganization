`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:00:54 03/08/2017 
// Design Name: 
// Module Name:    SAnti_jitter 
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
module SAnti_jitter(
input clk, 		//主板时钟
input RSTN,
input readn,
input [3:0]Key_y,	//阵列式键盘列输入
output reg[4:0] Key_x,	//阵列式键盘行输出
output reg[4:0] Key_out,//阵列式键盘扫描码
output reg  Key_ready,	//阵列式键盘有效
input  [15:0] SW, 	//开关输入
output reg [3:0] BTN_OK,//列按键输出
output reg [3:0] pulse_out,	//列按键脉冲输出
output reg [15:0] SW_OK, //开关输出
output reg  CR,
output reg  rst
			 );
endmodule
