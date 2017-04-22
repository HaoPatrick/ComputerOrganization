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
    input wire [1:0]alu_src_b,
    input wire alu_src_a,
    input wire mem2reg,
    input wire jump,
    input wire [1:0]branch,
    input wire reg_write,
    input wire [3:0]alu_control,
    output reg [31:0]pc_out,
    output reg [31:0]addr_out,
    output reg [31:0]data_out,
    output reg [31:0]zero
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


wire [31:0]sign_ext;
sign_ext s0(.i_15(inst_field[15:0]),
            .o_31(sign_ext)
);
wire [31:0]zero_ext;
assign zero_ext={ {16{0}},inst_field[15:0]};
wire [31:0]shamt;
assign shamt={ {27{0}}, inst_field[4:0]};

wire [31:0]alu_data_b;
wire [31:0]alu_data_a;
reg [31:0] temp_alu_data_b;
assign alu_data_a=alu_src_a==0?reg_read1:reg_read2;
assign alu_data_b=temp_alu_data_b;
always @(alu_src_b) begin
  case(alu_src_b)
    2'b00: begin temp_alu_data_b<=reg_read2; end
    2'b01: begin temp_alu_data_b<=sign_ext; end
    2'b10: begin temp_alu_data_b<=zero_ext; end
    2'b11: begin temp_alu_data_b<=shamt; end
  endcase
end

wire zero_temp;
wire overflow;
ALU a0(.ALU_operation(alu_control),
        .A(alu_data_a),
        .B(alu_data_b),
        .res(alu_result),
        .zero(zero_temp),
        .overflow(overflow)
);


reg [31:0]pc;
wire [31:0] jump_address;
assign jump_address={ pc[31:28], inst_field[25:0], {2{0}}};

wire [31:0] shift_pc_addr;
assign shift_pc_addr=pc+sign_ext*4;

always @(posedge clk) begin
  pc=pc+4;
  addr_out=alu_result;
  data_out=reg_read2;
  zero=zero_temp;
  case (branch)
    2'b00: begin pc_out=pc; end
    2'b01: begin pc_out=shift_pc_addr; end
    2'b10: begin pc_out=jump_address; end
    2'b11: begin pc_out=reg_read1;end
  endcase
end

endmodule
