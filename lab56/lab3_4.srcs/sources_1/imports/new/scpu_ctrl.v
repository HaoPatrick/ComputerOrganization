`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2017 07:49:28 PM
// Design Name: 
// Module Name: scpu_ctrl
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


module scpu_ctrl(
input wire [5:0]opcode,
input wire [5:0]func,
input wire MIO_ready,
input wire zero,
output reg reg_dst,
output reg [1:0]alu_src_b,
output reg mem2reg,
output reg jump,
output reg [1:0]branch,
output reg reg_write,
output reg [3:0]alu_control,
output reg mem_w,
output reg cpu_mio,
output reg alu_src_a
    );
parameter alu_add=4'b0010;
parameter alu_sub=4'b0110;
parameter alu_and=4'b0000;
parameter alu_or= 4'b0001;
parameter alu_slt=4'b0111;
parameter alu_nor=4'b0100;
parameter alu_srl=4'b0101;
parameter alu_xor=4'b0011;
parameter alu_sll=4'b1000;

parameter br_pc=2'b00;
parameter br_offset=2'b01;
parameter br_jump=2'b10;
parameter br_reg=2'b11;

parameter alu_b_reg=2'b00;
parameter alu_b_sign=2'b01;
parameter alu_b_zero=2'b10;
parameter alu_b_shamt=2'b11;

parameter alu_a_reg=1'b0;
parameter alu_a_shft=1'b1;


always @(*) begin
alu_src_a=alu_a_reg;
case (opcode)
    6'b000000: begin // R type
        if (func==6'b001000) begin branch=br_reg;end // jr
        else if(func==6'b001001) begin
            reg_dst=0;
            reg_write=1;
            branch=br_reg;
            // jal
        end
        else begin // ALU
            reg_dst=1; reg_write=1;alu_src_b=alu_b_reg;
            case (func)
                6'b100000: alu_control=alu_add;
                6'b100010: alu_control=alu_sub;
                6'b100100: alu_control=alu_and;
                6'b100101: alu_control=alu_or;
                6'b101010: alu_control=alu_slt;
                6'b100111: alu_control=alu_nor;
                6'b000010: begin alu_control=alu_srl; alu_src_a=alu_a_shft; end
                6'b000000: begin alu_control=alu_sll; alu_src_a=alu_a_shft; end
                6'b010110: alu_control=alu_xor;
            endcase
        end
    end
    6'b001000: begin reg_dst=0;alu_src_b=alu_b_sign;reg_write=1;alu_control=alu_add;end // addi
    6'b001100: begin reg_dst=0;alu_src_b=alu_b_zero;reg_write=1;alu_control=alu_and;end // andi
    6'b001101: begin reg_dst=0;alu_src_b=alu_b_zero;reg_write=1;alu_control=alu_or;end // ori
    6'b001110: begin reg_dst=0;alu_src_b=alu_b_zero;reg_write=1;alu_control=alu_xor;end // xori
    6'b001010: begin reg_dst=0;alu_src_b=alu_b_sign;reg_write=1;alu_control=alu_slt;end // slti
    6'b001111: begin reg_dst=0;end // lui
    6'b100011: begin reg_dst=0;alu_src_b=alu_b_reg;mem2reg=1;reg_write=1;alu_control=alu_add;end // lw
    6'b101011: begin alu_src_b=1;alu_src_b=alu_b_reg; alu_control=alu_add;mem_w=1;end // sw
    6'b000100: begin alu_control=alu_sub; branch=zero?br_offset:br_pc; end // beq
    6'b000101: begin alu_control=alu_sub; branch=zero?br_pc:br_offset; end // bne
    6'b000010: begin branch=br_jump; end //j
    6'b000011: begin reg_dst=0;end //jal
    6'b010000: begin reg_dst=0;end //slti
endcase

cpu_mio=1;
end

endmodule
