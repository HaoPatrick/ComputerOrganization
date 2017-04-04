`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2017 04:19:44 PM
// Design Name: 
// Module Name: SCPU
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


module SCPU(
input wire clk,
input wire reset,
input wire MIO_ready,

input wire [31:0]inst_in,
input wire [31:0]Data_in,

output wire mem_w,
output wire [31:0]PC_out,
output wire [31:0]ALU_out,
output wire [31:0]Data_out,
output wire CPU_MIO,
input wire INT
    );

wire RegDst;
wire ALUSrc_B;
wire MemtoReg;
wire Jump;
wire Branch;
wire RegWrite;
wire [2:0]ALU_Control;
Data_path DataPath(.clk(clk),
    .rst(reset),
    .Data_in(Data_in[31:0]),
    .inst_field(inst_in),
    .RegDst(RegDst),
    .ALUSrc_B(ALUSrc_B),
    .MemtoReg(MemtoReg),
    .Jump(Jump),
    .Branch(Branch),
    .RegWrite(RegWrite),
    .ALU_Control(ALU_Control[2:0]),
    .PC_out(PC_out),
    .ALU_out(ALU_out),
    .Data_out(Data_out)
    );
SCPU_ctrl Controler(
    .OPcode(inst_in[31:26]),
    .Fun(inst_in[5:0]),
    .MIO_ready(MIO_ready),
    .RegDst(RegDst),
    .ALUSrc_B(ALUSrc_B),
    .MemtoReg(MemtoReg),
    .Jump(Jump),
    .Branch(Branch),
    .RegWrite(RegWrite),
    .ALU_Control(ALU_Control[2:0]),
    .mem_w(mem_w),
    .CPU_MIO(CPU_MIO)
    );
endmodule
