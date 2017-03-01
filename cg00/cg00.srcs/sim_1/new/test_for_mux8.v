`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2017 08:23:12 PM
// Design Name: 
// Module Name: test_for_mux8
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


module test_for_mux8();
reg [7:0]data0;
reg [7:0]data1;
reg [7:0]data2;
reg [7:0]data3;
reg [7:0]data4;
reg [7:0]data5;
reg [7:0]data6;
reg [7:0]data7;
wire [7:0]output_data;
reg [2:0]input_switch;


MUX8T1_8 test0(.s(input_switch),
               .I0(data0),
               .I1(data1),
               .I2(data2),
               .I3(data3),
               .I4(data4),
               .I5(data5),
               .I6(data6),
               .I7(data7),
               .o(output_data)
               );


initial begin 
    data0 = 8'hff;
    data1 = 8'hf0;
    data2 = 8'hf1;
    data3 = 8'hf2;
    data4 = 8'hf3;
    data5 = 8'hf4;
    data6 = 8'hf5;
    data7 = 8'hf6;
    input_switch = 8'b0;
    #1000 $finish;
end

always begin
    #10 input_switch = input_switch + 1;
    if (input_switch == 3'b111) begin
        input_switch = 0;
    end
end


endmodule
