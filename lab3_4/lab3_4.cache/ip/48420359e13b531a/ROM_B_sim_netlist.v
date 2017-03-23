// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Mon Mar 20 18:16:14 2017
// Host        : HAO-THUNDER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ROM_B_sim_netlist.v
// Design      : ROM_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tlfbv676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ROM_B,dist_mem_gen_v8_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_11,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire [9:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "ROM_B.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "10" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "1024" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "kintex7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "ROM_B.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [9:0]a;
  input [31:0]d;
  input [9:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [9:0]a;
  wire [31:0]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31] = \^spo [31];
  assign spo[30] = \<const0> ;
  assign spo[29:27] = \^spo [29:27];
  assign spo[26] = \^spo [31];
  assign spo[25:11] = \^spo [25:11];
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6:0] = \^spo [6:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [31],\^spo [29:27],\^spo [25:11],\^spo [6:0]}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11_synth
   (spo,
    a);
  output [25:0]spo;
  input [9:0]a;

  wire [9:0]a;
  wire [25:0]spo;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom
   (spo,
    a);
  output [25:0]spo;
  input [9:0]a;

  wire [9:0]a;
  wire [25:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_4_n_0 ;
  wire \spo[11]_INST_0_i_5_n_0 ;
  wire \spo[11]_INST_0_i_6_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_4_n_0 ;
  wire \spo[12]_INST_0_i_5_n_0 ;
  wire \spo[12]_INST_0_i_6_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_4_n_0 ;
  wire \spo[14]_INST_0_i_5_n_0 ;
  wire \spo[14]_INST_0_i_6_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_4_n_0 ;
  wire \spo[16]_INST_0_i_5_n_0 ;
  wire \spo[16]_INST_0_i_6_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_3_n_0 ;
  wire \spo[17]_INST_0_i_4_n_0 ;
  wire \spo[17]_INST_0_i_5_n_0 ;
  wire \spo[17]_INST_0_i_6_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_3_n_0 ;
  wire \spo[18]_INST_0_i_4_n_0 ;
  wire \spo[18]_INST_0_i_5_n_0 ;
  wire \spo[18]_INST_0_i_6_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_3_n_0 ;
  wire \spo[19]_INST_0_i_4_n_0 ;
  wire \spo[19]_INST_0_i_5_n_0 ;
  wire \spo[19]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_3_n_0 ;
  wire \spo[21]_INST_0_i_4_n_0 ;
  wire \spo[21]_INST_0_i_5_n_0 ;
  wire \spo[21]_INST_0_i_6_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_4_n_0 ;
  wire \spo[22]_INST_0_i_5_n_0 ;
  wire \spo[22]_INST_0_i_6_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_3_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_4_n_0 ;
  wire \spo[26]_INST_0_i_5_n_0 ;
  wire \spo[26]_INST_0_i_6_n_0 ;
  wire \spo[27]_INST_0_i_1_n_0 ;
  wire \spo[27]_INST_0_i_2_n_0 ;
  wire \spo[27]_INST_0_i_3_n_0 ;
  wire \spo[27]_INST_0_i_4_n_0 ;
  wire \spo[27]_INST_0_i_5_n_0 ;
  wire \spo[27]_INST_0_i_6_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_4_n_0 ;
  wire \spo[29]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(a[2]),
        .I2(\spo[0]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[0]_INST_0_i_3_n_0 ),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'h0000040009002000)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hD4000100)) 
    \spo[0]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[0]_INST_0_i_4_n_0 ),
        .I4(a[6]),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80006000)) 
    \spo[0]_INST_0_i_3 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(\spo[25]_INST_0_i_1_n_0 ),
        .I3(a[1]),
        .I4(a[4]),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[0]_INST_0_i_4 
       (.I0(a[9]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[5]),
        .O(\spo[0]_INST_0_i_4_n_0 ));
  MUXF8 \spo[11]_INST_0 
       (.I0(\spo[11]_INST_0_i_1_n_0 ),
        .I1(\spo[11]_INST_0_i_2_n_0 ),
        .O(spo[7]),
        .S(a[3]));
  MUXF7 \spo[11]_INST_0_i_1 
       (.I0(\spo[11]_INST_0_i_3_n_0 ),
        .I1(\spo[11]_INST_0_i_4_n_0 ),
        .O(\spo[11]_INST_0_i_1_n_0 ),
        .S(a[2]));
  MUXF7 \spo[11]_INST_0_i_2 
       (.I0(\spo[11]_INST_0_i_5_n_0 ),
        .I1(\spo[11]_INST_0_i_6_n_0 ),
        .O(\spo[11]_INST_0_i_2_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h0D5F00001A0A0000)) 
    \spo[11]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040E06000002020)) 
    \spo[11]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(\spo[29]_INST_0_i_5_n_0 ),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0070000090FF0000)) 
    \spo[11]_INST_0_i_5 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[6]),
        .O(\spo[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0028000002BF0000)) 
    \spo[11]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[6]),
        .O(\spo[11]_INST_0_i_6_n_0 ));
  MUXF8 \spo[12]_INST_0 
       (.I0(\spo[12]_INST_0_i_1_n_0 ),
        .I1(\spo[12]_INST_0_i_2_n_0 ),
        .O(spo[8]),
        .S(a[3]));
  MUXF7 \spo[12]_INST_0_i_1 
       (.I0(\spo[12]_INST_0_i_3_n_0 ),
        .I1(\spo[12]_INST_0_i_4_n_0 ),
        .O(\spo[12]_INST_0_i_1_n_0 ),
        .S(a[2]));
  MUXF7 \spo[12]_INST_0_i_2 
       (.I0(\spo[12]_INST_0_i_5_n_0 ),
        .I1(\spo[12]_INST_0_i_6_n_0 ),
        .O(\spo[12]_INST_0_i_2_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h0555000015AA0000)) 
    \spo[12]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA0045004A00)) 
    \spo[12]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h10F7000000720000)) 
    \spo[12]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[1]),
        .O(\spo[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000185BF00000000)) 
    \spo[12]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_5_n_0 ),
        .O(\spo[12]_INST_0_i_6_n_0 ));
  MUXF7 \spo[13]_INST_0 
       (.I0(\spo[13]_INST_0_i_1_n_0 ),
        .I1(\spo[13]_INST_0_i_2_n_0 ),
        .O(spo[9]),
        .S(a[3]));
  LUT6 #(
    .INIT(64'h88408840084D0848)) 
    \spo[13]_INST_0_i_1 
       (.I0(a[2]),
        .I1(\spo[29]_INST_0_i_4_n_0 ),
        .I2(a[4]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_1_n_0 ),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B300800F000000)) 
    \spo[13]_INST_0_i_2 
       (.I0(\spo[15]_INST_0_i_3_n_0 ),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(\spo[29]_INST_0_i_4_n_0 ),
        .I5(a[1]),
        .O(\spo[13]_INST_0_i_2_n_0 ));
  MUXF8 \spo[14]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(\spo[14]_INST_0_i_2_n_0 ),
        .O(spo[10]),
        .S(a[3]));
  MUXF7 \spo[14]_INST_0_i_1 
       (.I0(\spo[14]_INST_0_i_3_n_0 ),
        .I1(\spo[14]_INST_0_i_4_n_0 ),
        .O(\spo[14]_INST_0_i_1_n_0 ),
        .S(a[2]));
  MUXF7 \spo[14]_INST_0_i_2 
       (.I0(\spo[14]_INST_0_i_5_n_0 ),
        .I1(\spo[14]_INST_0_i_6_n_0 ),
        .O(\spo[14]_INST_0_i_2_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h0510000080000000)) 
    \spo[14]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[6]),
        .O(\spo[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1080400000800000)) 
    \spo[14]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(\spo[29]_INST_0_i_5_n_0 ),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00480000C5000000)) 
    \spo[14]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[6]),
        .O(\spo[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0200000009007000)) 
    \spo[14]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[6]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88CC8800B8338800)) 
    \spo[15]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[15]_INST_0_i_2_n_0 ),
        .I5(a[4]),
        .O(spo[11]));
  LUT5 #(
    .INIT(32'hB0800000)) 
    \spo[15]_INST_0_i_1 
       (.I0(\spo[29]_INST_0_i_4_n_0 ),
        .I1(a[4]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_3_n_0 ),
        .I4(a[0]),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \spo[15]_INST_0_i_2 
       (.I0(a[6]),
        .I1(a[9]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[15]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[15]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[9]),
        .I4(a[6]),
        .O(\spo[15]_INST_0_i_3_n_0 ));
  MUXF8 \spo[16]_INST_0 
       (.I0(\spo[16]_INST_0_i_1_n_0 ),
        .I1(\spo[16]_INST_0_i_2_n_0 ),
        .O(spo[12]),
        .S(a[3]));
  MUXF7 \spo[16]_INST_0_i_1 
       (.I0(\spo[16]_INST_0_i_3_n_0 ),
        .I1(\spo[16]_INST_0_i_4_n_0 ),
        .O(\spo[16]_INST_0_i_1_n_0 ),
        .S(a[2]));
  MUXF7 \spo[16]_INST_0_i_2 
       (.I0(\spo[16]_INST_0_i_5_n_0 ),
        .I1(\spo[16]_INST_0_i_6_n_0 ),
        .O(\spo[16]_INST_0_i_2_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h17770000A2AA0000)) 
    \spo[16]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[5]),
        .O(\spo[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0B1B00004A8A0000)) 
    \spo[16]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[5]),
        .O(\spo[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h008400002FFE0000)) 
    \spo[16]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[6]),
        .O(\spo[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00C0000048BF0000)) 
    \spo[16]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[6]),
        .O(\spo[16]_INST_0_i_6_n_0 ));
  MUXF8 \spo[17]_INST_0 
       (.I0(\spo[17]_INST_0_i_1_n_0 ),
        .I1(\spo[17]_INST_0_i_2_n_0 ),
        .O(spo[13]),
        .S(a[3]));
  MUXF7 \spo[17]_INST_0_i_1 
       (.I0(\spo[17]_INST_0_i_3_n_0 ),
        .I1(\spo[17]_INST_0_i_4_n_0 ),
        .O(\spo[17]_INST_0_i_1_n_0 ),
        .S(a[2]));
  MUXF7 \spo[17]_INST_0_i_2 
       (.I0(\spo[17]_INST_0_i_5_n_0 ),
        .I1(\spo[17]_INST_0_i_6_n_0 ),
        .O(\spo[17]_INST_0_i_2_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h54D5000015AA0000)) 
    \spo[17]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h001500009DAA0000)) 
    \spo[17]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h103F000010300000)) 
    \spo[17]_INST_0_i_5 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h090600002BDF0000)) 
    \spo[17]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_6_n_0 ));
  MUXF8 \spo[18]_INST_0 
       (.I0(\spo[18]_INST_0_i_1_n_0 ),
        .I1(\spo[18]_INST_0_i_2_n_0 ),
        .O(spo[14]),
        .S(a[3]));
  MUXF7 \spo[18]_INST_0_i_1 
       (.I0(\spo[18]_INST_0_i_3_n_0 ),
        .I1(\spo[18]_INST_0_i_4_n_0 ),
        .O(\spo[18]_INST_0_i_1_n_0 ),
        .S(a[2]));
  MUXF7 \spo[18]_INST_0_i_2 
       (.I0(\spo[18]_INST_0_i_5_n_0 ),
        .I1(\spo[18]_INST_0_i_6_n_0 ),
        .O(\spo[18]_INST_0_i_2_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h420000001A004000)) 
    \spo[18]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0E0000001C00C000)) 
    \spo[18]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h060000000B00A000)) 
    \spo[18]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F00800000008000)) 
    \spo[18]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_6_n_0 ));
  MUXF8 \spo[19]_INST_0 
       (.I0(\spo[19]_INST_0_i_1_n_0 ),
        .I1(\spo[19]_INST_0_i_2_n_0 ),
        .O(spo[15]),
        .S(a[3]));
  MUXF7 \spo[19]_INST_0_i_1 
       (.I0(\spo[19]_INST_0_i_3_n_0 ),
        .I1(\spo[19]_INST_0_i_4_n_0 ),
        .O(\spo[19]_INST_0_i_1_n_0 ),
        .S(a[2]));
  MUXF7 \spo[19]_INST_0_i_2 
       (.I0(\spo[19]_INST_0_i_5_n_0 ),
        .I1(\spo[19]_INST_0_i_6_n_0 ),
        .O(\spo[19]_INST_0_i_2_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h1000A00040002000)) 
    \spo[19]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[19]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h006040C000208000)) 
    \spo[19]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(\spo[29]_INST_0_i_5_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[19]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0000B08)) 
    \spo[19]_INST_0_i_5 
       (.I0(\spo[25]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(a[0]),
        .I3(\spo[29]_INST_0_i_4_n_0 ),
        .I4(a[1]),
        .O(\spo[19]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h080040000400D000)) 
    \spo[19]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[19]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(a[2]),
        .I2(\spo[1]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[1]_INST_0_i_3_n_0 ),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'h0012000009400000)) 
    \spo[1]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008044004)) 
    \spo[1]_INST_0_i_2 
       (.I0(a[1]),
        .I1(\spo[29]_INST_0_i_5_n_0 ),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00003C0008080C00)) 
    \spo[1]_INST_0_i_3 
       (.I0(\spo[1]_INST_0_i_4_n_0 ),
        .I1(a[2]),
        .I2(a[0]),
        .I3(\spo[25]_INST_0_i_1_n_0 ),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \spo[1]_INST_0_i_4 
       (.I0(a[9]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[6]),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000501050)) 
    \spo[20]_INST_0 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(\spo[25]_INST_0_i_1_n_0 ),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(spo[16]));
  MUXF8 \spo[21]_INST_0 
       (.I0(\spo[21]_INST_0_i_1_n_0 ),
        .I1(\spo[21]_INST_0_i_2_n_0 ),
        .O(spo[17]),
        .S(a[3]));
  MUXF7 \spo[21]_INST_0_i_1 
       (.I0(\spo[21]_INST_0_i_3_n_0 ),
        .I1(\spo[21]_INST_0_i_4_n_0 ),
        .O(\spo[21]_INST_0_i_1_n_0 ),
        .S(a[2]));
  MUXF7 \spo[21]_INST_0_i_2 
       (.I0(\spo[21]_INST_0_i_5_n_0 ),
        .I1(\spo[21]_INST_0_i_6_n_0 ),
        .O(\spo[21]_INST_0_i_2_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h3F3F00007C0C0000)) 
    \spo[21]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[5]),
        .O(\spo[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h05B1000011AA0000)) 
    \spo[21]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[5]),
        .O(\spo[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00AA0000ABFE0000)) 
    \spo[21]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[6]),
        .O(\spo[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E000007AFF0000)) 
    \spo[21]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[6]),
        .O(\spo[21]_INST_0_i_6_n_0 ));
  MUXF8 \spo[22]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(\spo[22]_INST_0_i_2_n_0 ),
        .O(spo[18]),
        .S(a[3]));
  MUXF7 \spo[22]_INST_0_i_1 
       (.I0(\spo[22]_INST_0_i_3_n_0 ),
        .I1(\spo[22]_INST_0_i_4_n_0 ),
        .O(\spo[22]_INST_0_i_1_n_0 ),
        .S(a[2]));
  MUXF7 \spo[22]_INST_0_i_2 
       (.I0(\spo[22]_INST_0_i_5_n_0 ),
        .I1(\spo[22]_INST_0_i_6_n_0 ),
        .O(\spo[22]_INST_0_i_2_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h5475000045AA0000)) 
    \spo[22]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h01350000B5AA0000)) 
    \spo[22]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h007F000010A20000)) 
    \spo[22]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0400008F1F0000)) 
    \spo[22]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[23]_INST_0 
       (.I0(\spo[23]_INST_0_i_1_n_0 ),
        .I1(a[3]),
        .I2(\spo[23]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(\spo[23]_INST_0_i_3_n_0 ),
        .O(spo[19]));
  LUT6 #(
    .INIT(64'hAF000000E0AF4000)) 
    \spo[23]_INST_0_i_1 
       (.I0(a[4]),
        .I1(\spo[25]_INST_0_i_1_n_0 ),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[29]_INST_0_i_4_n_0 ),
        .I5(a[1]),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h10C0504000000080)) 
    \spo[23]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(\spo[29]_INST_0_i_5_n_0 ),
        .I3(a[6]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080200000406080)) 
    \spo[23]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(\spo[29]_INST_0_i_5_n_0 ),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[24]_INST_0 
       (.I0(\spo[24]_INST_0_i_1_n_0 ),
        .I1(a[3]),
        .I2(\spo[24]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(\spo[24]_INST_0_i_3_n_0 ),
        .O(spo[20]));
  LUT6 #(
    .INIT(64'hD9C040C0BAB91020)) 
    \spo[24]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(\spo[25]_INST_0_i_1_n_0 ),
        .I3(a[0]),
        .I4(\spo[29]_INST_0_i_4_n_0 ),
        .I5(a[1]),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h9D00)) 
    \spo[24]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[25]_INST_0_i_1_n_0 ),
        .O(\spo[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2040400000000000)) 
    \spo[24]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(\spo[29]_INST_0_i_5_n_0 ),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000020106010)) 
    \spo[25]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(\spo[25]_INST_0_i_1_n_0 ),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[2]),
        .O(spo[21]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \spo[25]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[9]),
        .I4(a[6]),
        .O(\spo[25]_INST_0_i_1_n_0 ));
  MUXF8 \spo[26]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(\spo[26]_INST_0_i_2_n_0 ),
        .O(spo[25]),
        .S(a[3]));
  MUXF7 \spo[26]_INST_0_i_1 
       (.I0(\spo[26]_INST_0_i_3_n_0 ),
        .I1(\spo[26]_INST_0_i_4_n_0 ),
        .O(\spo[26]_INST_0_i_1_n_0 ),
        .S(a[2]));
  MUXF7 \spo[26]_INST_0_i_2 
       (.I0(\spo[26]_INST_0_i_5_n_0 ),
        .I1(\spo[26]_INST_0_i_6_n_0 ),
        .O(\spo[26]_INST_0_i_2_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h3400C00000004000)) 
    \spo[26]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h020040001A008000)) 
    \spo[26]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4800)) 
    \spo[26]_INST_0_i_5 
       (.I0(a[1]),
        .I1(\spo[29]_INST_0_i_4_n_0 ),
        .I2(a[0]),
        .I3(a[4]),
        .O(\spo[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0700C00000004000)) 
    \spo[26]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_6_n_0 ));
  MUXF8 \spo[27]_INST_0 
       (.I0(\spo[27]_INST_0_i_1_n_0 ),
        .I1(\spo[27]_INST_0_i_2_n_0 ),
        .O(spo[22]),
        .S(a[3]));
  MUXF7 \spo[27]_INST_0_i_1 
       (.I0(\spo[27]_INST_0_i_3_n_0 ),
        .I1(\spo[27]_INST_0_i_4_n_0 ),
        .O(\spo[27]_INST_0_i_1_n_0 ),
        .S(a[2]));
  MUXF7 \spo[27]_INST_0_i_2 
       (.I0(\spo[27]_INST_0_i_5_n_0 ),
        .I1(\spo[27]_INST_0_i_6_n_0 ),
        .O(\spo[27]_INST_0_i_2_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h50AA000020010000)) 
    \spo[27]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[6]),
        .O(\spo[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h056200002A000000)) 
    \spo[27]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[6]),
        .O(\spo[27]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h20208F80)) 
    \spo[27]_INST_0_i_5 
       (.I0(\spo[29]_INST_0_i_4_n_0 ),
        .I1(a[1]),
        .I2(a[4]),
        .I3(\spo[25]_INST_0_i_1_n_0 ),
        .I4(a[0]),
        .O(\spo[27]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0D00700006000000)) 
    \spo[27]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[6]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_6_n_0 ));
  MUXF7 \spo[28]_INST_0 
       (.I0(\spo[28]_INST_0_i_1_n_0 ),
        .I1(\spo[28]_INST_0_i_2_n_0 ),
        .O(spo[23]),
        .S(a[3]));
  LUT5 #(
    .INIT(32'h00006020)) 
    \spo[28]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(\spo[25]_INST_0_i_1_n_0 ),
        .I3(a[1]),
        .I4(a[4]),
        .O(\spo[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3083008000000000)) 
    \spo[28]_INST_0_i_2 
       (.I0(\spo[29]_INST_0_i_4_n_0 ),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_1_n_0 ),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[29]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(a[3]),
        .I2(\spo[29]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_3_n_0 ),
        .O(spo[24]));
  LUT6 #(
    .INIT(64'h000030000C008080)) 
    \spo[29]_INST_0_i_1 
       (.I0(\spo[25]_INST_0_i_1_n_0 ),
        .I1(a[2]),
        .I2(a[0]),
        .I3(\spo[29]_INST_0_i_4_n_0 ),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30000808)) 
    \spo[29]_INST_0_i_2 
       (.I0(\spo[29]_INST_0_i_4_n_0 ),
        .I1(a[4]),
        .I2(a[1]),
        .I3(\spo[25]_INST_0_i_1_n_0 ),
        .I4(a[0]),
        .O(\spo[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3400800000004000)) 
    \spo[29]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \spo[29]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[9]),
        .I4(a[6]),
        .O(\spo[29]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \spo[29]_INST_0_i_5 
       (.I0(a[8]),
        .I1(a[7]),
        .I2(a[9]),
        .O(\spo[29]_INST_0_i_5_n_0 ));
  MUXF8 \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_2_n_0 ),
        .O(spo[2]),
        .S(a[3]));
  MUXF7 \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_3_n_0 ),
        .I1(\spo[2]_INST_0_i_4_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ),
        .S(a[2]));
  MUXF7 \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_5_n_0 ),
        .I1(\spo[2]_INST_0_i_6_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h4000500000008000)) 
    \spo[2]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h100080004800A000)) 
    \spo[2]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0800000050910000)) 
    \spo[2]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[5]),
        .O(\spo[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0012000019400000)) 
    \spo[2]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[6]),
        .O(\spo[2]_INST_0_i_6_n_0 ));
  MUXF7 \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .O(spo[3]),
        .S(a[3]));
  LUT6 #(
    .INIT(64'h0000000008080B08)) 
    \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_3_n_0 ),
        .I1(a[2]),
        .I2(a[0]),
        .I3(\spo[15]_INST_0_i_3_n_0 ),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020002011400040)) 
    \spo[3]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(\spo[25]_INST_0_i_1_n_0 ),
        .I3(a[0]),
        .I4(\spo[29]_INST_0_i_4_n_0 ),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000000)) 
    \spo[3]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[9]),
        .I5(a[6]),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  MUXF7 \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_2_n_0 ),
        .O(spo[4]),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFF0A00000C000C0)) 
    \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_3_n_0 ),
        .I1(\spo[4]_INST_0_i_4_n_0 ),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[15]_INST_0_i_2_n_0 ),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00008C800C000300)) 
    \spo[4]_INST_0_i_2 
       (.I0(\spo[29]_INST_0_i_4_n_0 ),
        .I1(a[2]),
        .I2(a[0]),
        .I3(\spo[25]_INST_0_i_1_n_0 ),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010002)) 
    \spo[4]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[9]),
        .I4(a[6]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \spo[4]_INST_0_i_4 
       (.I0(a[6]),
        .I1(a[9]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_4_n_0 ));
  MUXF8 \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(\spo[5]_INST_0_i_2_n_0 ),
        .O(spo[5]),
        .S(a[3]));
  MUXF7 \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_3_n_0 ),
        .I1(\spo[5]_INST_0_i_4_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ),
        .S(a[2]));
  MUXF7 \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_5_n_0 ),
        .I1(\spo[5]_INST_0_i_6_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h05DF00003DFE0000)) 
    \spo[5]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[5]),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1A460000DF5F0000)) 
    \spo[5]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_5_n_0 ),
        .I5(a[6]),
        .O(\spo[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h006BD7FF00000000)) 
    \spo[5]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_5_n_0 ),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h007987FF00000000)) 
    \spo[5]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_5_n_0 ),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4020004000000000)) 
    \spo[6]_INST_0 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(\spo[25]_INST_0_i_1_n_0 ),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(spo[6]));
endmodule
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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