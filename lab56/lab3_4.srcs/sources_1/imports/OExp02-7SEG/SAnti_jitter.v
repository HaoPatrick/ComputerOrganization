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
input clk, 		//����ʱ��
input RSTN,
input readn,
input [3:0]Key_y,	//����ʽ����������
output reg[4:0] Key_x,	//����ʽ���������
output reg[4:0] Key_out,//����ʽ����ɨ����
output reg  Key_ready,	//����ʽ������Ч
input  [15:0] SW, 	//��������
output reg [3:0] BTN_OK,//�а������
output reg [3:0] pulse_out,	//�а����������
output reg [15:0] SW_OK, //�������
output reg  CR,
output reg  rst
			 );
endmodule
