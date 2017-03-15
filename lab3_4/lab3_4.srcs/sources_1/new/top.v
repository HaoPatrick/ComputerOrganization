`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2017 04:07:37 PM
// Design Name: 
// Module Name: top
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

module top(
input clk_100mhz,
input [15:0]SW,
input RSTN,
input [3:0]BTN_y,
output [4:0]BTN_x,
	output seg_clk,
	output seg_sout,
	output SEG_PEN,
	output seg_clrn,
	output led_clk,
	output led_sout,
	output LED_PEN,
	output led_clrn,
	output RDY,
	output readn,
	output CR,
	output buzzer
    );

wire Key_ready;
wire [4:0]Key_out;
wire [3:0]Pulse;
wire [3:0]BTN_OK;
wire [15:0]SW_OK;
wire rst;

assign RDY=Key_ready;
assign CR=CR;
assign buzzer=1;
wire [7:0]point_out;
SAnti_jitter U9(
	.RSTN(RSTN),
	.clk(clk_100mhz),
	.Key_y(BTN_y),
	.Key_x(BTN_x),
	.SW(SW),
	.readn(readn),
	.CR(CR),
	.Key_out(Key_out),
	.Key_ready(Key_ready),
	.pulse_out(Pulse),
	.SW_OK(SW_OK),
	.rst(rst),
	.BTN_OK(BTN_OK)
	);

reg [31:0]clkdiv;
always@(posedge clk_100mhz) begin
	clkdiv <= clkdiv + 1'b1;
end

wire [31:0] Div;
wire Clk_CPU;
clk_div U8(.clk(clk_100mhz),
	.rst(rst),
	.SW2(SW_OK[2]),
	.clkdiv(Div),
	.Clk_CPU(Clk_CPU)
	);


wire [31:0]Ai;
wire [31:0]Bi;
wire [7:0]blink;
SEnter_2_32 M4(.clk(clk_100mhz),
	.Din(Key_out),
	.D_ready(Key_ready),
	.BTN(BTN_OK[2:0]),
	.Ctrl({SW_OK[7:5],SW_OK[15],SW_OK[0]}),
	.readn(readn),
	.Ai(Ai),
	.Bi(Bi),
	.blink(blink)
	);

wire [31:0]Disp_num;
wire [7:0]LE_out;
SSeg7_Dev U6(
	.clk(clkdiv[3]),
	.rst(rst),
	.Start(Div[20]),
	.SW0(SW_OK[0]),
	.flash(Div[25]),
	.Hexs(Disp_num),
	.point(point_out),
	.LES(LE_out),
	.seg_clk(seg_clk),
	.seg_sout(seg_sout),
	.SEG_PEN(SEG_PEN),
	.seg_clrn(seg_clrn)
);

wire [31:0]ram_data;
wire [31:0]disp6;
wire GPIOe0000000_we;
wire [31:0]CPU2IO;
wire [31:0]PC;
wire [31:0]inst;
wire [31:0]Counter_out;
wire [31:0]Addr_out;
wire [31:0]Data_out;
wire [31:0]Data_in;

Multi_8CH32 U5(
	.clk(~Clk_CPU),
	.rst(rst),
	.EN(GPIOe0000000_we),
	.Test(SW_OK),
	.point_in({Div[31:0],Div[31:0]}),
	.LES({64'b0}),
	.Data0(CPU2IO),
	.data1({N0,N0,PC[31:2]}),
	.data2(inst[31:0]),
	.data3(Counter_out[31:0]),
	.data4(Addr_out[31:0]),
	.data5(Data_out[31:0]),
	.data6(Data_in[31:0]),
	.data7(PC[31:0]),
	.Disp_num(Disp_num),
	.point_out(point_out),
	.LE_out(LE_out)
);

wire mem_w;
SCPU U1(
    .clk(Clk_CPU),
    .reset(rst),
    .inst_in(inst[31:0]),
    .INT(disp6),
    .PC_out(PC[31:0]),
    .mem_w(mem_w),
    .Addr_out(Addr_out[31:0]),
    .Data_in(Data_in[31:0]),
    .Data_out(Data_out[31:0])
);

wire counter_we;
wire [1:0]counter_set;
wire counter0_out;
wire counter1_out;
wire counter2_out;
Counter_x U10(
    .clk(Clk_CPU),
    .rst(rst),
    .clk0(Div[6]),
    .clk1(Div[9]),
    .clk2(Div[11]),
    .counter_we(counter_we),
    .counter_val(CPU2IO),
    .counter_ch(counter_set),
    .counter0_OUT(counter0_out),
    .counter1_OUT(counter1_out),
    .counter2_OUT(counter2_out)
);

wire [31:0]ram_data_in;
wire data_ram_we;
wire [9:0]ram_addr;
wire [31:0]ram_data_out;
wire [15:0]LED_out;

MIO_BUS U4(
    .clk(clk_100mhz),
    .rst(rst),
    .BTN(BTN_OK[3:0]),
    .SW(SW_OK[15:0]),
    .mem_w(mem_w),
    .addr_bus(Addr_out[31:0]),
    .Cpu_data4bus(Data_in[31:0]),
    .Cpu_data2bus(Data_out[31:0]),
    .ram_data_in(ram_data_in),
    .data_ram_we(data_ram_we),
    .ram_addr(ram_addr),
    .ram_data_out(ram_data_out),
    .Peripheral_in(CPU2IO[31:0]),
    .GPIOe0000000_we(GPIOe0000000_we),
    .GPIOf0000000_we(GPIOF0),
    .led_out(LED_out),
    .counter_out(Counter_out[31:0]),
    .counter2_out(counter2_out),
    .counter1_out(counter1_out),
    .counter0_out(counter0_out),
    .counter_we(counter_we)
);

wire [31:0]foobar;


SPIO U7(
    .clk(~Clk_CPU),
    .rst(rst),
    .EN(GPIOF0),
    .Start(Div[20]),
    .P_Data(CPU2IO),
    .counter_set(counter_set),
    .LED_out(LED_out),
    .led_clk(led_clk),
    .led_sout(led_sout),
    .LED_PEN(LED_PEN),
    .led_clrn(led_clrn)
);

RAM_B U3(
	.clka(~clk_100mhz),
	.wea(data_ram_we),
	.dina(ram_data_in),
	.addra(ram_addr),
	.douta(ram_data_out)
);

ROM_B U2(
	.a(PC[11:2]),
	.spo(disp6)
);

endmodule

