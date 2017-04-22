`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2017 08:30:05 PM
// Design Name: 
// Module Name: data_path
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


module data_path(
    input wire clk,
    input wire rst,
    input wire [31:0]data_in,
    input wire [25:0]inst_field,
    input wire reg_dst,
    input wire alu_src_b,
    input wire mem2reg,
    input wire jump,
    input wire branch,
    input wire reg_write,
    input wire [2:0]alu_control,
    output reg [31:0]pc_out,
    output reg [31:0]addr_out,
    output reg [31:0]data_out
    );


wire [4:0]ra = inst_field[25:21];
wire [4:0]rt = inst_field[20:16];
wire [4:0]rd = reg_write==1?inst_field[15:11]:inst_field[20:16];

wire [31:0] data2reg;
wire [31:0] alu_result;
assign data2reg=mem2reg==1?data_in:alu_result;

wire [31:0]reg_read1;
wire [31:0]reg_read2;

regs r0(.clk(clk),
        .rst(rst),
        .L_S(reg_write),
        .R_addr_A(ra),
        .R_addr_B(rt),
        .Wt_addr(rd),
        .wt_data(data2reg),
        .rdata_A(reg_read1),
        .rdata_B(reg_read2)
);


wire [31:0]imme_ext;
sign_ext s0(.i_15(inst_field[15:0]),
            .o_31(imme_ext)
);

wire [31:0]alu_data_b;
assign alu_data_b=alu_src_b==1? imme_ext:reg_read2;

wire zero;
wire overflow;
ALU a0(.ALU_operation(alu_control),
        .A(reg_read1),
        .B(alu_data_b),
        .res(alu_result),
        .zero(zero),
        .overflow(overflow)
);


reg [31:0]pc;
wire [31:0] jump_address;
assign jump_address={ pc[31:28], inst_field[25:0], {2{0}}};

wire [31:0] shift_pc_addr;
assign shift_pc_addr=pc+imme_ext*4;
wire [31:0] temp_pc_mux;
assign temp_pc_mux=(branch==1 && zero==1)?shift_pc_addr:pc;



always @(posedge clk) begin
  pc=pc+4;
  addr_out=alu_result;
  data_out=reg_read2;
  pc_out=jump==1?jump_address:temp_pc_mux;
end

endmodule
