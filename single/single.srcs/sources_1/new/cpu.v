`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2017 07:25:05 PM
// Design Name: 
// Module Name: cpu
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


module cpu(
input wire clk,
input wire reset,
input wire MIO_ready,
input wire [31:0]inst_in,
input wire [31:0]data_in,
input wire INT,

output wire mem_w, //memory wirte
output wire [31:0]pc_out,
output wire [31:0]addr_out,
output wire [31:0]data_out,
output wire cpu_mio
);

wire zero;
wire reg_dst;
wire alu_src_b;
wire [1:0]mem2reg;
wire [2:0]alu_control;
wire jump;
wire [1:0]branch;
wire reg_write;


scpu_ctrl Controller(
    .opcode(inst_in[31:26]),
    .func(inst_in[5:0]),
    .MIO_ready(MIO_ready),
    .reg_dst(reg_dst),
    .alu_src_b(alu_src_b),
    .mem2reg(mem2reg[1:0]),
    .jump(jump),
    .branch(branch),
    .reg_write(reg_write),
    .alu_control(alu_control[2:0]),
    .mem_w(mem_w),
    .cpu_mio(cpu_mio)
);

data_path Data_path(
    .clk(clk),
    .rst(reset),
    .data_in(data_in),
    .inst_field(inst_in[25:0]),
    .reg_dst(reg_dst),
    .alu_src_b(alu_src_b),
    .mem2reg(mem2reg),
    .jump(jump),
    .branch(branch),
    .reg_write(reg_write),
    .alu_control(alu_control[2:0]),
    .pc_out(pc_out),
    .addr_out(addr_out),
    .data_out(data_out)
);

endmodule
