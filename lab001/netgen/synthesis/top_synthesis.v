////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_synthesis.v
// /___/   /\     Timestamp: Thu Mar 09 15:23:33 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim top.ngc top_synthesis.v 
// Device	: xc7k160t-2L-ffg676
// Input file	: top.ngc
// Output file	: C:\Users\haoxi\Documents\Coding\verilog\ComputerOrganization\lab001\netgen\synthesis\top_synthesis.v
// # of Modules	: 1
// Design Name	: top
// Xilinx        : D:\ISE\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top (
  clk_100mhz, RSTN, seg_clk, seg_sout, SEG_PEN, seg_clrn, LED_out, GPIOf0, led_clk, led_sout, LED_PEN, led_clrn, RDY, readn, CR, buzzer, SW, BTN_y, 
BTN_x
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk_100mhz;
  input RSTN;
  output seg_clk;
  output seg_sout;
  output SEG_PEN;
  output seg_clrn;
  output LED_out;
  output GPIOf0;
  output led_clk;
  output led_sout;
  output LED_PEN;
  output led_clrn;
  output RDY;
  output readn;
  output CR;
  output buzzer;
  input [15 : 0] SW;
  input [3 : 0] BTN_y;
  output [4 : 0] BTN_x;
  
  // synthesis translate_off
  
  wire SW_15_IBUF_0;
  wire SW_14_IBUF_1;
  wire SW_13_IBUF_2;
  wire SW_12_IBUF_3;
  wire SW_11_IBUF_4;
  wire SW_10_IBUF_5;
  wire SW_9_IBUF_6;
  wire SW_8_IBUF_7;
  wire SW_7_IBUF_8;
  wire SW_6_IBUF_9;
  wire SW_5_IBUF_10;
  wire SW_4_IBUF_11;
  wire SW_3_IBUF_12;
  wire SW_2_IBUF_13;
  wire SW_1_IBUF_14;
  wire SW_0_IBUF_15;
  wire BTN_y_3_IBUF_16;
  wire BTN_y_2_IBUF_17;
  wire BTN_y_1_IBUF_18;
  wire BTN_y_0_IBUF_19;
  wire clk_100mhz_BUFGP_20;
  wire RSTN_IBUF_21;
  wire BTN_x_4_OBUF_22;
  wire BTN_x_3_OBUF_23;
  wire BTN_x_2_OBUF_24;
  wire BTN_x_1_OBUF_25;
  wire BTN_x_0_OBUF_26;
  wire RDY_OBUF_51;
  wire CR_OBUF_52;
  wire rst;
  wire readn_OBUF_151;
  wire seg_clk_OBUF_152;
  wire seg_sout_OBUF_153;
  wire SEG_PEN_OBUF_154;
  wire seg_clrn_OBUF_155;
  wire clk_100mhz_INV_20_o;
  wire clkdiv_3_BUFG_198;
  wire led_clk_OBUF_231;
  wire \ledDevice/oe_233 ;
  wire buzzer_OBUF_266;
  wire N1;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire \Result<10>1 ;
  wire \Result<11>1 ;
  wire \Result<12>1 ;
  wire \Result<13>1 ;
  wire \Result<14>1 ;
  wire \Result<15>1 ;
  wire \Result<16>1 ;
  wire \Result<17>1 ;
  wire \Result<18>1 ;
  wire \Result<19>1 ;
  wire \Result<20>1 ;
  wire \Result<21>1 ;
  wire \Result<22>1 ;
  wire \Result<23>1 ;
  wire \Result<24>1 ;
  wire \Result<25>1 ;
  wire \Result<26>1 ;
  wire \Result<27>1 ;
  wire \Result<28>1 ;
  wire \Result<29>1 ;
  wire \Result<30>1 ;
  wire \Result<31>1 ;
  wire \ledDevice/_n0033_inv ;
  wire \ledDevice/sckEn_inv ;
  wire \ledDevice/sckEn ;
  wire \ledDevice/counter[11]_INV_3_o ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<1> ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<2> ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<3> ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<4> ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<5> ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<6> ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<7> ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<8> ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<9> ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<10> ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<11> ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<12> ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<13> ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<14> ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<15> ;
  wire \ledDevice/shift[16]_shift[15]_mux_6_OUT<16> ;
  wire \U5/MUX3_Point/Mmux_o8 ;
  wire \U5/MUX3_Point/Mmux_o7 ;
  wire \U5/MUX3_Point/Mmux_o6 ;
  wire \U5/MUX3_Point/Mmux_o5 ;
  wire \U5/MUX3_Point/Mmux_o4 ;
  wire \U5/MUX3_Point/Mmux_o3 ;
  wire \U5/MUX3_Point/Mmux_o2 ;
  wire \U5/MUX3_Point/Mmux_o1 ;
  wire \U5/MUX1_DispData/Mmux_o1 ;
  wire \ledDevice/out1_465 ;
  wire \ledDevice/out11_466 ;
  wire \ledDevice/out ;
  wire \ledDevice/out2_468 ;
  wire \Mcount_clkdiv_cy<1>_rt_508 ;
  wire \Mcount_clkdiv_cy<2>_rt_509 ;
  wire \U8/Mcount_clkdiv_cy<1>_rt_510 ;
  wire \U8/Mcount_clkdiv_cy<2>_rt_511 ;
  wire \U8/Mcount_clkdiv_cy<3>_rt_512 ;
  wire \U8/Mcount_clkdiv_cy<4>_rt_513 ;
  wire \U8/Mcount_clkdiv_cy<5>_rt_514 ;
  wire \U8/Mcount_clkdiv_cy<6>_rt_515 ;
  wire \U8/Mcount_clkdiv_cy<7>_rt_516 ;
  wire \U8/Mcount_clkdiv_cy<8>_rt_517 ;
  wire \U8/Mcount_clkdiv_cy<9>_rt_518 ;
  wire \U8/Mcount_clkdiv_cy<10>_rt_519 ;
  wire \U8/Mcount_clkdiv_cy<11>_rt_520 ;
  wire \U8/Mcount_clkdiv_cy<12>_rt_521 ;
  wire \U8/Mcount_clkdiv_cy<13>_rt_522 ;
  wire \U8/Mcount_clkdiv_cy<14>_rt_523 ;
  wire \U8/Mcount_clkdiv_cy<15>_rt_524 ;
  wire \U8/Mcount_clkdiv_cy<16>_rt_525 ;
  wire \U8/Mcount_clkdiv_cy<17>_rt_526 ;
  wire \U8/Mcount_clkdiv_cy<18>_rt_527 ;
  wire \U8/Mcount_clkdiv_cy<19>_rt_528 ;
  wire \U8/Mcount_clkdiv_cy<20>_rt_529 ;
  wire \U8/Mcount_clkdiv_cy<21>_rt_530 ;
  wire \U8/Mcount_clkdiv_cy<22>_rt_531 ;
  wire \U8/Mcount_clkdiv_cy<23>_rt_532 ;
  wire \U8/Mcount_clkdiv_cy<24>_rt_533 ;
  wire \U8/Mcount_clkdiv_cy<25>_rt_534 ;
  wire \U8/Mcount_clkdiv_cy<26>_rt_535 ;
  wire \U8/Mcount_clkdiv_cy<27>_rt_536 ;
  wire \U8/Mcount_clkdiv_cy<28>_rt_537 ;
  wire \U8/Mcount_clkdiv_cy<29>_rt_538 ;
  wire \U8/Mcount_clkdiv_cy<30>_rt_539 ;
  wire \ledDevice/Mcount_counter_cy<10>_rt_540 ;
  wire \ledDevice/Mcount_counter_cy<9>_rt_541 ;
  wire \ledDevice/Mcount_counter_cy<8>_rt_542 ;
  wire \ledDevice/Mcount_counter_cy<7>_rt_543 ;
  wire \ledDevice/Mcount_counter_cy<6>_rt_544 ;
  wire \ledDevice/Mcount_counter_cy<5>_rt_545 ;
  wire \ledDevice/Mcount_counter_cy<4>_rt_546 ;
  wire \ledDevice/Mcount_counter_cy<3>_rt_547 ;
  wire \ledDevice/Mcount_counter_cy<2>_rt_548 ;
  wire \ledDevice/Mcount_counter_cy<1>_rt_549 ;
  wire \Mcount_clkdiv_xor<3>_rt_550 ;
  wire \U8/Mcount_clkdiv_xor<31>_rt_551 ;
  wire \ledDevice/Mcount_counter_xor<11>_rt_552 ;
  wire N4;
  wire N5;
  wire N6;
  wire N8;
  wire N9;
  wire N10;
  wire N12;
  wire N13;
  wire N14;
  wire N16;
  wire N17;
  wire N18;
  wire N20;
  wire N21;
  wire N22;
  wire N24;
  wire N25;
  wire N26;
  wire N28;
  wire N29;
  wire N30;
  wire N32;
  wire N33;
  wire N34;
  wire N36;
  wire N37;
  wire N38;
  wire N40;
  wire N41;
  wire N42;
  wire N44;
  wire N45;
  wire N46;
  wire N48;
  wire N49;
  wire N50;
  wire N52;
  wire N53;
  wire N54;
  wire N56;
  wire N57;
  wire N58;
  wire N60;
  wire N61;
  wire N62;
  wire N64;
  wire N65;
  wire N66;
  wire N68;
  wire N69;
  wire N70;
  wire N72;
  wire N73;
  wire N74;
  wire N76;
  wire N77;
  wire N78;
  wire N80;
  wire N81;
  wire N82;
  wire N84;
  wire N85;
  wire N86;
  wire N88;
  wire N89;
  wire N90;
  wire N92;
  wire N93;
  wire N94;
  wire N96;
  wire N97;
  wire N98;
  wire N100;
  wire N101;
  wire N102;
  wire N104;
  wire N105;
  wire N106;
  wire N108;
  wire N109;
  wire N110;
  wire N112;
  wire N113;
  wire N114;
  wire N116;
  wire N117;
  wire N118;
  wire N120;
  wire N121;
  wire N122;
  wire N124;
  wire N125;
  wire N126;
  wire \NLW_U9_pulse_out<3>_UNCONNECTED ;
  wire \NLW_U9_pulse_out<2>_UNCONNECTED ;
  wire \NLW_U9_pulse_out<1>_UNCONNECTED ;
  wire \NLW_U9_pulse_out<0>_UNCONNECTED ;
  wire \NLW_U9_BTN_OK<3>_UNCONNECTED ;
  wire \NLW_M4_blink<7>_UNCONNECTED ;
  wire \NLW_M4_blink<6>_UNCONNECTED ;
  wire \NLW_M4_blink<5>_UNCONNECTED ;
  wire \NLW_M4_blink<4>_UNCONNECTED ;
  wire \NLW_M4_blink<3>_UNCONNECTED ;
  wire \NLW_M4_blink<2>_UNCONNECTED ;
  wire \NLW_M4_blink<1>_UNCONNECTED ;
  wire [4 : 0] Key_out;
  wire [2 : 0] BTN_OK;
  wire [15 : 0] SW_OK;
  wire [31 : 0] \U8/clkdiv ;
  wire [31 : 0] Ai;
  wire [31 : 0] Bi;
  wire [0 : 0] blink;
  wire [31 : 0] Disp_num;
  wire [7 : 0] point_out;
  wire [0 : 0] n0026;
  wire [31 : 0] ram_data;
  wire [16 : 0] \ledDevice/shift ;
  wire [31 : 0] disp6;
  wire [3 : 0] Result;
  wire [3 : 0] clkdiv;
  wire [0 : 0] Mcount_clkdiv_lut;
  wire [2 : 0] Mcount_clkdiv_cy;
  wire [0 : 0] \U8/Mcount_clkdiv_lut ;
  wire [30 : 0] \U8/Mcount_clkdiv_cy ;
  wire [7 : 0] \U5/cpu_point ;
  wire [0 : 0] \U5/cpu_blink ;
  wire [31 : 0] \U5/disp_data ;
  wire [10 : 0] \ledDevice/Mcount_counter_cy ;
  wire [0 : 0] \ledDevice/Mcount_counter_lut ;
  wire [11 : 0] \ledDevice/Result ;
  wire [11 : 0] \ledDevice/counter ;
  VCC   XST_VCC (
    .P(buzzer_OBUF_266)
  );
  GND   XST_GND (
    .G(N1)
  );
  FD   clkdiv_0 (
    .C(clk_100mhz_BUFGP_20),
    .D(Result[0]),
    .Q(clkdiv[0])
  );
  FD   clkdiv_1 (
    .C(clk_100mhz_BUFGP_20),
    .D(Result[1]),
    .Q(clkdiv[1])
  );
  FD   clkdiv_2 (
    .C(clk_100mhz_BUFGP_20),
    .D(Result[2]),
    .Q(clkdiv[2])
  );
  FD   clkdiv_3 (
    .C(clk_100mhz_BUFGP_20),
    .D(Result[3]),
    .Q(clkdiv[3])
  );
  FDR   \U8/clkdiv_0  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<0>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [0])
  );
  FDR   \U8/clkdiv_1  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<1>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [1])
  );
  FDR   \U8/clkdiv_2  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<2>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [2])
  );
  FDR   \U8/clkdiv_3  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<3>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [3])
  );
  FDR   \U8/clkdiv_4  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<4>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [4])
  );
  FDR   \U8/clkdiv_5  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<5>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [5])
  );
  FDR   \U8/clkdiv_6  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<6>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [6])
  );
  FDR   \U8/clkdiv_7  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<7>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [7])
  );
  FDR   \U8/clkdiv_8  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<8>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [8])
  );
  FDR   \U8/clkdiv_9  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<9>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [9])
  );
  FDR   \U8/clkdiv_10  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<10>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [10])
  );
  FDR   \U8/clkdiv_11  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<11>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [11])
  );
  FDR   \U8/clkdiv_12  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<12>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [12])
  );
  FDR   \U8/clkdiv_13  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<13>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [13])
  );
  FDR   \U8/clkdiv_14  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<14>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [14])
  );
  FDR   \U8/clkdiv_15  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<15>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [15])
  );
  FDR   \U8/clkdiv_16  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<16>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [16])
  );
  FDR   \U8/clkdiv_17  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<17>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [17])
  );
  FDR   \U8/clkdiv_18  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<18>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [18])
  );
  FDR   \U8/clkdiv_19  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<19>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [19])
  );
  FDR   \U8/clkdiv_20  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<20>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [20])
  );
  FDR   \U8/clkdiv_21  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<21>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [21])
  );
  FDR   \U8/clkdiv_22  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<22>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [22])
  );
  FDR   \U8/clkdiv_23  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<23>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [23])
  );
  FDR   \U8/clkdiv_24  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<24>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [24])
  );
  FDR   \U8/clkdiv_25  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<25>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [25])
  );
  FDR   \U8/clkdiv_26  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<26>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [26])
  );
  FDR   \U8/clkdiv_27  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<27>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [27])
  );
  FDR   \U8/clkdiv_28  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<28>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [28])
  );
  FDR   \U8/clkdiv_29  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<29>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [29])
  );
  FDR   \U8/clkdiv_30  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<30>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [30])
  );
  FDR   \U8/clkdiv_31  (
    .C(clk_100mhz_BUFGP_20),
    .D(\Result<31>1 ),
    .R(\U8/clkdiv [31]),
    .Q(\U8/clkdiv [31])
  );
  MUXCY   \Mcount_clkdiv_cy<0>  (
    .CI(N1),
    .DI(buzzer_OBUF_266),
    .S(Mcount_clkdiv_lut[0]),
    .O(Mcount_clkdiv_cy[0])
  );
  XORCY   \Mcount_clkdiv_xor<0>  (
    .CI(N1),
    .LI(Mcount_clkdiv_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_clkdiv_cy<1>  (
    .CI(Mcount_clkdiv_cy[0]),
    .DI(N1),
    .S(\Mcount_clkdiv_cy<1>_rt_508 ),
    .O(Mcount_clkdiv_cy[1])
  );
  XORCY   \Mcount_clkdiv_xor<1>  (
    .CI(Mcount_clkdiv_cy[0]),
    .LI(\Mcount_clkdiv_cy<1>_rt_508 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_clkdiv_cy<2>  (
    .CI(Mcount_clkdiv_cy[1]),
    .DI(N1),
    .S(\Mcount_clkdiv_cy<2>_rt_509 ),
    .O(Mcount_clkdiv_cy[2])
  );
  XORCY   \Mcount_clkdiv_xor<2>  (
    .CI(Mcount_clkdiv_cy[1]),
    .LI(\Mcount_clkdiv_cy<2>_rt_509 ),
    .O(Result[2])
  );
  XORCY   \Mcount_clkdiv_xor<3>  (
    .CI(Mcount_clkdiv_cy[2]),
    .LI(\Mcount_clkdiv_xor<3>_rt_550 ),
    .O(Result[3])
  );
  MUXCY   \U8/Mcount_clkdiv_cy<0>  (
    .CI(N1),
    .DI(buzzer_OBUF_266),
    .S(\U8/Mcount_clkdiv_lut [0]),
    .O(\U8/Mcount_clkdiv_cy [0])
  );
  XORCY   \U8/Mcount_clkdiv_xor<0>  (
    .CI(N1),
    .LI(\U8/Mcount_clkdiv_lut [0]),
    .O(\Result<0>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<1>  (
    .CI(\U8/Mcount_clkdiv_cy [0]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<1>_rt_510 ),
    .O(\U8/Mcount_clkdiv_cy [1])
  );
  XORCY   \U8/Mcount_clkdiv_xor<1>  (
    .CI(\U8/Mcount_clkdiv_cy [0]),
    .LI(\U8/Mcount_clkdiv_cy<1>_rt_510 ),
    .O(\Result<1>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<2>  (
    .CI(\U8/Mcount_clkdiv_cy [1]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<2>_rt_511 ),
    .O(\U8/Mcount_clkdiv_cy [2])
  );
  XORCY   \U8/Mcount_clkdiv_xor<2>  (
    .CI(\U8/Mcount_clkdiv_cy [1]),
    .LI(\U8/Mcount_clkdiv_cy<2>_rt_511 ),
    .O(\Result<2>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<3>  (
    .CI(\U8/Mcount_clkdiv_cy [2]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<3>_rt_512 ),
    .O(\U8/Mcount_clkdiv_cy [3])
  );
  XORCY   \U8/Mcount_clkdiv_xor<3>  (
    .CI(\U8/Mcount_clkdiv_cy [2]),
    .LI(\U8/Mcount_clkdiv_cy<3>_rt_512 ),
    .O(\Result<3>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<4>  (
    .CI(\U8/Mcount_clkdiv_cy [3]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<4>_rt_513 ),
    .O(\U8/Mcount_clkdiv_cy [4])
  );
  XORCY   \U8/Mcount_clkdiv_xor<4>  (
    .CI(\U8/Mcount_clkdiv_cy [3]),
    .LI(\U8/Mcount_clkdiv_cy<4>_rt_513 ),
    .O(\Result<4>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<5>  (
    .CI(\U8/Mcount_clkdiv_cy [4]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<5>_rt_514 ),
    .O(\U8/Mcount_clkdiv_cy [5])
  );
  XORCY   \U8/Mcount_clkdiv_xor<5>  (
    .CI(\U8/Mcount_clkdiv_cy [4]),
    .LI(\U8/Mcount_clkdiv_cy<5>_rt_514 ),
    .O(\Result<5>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<6>  (
    .CI(\U8/Mcount_clkdiv_cy [5]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<6>_rt_515 ),
    .O(\U8/Mcount_clkdiv_cy [6])
  );
  XORCY   \U8/Mcount_clkdiv_xor<6>  (
    .CI(\U8/Mcount_clkdiv_cy [5]),
    .LI(\U8/Mcount_clkdiv_cy<6>_rt_515 ),
    .O(\Result<6>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<7>  (
    .CI(\U8/Mcount_clkdiv_cy [6]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<7>_rt_516 ),
    .O(\U8/Mcount_clkdiv_cy [7])
  );
  XORCY   \U8/Mcount_clkdiv_xor<7>  (
    .CI(\U8/Mcount_clkdiv_cy [6]),
    .LI(\U8/Mcount_clkdiv_cy<7>_rt_516 ),
    .O(\Result<7>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<8>  (
    .CI(\U8/Mcount_clkdiv_cy [7]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<8>_rt_517 ),
    .O(\U8/Mcount_clkdiv_cy [8])
  );
  XORCY   \U8/Mcount_clkdiv_xor<8>  (
    .CI(\U8/Mcount_clkdiv_cy [7]),
    .LI(\U8/Mcount_clkdiv_cy<8>_rt_517 ),
    .O(\Result<8>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<9>  (
    .CI(\U8/Mcount_clkdiv_cy [8]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<9>_rt_518 ),
    .O(\U8/Mcount_clkdiv_cy [9])
  );
  XORCY   \U8/Mcount_clkdiv_xor<9>  (
    .CI(\U8/Mcount_clkdiv_cy [8]),
    .LI(\U8/Mcount_clkdiv_cy<9>_rt_518 ),
    .O(\Result<9>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<10>  (
    .CI(\U8/Mcount_clkdiv_cy [9]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<10>_rt_519 ),
    .O(\U8/Mcount_clkdiv_cy [10])
  );
  XORCY   \U8/Mcount_clkdiv_xor<10>  (
    .CI(\U8/Mcount_clkdiv_cy [9]),
    .LI(\U8/Mcount_clkdiv_cy<10>_rt_519 ),
    .O(\Result<10>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<11>  (
    .CI(\U8/Mcount_clkdiv_cy [10]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<11>_rt_520 ),
    .O(\U8/Mcount_clkdiv_cy [11])
  );
  XORCY   \U8/Mcount_clkdiv_xor<11>  (
    .CI(\U8/Mcount_clkdiv_cy [10]),
    .LI(\U8/Mcount_clkdiv_cy<11>_rt_520 ),
    .O(\Result<11>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<12>  (
    .CI(\U8/Mcount_clkdiv_cy [11]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<12>_rt_521 ),
    .O(\U8/Mcount_clkdiv_cy [12])
  );
  XORCY   \U8/Mcount_clkdiv_xor<12>  (
    .CI(\U8/Mcount_clkdiv_cy [11]),
    .LI(\U8/Mcount_clkdiv_cy<12>_rt_521 ),
    .O(\Result<12>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<13>  (
    .CI(\U8/Mcount_clkdiv_cy [12]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<13>_rt_522 ),
    .O(\U8/Mcount_clkdiv_cy [13])
  );
  XORCY   \U8/Mcount_clkdiv_xor<13>  (
    .CI(\U8/Mcount_clkdiv_cy [12]),
    .LI(\U8/Mcount_clkdiv_cy<13>_rt_522 ),
    .O(\Result<13>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<14>  (
    .CI(\U8/Mcount_clkdiv_cy [13]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<14>_rt_523 ),
    .O(\U8/Mcount_clkdiv_cy [14])
  );
  XORCY   \U8/Mcount_clkdiv_xor<14>  (
    .CI(\U8/Mcount_clkdiv_cy [13]),
    .LI(\U8/Mcount_clkdiv_cy<14>_rt_523 ),
    .O(\Result<14>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<15>  (
    .CI(\U8/Mcount_clkdiv_cy [14]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<15>_rt_524 ),
    .O(\U8/Mcount_clkdiv_cy [15])
  );
  XORCY   \U8/Mcount_clkdiv_xor<15>  (
    .CI(\U8/Mcount_clkdiv_cy [14]),
    .LI(\U8/Mcount_clkdiv_cy<15>_rt_524 ),
    .O(\Result<15>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<16>  (
    .CI(\U8/Mcount_clkdiv_cy [15]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<16>_rt_525 ),
    .O(\U8/Mcount_clkdiv_cy [16])
  );
  XORCY   \U8/Mcount_clkdiv_xor<16>  (
    .CI(\U8/Mcount_clkdiv_cy [15]),
    .LI(\U8/Mcount_clkdiv_cy<16>_rt_525 ),
    .O(\Result<16>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<17>  (
    .CI(\U8/Mcount_clkdiv_cy [16]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<17>_rt_526 ),
    .O(\U8/Mcount_clkdiv_cy [17])
  );
  XORCY   \U8/Mcount_clkdiv_xor<17>  (
    .CI(\U8/Mcount_clkdiv_cy [16]),
    .LI(\U8/Mcount_clkdiv_cy<17>_rt_526 ),
    .O(\Result<17>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<18>  (
    .CI(\U8/Mcount_clkdiv_cy [17]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<18>_rt_527 ),
    .O(\U8/Mcount_clkdiv_cy [18])
  );
  XORCY   \U8/Mcount_clkdiv_xor<18>  (
    .CI(\U8/Mcount_clkdiv_cy [17]),
    .LI(\U8/Mcount_clkdiv_cy<18>_rt_527 ),
    .O(\Result<18>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<19>  (
    .CI(\U8/Mcount_clkdiv_cy [18]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<19>_rt_528 ),
    .O(\U8/Mcount_clkdiv_cy [19])
  );
  XORCY   \U8/Mcount_clkdiv_xor<19>  (
    .CI(\U8/Mcount_clkdiv_cy [18]),
    .LI(\U8/Mcount_clkdiv_cy<19>_rt_528 ),
    .O(\Result<19>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<20>  (
    .CI(\U8/Mcount_clkdiv_cy [19]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<20>_rt_529 ),
    .O(\U8/Mcount_clkdiv_cy [20])
  );
  XORCY   \U8/Mcount_clkdiv_xor<20>  (
    .CI(\U8/Mcount_clkdiv_cy [19]),
    .LI(\U8/Mcount_clkdiv_cy<20>_rt_529 ),
    .O(\Result<20>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<21>  (
    .CI(\U8/Mcount_clkdiv_cy [20]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<21>_rt_530 ),
    .O(\U8/Mcount_clkdiv_cy [21])
  );
  XORCY   \U8/Mcount_clkdiv_xor<21>  (
    .CI(\U8/Mcount_clkdiv_cy [20]),
    .LI(\U8/Mcount_clkdiv_cy<21>_rt_530 ),
    .O(\Result<21>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<22>  (
    .CI(\U8/Mcount_clkdiv_cy [21]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<22>_rt_531 ),
    .O(\U8/Mcount_clkdiv_cy [22])
  );
  XORCY   \U8/Mcount_clkdiv_xor<22>  (
    .CI(\U8/Mcount_clkdiv_cy [21]),
    .LI(\U8/Mcount_clkdiv_cy<22>_rt_531 ),
    .O(\Result<22>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<23>  (
    .CI(\U8/Mcount_clkdiv_cy [22]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<23>_rt_532 ),
    .O(\U8/Mcount_clkdiv_cy [23])
  );
  XORCY   \U8/Mcount_clkdiv_xor<23>  (
    .CI(\U8/Mcount_clkdiv_cy [22]),
    .LI(\U8/Mcount_clkdiv_cy<23>_rt_532 ),
    .O(\Result<23>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<24>  (
    .CI(\U8/Mcount_clkdiv_cy [23]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<24>_rt_533 ),
    .O(\U8/Mcount_clkdiv_cy [24])
  );
  XORCY   \U8/Mcount_clkdiv_xor<24>  (
    .CI(\U8/Mcount_clkdiv_cy [23]),
    .LI(\U8/Mcount_clkdiv_cy<24>_rt_533 ),
    .O(\Result<24>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<25>  (
    .CI(\U8/Mcount_clkdiv_cy [24]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<25>_rt_534 ),
    .O(\U8/Mcount_clkdiv_cy [25])
  );
  XORCY   \U8/Mcount_clkdiv_xor<25>  (
    .CI(\U8/Mcount_clkdiv_cy [24]),
    .LI(\U8/Mcount_clkdiv_cy<25>_rt_534 ),
    .O(\Result<25>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<26>  (
    .CI(\U8/Mcount_clkdiv_cy [25]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<26>_rt_535 ),
    .O(\U8/Mcount_clkdiv_cy [26])
  );
  XORCY   \U8/Mcount_clkdiv_xor<26>  (
    .CI(\U8/Mcount_clkdiv_cy [25]),
    .LI(\U8/Mcount_clkdiv_cy<26>_rt_535 ),
    .O(\Result<26>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<27>  (
    .CI(\U8/Mcount_clkdiv_cy [26]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<27>_rt_536 ),
    .O(\U8/Mcount_clkdiv_cy [27])
  );
  XORCY   \U8/Mcount_clkdiv_xor<27>  (
    .CI(\U8/Mcount_clkdiv_cy [26]),
    .LI(\U8/Mcount_clkdiv_cy<27>_rt_536 ),
    .O(\Result<27>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<28>  (
    .CI(\U8/Mcount_clkdiv_cy [27]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<28>_rt_537 ),
    .O(\U8/Mcount_clkdiv_cy [28])
  );
  XORCY   \U8/Mcount_clkdiv_xor<28>  (
    .CI(\U8/Mcount_clkdiv_cy [27]),
    .LI(\U8/Mcount_clkdiv_cy<28>_rt_537 ),
    .O(\Result<28>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<29>  (
    .CI(\U8/Mcount_clkdiv_cy [28]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<29>_rt_538 ),
    .O(\U8/Mcount_clkdiv_cy [29])
  );
  XORCY   \U8/Mcount_clkdiv_xor<29>  (
    .CI(\U8/Mcount_clkdiv_cy [28]),
    .LI(\U8/Mcount_clkdiv_cy<29>_rt_538 ),
    .O(\Result<29>1 )
  );
  MUXCY   \U8/Mcount_clkdiv_cy<30>  (
    .CI(\U8/Mcount_clkdiv_cy [29]),
    .DI(N1),
    .S(\U8/Mcount_clkdiv_cy<30>_rt_539 ),
    .O(\U8/Mcount_clkdiv_cy [30])
  );
  XORCY   \U8/Mcount_clkdiv_xor<30>  (
    .CI(\U8/Mcount_clkdiv_cy [29]),
    .LI(\U8/Mcount_clkdiv_cy<30>_rt_539 ),
    .O(\Result<30>1 )
  );
  XORCY   \U8/Mcount_clkdiv_xor<31>  (
    .CI(\U8/Mcount_clkdiv_cy [30]),
    .LI(\U8/Mcount_clkdiv_xor<31>_rt_551 ),
    .O(\Result<31>1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/cpu_point_7  (
    .C(clk_100mhz_BUFGP_20),
    .D(\U8/clkdiv [7]),
    .Q(\U5/cpu_point [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/cpu_point_6  (
    .C(clk_100mhz_BUFGP_20),
    .D(\U8/clkdiv [6]),
    .Q(\U5/cpu_point [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/cpu_point_5  (
    .C(clk_100mhz_BUFGP_20),
    .D(\U8/clkdiv [5]),
    .Q(\U5/cpu_point [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/cpu_point_4  (
    .C(clk_100mhz_BUFGP_20),
    .D(\U8/clkdiv [4]),
    .Q(\U5/cpu_point [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/cpu_point_3  (
    .C(clk_100mhz_BUFGP_20),
    .D(\U8/clkdiv [3]),
    .Q(\U5/cpu_point [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/cpu_point_2  (
    .C(clk_100mhz_BUFGP_20),
    .D(\U8/clkdiv [2]),
    .Q(\U5/cpu_point [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/cpu_point_1  (
    .C(clk_100mhz_BUFGP_20),
    .D(\U8/clkdiv [1]),
    .Q(\U5/cpu_point [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/cpu_point_0  (
    .C(clk_100mhz_BUFGP_20),
    .D(\U8/clkdiv [0]),
    .Q(\U5/cpu_point [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_31  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[31]),
    .Q(\U5/disp_data [31])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_30  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[30]),
    .Q(\U5/disp_data [30])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_29  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[29]),
    .Q(\U5/disp_data [29])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_28  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[28]),
    .Q(\U5/disp_data [28])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_27  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[27]),
    .Q(\U5/disp_data [27])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_26  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[26]),
    .Q(\U5/disp_data [26])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_25  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[25]),
    .Q(\U5/disp_data [25])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_24  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[24]),
    .Q(\U5/disp_data [24])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_23  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[23]),
    .Q(\U5/disp_data [23])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_22  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[22]),
    .Q(\U5/disp_data [22])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_21  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[21]),
    .Q(\U5/disp_data [21])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_20  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[20]),
    .Q(\U5/disp_data [20])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_19  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[19]),
    .Q(\U5/disp_data [19])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_18  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[18]),
    .Q(\U5/disp_data [18])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_17  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[17]),
    .Q(\U5/disp_data [17])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_16  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[16]),
    .Q(\U5/disp_data [16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_15  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[15]),
    .Q(\U5/disp_data [15])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_14  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[14]),
    .Q(\U5/disp_data [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_13  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[13]),
    .Q(\U5/disp_data [13])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_12  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[12]),
    .Q(\U5/disp_data [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_11  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[11]),
    .Q(\U5/disp_data [11])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_10  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[10]),
    .Q(\U5/disp_data [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_9  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[9]),
    .Q(\U5/disp_data [9])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_8  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[8]),
    .Q(\U5/disp_data [8])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_7  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[7]),
    .Q(\U5/disp_data [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_6  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[6]),
    .Q(\U5/disp_data [6])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_5  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[5]),
    .Q(\U5/disp_data [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_4  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[4]),
    .Q(\U5/disp_data [4])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_3  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[3]),
    .Q(\U5/disp_data [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_2  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[2]),
    .Q(\U5/disp_data [2])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/disp_data_1  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[1]),
    .Q(\U5/disp_data [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U5/disp_data_0  (
    .C(clk_100mhz_BUFGP_20),
    .D(Ai[0]),
    .Q(\U5/disp_data [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \U5/cpu_blink_0  (
    .C(clk_100mhz_BUFGP_20),
    .D(blink[0]),
    .Q(\U5/cpu_blink [0])
  );
  XORCY   \ledDevice/Mcount_counter_xor<11>  (
    .CI(\ledDevice/Mcount_counter_cy [10]),
    .LI(\ledDevice/Mcount_counter_xor<11>_rt_552 ),
    .O(\ledDevice/Result [11])
  );
  XORCY   \ledDevice/Mcount_counter_xor<10>  (
    .CI(\ledDevice/Mcount_counter_cy [9]),
    .LI(\ledDevice/Mcount_counter_cy<10>_rt_540 ),
    .O(\ledDevice/Result [10])
  );
  MUXCY   \ledDevice/Mcount_counter_cy<10>  (
    .CI(\ledDevice/Mcount_counter_cy [9]),
    .DI(N1),
    .S(\ledDevice/Mcount_counter_cy<10>_rt_540 ),
    .O(\ledDevice/Mcount_counter_cy [10])
  );
  XORCY   \ledDevice/Mcount_counter_xor<9>  (
    .CI(\ledDevice/Mcount_counter_cy [8]),
    .LI(\ledDevice/Mcount_counter_cy<9>_rt_541 ),
    .O(\ledDevice/Result [9])
  );
  MUXCY   \ledDevice/Mcount_counter_cy<9>  (
    .CI(\ledDevice/Mcount_counter_cy [8]),
    .DI(N1),
    .S(\ledDevice/Mcount_counter_cy<9>_rt_541 ),
    .O(\ledDevice/Mcount_counter_cy [9])
  );
  XORCY   \ledDevice/Mcount_counter_xor<8>  (
    .CI(\ledDevice/Mcount_counter_cy [7]),
    .LI(\ledDevice/Mcount_counter_cy<8>_rt_542 ),
    .O(\ledDevice/Result [8])
  );
  MUXCY   \ledDevice/Mcount_counter_cy<8>  (
    .CI(\ledDevice/Mcount_counter_cy [7]),
    .DI(N1),
    .S(\ledDevice/Mcount_counter_cy<8>_rt_542 ),
    .O(\ledDevice/Mcount_counter_cy [8])
  );
  XORCY   \ledDevice/Mcount_counter_xor<7>  (
    .CI(\ledDevice/Mcount_counter_cy [6]),
    .LI(\ledDevice/Mcount_counter_cy<7>_rt_543 ),
    .O(\ledDevice/Result [7])
  );
  MUXCY   \ledDevice/Mcount_counter_cy<7>  (
    .CI(\ledDevice/Mcount_counter_cy [6]),
    .DI(N1),
    .S(\ledDevice/Mcount_counter_cy<7>_rt_543 ),
    .O(\ledDevice/Mcount_counter_cy [7])
  );
  XORCY   \ledDevice/Mcount_counter_xor<6>  (
    .CI(\ledDevice/Mcount_counter_cy [5]),
    .LI(\ledDevice/Mcount_counter_cy<6>_rt_544 ),
    .O(\ledDevice/Result [6])
  );
  MUXCY   \ledDevice/Mcount_counter_cy<6>  (
    .CI(\ledDevice/Mcount_counter_cy [5]),
    .DI(N1),
    .S(\ledDevice/Mcount_counter_cy<6>_rt_544 ),
    .O(\ledDevice/Mcount_counter_cy [6])
  );
  XORCY   \ledDevice/Mcount_counter_xor<5>  (
    .CI(\ledDevice/Mcount_counter_cy [4]),
    .LI(\ledDevice/Mcount_counter_cy<5>_rt_545 ),
    .O(\ledDevice/Result [5])
  );
  MUXCY   \ledDevice/Mcount_counter_cy<5>  (
    .CI(\ledDevice/Mcount_counter_cy [4]),
    .DI(N1),
    .S(\ledDevice/Mcount_counter_cy<5>_rt_545 ),
    .O(\ledDevice/Mcount_counter_cy [5])
  );
  XORCY   \ledDevice/Mcount_counter_xor<4>  (
    .CI(\ledDevice/Mcount_counter_cy [3]),
    .LI(\ledDevice/Mcount_counter_cy<4>_rt_546 ),
    .O(\ledDevice/Result [4])
  );
  MUXCY   \ledDevice/Mcount_counter_cy<4>  (
    .CI(\ledDevice/Mcount_counter_cy [3]),
    .DI(N1),
    .S(\ledDevice/Mcount_counter_cy<4>_rt_546 ),
    .O(\ledDevice/Mcount_counter_cy [4])
  );
  XORCY   \ledDevice/Mcount_counter_xor<3>  (
    .CI(\ledDevice/Mcount_counter_cy [2]),
    .LI(\ledDevice/Mcount_counter_cy<3>_rt_547 ),
    .O(\ledDevice/Result [3])
  );
  MUXCY   \ledDevice/Mcount_counter_cy<3>  (
    .CI(\ledDevice/Mcount_counter_cy [2]),
    .DI(N1),
    .S(\ledDevice/Mcount_counter_cy<3>_rt_547 ),
    .O(\ledDevice/Mcount_counter_cy [3])
  );
  XORCY   \ledDevice/Mcount_counter_xor<2>  (
    .CI(\ledDevice/Mcount_counter_cy [1]),
    .LI(\ledDevice/Mcount_counter_cy<2>_rt_548 ),
    .O(\ledDevice/Result [2])
  );
  MUXCY   \ledDevice/Mcount_counter_cy<2>  (
    .CI(\ledDevice/Mcount_counter_cy [1]),
    .DI(N1),
    .S(\ledDevice/Mcount_counter_cy<2>_rt_548 ),
    .O(\ledDevice/Mcount_counter_cy [2])
  );
  XORCY   \ledDevice/Mcount_counter_xor<1>  (
    .CI(\ledDevice/Mcount_counter_cy [0]),
    .LI(\ledDevice/Mcount_counter_cy<1>_rt_549 ),
    .O(\ledDevice/Result [1])
  );
  MUXCY   \ledDevice/Mcount_counter_cy<1>  (
    .CI(\ledDevice/Mcount_counter_cy [0]),
    .DI(N1),
    .S(\ledDevice/Mcount_counter_cy<1>_rt_549 ),
    .O(\ledDevice/Mcount_counter_cy [1])
  );
  XORCY   \ledDevice/Mcount_counter_xor<0>  (
    .CI(N1),
    .LI(\ledDevice/Mcount_counter_lut [0]),
    .O(\ledDevice/Result [0])
  );
  MUXCY   \ledDevice/Mcount_counter_cy<0>  (
    .CI(N1),
    .DI(buzzer_OBUF_266),
    .S(\ledDevice/Mcount_counter_lut [0]),
    .O(\ledDevice/Mcount_counter_cy [0])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \ledDevice/counter_11  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/sckEn_inv ),
    .D(\ledDevice/Result [11]),
    .Q(\ledDevice/counter [11])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \ledDevice/counter_10  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/sckEn_inv ),
    .D(\ledDevice/Result [10]),
    .Q(\ledDevice/counter [10])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \ledDevice/counter_9  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/sckEn_inv ),
    .D(\ledDevice/Result [9]),
    .Q(\ledDevice/counter [9])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \ledDevice/counter_8  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/sckEn_inv ),
    .D(\ledDevice/Result [8]),
    .Q(\ledDevice/counter [8])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \ledDevice/counter_7  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/sckEn_inv ),
    .D(\ledDevice/Result [7]),
    .Q(\ledDevice/counter [7])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \ledDevice/counter_6  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/sckEn_inv ),
    .D(\ledDevice/Result [6]),
    .Q(\ledDevice/counter [6])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \ledDevice/counter_5  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/sckEn_inv ),
    .D(\ledDevice/Result [5]),
    .Q(\ledDevice/counter [5])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \ledDevice/counter_4  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/sckEn_inv ),
    .D(\ledDevice/Result [4]),
    .Q(\ledDevice/counter [4])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \ledDevice/counter_3  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/sckEn_inv ),
    .D(\ledDevice/Result [3]),
    .Q(\ledDevice/counter [3])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \ledDevice/counter_2  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/sckEn_inv ),
    .D(\ledDevice/Result [2]),
    .Q(\ledDevice/counter [2])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \ledDevice/counter_1  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/sckEn_inv ),
    .D(\ledDevice/Result [1]),
    .Q(\ledDevice/counter [1])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \ledDevice/counter_0  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/sckEn_inv ),
    .D(\ledDevice/Result [0]),
    .Q(\ledDevice/counter [0])
  );
  FDE   \ledDevice/shift_16  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<16> ),
    .Q(\ledDevice/shift [16])
  );
  FDE   \ledDevice/shift_15  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<15> ),
    .Q(\ledDevice/shift [15])
  );
  FDE   \ledDevice/shift_14  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<14> ),
    .Q(\ledDevice/shift [14])
  );
  FDE   \ledDevice/shift_13  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<13> ),
    .Q(\ledDevice/shift [13])
  );
  FDE   \ledDevice/shift_12  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<12> ),
    .Q(\ledDevice/shift [12])
  );
  FDE   \ledDevice/shift_11  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<11> ),
    .Q(\ledDevice/shift [11])
  );
  FDE   \ledDevice/shift_10  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<10> ),
    .Q(\ledDevice/shift [10])
  );
  FDE   \ledDevice/shift_9  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<9> ),
    .Q(\ledDevice/shift [9])
  );
  FDE   \ledDevice/shift_8  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<8> ),
    .Q(\ledDevice/shift [8])
  );
  FDE   \ledDevice/shift_7  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<7> ),
    .Q(\ledDevice/shift [7])
  );
  FDE   \ledDevice/shift_6  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<6> ),
    .Q(\ledDevice/shift [6])
  );
  FDE   \ledDevice/shift_5  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<5> ),
    .Q(\ledDevice/shift [5])
  );
  FDE   \ledDevice/shift_4  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<4> ),
    .Q(\ledDevice/shift [4])
  );
  FDE   \ledDevice/shift_3  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<3> ),
    .Q(\ledDevice/shift [3])
  );
  FDE   \ledDevice/shift_2  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<2> ),
    .Q(\ledDevice/shift [2])
  );
  FDE   \ledDevice/shift_1  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/shift[16]_shift[15]_mux_6_OUT<1> ),
    .Q(\ledDevice/shift [1])
  );
  FDE   \ledDevice/shift_0  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/_n0033_inv ),
    .D(\ledDevice/sckEn_inv ),
    .Q(\ledDevice/shift [0])
  );
  FDE   \ledDevice/oe  (
    .C(clkdiv_3_BUFG_198),
    .CE(\ledDevice/sckEn_inv ),
    .D(\ledDevice/counter[11]_INV_3_o ),
    .Q(\ledDevice/oe_233 )
  );
  LUT5 #(
    .INIT ( 32'h43420100 ))
  \U5/LE_out<0>1  (
    .I0(SW_OK[0]),
    .I1(SW_OK[1]),
    .I2(SW_OK[2]),
    .I3(\U5/cpu_blink [0]),
    .I4(blink[0]),
    .O(n0026[0])
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux1611  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[8]),
    .I2(\ledDevice/shift [8]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<9> )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux1511  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[7]),
    .I2(\ledDevice/shift [7]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux1411  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[6]),
    .I2(\ledDevice/shift [6]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux1311  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[5]),
    .I2(\ledDevice/shift [5]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux1211  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[4]),
    .I2(\ledDevice/shift [4]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux1011  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[2]),
    .I2(\ledDevice/shift [2]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux911  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[1]),
    .I2(\ledDevice/shift [1]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux11111  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[3]),
    .I2(\ledDevice/shift [3]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux811  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[0]),
    .I2(\ledDevice/shift [0]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux711  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[15]),
    .I2(\ledDevice/shift [15]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<16> )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux611  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[14]),
    .I2(\ledDevice/shift [14]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux511  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[13]),
    .I2(\ledDevice/shift [13]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<14> )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux411  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[12]),
    .I2(\ledDevice/shift [12]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<13> )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux311  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[11]),
    .I2(\ledDevice/shift [11]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux1111  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[9]),
    .I2(\ledDevice/shift [9]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \ledDevice/mux211  (
    .I0(\ledDevice/sckEn ),
    .I1(SW_OK[10]),
    .I2(\ledDevice/shift [10]),
    .O(\ledDevice/shift[16]_shift[15]_mux_6_OUT<11> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \ledDevice/sck1  (
    .I0(clkdiv[3]),
    .I1(\ledDevice/sckEn ),
    .O(led_clk_OBUF_231)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U5/MUX3_Point/Mmux_o81  (
    .I0(SW_OK[2]),
    .I1(\U5/cpu_point [7]),
    .I2(\U8/clkdiv [7]),
    .O(\U5/MUX3_Point/Mmux_o8 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U5/MUX3_Point/Mmux_o82  (
    .I0(SW_OK[0]),
    .I1(SW_OK[1]),
    .I2(\U8/clkdiv [15]),
    .I3(\U8/clkdiv [31]),
    .I4(\U8/clkdiv [23]),
    .I5(\U5/MUX3_Point/Mmux_o8 ),
    .O(point_out[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U5/MUX3_Point/Mmux_o71  (
    .I0(SW_OK[2]),
    .I1(\U5/cpu_point [6]),
    .I2(\U8/clkdiv [6]),
    .O(\U5/MUX3_Point/Mmux_o7 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U5/MUX3_Point/Mmux_o72  (
    .I0(SW_OK[0]),
    .I1(SW_OK[1]),
    .I2(\U8/clkdiv [14]),
    .I3(\U8/clkdiv [30]),
    .I4(\U8/clkdiv [22]),
    .I5(\U5/MUX3_Point/Mmux_o7 ),
    .O(point_out[6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U5/MUX3_Point/Mmux_o61  (
    .I0(SW_OK[2]),
    .I1(\U5/cpu_point [5]),
    .I2(\U8/clkdiv [5]),
    .O(\U5/MUX3_Point/Mmux_o6 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U5/MUX3_Point/Mmux_o62  (
    .I0(SW_OK[0]),
    .I1(SW_OK[1]),
    .I2(\U8/clkdiv [13]),
    .I3(\U8/clkdiv [29]),
    .I4(\U8/clkdiv [21]),
    .I5(\U5/MUX3_Point/Mmux_o6 ),
    .O(point_out[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U5/MUX3_Point/Mmux_o51  (
    .I0(SW_OK[2]),
    .I1(\U5/cpu_point [4]),
    .I2(\U8/clkdiv [4]),
    .O(\U5/MUX3_Point/Mmux_o5 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U5/MUX3_Point/Mmux_o52  (
    .I0(SW_OK[0]),
    .I1(SW_OK[1]),
    .I2(\U8/clkdiv [12]),
    .I3(\U8/clkdiv [28]),
    .I4(\U8/clkdiv [20]),
    .I5(\U5/MUX3_Point/Mmux_o5 ),
    .O(point_out[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U5/MUX3_Point/Mmux_o41  (
    .I0(SW_OK[2]),
    .I1(\U5/cpu_point [3]),
    .I2(\U8/clkdiv [3]),
    .O(\U5/MUX3_Point/Mmux_o4 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U5/MUX3_Point/Mmux_o42  (
    .I0(SW_OK[0]),
    .I1(SW_OK[1]),
    .I2(\U8/clkdiv [11]),
    .I3(\U8/clkdiv [27]),
    .I4(\U8/clkdiv [19]),
    .I5(\U5/MUX3_Point/Mmux_o4 ),
    .O(point_out[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U5/MUX3_Point/Mmux_o31  (
    .I0(SW_OK[2]),
    .I1(\U5/cpu_point [2]),
    .I2(\U8/clkdiv [2]),
    .O(\U5/MUX3_Point/Mmux_o3 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U5/MUX3_Point/Mmux_o32  (
    .I0(SW_OK[0]),
    .I1(SW_OK[1]),
    .I2(\U8/clkdiv [10]),
    .I3(\U8/clkdiv [26]),
    .I4(\U8/clkdiv [18]),
    .I5(\U5/MUX3_Point/Mmux_o3 ),
    .O(point_out[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U5/MUX3_Point/Mmux_o21  (
    .I0(SW_OK[2]),
    .I1(\U5/cpu_point [1]),
    .I2(\U8/clkdiv [1]),
    .O(\U5/MUX3_Point/Mmux_o2 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U5/MUX3_Point/Mmux_o22  (
    .I0(SW_OK[0]),
    .I1(SW_OK[1]),
    .I2(\U8/clkdiv [9]),
    .I3(\U8/clkdiv [25]),
    .I4(\U8/clkdiv [17]),
    .I5(\U5/MUX3_Point/Mmux_o2 ),
    .O(point_out[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U5/MUX3_Point/Mmux_o11  (
    .I0(SW_OK[2]),
    .I1(\U5/cpu_point [0]),
    .I2(\U8/clkdiv [0]),
    .O(\U5/MUX3_Point/Mmux_o1 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U5/MUX3_Point/Mmux_o12  (
    .I0(SW_OK[0]),
    .I1(SW_OK[1]),
    .I2(\U8/clkdiv [8]),
    .I3(\U8/clkdiv [24]),
    .I4(\U8/clkdiv [16]),
    .I5(\U5/MUX3_Point/Mmux_o1 ),
    .O(point_out[0])
  );
  LUT6 #(
    .INIT ( 64'hAAFFFFF000CCFF00 ))
  \U5/MUX1_DispData/Mmux_o110  (
    .I0(ram_data[0]),
    .I1(\U8/clkdiv [0]),
    .I2(Bi[0]),
    .I3(SW_OK[2]),
    .I4(SW_OK[1]),
    .I5(SW_OK[0]),
    .O(\U5/MUX1_DispData/Mmux_o1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF00CEFFFF000A ))
  \U5/MUX1_DispData/Mmux_o111  (
    .I0(\U5/disp_data [0]),
    .I1(SW_OK[2]),
    .I2(SW_OK[1]),
    .I3(SW_OK[0]),
    .I4(\U5/MUX1_DispData/Mmux_o1 ),
    .I5(disp6[0]),
    .O(Disp_num[0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \ledDevice/out11  (
    .I0(\ledDevice/shift [7]),
    .I1(\ledDevice/shift [6]),
    .I2(\ledDevice/shift [9]),
    .I3(\ledDevice/shift [8]),
    .I4(\ledDevice/shift [11]),
    .I5(\ledDevice/shift [10]),
    .O(\ledDevice/out1_465 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \ledDevice/out12  (
    .I0(\ledDevice/shift [1]),
    .I1(\ledDevice/shift [0]),
    .I2(\ledDevice/shift [3]),
    .I3(\ledDevice/shift [2]),
    .I4(\ledDevice/shift [5]),
    .I5(\ledDevice/shift [4]),
    .O(\ledDevice/out11_466 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \ledDevice/out13  (
    .I0(\ledDevice/out1_465 ),
    .I1(\ledDevice/shift [13]),
    .I2(\ledDevice/shift [12]),
    .I3(\ledDevice/shift [15]),
    .I4(\ledDevice/shift [14]),
    .I5(\ledDevice/out11_466 ),
    .O(\ledDevice/sckEn )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \ledDevice/out1  (
    .I0(\ledDevice/counter [7]),
    .I1(\ledDevice/counter [6]),
    .I2(\ledDevice/counter [9]),
    .I3(\ledDevice/counter [8]),
    .I4(\ledDevice/counter [11]),
    .I5(\ledDevice/counter [10]),
    .O(\ledDevice/out )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \ledDevice/out2  (
    .I0(\ledDevice/counter [1]),
    .I1(\ledDevice/counter [0]),
    .I2(\ledDevice/counter [3]),
    .I3(\ledDevice/counter [2]),
    .I4(\ledDevice/counter [5]),
    .I5(\ledDevice/counter [4]),
    .O(\ledDevice/out2_468 )
  );
  IBUF   SW_15_IBUF (
    .I(SW[15]),
    .O(SW_15_IBUF_0)
  );
  IBUF   SW_14_IBUF (
    .I(SW[14]),
    .O(SW_14_IBUF_1)
  );
  IBUF   SW_13_IBUF (
    .I(SW[13]),
    .O(SW_13_IBUF_2)
  );
  IBUF   SW_12_IBUF (
    .I(SW[12]),
    .O(SW_12_IBUF_3)
  );
  IBUF   SW_11_IBUF (
    .I(SW[11]),
    .O(SW_11_IBUF_4)
  );
  IBUF   SW_10_IBUF (
    .I(SW[10]),
    .O(SW_10_IBUF_5)
  );
  IBUF   SW_9_IBUF (
    .I(SW[9]),
    .O(SW_9_IBUF_6)
  );
  IBUF   SW_8_IBUF (
    .I(SW[8]),
    .O(SW_8_IBUF_7)
  );
  IBUF   SW_7_IBUF (
    .I(SW[7]),
    .O(SW_7_IBUF_8)
  );
  IBUF   SW_6_IBUF (
    .I(SW[6]),
    .O(SW_6_IBUF_9)
  );
  IBUF   SW_5_IBUF (
    .I(SW[5]),
    .O(SW_5_IBUF_10)
  );
  IBUF   SW_4_IBUF (
    .I(SW[4]),
    .O(SW_4_IBUF_11)
  );
  IBUF   SW_3_IBUF (
    .I(SW[3]),
    .O(SW_3_IBUF_12)
  );
  IBUF   SW_2_IBUF (
    .I(SW[2]),
    .O(SW_2_IBUF_13)
  );
  IBUF   SW_1_IBUF (
    .I(SW[1]),
    .O(SW_1_IBUF_14)
  );
  IBUF   SW_0_IBUF (
    .I(SW[0]),
    .O(SW_0_IBUF_15)
  );
  IBUF   BTN_y_3_IBUF (
    .I(BTN_y[3]),
    .O(BTN_y_3_IBUF_16)
  );
  IBUF   BTN_y_2_IBUF (
    .I(BTN_y[2]),
    .O(BTN_y_2_IBUF_17)
  );
  IBUF   BTN_y_1_IBUF (
    .I(BTN_y[1]),
    .O(BTN_y_1_IBUF_18)
  );
  IBUF   BTN_y_0_IBUF (
    .I(BTN_y[0]),
    .O(BTN_y_0_IBUF_19)
  );
  IBUF   RSTN_IBUF (
    .I(RSTN),
    .O(RSTN_IBUF_21)
  );
  OBUF   BTN_x_4_OBUF (
    .I(BTN_x_4_OBUF_22),
    .O(BTN_x[4])
  );
  OBUF   BTN_x_3_OBUF (
    .I(BTN_x_3_OBUF_23),
    .O(BTN_x[3])
  );
  OBUF   BTN_x_2_OBUF (
    .I(BTN_x_2_OBUF_24),
    .O(BTN_x[2])
  );
  OBUF   BTN_x_1_OBUF (
    .I(BTN_x_1_OBUF_25),
    .O(BTN_x[1])
  );
  OBUF   BTN_x_0_OBUF (
    .I(BTN_x_0_OBUF_26),
    .O(BTN_x[0])
  );
  OBUF   seg_clk_OBUF (
    .I(seg_clk_OBUF_152),
    .O(seg_clk)
  );
  OBUF   seg_sout_OBUF (
    .I(seg_sout_OBUF_153),
    .O(seg_sout)
  );
  OBUF   SEG_PEN_OBUF (
    .I(SEG_PEN_OBUF_154),
    .O(SEG_PEN)
  );
  OBUF   seg_clrn_OBUF (
    .I(seg_clrn_OBUF_155),
    .O(seg_clrn)
  );
  OBUF   led_clk_OBUF (
    .I(led_clk_OBUF_231),
    .O(led_clk)
  );
  OBUF   led_sout_OBUF (
    .I(\ledDevice/shift [16]),
    .O(led_sout)
  );
  OBUF   LED_PEN_OBUF (
    .I(\ledDevice/oe_233 ),
    .O(LED_PEN)
  );
  OBUF   led_clrn_OBUF (
    .I(buzzer_OBUF_266),
    .O(led_clrn)
  );
  OBUF   RDY_OBUF (
    .I(RDY_OBUF_51),
    .O(RDY)
  );
  OBUF   readn_OBUF (
    .I(readn_OBUF_151),
    .O(readn)
  );
  OBUF   CR_OBUF (
    .I(CR_OBUF_52),
    .O(CR)
  );
  OBUF   buzzer_OBUF (
    .I(buzzer_OBUF_266),
    .O(buzzer)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clkdiv_cy<1>_rt  (
    .I0(clkdiv[1]),
    .O(\Mcount_clkdiv_cy<1>_rt_508 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clkdiv_cy<2>_rt  (
    .I0(clkdiv[2]),
    .O(\Mcount_clkdiv_cy<2>_rt_509 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<1>_rt  (
    .I0(\U8/clkdiv [1]),
    .O(\U8/Mcount_clkdiv_cy<1>_rt_510 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<2>_rt  (
    .I0(\U8/clkdiv [2]),
    .O(\U8/Mcount_clkdiv_cy<2>_rt_511 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<3>_rt  (
    .I0(\U8/clkdiv [3]),
    .O(\U8/Mcount_clkdiv_cy<3>_rt_512 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<4>_rt  (
    .I0(\U8/clkdiv [4]),
    .O(\U8/Mcount_clkdiv_cy<4>_rt_513 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<5>_rt  (
    .I0(\U8/clkdiv [5]),
    .O(\U8/Mcount_clkdiv_cy<5>_rt_514 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<6>_rt  (
    .I0(\U8/clkdiv [6]),
    .O(\U8/Mcount_clkdiv_cy<6>_rt_515 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<7>_rt  (
    .I0(\U8/clkdiv [7]),
    .O(\U8/Mcount_clkdiv_cy<7>_rt_516 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<8>_rt  (
    .I0(\U8/clkdiv [8]),
    .O(\U8/Mcount_clkdiv_cy<8>_rt_517 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<9>_rt  (
    .I0(\U8/clkdiv [9]),
    .O(\U8/Mcount_clkdiv_cy<9>_rt_518 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<10>_rt  (
    .I0(\U8/clkdiv [10]),
    .O(\U8/Mcount_clkdiv_cy<10>_rt_519 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<11>_rt  (
    .I0(\U8/clkdiv [11]),
    .O(\U8/Mcount_clkdiv_cy<11>_rt_520 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<12>_rt  (
    .I0(\U8/clkdiv [12]),
    .O(\U8/Mcount_clkdiv_cy<12>_rt_521 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<13>_rt  (
    .I0(\U8/clkdiv [13]),
    .O(\U8/Mcount_clkdiv_cy<13>_rt_522 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<14>_rt  (
    .I0(\U8/clkdiv [14]),
    .O(\U8/Mcount_clkdiv_cy<14>_rt_523 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<15>_rt  (
    .I0(\U8/clkdiv [15]),
    .O(\U8/Mcount_clkdiv_cy<15>_rt_524 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<16>_rt  (
    .I0(\U8/clkdiv [16]),
    .O(\U8/Mcount_clkdiv_cy<16>_rt_525 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<17>_rt  (
    .I0(\U8/clkdiv [17]),
    .O(\U8/Mcount_clkdiv_cy<17>_rt_526 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<18>_rt  (
    .I0(\U8/clkdiv [18]),
    .O(\U8/Mcount_clkdiv_cy<18>_rt_527 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<19>_rt  (
    .I0(\U8/clkdiv [19]),
    .O(\U8/Mcount_clkdiv_cy<19>_rt_528 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<20>_rt  (
    .I0(\U8/clkdiv [20]),
    .O(\U8/Mcount_clkdiv_cy<20>_rt_529 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<21>_rt  (
    .I0(\U8/clkdiv [21]),
    .O(\U8/Mcount_clkdiv_cy<21>_rt_530 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<22>_rt  (
    .I0(\U8/clkdiv [22]),
    .O(\U8/Mcount_clkdiv_cy<22>_rt_531 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<23>_rt  (
    .I0(\U8/clkdiv [23]),
    .O(\U8/Mcount_clkdiv_cy<23>_rt_532 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<24>_rt  (
    .I0(\U8/clkdiv [24]),
    .O(\U8/Mcount_clkdiv_cy<24>_rt_533 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<25>_rt  (
    .I0(\U8/clkdiv [25]),
    .O(\U8/Mcount_clkdiv_cy<25>_rt_534 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<26>_rt  (
    .I0(\U8/clkdiv [26]),
    .O(\U8/Mcount_clkdiv_cy<26>_rt_535 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<27>_rt  (
    .I0(\U8/clkdiv [27]),
    .O(\U8/Mcount_clkdiv_cy<27>_rt_536 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<28>_rt  (
    .I0(\U8/clkdiv [28]),
    .O(\U8/Mcount_clkdiv_cy<28>_rt_537 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<29>_rt  (
    .I0(\U8/clkdiv [29]),
    .O(\U8/Mcount_clkdiv_cy<29>_rt_538 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_cy<30>_rt  (
    .I0(\U8/clkdiv [30]),
    .O(\U8/Mcount_clkdiv_cy<30>_rt_539 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDevice/Mcount_counter_cy<10>_rt  (
    .I0(\ledDevice/counter [10]),
    .O(\ledDevice/Mcount_counter_cy<10>_rt_540 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDevice/Mcount_counter_cy<9>_rt  (
    .I0(\ledDevice/counter [9]),
    .O(\ledDevice/Mcount_counter_cy<9>_rt_541 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDevice/Mcount_counter_cy<8>_rt  (
    .I0(\ledDevice/counter [8]),
    .O(\ledDevice/Mcount_counter_cy<8>_rt_542 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDevice/Mcount_counter_cy<7>_rt  (
    .I0(\ledDevice/counter [7]),
    .O(\ledDevice/Mcount_counter_cy<7>_rt_543 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDevice/Mcount_counter_cy<6>_rt  (
    .I0(\ledDevice/counter [6]),
    .O(\ledDevice/Mcount_counter_cy<6>_rt_544 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDevice/Mcount_counter_cy<5>_rt  (
    .I0(\ledDevice/counter [5]),
    .O(\ledDevice/Mcount_counter_cy<5>_rt_545 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDevice/Mcount_counter_cy<4>_rt  (
    .I0(\ledDevice/counter [4]),
    .O(\ledDevice/Mcount_counter_cy<4>_rt_546 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDevice/Mcount_counter_cy<3>_rt  (
    .I0(\ledDevice/counter [3]),
    .O(\ledDevice/Mcount_counter_cy<3>_rt_547 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDevice/Mcount_counter_cy<2>_rt  (
    .I0(\ledDevice/counter [2]),
    .O(\ledDevice/Mcount_counter_cy<2>_rt_548 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDevice/Mcount_counter_cy<1>_rt  (
    .I0(\ledDevice/counter [1]),
    .O(\ledDevice/Mcount_counter_cy<1>_rt_549 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clkdiv_xor<3>_rt  (
    .I0(clkdiv[3]),
    .O(\Mcount_clkdiv_xor<3>_rt_550 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U8/Mcount_clkdiv_xor<31>_rt  (
    .I0(\U8/clkdiv [31]),
    .O(\U8/Mcount_clkdiv_xor<31>_rt_551 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ledDevice/Mcount_counter_xor<11>_rt  (
    .I0(\ledDevice/counter [11]),
    .O(\ledDevice/Mcount_counter_xor<11>_rt_552 )
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o81_SW0  (
    .I0(\U5/disp_data [16]),
    .I1(\U8/clkdiv [16]),
    .I2(Bi[16]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N4)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o81_SW1  (
    .I0(ram_data[16]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N5)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o81_SW2  (
    .I0(ram_data[16]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N6)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o82  (
    .I0(SW_OK[2]),
    .I1(N6),
    .I2(N5),
    .I3(N4),
    .I4(disp6[16]),
    .O(Disp_num[16])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o41_SW0  (
    .I0(\U5/disp_data [12]),
    .I1(\U8/clkdiv [12]),
    .I2(Bi[12]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N8)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o41_SW1  (
    .I0(ram_data[12]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N9)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o41_SW2  (
    .I0(ram_data[12]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N10)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o42  (
    .I0(SW_OK[2]),
    .I1(N10),
    .I2(N9),
    .I3(N8),
    .I4(disp6[12]),
    .O(Disp_num[12])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o311_SW0  (
    .I0(\U5/disp_data [8]),
    .I1(\U8/clkdiv [8]),
    .I2(Bi[8]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N12)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o311_SW1  (
    .I0(ram_data[8]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N13)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o311_SW2  (
    .I0(ram_data[8]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N14)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o312  (
    .I0(SW_OK[2]),
    .I1(N14),
    .I2(N13),
    .I3(N12),
    .I4(disp6[8]),
    .O(Disp_num[8])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o271_SW0  (
    .I0(\U5/disp_data [4]),
    .I1(\U8/clkdiv [4]),
    .I2(Bi[4]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N16)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o271_SW1  (
    .I0(ram_data[4]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N17)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o271_SW2  (
    .I0(ram_data[4]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N18)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o272  (
    .I0(SW_OK[2]),
    .I1(N18),
    .I2(N17),
    .I3(N16),
    .I4(disp6[4]),
    .O(Disp_num[4])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o211_SW0  (
    .I0(\U5/disp_data [28]),
    .I1(\U8/clkdiv [28]),
    .I2(Bi[28]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N20)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o211_SW1  (
    .I0(ram_data[28]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N21)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o211_SW2  (
    .I0(ram_data[28]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N22)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o212  (
    .I0(SW_OK[2]),
    .I1(N22),
    .I2(N21),
    .I3(N20),
    .I4(disp6[28]),
    .O(Disp_num[28])
  );
  LUT5 #(
    .INIT ( 32'h00CCF0AA ))
  \U5/MUX1_DispData/Mmux_o171_SW0  (
    .I0(\U5/disp_data [24]),
    .I1(Bi[24]),
    .I2(\U8/clkdiv [24]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N24)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o171_SW1  (
    .I0(ram_data[24]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N25)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o171_SW2  (
    .I0(ram_data[24]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N26)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o172  (
    .I0(SW_OK[2]),
    .I1(N26),
    .I2(N25),
    .I3(N24),
    .I4(disp6[24]),
    .O(Disp_num[24])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o131_SW0  (
    .I0(\U5/disp_data [20]),
    .I1(\U8/clkdiv [20]),
    .I2(Bi[20]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N28)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o131_SW1  (
    .I0(ram_data[20]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N29)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o131_SW2  (
    .I0(ram_data[20]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N30)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o132  (
    .I0(SW_OK[2]),
    .I1(N30),
    .I2(N29),
    .I3(N28),
    .I4(disp6[20]),
    .O(Disp_num[20])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o91_SW0  (
    .I0(\U5/disp_data [17]),
    .I1(\U8/clkdiv [17]),
    .I2(Bi[17]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N32)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o91_SW1  (
    .I0(ram_data[17]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N33)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o91_SW2  (
    .I0(ram_data[17]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N34)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o92  (
    .I0(SW_OK[2]),
    .I1(N34),
    .I2(N33),
    .I3(N32),
    .I4(disp6[17]),
    .O(Disp_num[17])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o51_SW0  (
    .I0(\U5/disp_data [13]),
    .I1(\U8/clkdiv [13]),
    .I2(Bi[13]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N36)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o51_SW1  (
    .I0(ram_data[13]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N37)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o51_SW2  (
    .I0(ram_data[13]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N38)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o52  (
    .I0(SW_OK[2]),
    .I1(N38),
    .I2(N37),
    .I3(N36),
    .I4(disp6[13]),
    .O(Disp_num[13])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o321_SW0  (
    .I0(\U5/disp_data [9]),
    .I1(\U8/clkdiv [9]),
    .I2(Bi[9]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N40)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o321_SW1  (
    .I0(ram_data[9]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N41)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o321_SW2  (
    .I0(ram_data[9]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N42)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o322  (
    .I0(SW_OK[2]),
    .I1(N42),
    .I2(N41),
    .I3(N40),
    .I4(disp6[9]),
    .O(Disp_num[9])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o281_SW0  (
    .I0(\U5/disp_data [5]),
    .I1(\U8/clkdiv [5]),
    .I2(Bi[5]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N44)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o281_SW1  (
    .I0(ram_data[5]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N45)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o281_SW2  (
    .I0(ram_data[5]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N46)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o282  (
    .I0(SW_OK[2]),
    .I1(N46),
    .I2(N45),
    .I3(N44),
    .I4(disp6[5]),
    .O(Disp_num[5])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o221_SW0  (
    .I0(\U5/disp_data [29]),
    .I1(\U8/clkdiv [29]),
    .I2(Bi[29]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N48)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o221_SW1  (
    .I0(ram_data[29]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N49)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o221_SW2  (
    .I0(ram_data[29]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N50)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o222  (
    .I0(SW_OK[2]),
    .I1(N50),
    .I2(N49),
    .I3(N48),
    .I4(disp6[29]),
    .O(Disp_num[29])
  );
  LUT5 #(
    .INIT ( 32'h00CCF0AA ))
  \U5/MUX1_DispData/Mmux_o181_SW0  (
    .I0(\U5/disp_data [25]),
    .I1(Bi[25]),
    .I2(\U8/clkdiv [25]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N52)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o181_SW1  (
    .I0(ram_data[25]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N53)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o181_SW2  (
    .I0(ram_data[25]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N54)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o182  (
    .I0(SW_OK[2]),
    .I1(N54),
    .I2(N53),
    .I3(N52),
    .I4(disp6[25]),
    .O(Disp_num[25])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o141_SW0  (
    .I0(\U5/disp_data [21]),
    .I1(\U8/clkdiv [21]),
    .I2(Bi[21]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N56)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o141_SW1  (
    .I0(ram_data[21]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N57)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o141_SW2  (
    .I0(ram_data[21]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N58)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o142  (
    .I0(SW_OK[2]),
    .I1(N58),
    .I2(N57),
    .I3(N56),
    .I4(disp6[21]),
    .O(Disp_num[21])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o121_SW0  (
    .I0(\U5/disp_data [1]),
    .I1(\U8/clkdiv [1]),
    .I2(Bi[1]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N60)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o121_SW1  (
    .I0(ram_data[1]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N61)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o121_SW2  (
    .I0(ram_data[1]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N62)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o122  (
    .I0(SW_OK[2]),
    .I1(N62),
    .I2(N61),
    .I3(N60),
    .I4(disp6[1]),
    .O(Disp_num[1])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o61_SW0  (
    .I0(\U5/disp_data [14]),
    .I1(\U8/clkdiv [14]),
    .I2(Bi[14]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N64)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o61_SW1  (
    .I0(ram_data[14]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N65)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o61_SW2  (
    .I0(ram_data[14]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N66)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o62  (
    .I0(SW_OK[2]),
    .I1(N66),
    .I2(N65),
    .I3(N64),
    .I4(disp6[14]),
    .O(Disp_num[14])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o291_SW0  (
    .I0(\U5/disp_data [6]),
    .I1(\U8/clkdiv [6]),
    .I2(Bi[6]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N68)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o291_SW1  (
    .I0(ram_data[6]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N69)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o291_SW2  (
    .I0(ram_data[6]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N70)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o292  (
    .I0(SW_OK[2]),
    .I1(N70),
    .I2(N69),
    .I3(N68),
    .I4(disp6[6]),
    .O(Disp_num[6])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o241_SW0  (
    .I0(\U5/disp_data [30]),
    .I1(\U8/clkdiv [30]),
    .I2(Bi[30]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N72)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o241_SW1  (
    .I0(ram_data[30]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N73)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o241_SW2  (
    .I0(ram_data[30]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N74)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o242  (
    .I0(SW_OK[2]),
    .I1(N74),
    .I2(N73),
    .I3(N72),
    .I4(disp6[30]),
    .O(Disp_num[30])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o231_SW0  (
    .I0(\U5/disp_data [2]),
    .I1(\U8/clkdiv [2]),
    .I2(Bi[2]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N76)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o231_SW1  (
    .I0(ram_data[2]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N77)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o231_SW2  (
    .I0(ram_data[2]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N78)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o232  (
    .I0(SW_OK[2]),
    .I1(N78),
    .I2(N77),
    .I3(N76),
    .I4(disp6[2]),
    .O(Disp_num[2])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o21_SW0  (
    .I0(\U5/disp_data [10]),
    .I1(\U8/clkdiv [10]),
    .I2(Bi[10]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N80)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o21_SW1  (
    .I0(ram_data[10]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N81)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o21_SW2  (
    .I0(ram_data[10]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N82)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o22  (
    .I0(SW_OK[2]),
    .I1(N82),
    .I2(N81),
    .I3(N80),
    .I4(disp6[10]),
    .O(Disp_num[10])
  );
  LUT5 #(
    .INIT ( 32'h00CCF0AA ))
  \U5/MUX1_DispData/Mmux_o191_SW0  (
    .I0(\U5/disp_data [26]),
    .I1(Bi[26]),
    .I2(\U8/clkdiv [26]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N84)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o191_SW1  (
    .I0(ram_data[26]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N85)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o191_SW2  (
    .I0(ram_data[26]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N86)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o192  (
    .I0(SW_OK[2]),
    .I1(N86),
    .I2(N85),
    .I3(N84),
    .I4(disp6[26]),
    .O(Disp_num[26])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o151_SW0  (
    .I0(\U5/disp_data [22]),
    .I1(\U8/clkdiv [22]),
    .I2(Bi[22]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N88)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o151_SW1  (
    .I0(ram_data[22]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N89)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o151_SW2  (
    .I0(ram_data[22]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N90)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o152  (
    .I0(SW_OK[2]),
    .I1(N90),
    .I2(N89),
    .I3(N88),
    .I4(disp6[22]),
    .O(Disp_num[22])
  );
  LUT5 #(
    .INIT ( 32'h00F0CCAA ))
  \U5/MUX1_DispData/Mmux_o101_SW0  (
    .I0(\U5/disp_data [18]),
    .I1(\U8/clkdiv [18]),
    .I2(Bi[18]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N92)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o101_SW1  (
    .I0(ram_data[18]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N93)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o101_SW2  (
    .I0(ram_data[18]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N94)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o102  (
    .I0(SW_OK[2]),
    .I1(N94),
    .I2(N93),
    .I3(N92),
    .I4(disp6[18]),
    .O(Disp_num[18])
  );
  LUT5 #(
    .INIT ( 32'h00CCF0AA ))
  \U5/MUX1_DispData/Mmux_o301_SW0  (
    .I0(\U5/disp_data [7]),
    .I1(Bi[7]),
    .I2(\U8/clkdiv [7]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N96)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o301_SW1  (
    .I0(ram_data[7]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N97)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o301_SW2  (
    .I0(ram_data[7]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N98)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o302  (
    .I0(SW_OK[2]),
    .I1(N98),
    .I2(N97),
    .I3(N96),
    .I4(disp6[7]),
    .O(Disp_num[7])
  );
  LUT5 #(
    .INIT ( 32'h00CCF0AA ))
  \U5/MUX1_DispData/Mmux_o31_SW0  (
    .I0(\U5/disp_data [11]),
    .I1(Bi[11]),
    .I2(\U8/clkdiv [11]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N100)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o31_SW1  (
    .I0(ram_data[11]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N101)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o31_SW2  (
    .I0(ram_data[11]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N102)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o32  (
    .I0(SW_OK[2]),
    .I1(N102),
    .I2(N101),
    .I3(N100),
    .I4(disp6[11]),
    .O(Disp_num[11])
  );
  LUT5 #(
    .INIT ( 32'h00CCF0AA ))
  \U5/MUX1_DispData/Mmux_o261_SW0  (
    .I0(\U5/disp_data [3]),
    .I1(Bi[3]),
    .I2(\U8/clkdiv [3]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N104)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o261_SW1  (
    .I0(ram_data[3]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N105)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o261_SW2  (
    .I0(ram_data[3]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N106)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o262  (
    .I0(SW_OK[2]),
    .I1(N106),
    .I2(N105),
    .I3(N104),
    .I4(disp6[3]),
    .O(Disp_num[3])
  );
  LUT5 #(
    .INIT ( 32'h00CCF0AA ))
  \U5/MUX1_DispData/Mmux_o251_SW0  (
    .I0(\U5/disp_data [31]),
    .I1(Bi[31]),
    .I2(\U8/clkdiv [31]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N108)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o251_SW1  (
    .I0(ram_data[31]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N109)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o251_SW2  (
    .I0(ram_data[31]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N110)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o252  (
    .I0(SW_OK[2]),
    .I1(N110),
    .I2(N109),
    .I3(N108),
    .I4(disp6[31]),
    .O(Disp_num[31])
  );
  LUT5 #(
    .INIT ( 32'h00CCF0AA ))
  \U5/MUX1_DispData/Mmux_o201_SW0  (
    .I0(\U5/disp_data [27]),
    .I1(Bi[27]),
    .I2(\U8/clkdiv [27]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N112)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o201_SW1  (
    .I0(ram_data[27]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N113)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o201_SW2  (
    .I0(ram_data[27]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N114)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o202  (
    .I0(SW_OK[2]),
    .I1(N114),
    .I2(N113),
    .I3(N112),
    .I4(disp6[27]),
    .O(Disp_num[27])
  );
  LUT5 #(
    .INIT ( 32'h00CCF0AA ))
  \U5/MUX1_DispData/Mmux_o161_SW0  (
    .I0(\U5/disp_data [23]),
    .I1(Bi[23]),
    .I2(\U8/clkdiv [23]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N116)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o161_SW1  (
    .I0(ram_data[23]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N117)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o161_SW2  (
    .I0(ram_data[23]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N118)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o162  (
    .I0(SW_OK[2]),
    .I1(N118),
    .I2(N117),
    .I3(N116),
    .I4(disp6[23]),
    .O(Disp_num[23])
  );
  LUT5 #(
    .INIT ( 32'h00CCF0AA ))
  \U5/MUX1_DispData/Mmux_o112_SW0  (
    .I0(\U5/disp_data [19]),
    .I1(Bi[19]),
    .I2(\U8/clkdiv [19]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N120)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o112_SW1  (
    .I0(ram_data[19]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N121)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o112_SW2  (
    .I0(ram_data[19]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N122)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o113  (
    .I0(SW_OK[2]),
    .I1(N122),
    .I2(N121),
    .I3(N120),
    .I4(disp6[19]),
    .O(Disp_num[19])
  );
  LUT5 #(
    .INIT ( 32'h00CCF0AA ))
  \U5/MUX1_DispData/Mmux_o71_SW0  (
    .I0(\U5/disp_data [15]),
    .I1(Bi[15]),
    .I2(\U8/clkdiv [15]),
    .I3(SW_OK[1]),
    .I4(SW_OK[0]),
    .O(N124)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U5/MUX1_DispData/Mmux_o71_SW1  (
    .I0(ram_data[15]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N125)
  );
  LUT3 #(
    .INIT ( 8'h8C ))
  \U5/MUX1_DispData/Mmux_o71_SW2  (
    .I0(ram_data[15]),
    .I1(SW_OK[1]),
    .I2(SW_OK[0]),
    .O(N126)
  );
  LUT5 #(
    .INIT ( 32'hDD88F5A0 ))
  \U5/MUX1_DispData/Mmux_o72  (
    .I0(SW_OK[2]),
    .I1(N126),
    .I2(N125),
    .I3(N124),
    .I4(disp6[15]),
    .O(Disp_num[15])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ledDevice/sckEn_inv1  (
    .I0(\ledDevice/out1_465 ),
    .I1(\ledDevice/shift [13]),
    .I2(\ledDevice/shift [12]),
    .I3(\ledDevice/shift [15]),
    .I4(\ledDevice/shift [14]),
    .I5(\ledDevice/out11_466 ),
    .O(\ledDevice/sckEn_inv )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \ledDevice/counter[11]_INV_3_o1  (
    .I0(\ledDevice/out ),
    .I1(\ledDevice/out2_468 ),
    .O(\ledDevice/counter[11]_INV_3_o )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \ledDevice/_n0033_inv1  (
    .I0(\ledDevice/out ),
    .I1(\ledDevice/out2_468 ),
    .I2(\ledDevice/sckEn ),
    .O(\ledDevice/_n0033_inv )
  );
  BUFGP   clk_100mhz_BUFGP (
    .I(clk_100mhz),
    .O(clk_100mhz_BUFGP_20)
  );
  BUFG   clkdiv_3_BUFG (
    .O(clkdiv_3_BUFG_198),
    .I(clkdiv[3])
  );
  INV   \Mcount_clkdiv_lut<0>_INV_0  (
    .I(clkdiv[0]),
    .O(Mcount_clkdiv_lut[0])
  );
  INV   \U8/Mcount_clkdiv_lut<0>_INV_0  (
    .I(\U8/clkdiv [0]),
    .O(\U8/Mcount_clkdiv_lut [0])
  );
  INV   \ledDevice/Mcount_counter_lut<0>_INV_0  (
    .I(\ledDevice/counter [0]),
    .O(\ledDevice/Mcount_counter_lut [0])
  );
  INV   clk_100mhz_INV_20_o1_INV_0 (
    .I(clk_100mhz_BUFGP_20),
    .O(clk_100mhz_INV_20_o)
  );
  SAnti_jitter   U9 (
    .clk(clk_100mhz_BUFGP_20),
    .RSTN(RSTN_IBUF_21),
    .readn(readn_OBUF_151),
    .Key_ready(RDY_OBUF_51),
    .CR(CR_OBUF_52),
    .rst(rst),
    .Key_y({BTN_y_3_IBUF_16, BTN_y_2_IBUF_17, BTN_y_1_IBUF_18, BTN_y_0_IBUF_19}),
    .SW({SW_15_IBUF_0, SW_14_IBUF_1, SW_13_IBUF_2, SW_12_IBUF_3, SW_11_IBUF_4, SW_10_IBUF_5, SW_9_IBUF_6, SW_8_IBUF_7, SW_7_IBUF_8, SW_6_IBUF_9, 
SW_5_IBUF_10, SW_4_IBUF_11, SW_3_IBUF_12, SW_2_IBUF_13, SW_1_IBUF_14, SW_0_IBUF_15}),
    .Key_x({BTN_x_4_OBUF_22, BTN_x_3_OBUF_23, BTN_x_2_OBUF_24, BTN_x_1_OBUF_25, BTN_x_0_OBUF_26}),
    .Key_out({Key_out[4], Key_out[3], Key_out[2], Key_out[1], Key_out[0]}),
    .pulse_out({\NLW_U9_pulse_out<3>_UNCONNECTED , \NLW_U9_pulse_out<2>_UNCONNECTED , \NLW_U9_pulse_out<1>_UNCONNECTED , 
\NLW_U9_pulse_out<0>_UNCONNECTED }),
    .BTN_OK({\NLW_U9_BTN_OK<3>_UNCONNECTED , BTN_OK[2], BTN_OK[1], BTN_OK[0]}),
    .SW_OK({SW_OK[15], SW_OK[14], SW_OK[13], SW_OK[12], SW_OK[11], SW_OK[10], SW_OK[9], SW_OK[8], SW_OK[7], SW_OK[6], SW_OK[5], SW_OK[4], SW_OK[3], 
SW_OK[2], SW_OK[1], SW_OK[0]})
  );
  SEnter_2_32   M4 (
    .clk(clk_100mhz_BUFGP_20),
    .D_ready(RDY_OBUF_51),
    .readn(readn_OBUF_151),
    .BTN({BTN_OK[2], BTN_OK[1], BTN_OK[0]}),
    .Ctrl({SW_OK[7], SW_OK[6], SW_OK[5], SW_OK[15], SW_OK[0]}),
    .Din({Key_out[4], Key_out[3], Key_out[2], Key_out[1], Key_out[0]}),
    .Ai({Ai[31], Ai[30], Ai[29], Ai[28], Ai[27], Ai[26], Ai[25], Ai[24], Ai[23], Ai[22], Ai[21], Ai[20], Ai[19], Ai[18], Ai[17], Ai[16], Ai[15], 
Ai[14], Ai[13], Ai[12], Ai[11], Ai[10], Ai[9], Ai[8], Ai[7], Ai[6], Ai[5], Ai[4], Ai[3], Ai[2], Ai[1], Ai[0]}),
    .Bi({Bi[31], Bi[30], Bi[29], Bi[28], Bi[27], Bi[26], Bi[25], Bi[24], Bi[23], Bi[22], Bi[21], Bi[20], Bi[19], Bi[18], Bi[17], Bi[16], Bi[15], 
Bi[14], Bi[13], Bi[12], Bi[11], Bi[10], Bi[9], Bi[8], Bi[7], Bi[6], Bi[5], Bi[4], Bi[3], Bi[2], Bi[1], Bi[0]}),
    .blink({\NLW_M4_blink<7>_UNCONNECTED , \NLW_M4_blink<6>_UNCONNECTED , \NLW_M4_blink<5>_UNCONNECTED , \NLW_M4_blink<4>_UNCONNECTED , 
\NLW_M4_blink<3>_UNCONNECTED , \NLW_M4_blink<2>_UNCONNECTED , \NLW_M4_blink<1>_UNCONNECTED , blink[0]})
  );
  SSeg7_Dev   U6 (
    .clk(clk_100mhz_BUFGP_20),
    .flash(\U8/clkdiv [25]),
    .rst(rst),
    .Start(\U8/clkdiv [20]),
    .SW0(SW_OK[0]),
    .seg_clk(seg_clk_OBUF_152),
    .seg_clrn(seg_clrn_OBUF_155),
    .SEG_PEN(SEG_PEN_OBUF_154),
    .seg_sout(seg_sout_OBUF_153),
    .Hexs({Disp_num[31], Disp_num[30], Disp_num[29], Disp_num[28], Disp_num[27], Disp_num[26], Disp_num[25], Disp_num[24], Disp_num[23], Disp_num[22]
, Disp_num[21], Disp_num[20], Disp_num[19], Disp_num[18], Disp_num[17], Disp_num[16], Disp_num[15], Disp_num[14], Disp_num[13], Disp_num[12], 
Disp_num[11], Disp_num[10], Disp_num[9], Disp_num[8], Disp_num[7], Disp_num[6], Disp_num[5], Disp_num[4], Disp_num[3], Disp_num[2], Disp_num[1], 
Disp_num[0]}),
    .LES({N1, N1, N1, N1, N1, N1, N1, n0026[0]}),
    .point({point_out[7], point_out[6], point_out[5], point_out[4], point_out[3], point_out[2], point_out[1], point_out[0]})
  );
  RAM_B   U3 (
    .clka(clk_100mhz_INV_20_o),
    .wea({SW_OK[4]}),
    .addra({N1, N1, N1, N1, N1, SW_OK[3], \U8/clkdiv [27], \U8/clkdiv [26], \U8/clkdiv [25], \U8/clkdiv [24]}),
    .dina({disp6[31], disp6[30], disp6[29], disp6[28], disp6[27], disp6[26], disp6[25], disp6[24], disp6[23], disp6[22], disp6[21], disp6[20], 
disp6[19], disp6[18], disp6[17], disp6[16], disp6[15], disp6[14], disp6[13], disp6[12], disp6[11], disp6[10], disp6[9], disp6[8], disp6[7], disp6[6], 
disp6[5], disp6[4], disp6[3], disp6[2], disp6[1], disp6[0]}),
    .douta({ram_data[31], ram_data[30], ram_data[29], ram_data[28], ram_data[27], ram_data[26], ram_data[25], ram_data[24], ram_data[23], ram_data[22]
, ram_data[21], ram_data[20], ram_data[19], ram_data[18], ram_data[17], ram_data[16], ram_data[15], ram_data[14], ram_data[13], ram_data[12], 
ram_data[11], ram_data[10], ram_data[9], ram_data[8], ram_data[7], ram_data[6], ram_data[5], ram_data[4], ram_data[3], ram_data[2], ram_data[1], 
ram_data[0]})
  );
  ROM_D   U2 (
    .a({N1, N1, N1, N1, N1, SW_OK[3], \U8/clkdiv [27], \U8/clkdiv [26], \U8/clkdiv [25], \U8/clkdiv [24]}),
    .spo({disp6[31], disp6[30], disp6[29], disp6[28], disp6[27], disp6[26], disp6[25], disp6[24], disp6[23], disp6[22], disp6[21], disp6[20], 
disp6[19], disp6[18], disp6[17], disp6[16], disp6[15], disp6[14], disp6[13], disp6[12], disp6[11], disp6[10], disp6[9], disp6[8], disp6[7], disp6[6], 
disp6[5], disp6[4], disp6[3], disp6[2], disp6[1], disp6[0]})
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
