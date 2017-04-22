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
output wire [31:0]Addr_out,
output wire [31:0]Data_out,
output wire CPU_MIO,
input wire INT
    );


wire zero;
wire reg_dst;
wire alu_src_b;
wire mem2reg;
wire [2:0]alu_control;
wire jump;
wire branch;
wire reg_write;


scpu_ctrl Controller(
    .opcode(inst_in[31:26]),
    .func(inst_in[5:0]),
    .MIO_ready(MIO_ready),
    .reg_dst(reg_dst),
    .alu_src_b(alu_src_b),
    .mem2reg(mem2reg),
    .jump(jump),
    .branch(branch),
    .reg_write(reg_write),
    .alu_control(alu_control[2:0]),
    .mem_w(mem_w),
    .cpu_mio(CPU_MIO)
);

data_path Data_path(
    .clk(clk),
    .rst(reset),
    .data_in(Data_in[31:0]),
    .inst_field(inst_in[25:0]),
    .reg_dst(reg_dst),
    .alu_src_b(alu_src_b),
    .mem2reg(mem2reg),
    .jump(jump),
    .branch(branch),
    .reg_write(reg_write),
    .alu_control(alu_control[2:0]),
    .pc_out(PC_out),
    .addr_out(Addr_out),
    .data_out(Data_out)
);
endmodule
