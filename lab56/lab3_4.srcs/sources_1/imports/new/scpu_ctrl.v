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
output reg reg_dst,
output reg alu_src_b,
output reg mem2reg,
output reg jump,
output reg branch,
output reg reg_write,
output reg [2:0]alu_control,
output reg mem_w,
output reg cpu_mio
    );
parameter alu_add=3'b010;
parameter alu_sub=3'b110;
parameter alu_and=3'b000;
parameter alu_or=3'b001;
parameter alu_slt=3'b111;
parameter alu_nor=3'b100;
parameter alu_srl=3'b101;
parameter alu_xor=3'b011;

parameter br_pc=2'b00;
parameter br_offset=2'b01;
parameter br_jump=2'b10;
parameter br_reg=2'b11;



always @(*) begin
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
            reg_dst=1; reg_write=1;
            case (func)
                6'b100000: alu_control=alu_add;
                6'b100010: alu_control=alu_sub;
                6'b100100: alu_control=alu_and;
                6'b100101: alu_control=alu_or;
                6'b101010: alu_control=alu_slt;
                6'b100111: alu_control=alu_nor;
                6'b000010: alu_control=alu_srl;
                6'b010110: alu_control=alu_xor;
            endcase
        end
    end
    6'b001000: begin reg_dst=0;alu_src_b=1;reg_write=1;alu_control=alu_add;end // addi
    6'b001100: begin reg_dst=0;alu_src_b=1;reg_write=1;alu_control=alu_and;end // andi
    6'b001101: begin reg_dst=0;alu_src_b=1;reg_write=1;alu_control=alu_or;end // ori
    6'b001110: begin reg_dst=0;alu_src_b=1;reg_write=1;alu_control=alu_xor;end // xori
    6'b001010: begin reg_dst=0;alu_src_b=1;reg_write=1;alu_control=alu_slt;end // slti
    6'b001111: begin reg_dst=0;end // lui
    6'b100011: begin reg_dst=0;alu_src_b=1;mem2reg=1;reg_write=1;alu_control=alu_add;end // lw
    6'b101011: begin alu_src_b=1;alu_control=alu_add;mem_w=1;end // sw
    6'b000100: begin alu_control=alu_sub; branch=br_offset; end // beq
    6'b000101: begin alu_control=alu_sub; branch=br_offset; end // bne
    6'b000010: begin branch=br_jump; end //j
    6'b000011: begin reg_dst=0;end //jal
    6'b010000: begin reg_dst=0;end //slti
endcase

cpu_mio=1;
end

endmodule
