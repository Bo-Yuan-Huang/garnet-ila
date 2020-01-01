module memory_core_ila(
__ILA_memory_core_grant__,
addr_in,
chain_in,
chain_wen_in,
clk,
data_in,
flush,
ren_in,
rst,
stall,
switch_db,
wen_in,
__ILA_memory_core_acc_decode__,
__ILA_memory_core_decode_of_RdConfigReg_almost_count__,
__ILA_memory_core_decode_of_RdConfigReg_arbitrary_addr__,
__ILA_memory_core_decode_of_RdConfigReg_chain_idx__,
__ILA_memory_core_decode_of_RdConfigReg_chain_wen_in_reg_sel__,
__ILA_memory_core_decode_of_RdConfigReg_chain_wen_in_reg_value__,
__ILA_memory_core_decode_of_RdConfigReg_circular_en__,
__ILA_memory_core_decode_of_RdConfigReg_depth__,
__ILA_memory_core_decode_of_RdConfigReg_dimensionality__,
__ILA_memory_core_decode_of_RdConfigReg_enable_chain__,
__ILA_memory_core_decode_of_RdConfigReg_flush_reg_sel__,
__ILA_memory_core_decode_of_RdConfigReg_flush_reg_value__,
__ILA_memory_core_decode_of_RdConfigReg_iter_cnt__,
__ILA_memory_core_decode_of_RdConfigReg_mode__,
__ILA_memory_core_decode_of_RdConfigReg_range_0__,
__ILA_memory_core_decode_of_RdConfigReg_range_1__,
__ILA_memory_core_decode_of_RdConfigReg_range_2__,
__ILA_memory_core_decode_of_RdConfigReg_range_3__,
__ILA_memory_core_decode_of_RdConfigReg_range_4__,
__ILA_memory_core_decode_of_RdConfigReg_range_5__,
__ILA_memory_core_decode_of_RdConfigReg_rate_matched__,
__ILA_memory_core_decode_of_RdConfigReg_ren_in_reg_sel__,
__ILA_memory_core_decode_of_RdConfigReg_ren_in_reg_value__,
__ILA_memory_core_decode_of_RdConfigReg_starting_addr__,
__ILA_memory_core_decode_of_RdConfigReg_stencil_width__,
__ILA_memory_core_decode_of_RdConfigReg_stride_0__,
__ILA_memory_core_decode_of_RdConfigReg_stride_1__,
__ILA_memory_core_decode_of_RdConfigReg_stride_2__,
__ILA_memory_core_decode_of_RdConfigReg_stride_3__,
__ILA_memory_core_decode_of_RdConfigReg_stride_4__,
__ILA_memory_core_decode_of_RdConfigReg_stride_5__,
__ILA_memory_core_decode_of_RdConfigReg_switch_db_reg_sel__,
__ILA_memory_core_decode_of_RdConfigReg_switch_db_reg_value__,
__ILA_memory_core_decode_of_RdConfigReg_tile_en__,
__ILA_memory_core_decode_of_RdConfigReg_wen_in_reg_sel__,
__ILA_memory_core_decode_of_RdConfigReg_wen_in_reg_value__,
__ILA_memory_core_decode_of_WrConfigReg_almost_count__,
__ILA_memory_core_decode_of_WrConfigReg_arbitrary_addr__,
__ILA_memory_core_decode_of_WrConfigReg_chain_idx__,
__ILA_memory_core_decode_of_WrConfigReg_chain_wen_in_reg_sel__,
__ILA_memory_core_decode_of_WrConfigReg_chain_wen_in_reg_value__,
__ILA_memory_core_decode_of_WrConfigReg_circular_en__,
__ILA_memory_core_decode_of_WrConfigReg_depth__,
__ILA_memory_core_decode_of_WrConfigReg_dimensionality__,
__ILA_memory_core_decode_of_WrConfigReg_enable_chain__,
__ILA_memory_core_decode_of_WrConfigReg_flush_reg_sel__,
__ILA_memory_core_decode_of_WrConfigReg_flush_reg_value__,
__ILA_memory_core_decode_of_WrConfigReg_iter_cnt__,
__ILA_memory_core_decode_of_WrConfigReg_mode__,
__ILA_memory_core_decode_of_WrConfigReg_range_0__,
__ILA_memory_core_decode_of_WrConfigReg_range_1__,
__ILA_memory_core_decode_of_WrConfigReg_range_2__,
__ILA_memory_core_decode_of_WrConfigReg_range_3__,
__ILA_memory_core_decode_of_WrConfigReg_range_4__,
__ILA_memory_core_decode_of_WrConfigReg_range_5__,
__ILA_memory_core_decode_of_WrConfigReg_rate_matched__,
__ILA_memory_core_decode_of_WrConfigReg_ren_in_reg_sel__,
__ILA_memory_core_decode_of_WrConfigReg_ren_in_reg_value__,
__ILA_memory_core_decode_of_WrConfigReg_starting_addr__,
__ILA_memory_core_decode_of_WrConfigReg_stencil_width__,
__ILA_memory_core_decode_of_WrConfigReg_stride_0__,
__ILA_memory_core_decode_of_WrConfigReg_stride_1__,
__ILA_memory_core_decode_of_WrConfigReg_stride_2__,
__ILA_memory_core_decode_of_WrConfigReg_stride_3__,
__ILA_memory_core_decode_of_WrConfigReg_stride_4__,
__ILA_memory_core_decode_of_WrConfigReg_stride_5__,
__ILA_memory_core_decode_of_WrConfigReg_switch_db_reg_sel__,
__ILA_memory_core_decode_of_WrConfigReg_switch_db_reg_value__,
__ILA_memory_core_decode_of_WrConfigReg_tile_en__,
__ILA_memory_core_decode_of_WrConfigReg_wen_in_reg_sel__,
__ILA_memory_core_decode_of_WrConfigReg_wen_in_reg_value__,
__ILA_memory_core_valid__,
data_out,
valid_out,
almost_full,
almost_empty,
full,
empty,
chain_valid_out,
chain_out,
almost_count,
arbitrary_addr,
chain_idx,
chain_wen_in_reg_sel,
chain_wen_in_reg_value,
circular_en,
depth,
dimensionality,
enable_chain,
flush_reg_sel,
flush_reg_value,
iter_cnt,
mode,
range_0,
range_1,
range_2,
range_3,
range_4,
range_5,
rate_matched,
ren_in_reg_sel,
ren_in_reg_value,
starting_addr,
stencil_width,
stride_0,
stride_1,
stride_2,
stride_3,
stride_4,
stride_5,
switch_db_reg_sel,
switch_db_reg_value,
tile_en,
wen_in_reg_sel,
wen_in_reg_value
);
input     [69:0] __ILA_memory_core_grant__;
input     [15:0] addr_in;
input     [15:0] chain_in;
input            chain_wen_in;
input            clk;
input     [15:0] data_in;
input            flush;
input            ren_in;
input            rst;
input            stall;
input            switch_db;
input            wen_in;
output     [69:0] __ILA_memory_core_acc_decode__;
output            __ILA_memory_core_decode_of_RdConfigReg_almost_count__;
output            __ILA_memory_core_decode_of_RdConfigReg_arbitrary_addr__;
output            __ILA_memory_core_decode_of_RdConfigReg_chain_idx__;
output            __ILA_memory_core_decode_of_RdConfigReg_chain_wen_in_reg_sel__;
output            __ILA_memory_core_decode_of_RdConfigReg_chain_wen_in_reg_value__;
output            __ILA_memory_core_decode_of_RdConfigReg_circular_en__;
output            __ILA_memory_core_decode_of_RdConfigReg_depth__;
output            __ILA_memory_core_decode_of_RdConfigReg_dimensionality__;
output            __ILA_memory_core_decode_of_RdConfigReg_enable_chain__;
output            __ILA_memory_core_decode_of_RdConfigReg_flush_reg_sel__;
output            __ILA_memory_core_decode_of_RdConfigReg_flush_reg_value__;
output            __ILA_memory_core_decode_of_RdConfigReg_iter_cnt__;
output            __ILA_memory_core_decode_of_RdConfigReg_mode__;
output            __ILA_memory_core_decode_of_RdConfigReg_range_0__;
output            __ILA_memory_core_decode_of_RdConfigReg_range_1__;
output            __ILA_memory_core_decode_of_RdConfigReg_range_2__;
output            __ILA_memory_core_decode_of_RdConfigReg_range_3__;
output            __ILA_memory_core_decode_of_RdConfigReg_range_4__;
output            __ILA_memory_core_decode_of_RdConfigReg_range_5__;
output            __ILA_memory_core_decode_of_RdConfigReg_rate_matched__;
output            __ILA_memory_core_decode_of_RdConfigReg_ren_in_reg_sel__;
output            __ILA_memory_core_decode_of_RdConfigReg_ren_in_reg_value__;
output            __ILA_memory_core_decode_of_RdConfigReg_starting_addr__;
output            __ILA_memory_core_decode_of_RdConfigReg_stencil_width__;
output            __ILA_memory_core_decode_of_RdConfigReg_stride_0__;
output            __ILA_memory_core_decode_of_RdConfigReg_stride_1__;
output            __ILA_memory_core_decode_of_RdConfigReg_stride_2__;
output            __ILA_memory_core_decode_of_RdConfigReg_stride_3__;
output            __ILA_memory_core_decode_of_RdConfigReg_stride_4__;
output            __ILA_memory_core_decode_of_RdConfigReg_stride_5__;
output            __ILA_memory_core_decode_of_RdConfigReg_switch_db_reg_sel__;
output            __ILA_memory_core_decode_of_RdConfigReg_switch_db_reg_value__;
output            __ILA_memory_core_decode_of_RdConfigReg_tile_en__;
output            __ILA_memory_core_decode_of_RdConfigReg_wen_in_reg_sel__;
output            __ILA_memory_core_decode_of_RdConfigReg_wen_in_reg_value__;
output            __ILA_memory_core_decode_of_WrConfigReg_almost_count__;
output            __ILA_memory_core_decode_of_WrConfigReg_arbitrary_addr__;
output            __ILA_memory_core_decode_of_WrConfigReg_chain_idx__;
output            __ILA_memory_core_decode_of_WrConfigReg_chain_wen_in_reg_sel__;
output            __ILA_memory_core_decode_of_WrConfigReg_chain_wen_in_reg_value__;
output            __ILA_memory_core_decode_of_WrConfigReg_circular_en__;
output            __ILA_memory_core_decode_of_WrConfigReg_depth__;
output            __ILA_memory_core_decode_of_WrConfigReg_dimensionality__;
output            __ILA_memory_core_decode_of_WrConfigReg_enable_chain__;
output            __ILA_memory_core_decode_of_WrConfigReg_flush_reg_sel__;
output            __ILA_memory_core_decode_of_WrConfigReg_flush_reg_value__;
output            __ILA_memory_core_decode_of_WrConfigReg_iter_cnt__;
output            __ILA_memory_core_decode_of_WrConfigReg_mode__;
output            __ILA_memory_core_decode_of_WrConfigReg_range_0__;
output            __ILA_memory_core_decode_of_WrConfigReg_range_1__;
output            __ILA_memory_core_decode_of_WrConfigReg_range_2__;
output            __ILA_memory_core_decode_of_WrConfigReg_range_3__;
output            __ILA_memory_core_decode_of_WrConfigReg_range_4__;
output            __ILA_memory_core_decode_of_WrConfigReg_range_5__;
output            __ILA_memory_core_decode_of_WrConfigReg_rate_matched__;
output            __ILA_memory_core_decode_of_WrConfigReg_ren_in_reg_sel__;
output            __ILA_memory_core_decode_of_WrConfigReg_ren_in_reg_value__;
output            __ILA_memory_core_decode_of_WrConfigReg_starting_addr__;
output            __ILA_memory_core_decode_of_WrConfigReg_stencil_width__;
output            __ILA_memory_core_decode_of_WrConfigReg_stride_0__;
output            __ILA_memory_core_decode_of_WrConfigReg_stride_1__;
output            __ILA_memory_core_decode_of_WrConfigReg_stride_2__;
output            __ILA_memory_core_decode_of_WrConfigReg_stride_3__;
output            __ILA_memory_core_decode_of_WrConfigReg_stride_4__;
output            __ILA_memory_core_decode_of_WrConfigReg_stride_5__;
output            __ILA_memory_core_decode_of_WrConfigReg_switch_db_reg_sel__;
output            __ILA_memory_core_decode_of_WrConfigReg_switch_db_reg_value__;
output            __ILA_memory_core_decode_of_WrConfigReg_tile_en__;
output            __ILA_memory_core_decode_of_WrConfigReg_wen_in_reg_sel__;
output            __ILA_memory_core_decode_of_WrConfigReg_wen_in_reg_value__;
output            __ILA_memory_core_valid__;
output reg     [15:0] data_out;
output reg            valid_out;
output reg            almost_full;
output reg            almost_empty;
output reg            full;
output reg            empty;
output reg            chain_valid_out;
output reg     [15:0] chain_out;
output reg      [3:0] almost_count;
output reg            arbitrary_addr;
output reg      [3:0] chain_idx;
output reg            chain_wen_in_reg_sel;
output reg            chain_wen_in_reg_value;
output reg            circular_en;
output reg     [15:0] depth;
output reg      [3:0] dimensionality;
output reg            enable_chain;
output reg            flush_reg_sel;
output reg            flush_reg_value;
output reg     [31:0] iter_cnt;
output reg      [1:0] mode;
output reg     [31:0] range_0;
output reg     [31:0] range_1;
output reg     [31:0] range_2;
output reg     [31:0] range_3;
output reg     [31:0] range_4;
output reg     [31:0] range_5;
output reg            rate_matched;
output reg            ren_in_reg_sel;
output reg            ren_in_reg_value;
output reg     [15:0] starting_addr;
output reg     [15:0] stencil_width;
output reg     [15:0] stride_0;
output reg     [15:0] stride_1;
output reg     [15:0] stride_2;
output reg     [15:0] stride_3;
output reg     [15:0] stride_4;
output reg     [15:0] stride_5;
output reg            switch_db_reg_sel;
output reg            switch_db_reg_value;
output reg            tile_en;
output reg            wen_in_reg_sel;
output reg            wen_in_reg_value;
wire     [69:0] __ILA_memory_core_acc_decode__;
wire            __ILA_memory_core_decode_of_RdConfigReg_almost_count__;
wire            __ILA_memory_core_decode_of_RdConfigReg_arbitrary_addr__;
wire            __ILA_memory_core_decode_of_RdConfigReg_chain_idx__;
wire            __ILA_memory_core_decode_of_RdConfigReg_chain_wen_in_reg_sel__;
wire            __ILA_memory_core_decode_of_RdConfigReg_chain_wen_in_reg_value__;
wire            __ILA_memory_core_decode_of_RdConfigReg_circular_en__;
wire            __ILA_memory_core_decode_of_RdConfigReg_depth__;
wire            __ILA_memory_core_decode_of_RdConfigReg_dimensionality__;
wire            __ILA_memory_core_decode_of_RdConfigReg_enable_chain__;
wire            __ILA_memory_core_decode_of_RdConfigReg_flush_reg_sel__;
wire            __ILA_memory_core_decode_of_RdConfigReg_flush_reg_value__;
wire            __ILA_memory_core_decode_of_RdConfigReg_iter_cnt__;
wire            __ILA_memory_core_decode_of_RdConfigReg_mode__;
wire            __ILA_memory_core_decode_of_RdConfigReg_range_0__;
wire            __ILA_memory_core_decode_of_RdConfigReg_range_1__;
wire            __ILA_memory_core_decode_of_RdConfigReg_range_2__;
wire            __ILA_memory_core_decode_of_RdConfigReg_range_3__;
wire            __ILA_memory_core_decode_of_RdConfigReg_range_4__;
wire            __ILA_memory_core_decode_of_RdConfigReg_range_5__;
wire            __ILA_memory_core_decode_of_RdConfigReg_rate_matched__;
wire            __ILA_memory_core_decode_of_RdConfigReg_ren_in_reg_sel__;
wire            __ILA_memory_core_decode_of_RdConfigReg_ren_in_reg_value__;
wire            __ILA_memory_core_decode_of_RdConfigReg_starting_addr__;
wire            __ILA_memory_core_decode_of_RdConfigReg_stencil_width__;
wire            __ILA_memory_core_decode_of_RdConfigReg_stride_0__;
wire            __ILA_memory_core_decode_of_RdConfigReg_stride_1__;
wire            __ILA_memory_core_decode_of_RdConfigReg_stride_2__;
wire            __ILA_memory_core_decode_of_RdConfigReg_stride_3__;
wire            __ILA_memory_core_decode_of_RdConfigReg_stride_4__;
wire            __ILA_memory_core_decode_of_RdConfigReg_stride_5__;
wire            __ILA_memory_core_decode_of_RdConfigReg_switch_db_reg_sel__;
wire            __ILA_memory_core_decode_of_RdConfigReg_switch_db_reg_value__;
wire            __ILA_memory_core_decode_of_RdConfigReg_tile_en__;
wire            __ILA_memory_core_decode_of_RdConfigReg_wen_in_reg_sel__;
wire            __ILA_memory_core_decode_of_RdConfigReg_wen_in_reg_value__;
wire            __ILA_memory_core_decode_of_WrConfigReg_almost_count__;
wire            __ILA_memory_core_decode_of_WrConfigReg_arbitrary_addr__;
wire            __ILA_memory_core_decode_of_WrConfigReg_chain_idx__;
wire            __ILA_memory_core_decode_of_WrConfigReg_chain_wen_in_reg_sel__;
wire            __ILA_memory_core_decode_of_WrConfigReg_chain_wen_in_reg_value__;
wire            __ILA_memory_core_decode_of_WrConfigReg_circular_en__;
wire            __ILA_memory_core_decode_of_WrConfigReg_depth__;
wire            __ILA_memory_core_decode_of_WrConfigReg_dimensionality__;
wire            __ILA_memory_core_decode_of_WrConfigReg_enable_chain__;
wire            __ILA_memory_core_decode_of_WrConfigReg_flush_reg_sel__;
wire            __ILA_memory_core_decode_of_WrConfigReg_flush_reg_value__;
wire            __ILA_memory_core_decode_of_WrConfigReg_iter_cnt__;
wire            __ILA_memory_core_decode_of_WrConfigReg_mode__;
wire            __ILA_memory_core_decode_of_WrConfigReg_range_0__;
wire            __ILA_memory_core_decode_of_WrConfigReg_range_1__;
wire            __ILA_memory_core_decode_of_WrConfigReg_range_2__;
wire            __ILA_memory_core_decode_of_WrConfigReg_range_3__;
wire            __ILA_memory_core_decode_of_WrConfigReg_range_4__;
wire            __ILA_memory_core_decode_of_WrConfigReg_range_5__;
wire            __ILA_memory_core_decode_of_WrConfigReg_rate_matched__;
wire            __ILA_memory_core_decode_of_WrConfigReg_ren_in_reg_sel__;
wire            __ILA_memory_core_decode_of_WrConfigReg_ren_in_reg_value__;
wire            __ILA_memory_core_decode_of_WrConfigReg_starting_addr__;
wire            __ILA_memory_core_decode_of_WrConfigReg_stencil_width__;
wire            __ILA_memory_core_decode_of_WrConfigReg_stride_0__;
wire            __ILA_memory_core_decode_of_WrConfigReg_stride_1__;
wire            __ILA_memory_core_decode_of_WrConfigReg_stride_2__;
wire            __ILA_memory_core_decode_of_WrConfigReg_stride_3__;
wire            __ILA_memory_core_decode_of_WrConfigReg_stride_4__;
wire            __ILA_memory_core_decode_of_WrConfigReg_stride_5__;
wire            __ILA_memory_core_decode_of_WrConfigReg_switch_db_reg_sel__;
wire            __ILA_memory_core_decode_of_WrConfigReg_switch_db_reg_value__;
wire            __ILA_memory_core_decode_of_WrConfigReg_tile_en__;
wire            __ILA_memory_core_decode_of_WrConfigReg_wen_in_reg_sel__;
wire            __ILA_memory_core_decode_of_WrConfigReg_wen_in_reg_value__;
wire     [69:0] __ILA_memory_core_grant__;
wire            __ILA_memory_core_valid__;
wire     [15:0] addr_in;
wire     [15:0] bv_16_0_n0;
wire     [15:0] bv_16_1024_n4;
wire     [15:0] bv_16_10_n91;
wire     [15:0] bv_16_11_n98;
wire     [15:0] bv_16_12_n105;
wire     [15:0] bv_16_13_n112;
wire     [15:0] bv_16_14_n119;
wire     [15:0] bv_16_15_n126;
wire     [15:0] bv_16_16_n133;
wire     [15:0] bv_16_17_n140;
wire     [15:0] bv_16_18_n147;
wire     [15:0] bv_16_19_n154;
wire     [15:0] bv_16_1_n28;
wire     [15:0] bv_16_20_n161;
wire     [15:0] bv_16_21_n168;
wire     [15:0] bv_16_22_n175;
wire     [15:0] bv_16_23_n182;
wire     [15:0] bv_16_24_n189;
wire     [15:0] bv_16_25_n196;
wire     [15:0] bv_16_26_n203;
wire     [15:0] bv_16_27_n210;
wire     [15:0] bv_16_28_n217;
wire     [15:0] bv_16_29_n224;
wire     [15:0] bv_16_2_n35;
wire     [15:0] bv_16_30_n231;
wire     [15:0] bv_16_31_n238;
wire     [15:0] bv_16_32_n245;
wire     [15:0] bv_16_33_n252;
wire     [15:0] bv_16_34_n259;
wire     [15:0] bv_16_3_n42;
wire     [15:0] bv_16_4_n49;
wire     [15:0] bv_16_5_n56;
wire     [15:0] bv_16_6_n63;
wire     [15:0] bv_16_7_n70;
wire     [15:0] bv_16_8_n77;
wire     [15:0] bv_16_9_n84;
wire            bv_1_1_n14;
wire     [15:0] chain_in;
wire            chain_wen_in;
wire            clk;
wire     [15:0] data_in;
wire            flush;
wire            n1;
wire            n10;
wire            n100;
wire            n101;
wire            n102;
wire            n103;
wire            n104;
wire            n106;
wire            n107;
wire            n108;
wire            n109;
wire            n11;
wire            n110;
wire            n111;
wire            n113;
wire            n114;
wire            n115;
wire            n116;
wire            n117;
wire            n118;
wire            n12;
wire            n120;
wire            n121;
wire            n122;
wire            n123;
wire            n124;
wire            n125;
wire            n127;
wire            n128;
wire            n129;
wire            n13;
wire            n130;
wire            n131;
wire            n132;
wire            n134;
wire            n135;
wire            n136;
wire            n137;
wire            n138;
wire            n139;
wire            n141;
wire            n142;
wire            n143;
wire            n144;
wire            n145;
wire            n146;
wire            n148;
wire            n149;
wire            n15;
wire            n150;
wire            n151;
wire            n152;
wire            n153;
wire            n155;
wire            n156;
wire            n157;
wire            n158;
wire            n159;
wire            n16;
wire            n160;
wire            n162;
wire            n163;
wire            n164;
wire            n165;
wire            n166;
wire            n167;
wire            n169;
wire            n17;
wire            n170;
wire            n171;
wire            n172;
wire            n173;
wire            n174;
wire            n176;
wire            n177;
wire            n178;
wire            n179;
wire            n18;
wire            n180;
wire            n181;
wire            n183;
wire            n184;
wire            n185;
wire            n186;
wire            n187;
wire            n188;
wire            n19;
wire            n190;
wire            n191;
wire            n192;
wire            n193;
wire            n194;
wire            n195;
wire            n197;
wire            n198;
wire            n199;
wire            n2;
wire            n20;
wire            n200;
wire            n201;
wire            n202;
wire            n204;
wire            n205;
wire            n206;
wire            n207;
wire            n208;
wire            n209;
wire            n21;
wire            n211;
wire            n212;
wire            n213;
wire            n214;
wire            n215;
wire            n216;
wire            n218;
wire            n219;
wire            n22;
wire            n220;
wire            n221;
wire            n222;
wire            n223;
wire            n225;
wire            n226;
wire            n227;
wire            n228;
wire            n229;
wire            n23;
wire            n230;
wire            n232;
wire            n233;
wire            n234;
wire            n235;
wire            n236;
wire            n237;
wire            n239;
wire            n24;
wire            n240;
wire            n241;
wire            n242;
wire            n243;
wire            n244;
wire            n246;
wire            n247;
wire            n248;
wire            n249;
wire            n25;
wire            n250;
wire            n251;
wire            n253;
wire            n254;
wire            n255;
wire            n256;
wire            n257;
wire            n258;
wire            n26;
wire            n260;
wire            n261;
wire            n262;
wire            n263;
wire            n264;
wire     [15:0] n265;
wire     [15:0] n266;
wire     [15:0] n267;
wire     [15:0] n268;
wire     [15:0] n269;
wire            n27;
wire     [15:0] n270;
wire     [15:0] n271;
wire     [15:0] n272;
wire     [15:0] n273;
wire     [15:0] n274;
wire     [15:0] n275;
wire     [15:0] n276;
wire     [15:0] n277;
wire     [15:0] n278;
wire     [15:0] n279;
wire     [15:0] n280;
wire     [15:0] n281;
wire     [15:0] n282;
wire     [15:0] n283;
wire     [15:0] n284;
wire     [15:0] n285;
wire     [15:0] n286;
wire     [15:0] n287;
wire     [15:0] n288;
wire     [15:0] n289;
wire            n29;
wire     [15:0] n290;
wire      [3:0] n291;
wire            n292;
wire      [3:0] n293;
wire            n294;
wire            n295;
wire            n296;
wire      [3:0] n297;
wire            n298;
wire            n299;
wire            n3;
wire            n30;
wire            n300;
wire     [31:0] n301;
wire      [1:0] n302;
wire     [31:0] n303;
wire     [31:0] n304;
wire     [31:0] n305;
wire     [31:0] n306;
wire     [31:0] n307;
wire     [31:0] n308;
wire            n309;
wire            n31;
wire            n310;
wire            n311;
wire            n312;
wire            n313;
wire            n314;
wire            n315;
wire            n316;
wire            n32;
wire            n33;
wire            n34;
wire            n36;
wire            n37;
wire            n38;
wire            n39;
wire            n40;
wire            n41;
wire            n43;
wire            n44;
wire            n45;
wire            n46;
wire            n47;
wire            n48;
wire            n5;
wire            n50;
wire            n51;
wire            n52;
wire            n53;
wire            n54;
wire            n55;
wire            n57;
wire            n58;
wire            n59;
wire            n6;
wire            n60;
wire            n61;
wire            n62;
wire            n64;
wire            n65;
wire            n66;
wire            n67;
wire            n68;
wire            n69;
wire            n7;
wire            n71;
wire            n72;
wire            n73;
wire            n74;
wire            n75;
wire            n76;
wire            n78;
wire            n79;
wire            n8;
wire            n80;
wire            n81;
wire            n82;
wire            n83;
wire            n85;
wire            n86;
wire            n87;
wire            n88;
wire            n89;
wire            n9;
wire            n90;
wire            n92;
wire            n93;
wire            n94;
wire            n95;
wire            n96;
wire            n97;
wire            n99;
wire            ren_in;
wire            rst;
wire            stall;
wire            switch_db;
wire            wen_in;
assign bv_16_0_n0 = 16'h0 ;
assign n1 =  ( addr_in ) == ( bv_16_0_n0 )  ;
assign n2 =  $signed( addr_in ) > $signed( bv_16_0_n0 )  ;
assign n3 =  ( n1 ) | ( n2 )  ;
assign bv_16_1024_n4 = 16'h400 ;
assign n5 =  $signed( addr_in ) < $signed( bv_16_1024_n4 )  ;
assign n6 =  ( n3 ) & (n5 )  ;
assign n7 = ~ ( full ) ;
assign n8 =  ( wen_in ) & ( n7 )  ;
assign n9 = ~ ( empty ) ;
assign n10 =  ( ren_in ) & ( n9 )  ;
assign n11 =  ( n8 ) | ( n10 )  ;
assign n12 =  ( chain_wen_in ) & ( chain_valid_out )  ;
assign n13 =  ( n11 ) | ( n12 )  ;
assign bv_1_1_n14 = 1'h1 ;
assign n15 =  ( n13 ) == ( bv_1_1_n14 )  ;
assign n16 =  ( n6 ) & (n15 )  ;
assign __ILA_memory_core_valid__ = n16 ;
assign n17 = ~ ( ren_in ) ;
assign n18 =  ( wen_in ) & ( n17 )  ;
assign n19 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign n20 =  ( addr_in ) == ( bv_16_0_n0 )  ;
assign n21 =  ( n19 ) & (n20 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_almost_count__ = n21 ;
assign __ILA_memory_core_acc_decode__[0] = __ILA_memory_core_decode_of_WrConfigReg_almost_count__ ;
assign n22 = ~ ( wen_in ) ;
assign n23 =  ( ren_in ) & ( n22 )  ;
assign n24 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n25 =  ( addr_in ) == ( bv_16_0_n0 )  ;
assign n26 =  ( n24 ) & (n25 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_almost_count__ = n26 ;
assign __ILA_memory_core_acc_decode__[1] = __ILA_memory_core_decode_of_RdConfigReg_almost_count__ ;
assign n27 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_1_n28 = 16'h1 ;
assign n29 =  ( addr_in ) == ( bv_16_1_n28 )  ;
assign n30 =  ( n27 ) & (n29 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_arbitrary_addr__ = n30 ;
assign __ILA_memory_core_acc_decode__[2] = __ILA_memory_core_decode_of_WrConfigReg_arbitrary_addr__ ;
assign n31 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n32 =  ( addr_in ) == ( bv_16_1_n28 )  ;
assign n33 =  ( n31 ) & (n32 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_arbitrary_addr__ = n33 ;
assign __ILA_memory_core_acc_decode__[3] = __ILA_memory_core_decode_of_RdConfigReg_arbitrary_addr__ ;
assign n34 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_2_n35 = 16'h2 ;
assign n36 =  ( addr_in ) == ( bv_16_2_n35 )  ;
assign n37 =  ( n34 ) & (n36 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_chain_idx__ = n37 ;
assign __ILA_memory_core_acc_decode__[4] = __ILA_memory_core_decode_of_WrConfigReg_chain_idx__ ;
assign n38 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n39 =  ( addr_in ) == ( bv_16_2_n35 )  ;
assign n40 =  ( n38 ) & (n39 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_chain_idx__ = n40 ;
assign __ILA_memory_core_acc_decode__[5] = __ILA_memory_core_decode_of_RdConfigReg_chain_idx__ ;
assign n41 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_3_n42 = 16'h3 ;
assign n43 =  ( addr_in ) == ( bv_16_3_n42 )  ;
assign n44 =  ( n41 ) & (n43 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_chain_wen_in_reg_sel__ = n44 ;
assign __ILA_memory_core_acc_decode__[6] = __ILA_memory_core_decode_of_WrConfigReg_chain_wen_in_reg_sel__ ;
assign n45 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n46 =  ( addr_in ) == ( bv_16_3_n42 )  ;
assign n47 =  ( n45 ) & (n46 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_chain_wen_in_reg_sel__ = n47 ;
assign __ILA_memory_core_acc_decode__[7] = __ILA_memory_core_decode_of_RdConfigReg_chain_wen_in_reg_sel__ ;
assign n48 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_4_n49 = 16'h4 ;
assign n50 =  ( addr_in ) == ( bv_16_4_n49 )  ;
assign n51 =  ( n48 ) & (n50 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_chain_wen_in_reg_value__ = n51 ;
assign __ILA_memory_core_acc_decode__[8] = __ILA_memory_core_decode_of_WrConfigReg_chain_wen_in_reg_value__ ;
assign n52 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n53 =  ( addr_in ) == ( bv_16_4_n49 )  ;
assign n54 =  ( n52 ) & (n53 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_chain_wen_in_reg_value__ = n54 ;
assign __ILA_memory_core_acc_decode__[9] = __ILA_memory_core_decode_of_RdConfigReg_chain_wen_in_reg_value__ ;
assign n55 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_5_n56 = 16'h5 ;
assign n57 =  ( addr_in ) == ( bv_16_5_n56 )  ;
assign n58 =  ( n55 ) & (n57 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_circular_en__ = n58 ;
assign __ILA_memory_core_acc_decode__[10] = __ILA_memory_core_decode_of_WrConfigReg_circular_en__ ;
assign n59 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n60 =  ( addr_in ) == ( bv_16_5_n56 )  ;
assign n61 =  ( n59 ) & (n60 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_circular_en__ = n61 ;
assign __ILA_memory_core_acc_decode__[11] = __ILA_memory_core_decode_of_RdConfigReg_circular_en__ ;
assign n62 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_6_n63 = 16'h6 ;
assign n64 =  ( addr_in ) == ( bv_16_6_n63 )  ;
assign n65 =  ( n62 ) & (n64 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_depth__ = n65 ;
assign __ILA_memory_core_acc_decode__[12] = __ILA_memory_core_decode_of_WrConfigReg_depth__ ;
assign n66 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n67 =  ( addr_in ) == ( bv_16_6_n63 )  ;
assign n68 =  ( n66 ) & (n67 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_depth__ = n68 ;
assign __ILA_memory_core_acc_decode__[13] = __ILA_memory_core_decode_of_RdConfigReg_depth__ ;
assign n69 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_7_n70 = 16'h7 ;
assign n71 =  ( addr_in ) == ( bv_16_7_n70 )  ;
assign n72 =  ( n69 ) & (n71 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_dimensionality__ = n72 ;
assign __ILA_memory_core_acc_decode__[14] = __ILA_memory_core_decode_of_WrConfigReg_dimensionality__ ;
assign n73 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n74 =  ( addr_in ) == ( bv_16_7_n70 )  ;
assign n75 =  ( n73 ) & (n74 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_dimensionality__ = n75 ;
assign __ILA_memory_core_acc_decode__[15] = __ILA_memory_core_decode_of_RdConfigReg_dimensionality__ ;
assign n76 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_8_n77 = 16'h8 ;
assign n78 =  ( addr_in ) == ( bv_16_8_n77 )  ;
assign n79 =  ( n76 ) & (n78 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_enable_chain__ = n79 ;
assign __ILA_memory_core_acc_decode__[16] = __ILA_memory_core_decode_of_WrConfigReg_enable_chain__ ;
assign n80 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n81 =  ( addr_in ) == ( bv_16_8_n77 )  ;
assign n82 =  ( n80 ) & (n81 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_enable_chain__ = n82 ;
assign __ILA_memory_core_acc_decode__[17] = __ILA_memory_core_decode_of_RdConfigReg_enable_chain__ ;
assign n83 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_9_n84 = 16'h9 ;
assign n85 =  ( addr_in ) == ( bv_16_9_n84 )  ;
assign n86 =  ( n83 ) & (n85 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_flush_reg_sel__ = n86 ;
assign __ILA_memory_core_acc_decode__[18] = __ILA_memory_core_decode_of_WrConfigReg_flush_reg_sel__ ;
assign n87 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n88 =  ( addr_in ) == ( bv_16_9_n84 )  ;
assign n89 =  ( n87 ) & (n88 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_flush_reg_sel__ = n89 ;
assign __ILA_memory_core_acc_decode__[19] = __ILA_memory_core_decode_of_RdConfigReg_flush_reg_sel__ ;
assign n90 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_10_n91 = 16'ha ;
assign n92 =  ( addr_in ) == ( bv_16_10_n91 )  ;
assign n93 =  ( n90 ) & (n92 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_flush_reg_value__ = n93 ;
assign __ILA_memory_core_acc_decode__[20] = __ILA_memory_core_decode_of_WrConfigReg_flush_reg_value__ ;
assign n94 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n95 =  ( addr_in ) == ( bv_16_10_n91 )  ;
assign n96 =  ( n94 ) & (n95 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_flush_reg_value__ = n96 ;
assign __ILA_memory_core_acc_decode__[21] = __ILA_memory_core_decode_of_RdConfigReg_flush_reg_value__ ;
assign n97 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_11_n98 = 16'hb ;
assign n99 =  ( addr_in ) == ( bv_16_11_n98 )  ;
assign n100 =  ( n97 ) & (n99 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_iter_cnt__ = n100 ;
assign __ILA_memory_core_acc_decode__[22] = __ILA_memory_core_decode_of_WrConfigReg_iter_cnt__ ;
assign n101 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n102 =  ( addr_in ) == ( bv_16_11_n98 )  ;
assign n103 =  ( n101 ) & (n102 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_iter_cnt__ = n103 ;
assign __ILA_memory_core_acc_decode__[23] = __ILA_memory_core_decode_of_RdConfigReg_iter_cnt__ ;
assign n104 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_12_n105 = 16'hc ;
assign n106 =  ( addr_in ) == ( bv_16_12_n105 )  ;
assign n107 =  ( n104 ) & (n106 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_mode__ = n107 ;
assign __ILA_memory_core_acc_decode__[24] = __ILA_memory_core_decode_of_WrConfigReg_mode__ ;
assign n108 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n109 =  ( addr_in ) == ( bv_16_12_n105 )  ;
assign n110 =  ( n108 ) & (n109 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_mode__ = n110 ;
assign __ILA_memory_core_acc_decode__[25] = __ILA_memory_core_decode_of_RdConfigReg_mode__ ;
assign n111 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_13_n112 = 16'hd ;
assign n113 =  ( addr_in ) == ( bv_16_13_n112 )  ;
assign n114 =  ( n111 ) & (n113 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_range_0__ = n114 ;
assign __ILA_memory_core_acc_decode__[26] = __ILA_memory_core_decode_of_WrConfigReg_range_0__ ;
assign n115 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n116 =  ( addr_in ) == ( bv_16_13_n112 )  ;
assign n117 =  ( n115 ) & (n116 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_range_0__ = n117 ;
assign __ILA_memory_core_acc_decode__[27] = __ILA_memory_core_decode_of_RdConfigReg_range_0__ ;
assign n118 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_14_n119 = 16'he ;
assign n120 =  ( addr_in ) == ( bv_16_14_n119 )  ;
assign n121 =  ( n118 ) & (n120 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_range_1__ = n121 ;
assign __ILA_memory_core_acc_decode__[28] = __ILA_memory_core_decode_of_WrConfigReg_range_1__ ;
assign n122 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n123 =  ( addr_in ) == ( bv_16_14_n119 )  ;
assign n124 =  ( n122 ) & (n123 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_range_1__ = n124 ;
assign __ILA_memory_core_acc_decode__[29] = __ILA_memory_core_decode_of_RdConfigReg_range_1__ ;
assign n125 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_15_n126 = 16'hf ;
assign n127 =  ( addr_in ) == ( bv_16_15_n126 )  ;
assign n128 =  ( n125 ) & (n127 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_range_2__ = n128 ;
assign __ILA_memory_core_acc_decode__[30] = __ILA_memory_core_decode_of_WrConfigReg_range_2__ ;
assign n129 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n130 =  ( addr_in ) == ( bv_16_15_n126 )  ;
assign n131 =  ( n129 ) & (n130 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_range_2__ = n131 ;
assign __ILA_memory_core_acc_decode__[31] = __ILA_memory_core_decode_of_RdConfigReg_range_2__ ;
assign n132 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_16_n133 = 16'h10 ;
assign n134 =  ( addr_in ) == ( bv_16_16_n133 )  ;
assign n135 =  ( n132 ) & (n134 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_range_3__ = n135 ;
assign __ILA_memory_core_acc_decode__[32] = __ILA_memory_core_decode_of_WrConfigReg_range_3__ ;
assign n136 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n137 =  ( addr_in ) == ( bv_16_16_n133 )  ;
assign n138 =  ( n136 ) & (n137 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_range_3__ = n138 ;
assign __ILA_memory_core_acc_decode__[33] = __ILA_memory_core_decode_of_RdConfigReg_range_3__ ;
assign n139 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_17_n140 = 16'h11 ;
assign n141 =  ( addr_in ) == ( bv_16_17_n140 )  ;
assign n142 =  ( n139 ) & (n141 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_range_4__ = n142 ;
assign __ILA_memory_core_acc_decode__[34] = __ILA_memory_core_decode_of_WrConfigReg_range_4__ ;
assign n143 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n144 =  ( addr_in ) == ( bv_16_17_n140 )  ;
assign n145 =  ( n143 ) & (n144 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_range_4__ = n145 ;
assign __ILA_memory_core_acc_decode__[35] = __ILA_memory_core_decode_of_RdConfigReg_range_4__ ;
assign n146 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_18_n147 = 16'h12 ;
assign n148 =  ( addr_in ) == ( bv_16_18_n147 )  ;
assign n149 =  ( n146 ) & (n148 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_range_5__ = n149 ;
assign __ILA_memory_core_acc_decode__[36] = __ILA_memory_core_decode_of_WrConfigReg_range_5__ ;
assign n150 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n151 =  ( addr_in ) == ( bv_16_18_n147 )  ;
assign n152 =  ( n150 ) & (n151 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_range_5__ = n152 ;
assign __ILA_memory_core_acc_decode__[37] = __ILA_memory_core_decode_of_RdConfigReg_range_5__ ;
assign n153 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_19_n154 = 16'h13 ;
assign n155 =  ( addr_in ) == ( bv_16_19_n154 )  ;
assign n156 =  ( n153 ) & (n155 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_rate_matched__ = n156 ;
assign __ILA_memory_core_acc_decode__[38] = __ILA_memory_core_decode_of_WrConfigReg_rate_matched__ ;
assign n157 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n158 =  ( addr_in ) == ( bv_16_19_n154 )  ;
assign n159 =  ( n157 ) & (n158 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_rate_matched__ = n159 ;
assign __ILA_memory_core_acc_decode__[39] = __ILA_memory_core_decode_of_RdConfigReg_rate_matched__ ;
assign n160 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_20_n161 = 16'h14 ;
assign n162 =  ( addr_in ) == ( bv_16_20_n161 )  ;
assign n163 =  ( n160 ) & (n162 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_ren_in_reg_sel__ = n163 ;
assign __ILA_memory_core_acc_decode__[40] = __ILA_memory_core_decode_of_WrConfigReg_ren_in_reg_sel__ ;
assign n164 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n165 =  ( addr_in ) == ( bv_16_20_n161 )  ;
assign n166 =  ( n164 ) & (n165 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_ren_in_reg_sel__ = n166 ;
assign __ILA_memory_core_acc_decode__[41] = __ILA_memory_core_decode_of_RdConfigReg_ren_in_reg_sel__ ;
assign n167 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_21_n168 = 16'h15 ;
assign n169 =  ( addr_in ) == ( bv_16_21_n168 )  ;
assign n170 =  ( n167 ) & (n169 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_ren_in_reg_value__ = n170 ;
assign __ILA_memory_core_acc_decode__[42] = __ILA_memory_core_decode_of_WrConfigReg_ren_in_reg_value__ ;
assign n171 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n172 =  ( addr_in ) == ( bv_16_21_n168 )  ;
assign n173 =  ( n171 ) & (n172 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_ren_in_reg_value__ = n173 ;
assign __ILA_memory_core_acc_decode__[43] = __ILA_memory_core_decode_of_RdConfigReg_ren_in_reg_value__ ;
assign n174 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_22_n175 = 16'h16 ;
assign n176 =  ( addr_in ) == ( bv_16_22_n175 )  ;
assign n177 =  ( n174 ) & (n176 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_starting_addr__ = n177 ;
assign __ILA_memory_core_acc_decode__[44] = __ILA_memory_core_decode_of_WrConfigReg_starting_addr__ ;
assign n178 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n179 =  ( addr_in ) == ( bv_16_22_n175 )  ;
assign n180 =  ( n178 ) & (n179 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_starting_addr__ = n180 ;
assign __ILA_memory_core_acc_decode__[45] = __ILA_memory_core_decode_of_RdConfigReg_starting_addr__ ;
assign n181 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_23_n182 = 16'h17 ;
assign n183 =  ( addr_in ) == ( bv_16_23_n182 )  ;
assign n184 =  ( n181 ) & (n183 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_stencil_width__ = n184 ;
assign __ILA_memory_core_acc_decode__[46] = __ILA_memory_core_decode_of_WrConfigReg_stencil_width__ ;
assign n185 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n186 =  ( addr_in ) == ( bv_16_23_n182 )  ;
assign n187 =  ( n185 ) & (n186 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_stencil_width__ = n187 ;
assign __ILA_memory_core_acc_decode__[47] = __ILA_memory_core_decode_of_RdConfigReg_stencil_width__ ;
assign n188 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_24_n189 = 16'h18 ;
assign n190 =  ( addr_in ) == ( bv_16_24_n189 )  ;
assign n191 =  ( n188 ) & (n190 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_stride_0__ = n191 ;
assign __ILA_memory_core_acc_decode__[48] = __ILA_memory_core_decode_of_WrConfigReg_stride_0__ ;
assign n192 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n193 =  ( addr_in ) == ( bv_16_24_n189 )  ;
assign n194 =  ( n192 ) & (n193 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_stride_0__ = n194 ;
assign __ILA_memory_core_acc_decode__[49] = __ILA_memory_core_decode_of_RdConfigReg_stride_0__ ;
assign n195 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_25_n196 = 16'h19 ;
assign n197 =  ( addr_in ) == ( bv_16_25_n196 )  ;
assign n198 =  ( n195 ) & (n197 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_stride_1__ = n198 ;
assign __ILA_memory_core_acc_decode__[50] = __ILA_memory_core_decode_of_WrConfigReg_stride_1__ ;
assign n199 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n200 =  ( addr_in ) == ( bv_16_25_n196 )  ;
assign n201 =  ( n199 ) & (n200 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_stride_1__ = n201 ;
assign __ILA_memory_core_acc_decode__[51] = __ILA_memory_core_decode_of_RdConfigReg_stride_1__ ;
assign n202 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_26_n203 = 16'h1a ;
assign n204 =  ( addr_in ) == ( bv_16_26_n203 )  ;
assign n205 =  ( n202 ) & (n204 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_stride_2__ = n205 ;
assign __ILA_memory_core_acc_decode__[52] = __ILA_memory_core_decode_of_WrConfigReg_stride_2__ ;
assign n206 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n207 =  ( addr_in ) == ( bv_16_26_n203 )  ;
assign n208 =  ( n206 ) & (n207 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_stride_2__ = n208 ;
assign __ILA_memory_core_acc_decode__[53] = __ILA_memory_core_decode_of_RdConfigReg_stride_2__ ;
assign n209 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_27_n210 = 16'h1b ;
assign n211 =  ( addr_in ) == ( bv_16_27_n210 )  ;
assign n212 =  ( n209 ) & (n211 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_stride_3__ = n212 ;
assign __ILA_memory_core_acc_decode__[54] = __ILA_memory_core_decode_of_WrConfigReg_stride_3__ ;
assign n213 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n214 =  ( addr_in ) == ( bv_16_27_n210 )  ;
assign n215 =  ( n213 ) & (n214 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_stride_3__ = n215 ;
assign __ILA_memory_core_acc_decode__[55] = __ILA_memory_core_decode_of_RdConfigReg_stride_3__ ;
assign n216 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_28_n217 = 16'h1c ;
assign n218 =  ( addr_in ) == ( bv_16_28_n217 )  ;
assign n219 =  ( n216 ) & (n218 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_stride_4__ = n219 ;
assign __ILA_memory_core_acc_decode__[56] = __ILA_memory_core_decode_of_WrConfigReg_stride_4__ ;
assign n220 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n221 =  ( addr_in ) == ( bv_16_28_n217 )  ;
assign n222 =  ( n220 ) & (n221 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_stride_4__ = n222 ;
assign __ILA_memory_core_acc_decode__[57] = __ILA_memory_core_decode_of_RdConfigReg_stride_4__ ;
assign n223 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_29_n224 = 16'h1d ;
assign n225 =  ( addr_in ) == ( bv_16_29_n224 )  ;
assign n226 =  ( n223 ) & (n225 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_stride_5__ = n226 ;
assign __ILA_memory_core_acc_decode__[58] = __ILA_memory_core_decode_of_WrConfigReg_stride_5__ ;
assign n227 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n228 =  ( addr_in ) == ( bv_16_29_n224 )  ;
assign n229 =  ( n227 ) & (n228 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_stride_5__ = n229 ;
assign __ILA_memory_core_acc_decode__[59] = __ILA_memory_core_decode_of_RdConfigReg_stride_5__ ;
assign n230 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_30_n231 = 16'h1e ;
assign n232 =  ( addr_in ) == ( bv_16_30_n231 )  ;
assign n233 =  ( n230 ) & (n232 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_switch_db_reg_sel__ = n233 ;
assign __ILA_memory_core_acc_decode__[60] = __ILA_memory_core_decode_of_WrConfigReg_switch_db_reg_sel__ ;
assign n234 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n235 =  ( addr_in ) == ( bv_16_30_n231 )  ;
assign n236 =  ( n234 ) & (n235 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_switch_db_reg_sel__ = n236 ;
assign __ILA_memory_core_acc_decode__[61] = __ILA_memory_core_decode_of_RdConfigReg_switch_db_reg_sel__ ;
assign n237 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_31_n238 = 16'h1f ;
assign n239 =  ( addr_in ) == ( bv_16_31_n238 )  ;
assign n240 =  ( n237 ) & (n239 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_switch_db_reg_value__ = n240 ;
assign __ILA_memory_core_acc_decode__[62] = __ILA_memory_core_decode_of_WrConfigReg_switch_db_reg_value__ ;
assign n241 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n242 =  ( addr_in ) == ( bv_16_31_n238 )  ;
assign n243 =  ( n241 ) & (n242 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_switch_db_reg_value__ = n243 ;
assign __ILA_memory_core_acc_decode__[63] = __ILA_memory_core_decode_of_RdConfigReg_switch_db_reg_value__ ;
assign n244 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_32_n245 = 16'h20 ;
assign n246 =  ( addr_in ) == ( bv_16_32_n245 )  ;
assign n247 =  ( n244 ) & (n246 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_tile_en__ = n247 ;
assign __ILA_memory_core_acc_decode__[64] = __ILA_memory_core_decode_of_WrConfigReg_tile_en__ ;
assign n248 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n249 =  ( addr_in ) == ( bv_16_32_n245 )  ;
assign n250 =  ( n248 ) & (n249 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_tile_en__ = n250 ;
assign __ILA_memory_core_acc_decode__[65] = __ILA_memory_core_decode_of_RdConfigReg_tile_en__ ;
assign n251 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_33_n252 = 16'h21 ;
assign n253 =  ( addr_in ) == ( bv_16_33_n252 )  ;
assign n254 =  ( n251 ) & (n253 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_wen_in_reg_sel__ = n254 ;
assign __ILA_memory_core_acc_decode__[66] = __ILA_memory_core_decode_of_WrConfigReg_wen_in_reg_sel__ ;
assign n255 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n256 =  ( addr_in ) == ( bv_16_33_n252 )  ;
assign n257 =  ( n255 ) & (n256 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_wen_in_reg_sel__ = n257 ;
assign __ILA_memory_core_acc_decode__[67] = __ILA_memory_core_decode_of_RdConfigReg_wen_in_reg_sel__ ;
assign n258 =  ( n18 ) == ( bv_1_1_n14 )  ;
assign bv_16_34_n259 = 16'h22 ;
assign n260 =  ( addr_in ) == ( bv_16_34_n259 )  ;
assign n261 =  ( n258 ) & (n260 )  ;
assign __ILA_memory_core_decode_of_WrConfigReg_wen_in_reg_value__ = n261 ;
assign __ILA_memory_core_acc_decode__[68] = __ILA_memory_core_decode_of_WrConfigReg_wen_in_reg_value__ ;
assign n262 =  ( n23 ) == ( bv_1_1_n14 )  ;
assign n263 =  ( addr_in ) == ( bv_16_34_n259 )  ;
assign n264 =  ( n262 ) & (n263 )  ;
assign __ILA_memory_core_decode_of_RdConfigReg_wen_in_reg_value__ = n264 ;
assign __ILA_memory_core_acc_decode__[69] = __ILA_memory_core_decode_of_RdConfigReg_wen_in_reg_value__ ;
assign n265 =  {12'd0 , almost_count}  ;
assign n266 =  {15'd0 , arbitrary_addr}  ;
assign n267 =  {12'd0 , chain_idx}  ;
assign n268 =  {15'd0 , chain_wen_in_reg_sel}  ;
assign n269 =  {15'd0 , chain_wen_in_reg_value}  ;
assign n270 =  {15'd0 , circular_en}  ;
assign n271 =  {12'd0 , dimensionality}  ;
assign n272 =  {15'd0 , enable_chain}  ;
assign n273 =  {15'd0 , flush_reg_sel}  ;
assign n274 =  {15'd0 , flush_reg_value}  ;
assign n275 = iter_cnt[15:0] ;
assign n276 =  {14'd0 , mode}  ;
assign n277 = range_0[15:0] ;
assign n278 = range_1[15:0] ;
assign n279 = range_2[15:0] ;
assign n280 = range_3[15:0] ;
assign n281 = range_4[15:0] ;
assign n282 = range_5[15:0] ;
assign n283 =  {15'd0 , rate_matched}  ;
assign n284 =  {15'd0 , ren_in_reg_sel}  ;
assign n285 =  {15'd0 , ren_in_reg_value}  ;
assign n286 =  {15'd0 , switch_db_reg_sel}  ;
assign n287 =  {15'd0 , switch_db_reg_value}  ;
assign n288 =  {15'd0 , tile_en}  ;
assign n289 =  {15'd0 , wen_in_reg_sel}  ;
assign n290 =  {15'd0 , wen_in_reg_value}  ;
assign n291 = data_in[3:0] ;
assign n292 = data_in[0:0] ;
assign n293 = data_in[3:0] ;
assign n294 = data_in[0:0] ;
assign n295 = data_in[0:0] ;
assign n296 = data_in[0:0] ;
assign n297 = data_in[3:0] ;
assign n298 = data_in[0:0] ;
assign n299 = data_in[0:0] ;
assign n300 = data_in[0:0] ;
assign n301 =  {16'd0 , data_in}  ;
assign n302 = data_in[1:0] ;
assign n303 =  {16'd0 , data_in}  ;
assign n304 =  {16'd0 , data_in}  ;
assign n305 =  {16'd0 , data_in}  ;
assign n306 =  {16'd0 , data_in}  ;
assign n307 =  {16'd0 , data_in}  ;
assign n308 =  {16'd0 , data_in}  ;
assign n309 = data_in[0:0] ;
assign n310 = data_in[0:0] ;
assign n311 = data_in[0:0] ;
assign n312 = data_in[0:0] ;
assign n313 = data_in[0:0] ;
assign n314 = data_in[0:0] ;
assign n315 = data_in[0:0] ;
assign n316 = data_in[0:0] ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_memory_core_valid__) begin
       if ( __ILA_memory_core_decode_of_RdConfigReg_almost_count__ && __ILA_memory_core_grant__[1] ) begin
           data_out <= n265;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_arbitrary_addr__ && __ILA_memory_core_grant__[3] ) begin
           data_out <= n266;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_chain_idx__ && __ILA_memory_core_grant__[5] ) begin
           data_out <= n267;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_chain_wen_in_reg_sel__ && __ILA_memory_core_grant__[7] ) begin
           data_out <= n268;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_chain_wen_in_reg_value__ && __ILA_memory_core_grant__[9] ) begin
           data_out <= n269;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_circular_en__ && __ILA_memory_core_grant__[11] ) begin
           data_out <= n270;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_depth__ && __ILA_memory_core_grant__[13] ) begin
           data_out <= depth;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_dimensionality__ && __ILA_memory_core_grant__[15] ) begin
           data_out <= n271;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_enable_chain__ && __ILA_memory_core_grant__[17] ) begin
           data_out <= n272;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_flush_reg_sel__ && __ILA_memory_core_grant__[19] ) begin
           data_out <= n273;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_flush_reg_value__ && __ILA_memory_core_grant__[21] ) begin
           data_out <= n274;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_iter_cnt__ && __ILA_memory_core_grant__[23] ) begin
           data_out <= n275;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_mode__ && __ILA_memory_core_grant__[25] ) begin
           data_out <= n276;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_range_0__ && __ILA_memory_core_grant__[27] ) begin
           data_out <= n277;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_range_1__ && __ILA_memory_core_grant__[29] ) begin
           data_out <= n278;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_range_2__ && __ILA_memory_core_grant__[31] ) begin
           data_out <= n279;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_range_3__ && __ILA_memory_core_grant__[33] ) begin
           data_out <= n280;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_range_4__ && __ILA_memory_core_grant__[35] ) begin
           data_out <= n281;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_range_5__ && __ILA_memory_core_grant__[37] ) begin
           data_out <= n282;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_rate_matched__ && __ILA_memory_core_grant__[39] ) begin
           data_out <= n283;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_ren_in_reg_sel__ && __ILA_memory_core_grant__[41] ) begin
           data_out <= n284;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_ren_in_reg_value__ && __ILA_memory_core_grant__[43] ) begin
           data_out <= n285;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_starting_addr__ && __ILA_memory_core_grant__[45] ) begin
           data_out <= starting_addr;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_stencil_width__ && __ILA_memory_core_grant__[47] ) begin
           data_out <= stencil_width;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_stride_0__ && __ILA_memory_core_grant__[49] ) begin
           data_out <= stride_0;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_stride_1__ && __ILA_memory_core_grant__[51] ) begin
           data_out <= stride_1;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_stride_2__ && __ILA_memory_core_grant__[53] ) begin
           data_out <= stride_2;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_stride_3__ && __ILA_memory_core_grant__[55] ) begin
           data_out <= stride_3;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_stride_4__ && __ILA_memory_core_grant__[57] ) begin
           data_out <= stride_4;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_stride_5__ && __ILA_memory_core_grant__[59] ) begin
           data_out <= stride_5;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_switch_db_reg_sel__ && __ILA_memory_core_grant__[61] ) begin
           data_out <= n286;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_switch_db_reg_value__ && __ILA_memory_core_grant__[63] ) begin
           data_out <= n287;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_tile_en__ && __ILA_memory_core_grant__[65] ) begin
           data_out <= n288;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_wen_in_reg_sel__ && __ILA_memory_core_grant__[67] ) begin
           data_out <= n289;
       end else if ( __ILA_memory_core_decode_of_RdConfigReg_wen_in_reg_value__ && __ILA_memory_core_grant__[69] ) begin
           data_out <= n290;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_almost_count__ && __ILA_memory_core_grant__[0] ) begin
           almost_count <= n291;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_arbitrary_addr__ && __ILA_memory_core_grant__[2] ) begin
           arbitrary_addr <= n292;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_chain_idx__ && __ILA_memory_core_grant__[4] ) begin
           chain_idx <= n293;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_chain_wen_in_reg_sel__ && __ILA_memory_core_grant__[6] ) begin
           chain_wen_in_reg_sel <= n294;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_chain_wen_in_reg_value__ && __ILA_memory_core_grant__[8] ) begin
           chain_wen_in_reg_value <= n295;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_circular_en__ && __ILA_memory_core_grant__[10] ) begin
           circular_en <= n296;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_depth__ && __ILA_memory_core_grant__[12] ) begin
           depth <= data_in;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_dimensionality__ && __ILA_memory_core_grant__[14] ) begin
           dimensionality <= n297;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_enable_chain__ && __ILA_memory_core_grant__[16] ) begin
           enable_chain <= n298;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_flush_reg_sel__ && __ILA_memory_core_grant__[18] ) begin
           flush_reg_sel <= n299;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_flush_reg_value__ && __ILA_memory_core_grant__[20] ) begin
           flush_reg_value <= n300;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_iter_cnt__ && __ILA_memory_core_grant__[22] ) begin
           iter_cnt <= n301;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_mode__ && __ILA_memory_core_grant__[24] ) begin
           mode <= n302;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_range_0__ && __ILA_memory_core_grant__[26] ) begin
           range_0 <= n303;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_range_1__ && __ILA_memory_core_grant__[28] ) begin
           range_1 <= n304;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_range_2__ && __ILA_memory_core_grant__[30] ) begin
           range_2 <= n305;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_range_3__ && __ILA_memory_core_grant__[32] ) begin
           range_3 <= n306;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_range_4__ && __ILA_memory_core_grant__[34] ) begin
           range_4 <= n307;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_range_5__ && __ILA_memory_core_grant__[36] ) begin
           range_5 <= n308;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_rate_matched__ && __ILA_memory_core_grant__[38] ) begin
           rate_matched <= n309;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_ren_in_reg_sel__ && __ILA_memory_core_grant__[40] ) begin
           ren_in_reg_sel <= n310;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_ren_in_reg_value__ && __ILA_memory_core_grant__[42] ) begin
           ren_in_reg_value <= n311;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_starting_addr__ && __ILA_memory_core_grant__[44] ) begin
           starting_addr <= data_in;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_stencil_width__ && __ILA_memory_core_grant__[46] ) begin
           stencil_width <= data_in;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_stride_0__ && __ILA_memory_core_grant__[48] ) begin
           stride_0 <= data_in;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_stride_1__ && __ILA_memory_core_grant__[50] ) begin
           stride_1 <= data_in;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_stride_2__ && __ILA_memory_core_grant__[52] ) begin
           stride_2 <= data_in;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_stride_3__ && __ILA_memory_core_grant__[54] ) begin
           stride_3 <= data_in;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_stride_4__ && __ILA_memory_core_grant__[56] ) begin
           stride_4 <= data_in;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_stride_5__ && __ILA_memory_core_grant__[58] ) begin
           stride_5 <= data_in;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_switch_db_reg_sel__ && __ILA_memory_core_grant__[60] ) begin
           switch_db_reg_sel <= n312;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_switch_db_reg_value__ && __ILA_memory_core_grant__[62] ) begin
           switch_db_reg_value <= n313;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_tile_en__ && __ILA_memory_core_grant__[64] ) begin
           tile_en <= n314;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_wen_in_reg_sel__ && __ILA_memory_core_grant__[66] ) begin
           wen_in_reg_sel <= n315;
       end
       if ( __ILA_memory_core_decode_of_WrConfigReg_wen_in_reg_value__ && __ILA_memory_core_grant__[68] ) begin
           wen_in_reg_value <= n316;
       end
   end
end
endmodule
