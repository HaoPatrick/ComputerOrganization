`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2017 02:27:30 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
input [2:0]ALU_operation,
input signed [31:0]A,
input signed [31:0]B,
output [31:0]res,
output zero,
output overflow
    );
wire [31:0]and_res;
and32 X1(.A(A),.B(B),.res(and_res));

wire [31:0]or_res;
or32 X2(.A(A),.B(B),.res(or_res));

wire [31:0]xor_res;
xor32 X3(.A(A),.B(B),.res(xor_res));

wire [31:0]nor_res;
nor32 X4(.A(A),.B(B),.res(nor_res));

wire [31:0]so;
SignalExt_32 X5(.S(ALU_operation[2]),.So(so));

wire [31:0]xxxor32;
xor32 X6(.A(so),.B(B),.res(xxxor32));

wire [32:0]adc_res;
ADC32 X7(.A(A),.B(xxxor32),.C0(ALU_operation),.S(adc_res));

wire [31:0]SLT;
wire temp;
//assign temp=A[31]&~B[31];
//assign SLT={31'b0,adc_res[31]|temp};

assign SLT=A>B?31'b0:31'b1;
wire [31:0]srl32_res;
srl32 X8(.A(A),.B(B),.res(srl32_res));

MUX8T1_32 X0(
    .s(ALU_operation),
    .I0(and_res),
    .I1(or_res),
    .I2(adc_res[31:0]),
    .I3(xor_res),
    .I4(nor_res),
    .I5(srl32_res),
    .I6(adc_res[31:0]),
    .I7(SLT),
    .o(res)
);

assign overflow=(A[31]==xxxor32[31]) & (adc_res[31] != A[31]);
assign zero=(res==0)?1:0;
endmodule
