`timescale 1 ns / 1 ps

module AESL_deadlock_detector (
    input reset,
    input clock);

    wire [3:0] proc_dep_vld_vec_0;
    reg [3:0] proc_dep_vld_vec_0_reg;
    wire [3:0] in_chan_dep_vld_vec_0;
    wire [135:0] in_chan_dep_data_vec_0;
    wire [3:0] token_in_vec_0;
    wire [3:0] out_chan_dep_vld_vec_0;
    wire [33:0] out_chan_dep_data_0;
    wire [3:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [33:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_2_0;
    wire [33:0] dep_chan_data_2_0;
    wire token_2_0;
    wire dep_chan_vld_12_0;
    wire [33:0] dep_chan_data_12_0;
    wire token_12_0;
    wire dep_chan_vld_24_0;
    wire [33:0] dep_chan_data_24_0;
    wire token_24_0;
    wire [1:0] proc_dep_vld_vec_1;
    reg [1:0] proc_dep_vld_vec_1_reg;
    wire [1:0] in_chan_dep_vld_vec_1;
    wire [67:0] in_chan_dep_data_vec_1;
    wire [1:0] token_in_vec_1;
    wire [1:0] out_chan_dep_vld_vec_1;
    wire [33:0] out_chan_dep_data_1;
    wire [1:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [33:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_2_1;
    wire [33:0] dep_chan_data_2_1;
    wire token_2_1;
    wire [3:0] proc_dep_vld_vec_2;
    reg [3:0] proc_dep_vld_vec_2_reg;
    wire [3:0] in_chan_dep_vld_vec_2;
    wire [135:0] in_chan_dep_data_vec_2;
    wire [3:0] token_in_vec_2;
    wire [3:0] out_chan_dep_vld_vec_2;
    wire [33:0] out_chan_dep_data_2;
    wire [3:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_0_2;
    wire [33:0] dep_chan_data_0_2;
    wire token_0_2;
    wire dep_chan_vld_1_2;
    wire [33:0] dep_chan_data_1_2;
    wire token_1_2;
    wire dep_chan_vld_3_2;
    wire [33:0] dep_chan_data_3_2;
    wire token_3_2;
    wire dep_chan_vld_12_2;
    wire [33:0] dep_chan_data_12_2;
    wire token_12_2;
    wire [1:0] proc_dep_vld_vec_3;
    reg [1:0] proc_dep_vld_vec_3_reg;
    wire [1:0] in_chan_dep_vld_vec_3;
    wire [67:0] in_chan_dep_data_vec_3;
    wire [1:0] token_in_vec_3;
    wire [1:0] out_chan_dep_vld_vec_3;
    wire [33:0] out_chan_dep_data_3;
    wire [1:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_2_3;
    wire [33:0] dep_chan_data_2_3;
    wire token_2_3;
    wire dep_chan_vld_4_3;
    wire [33:0] dep_chan_data_4_3;
    wire token_4_3;
    wire [1:0] proc_dep_vld_vec_4;
    reg [1:0] proc_dep_vld_vec_4_reg;
    wire [1:0] in_chan_dep_vld_vec_4;
    wire [67:0] in_chan_dep_data_vec_4;
    wire [1:0] token_in_vec_4;
    wire [1:0] out_chan_dep_vld_vec_4;
    wire [33:0] out_chan_dep_data_4;
    wire [1:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_3_4;
    wire [33:0] dep_chan_data_3_4;
    wire token_3_4;
    wire dep_chan_vld_5_4;
    wire [33:0] dep_chan_data_5_4;
    wire token_5_4;
    wire [1:0] proc_dep_vld_vec_5;
    reg [1:0] proc_dep_vld_vec_5_reg;
    wire [1:0] in_chan_dep_vld_vec_5;
    wire [67:0] in_chan_dep_data_vec_5;
    wire [1:0] token_in_vec_5;
    wire [1:0] out_chan_dep_vld_vec_5;
    wire [33:0] out_chan_dep_data_5;
    wire [1:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_4_5;
    wire [33:0] dep_chan_data_4_5;
    wire token_4_5;
    wire dep_chan_vld_6_5;
    wire [33:0] dep_chan_data_6_5;
    wire token_6_5;
    wire [1:0] proc_dep_vld_vec_6;
    reg [1:0] proc_dep_vld_vec_6_reg;
    wire [1:0] in_chan_dep_vld_vec_6;
    wire [67:0] in_chan_dep_data_vec_6;
    wire [1:0] token_in_vec_6;
    wire [1:0] out_chan_dep_vld_vec_6;
    wire [33:0] out_chan_dep_data_6;
    wire [1:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_5_6;
    wire [33:0] dep_chan_data_5_6;
    wire token_5_6;
    wire dep_chan_vld_7_6;
    wire [33:0] dep_chan_data_7_6;
    wire token_7_6;
    wire [1:0] proc_dep_vld_vec_7;
    reg [1:0] proc_dep_vld_vec_7_reg;
    wire [1:0] in_chan_dep_vld_vec_7;
    wire [67:0] in_chan_dep_data_vec_7;
    wire [1:0] token_in_vec_7;
    wire [1:0] out_chan_dep_vld_vec_7;
    wire [33:0] out_chan_dep_data_7;
    wire [1:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_6_7;
    wire [33:0] dep_chan_data_6_7;
    wire token_6_7;
    wire dep_chan_vld_8_7;
    wire [33:0] dep_chan_data_8_7;
    wire token_8_7;
    wire [1:0] proc_dep_vld_vec_8;
    reg [1:0] proc_dep_vld_vec_8_reg;
    wire [1:0] in_chan_dep_vld_vec_8;
    wire [67:0] in_chan_dep_data_vec_8;
    wire [1:0] token_in_vec_8;
    wire [1:0] out_chan_dep_vld_vec_8;
    wire [33:0] out_chan_dep_data_8;
    wire [1:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_7_8;
    wire [33:0] dep_chan_data_7_8;
    wire token_7_8;
    wire dep_chan_vld_9_8;
    wire [33:0] dep_chan_data_9_8;
    wire token_9_8;
    wire [1:0] proc_dep_vld_vec_9;
    reg [1:0] proc_dep_vld_vec_9_reg;
    wire [1:0] in_chan_dep_vld_vec_9;
    wire [67:0] in_chan_dep_data_vec_9;
    wire [1:0] token_in_vec_9;
    wire [1:0] out_chan_dep_vld_vec_9;
    wire [33:0] out_chan_dep_data_9;
    wire [1:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_8_9;
    wire [33:0] dep_chan_data_8_9;
    wire token_8_9;
    wire dep_chan_vld_10_9;
    wire [33:0] dep_chan_data_10_9;
    wire token_10_9;
    wire [1:0] proc_dep_vld_vec_10;
    reg [1:0] proc_dep_vld_vec_10_reg;
    wire [1:0] in_chan_dep_vld_vec_10;
    wire [67:0] in_chan_dep_data_vec_10;
    wire [1:0] token_in_vec_10;
    wire [1:0] out_chan_dep_vld_vec_10;
    wire [33:0] out_chan_dep_data_10;
    wire [1:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_9_10;
    wire [33:0] dep_chan_data_9_10;
    wire token_9_10;
    wire dep_chan_vld_11_10;
    wire [33:0] dep_chan_data_11_10;
    wire token_11_10;
    wire [1:0] proc_dep_vld_vec_11;
    reg [1:0] proc_dep_vld_vec_11_reg;
    wire [1:0] in_chan_dep_vld_vec_11;
    wire [67:0] in_chan_dep_data_vec_11;
    wire [1:0] token_in_vec_11;
    wire [1:0] out_chan_dep_vld_vec_11;
    wire [33:0] out_chan_dep_data_11;
    wire [1:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_10_11;
    wire [33:0] dep_chan_data_10_11;
    wire token_10_11;
    wire dep_chan_vld_13_11;
    wire [33:0] dep_chan_data_13_11;
    wire token_13_11;
    wire [2:0] proc_dep_vld_vec_12;
    reg [2:0] proc_dep_vld_vec_12_reg;
    wire [2:0] in_chan_dep_vld_vec_12;
    wire [101:0] in_chan_dep_data_vec_12;
    wire [2:0] token_in_vec_12;
    wire [2:0] out_chan_dep_vld_vec_12;
    wire [33:0] out_chan_dep_data_12;
    wire [2:0] token_out_vec_12;
    wire dl_detect_out_12;
    wire dep_chan_vld_0_12;
    wire [33:0] dep_chan_data_0_12;
    wire token_0_12;
    wire dep_chan_vld_2_12;
    wire [33:0] dep_chan_data_2_12;
    wire token_2_12;
    wire dep_chan_vld_13_12;
    wire [33:0] dep_chan_data_13_12;
    wire token_13_12;
    wire [2:0] proc_dep_vld_vec_13;
    reg [2:0] proc_dep_vld_vec_13_reg;
    wire [2:0] in_chan_dep_vld_vec_13;
    wire [101:0] in_chan_dep_data_vec_13;
    wire [2:0] token_in_vec_13;
    wire [2:0] out_chan_dep_vld_vec_13;
    wire [33:0] out_chan_dep_data_13;
    wire [2:0] token_out_vec_13;
    wire dl_detect_out_13;
    wire dep_chan_vld_11_13;
    wire [33:0] dep_chan_data_11_13;
    wire token_11_13;
    wire dep_chan_vld_12_13;
    wire [33:0] dep_chan_data_12_13;
    wire token_12_13;
    wire dep_chan_vld_14_13;
    wire [33:0] dep_chan_data_14_13;
    wire token_14_13;
    wire [1:0] proc_dep_vld_vec_14;
    reg [1:0] proc_dep_vld_vec_14_reg;
    wire [1:0] in_chan_dep_vld_vec_14;
    wire [67:0] in_chan_dep_data_vec_14;
    wire [1:0] token_in_vec_14;
    wire [1:0] out_chan_dep_vld_vec_14;
    wire [33:0] out_chan_dep_data_14;
    wire [1:0] token_out_vec_14;
    wire dl_detect_out_14;
    wire dep_chan_vld_13_14;
    wire [33:0] dep_chan_data_13_14;
    wire token_13_14;
    wire dep_chan_vld_15_14;
    wire [33:0] dep_chan_data_15_14;
    wire token_15_14;
    wire [1:0] proc_dep_vld_vec_15;
    reg [1:0] proc_dep_vld_vec_15_reg;
    wire [1:0] in_chan_dep_vld_vec_15;
    wire [67:0] in_chan_dep_data_vec_15;
    wire [1:0] token_in_vec_15;
    wire [1:0] out_chan_dep_vld_vec_15;
    wire [33:0] out_chan_dep_data_15;
    wire [1:0] token_out_vec_15;
    wire dl_detect_out_15;
    wire dep_chan_vld_14_15;
    wire [33:0] dep_chan_data_14_15;
    wire token_14_15;
    wire dep_chan_vld_16_15;
    wire [33:0] dep_chan_data_16_15;
    wire token_16_15;
    wire [1:0] proc_dep_vld_vec_16;
    reg [1:0] proc_dep_vld_vec_16_reg;
    wire [1:0] in_chan_dep_vld_vec_16;
    wire [67:0] in_chan_dep_data_vec_16;
    wire [1:0] token_in_vec_16;
    wire [1:0] out_chan_dep_vld_vec_16;
    wire [33:0] out_chan_dep_data_16;
    wire [1:0] token_out_vec_16;
    wire dl_detect_out_16;
    wire dep_chan_vld_15_16;
    wire [33:0] dep_chan_data_15_16;
    wire token_15_16;
    wire dep_chan_vld_17_16;
    wire [33:0] dep_chan_data_17_16;
    wire token_17_16;
    wire [1:0] proc_dep_vld_vec_17;
    reg [1:0] proc_dep_vld_vec_17_reg;
    wire [1:0] in_chan_dep_vld_vec_17;
    wire [67:0] in_chan_dep_data_vec_17;
    wire [1:0] token_in_vec_17;
    wire [1:0] out_chan_dep_vld_vec_17;
    wire [33:0] out_chan_dep_data_17;
    wire [1:0] token_out_vec_17;
    wire dl_detect_out_17;
    wire dep_chan_vld_16_17;
    wire [33:0] dep_chan_data_16_17;
    wire token_16_17;
    wire dep_chan_vld_18_17;
    wire [33:0] dep_chan_data_18_17;
    wire token_18_17;
    wire [1:0] proc_dep_vld_vec_18;
    reg [1:0] proc_dep_vld_vec_18_reg;
    wire [1:0] in_chan_dep_vld_vec_18;
    wire [67:0] in_chan_dep_data_vec_18;
    wire [1:0] token_in_vec_18;
    wire [1:0] out_chan_dep_vld_vec_18;
    wire [33:0] out_chan_dep_data_18;
    wire [1:0] token_out_vec_18;
    wire dl_detect_out_18;
    wire dep_chan_vld_17_18;
    wire [33:0] dep_chan_data_17_18;
    wire token_17_18;
    wire dep_chan_vld_19_18;
    wire [33:0] dep_chan_data_19_18;
    wire token_19_18;
    wire [1:0] proc_dep_vld_vec_19;
    reg [1:0] proc_dep_vld_vec_19_reg;
    wire [1:0] in_chan_dep_vld_vec_19;
    wire [67:0] in_chan_dep_data_vec_19;
    wire [1:0] token_in_vec_19;
    wire [1:0] out_chan_dep_vld_vec_19;
    wire [33:0] out_chan_dep_data_19;
    wire [1:0] token_out_vec_19;
    wire dl_detect_out_19;
    wire dep_chan_vld_18_19;
    wire [33:0] dep_chan_data_18_19;
    wire token_18_19;
    wire dep_chan_vld_20_19;
    wire [33:0] dep_chan_data_20_19;
    wire token_20_19;
    wire [1:0] proc_dep_vld_vec_20;
    reg [1:0] proc_dep_vld_vec_20_reg;
    wire [1:0] in_chan_dep_vld_vec_20;
    wire [67:0] in_chan_dep_data_vec_20;
    wire [1:0] token_in_vec_20;
    wire [1:0] out_chan_dep_vld_vec_20;
    wire [33:0] out_chan_dep_data_20;
    wire [1:0] token_out_vec_20;
    wire dl_detect_out_20;
    wire dep_chan_vld_19_20;
    wire [33:0] dep_chan_data_19_20;
    wire token_19_20;
    wire dep_chan_vld_21_20;
    wire [33:0] dep_chan_data_21_20;
    wire token_21_20;
    wire [1:0] proc_dep_vld_vec_21;
    reg [1:0] proc_dep_vld_vec_21_reg;
    wire [1:0] in_chan_dep_vld_vec_21;
    wire [67:0] in_chan_dep_data_vec_21;
    wire [1:0] token_in_vec_21;
    wire [1:0] out_chan_dep_vld_vec_21;
    wire [33:0] out_chan_dep_data_21;
    wire [1:0] token_out_vec_21;
    wire dl_detect_out_21;
    wire dep_chan_vld_20_21;
    wire [33:0] dep_chan_data_20_21;
    wire token_20_21;
    wire dep_chan_vld_22_21;
    wire [33:0] dep_chan_data_22_21;
    wire token_22_21;
    wire [1:0] proc_dep_vld_vec_22;
    reg [1:0] proc_dep_vld_vec_22_reg;
    wire [1:0] in_chan_dep_vld_vec_22;
    wire [67:0] in_chan_dep_data_vec_22;
    wire [1:0] token_in_vec_22;
    wire [1:0] out_chan_dep_vld_vec_22;
    wire [33:0] out_chan_dep_data_22;
    wire [1:0] token_out_vec_22;
    wire dl_detect_out_22;
    wire dep_chan_vld_21_22;
    wire [33:0] dep_chan_data_21_22;
    wire token_21_22;
    wire dep_chan_vld_23_22;
    wire [33:0] dep_chan_data_23_22;
    wire token_23_22;
    wire [1:0] proc_dep_vld_vec_23;
    reg [1:0] proc_dep_vld_vec_23_reg;
    wire [1:0] in_chan_dep_vld_vec_23;
    wire [67:0] in_chan_dep_data_vec_23;
    wire [1:0] token_in_vec_23;
    wire [1:0] out_chan_dep_vld_vec_23;
    wire [33:0] out_chan_dep_data_23;
    wire [1:0] token_out_vec_23;
    wire dl_detect_out_23;
    wire dep_chan_vld_22_23;
    wire [33:0] dep_chan_data_22_23;
    wire token_22_23;
    wire dep_chan_vld_25_23;
    wire [33:0] dep_chan_data_25_23;
    wire token_25_23;
    wire [1:0] proc_dep_vld_vec_24;
    reg [1:0] proc_dep_vld_vec_24_reg;
    wire [1:0] in_chan_dep_vld_vec_24;
    wire [67:0] in_chan_dep_data_vec_24;
    wire [1:0] token_in_vec_24;
    wire [1:0] out_chan_dep_vld_vec_24;
    wire [33:0] out_chan_dep_data_24;
    wire [1:0] token_out_vec_24;
    wire dl_detect_out_24;
    wire dep_chan_vld_0_24;
    wire [33:0] dep_chan_data_0_24;
    wire token_0_24;
    wire dep_chan_vld_25_24;
    wire [33:0] dep_chan_data_25_24;
    wire token_25_24;
    wire [2:0] proc_dep_vld_vec_25;
    reg [2:0] proc_dep_vld_vec_25_reg;
    wire [2:0] in_chan_dep_vld_vec_25;
    wire [101:0] in_chan_dep_data_vec_25;
    wire [2:0] token_in_vec_25;
    wire [2:0] out_chan_dep_vld_vec_25;
    wire [33:0] out_chan_dep_data_25;
    wire [2:0] token_out_vec_25;
    wire dl_detect_out_25;
    wire dep_chan_vld_23_25;
    wire [33:0] dep_chan_data_23_25;
    wire token_23_25;
    wire dep_chan_vld_24_25;
    wire [33:0] dep_chan_data_24_25;
    wire token_24_25;
    wire dep_chan_vld_26_25;
    wire [33:0] dep_chan_data_26_25;
    wire token_26_25;
    wire [1:0] proc_dep_vld_vec_26;
    reg [1:0] proc_dep_vld_vec_26_reg;
    wire [1:0] in_chan_dep_vld_vec_26;
    wire [67:0] in_chan_dep_data_vec_26;
    wire [1:0] token_in_vec_26;
    wire [1:0] out_chan_dep_vld_vec_26;
    wire [33:0] out_chan_dep_data_26;
    wire [1:0] token_out_vec_26;
    wire dl_detect_out_26;
    wire dep_chan_vld_25_26;
    wire [33:0] dep_chan_data_25_26;
    wire token_25_26;
    wire dep_chan_vld_27_26;
    wire [33:0] dep_chan_data_27_26;
    wire token_27_26;
    wire [1:0] proc_dep_vld_vec_27;
    reg [1:0] proc_dep_vld_vec_27_reg;
    wire [1:0] in_chan_dep_vld_vec_27;
    wire [67:0] in_chan_dep_data_vec_27;
    wire [1:0] token_in_vec_27;
    wire [1:0] out_chan_dep_vld_vec_27;
    wire [33:0] out_chan_dep_data_27;
    wire [1:0] token_out_vec_27;
    wire dl_detect_out_27;
    wire dep_chan_vld_26_27;
    wire [33:0] dep_chan_data_26_27;
    wire token_26_27;
    wire dep_chan_vld_28_27;
    wire [33:0] dep_chan_data_28_27;
    wire token_28_27;
    wire [1:0] proc_dep_vld_vec_28;
    reg [1:0] proc_dep_vld_vec_28_reg;
    wire [1:0] in_chan_dep_vld_vec_28;
    wire [67:0] in_chan_dep_data_vec_28;
    wire [1:0] token_in_vec_28;
    wire [1:0] out_chan_dep_vld_vec_28;
    wire [33:0] out_chan_dep_data_28;
    wire [1:0] token_out_vec_28;
    wire dl_detect_out_28;
    wire dep_chan_vld_27_28;
    wire [33:0] dep_chan_data_27_28;
    wire token_27_28;
    wire dep_chan_vld_29_28;
    wire [33:0] dep_chan_data_29_28;
    wire token_29_28;
    wire [1:0] proc_dep_vld_vec_29;
    reg [1:0] proc_dep_vld_vec_29_reg;
    wire [1:0] in_chan_dep_vld_vec_29;
    wire [67:0] in_chan_dep_data_vec_29;
    wire [1:0] token_in_vec_29;
    wire [1:0] out_chan_dep_vld_vec_29;
    wire [33:0] out_chan_dep_data_29;
    wire [1:0] token_out_vec_29;
    wire dl_detect_out_29;
    wire dep_chan_vld_28_29;
    wire [33:0] dep_chan_data_28_29;
    wire token_28_29;
    wire dep_chan_vld_30_29;
    wire [33:0] dep_chan_data_30_29;
    wire token_30_29;
    wire [1:0] proc_dep_vld_vec_30;
    reg [1:0] proc_dep_vld_vec_30_reg;
    wire [1:0] in_chan_dep_vld_vec_30;
    wire [67:0] in_chan_dep_data_vec_30;
    wire [1:0] token_in_vec_30;
    wire [1:0] out_chan_dep_vld_vec_30;
    wire [33:0] out_chan_dep_data_30;
    wire [1:0] token_out_vec_30;
    wire dl_detect_out_30;
    wire dep_chan_vld_29_30;
    wire [33:0] dep_chan_data_29_30;
    wire token_29_30;
    wire dep_chan_vld_31_30;
    wire [33:0] dep_chan_data_31_30;
    wire token_31_30;
    wire [1:0] proc_dep_vld_vec_31;
    reg [1:0] proc_dep_vld_vec_31_reg;
    wire [1:0] in_chan_dep_vld_vec_31;
    wire [67:0] in_chan_dep_data_vec_31;
    wire [1:0] token_in_vec_31;
    wire [1:0] out_chan_dep_vld_vec_31;
    wire [33:0] out_chan_dep_data_31;
    wire [1:0] token_out_vec_31;
    wire dl_detect_out_31;
    wire dep_chan_vld_30_31;
    wire [33:0] dep_chan_data_30_31;
    wire token_30_31;
    wire dep_chan_vld_32_31;
    wire [33:0] dep_chan_data_32_31;
    wire token_32_31;
    wire [1:0] proc_dep_vld_vec_32;
    reg [1:0] proc_dep_vld_vec_32_reg;
    wire [1:0] in_chan_dep_vld_vec_32;
    wire [67:0] in_chan_dep_data_vec_32;
    wire [1:0] token_in_vec_32;
    wire [1:0] out_chan_dep_vld_vec_32;
    wire [33:0] out_chan_dep_data_32;
    wire [1:0] token_out_vec_32;
    wire dl_detect_out_32;
    wire dep_chan_vld_31_32;
    wire [33:0] dep_chan_data_31_32;
    wire token_31_32;
    wire dep_chan_vld_33_32;
    wire [33:0] dep_chan_data_33_32;
    wire token_33_32;
    wire [0:0] proc_dep_vld_vec_33;
    reg [0:0] proc_dep_vld_vec_33_reg;
    wire [0:0] in_chan_dep_vld_vec_33;
    wire [33:0] in_chan_dep_data_vec_33;
    wire [0:0] token_in_vec_33;
    wire [0:0] out_chan_dep_vld_vec_33;
    wire [33:0] out_chan_dep_data_33;
    wire [0:0] token_out_vec_33;
    wire dl_detect_out_33;
    wire dep_chan_vld_32_33;
    wire [33:0] dep_chan_data_32_33;
    wire token_32_33;
    wire [33:0] dl_in_vec;
    wire dl_detect_out;
    wire [33:0] origin;
    wire token_clear;

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0$ap_idle <= AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0
    AESL_deadlock_detect_unit #(34, 0, 4, 4) AESL_deadlock_detect_unit_0 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (~AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0.res1_V_data_0_V_blk_n | ~AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0.res1_V_data_1_V_blk_n | ~AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0.res1_V_data_2_V_blk_n | ~AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0.res1_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0_U.if_full_n & AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0.ap_done));
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (~AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0.res2_V_data_0_V_blk_n | ~AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0.res2_V_data_1_V_blk_n | ~AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0.res2_V_data_2_V_blk_n | ~AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0.res2_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0_U.if_full_n & AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0.ap_done));
    assign proc_dep_vld_vec_0[2] = dl_detect_out ? proc_dep_vld_vec_0_reg[2] : (((AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0_ap_ready_count[0]) & AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0.ap_idle & ~(AESL_inst_myproject.add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0_ap_ready_count[0])));
    assign proc_dep_vld_vec_0[3] = dl_detect_out ? proc_dep_vld_vec_0_reg[3] : (((AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0_ap_ready_count[0]) & AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0.ap_idle & ~(AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0_ap_ready_count[0])));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[33 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_2_0;
    assign in_chan_dep_data_vec_0[67 : 34] = dep_chan_data_2_0;
    assign token_in_vec_0[1] = token_2_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_12_0;
    assign in_chan_dep_data_vec_0[101 : 68] = dep_chan_data_12_0;
    assign token_in_vec_0[2] = token_12_0;
    assign in_chan_dep_vld_vec_0[3] = dep_chan_vld_24_0;
    assign in_chan_dep_data_vec_0[135 : 102] = dep_chan_data_24_0;
    assign token_in_vec_0[3] = token_24_0;
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[0];
    assign dep_chan_vld_0_24 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_24 = out_chan_dep_data_0;
    assign token_0_24 = token_out_vec_0[1];
    assign dep_chan_vld_0_2 = out_chan_dep_vld_vec_0[2];
    assign dep_chan_data_0_2 = out_chan_dep_data_0;
    assign token_0_2 = token_out_vec_0[2];
    assign dep_chan_vld_0_12 = out_chan_dep_vld_vec_0[3];
    assign dep_chan_data_0_12 = out_chan_dep_data_0;
    assign token_0_12 = token_out_vec_0[3];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0$ap_idle <= AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0
    AESL_deadlock_detect_unit #(34, 1, 2, 2) AESL_deadlock_detect_unit_1 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0_U.if_empty_n & (AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0.ap_ready | AESL_inst_myproject$pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0$ap_idle)));
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0.res_V_data_V_blk_n);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[33 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_2_1;
    assign in_chan_dep_data_vec_1[67 : 34] = dep_chan_data_2_1;
    assign token_in_vec_1[1] = token_2_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];
    assign dep_chan_vld_1_2 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_2 = out_chan_dep_data_1;
    assign token_1_2 = token_out_vec_1[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0$ap_idle <= AESL_inst_myproject.add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0
    AESL_deadlock_detect_unit #(34, 2, 4, 4) AESL_deadlock_detect_unit_2 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (~AESL_inst_myproject.add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0.data2_V_data_V_blk_n);
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (~AESL_inst_myproject.add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0.res_V_data_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53bml_U.if_full_n & AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53_U0.ap_done));
    assign proc_dep_vld_vec_2[2] = dl_detect_out ? proc_dep_vld_vec_2_reg[2] : (((AESL_inst_myproject.add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0_ap_ready_count[0]) & AESL_inst_myproject.add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0.ap_idle & ~(AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0_ap_ready_count[0])));
    assign proc_dep_vld_vec_2[3] = dl_detect_out ? proc_dep_vld_vec_2_reg[3] : (((AESL_inst_myproject.add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0_ap_ready_count[0]) & AESL_inst_myproject.add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0.ap_idle & ~(AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0_ap_ready_count[0])));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_0_2;
    assign in_chan_dep_data_vec_2[33 : 0] = dep_chan_data_0_2;
    assign token_in_vec_2[0] = token_0_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_1_2;
    assign in_chan_dep_data_vec_2[67 : 34] = dep_chan_data_1_2;
    assign token_in_vec_2[1] = token_1_2;
    assign in_chan_dep_vld_vec_2[2] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[101 : 68] = dep_chan_data_3_2;
    assign token_in_vec_2[2] = token_3_2;
    assign in_chan_dep_vld_vec_2[3] = dep_chan_vld_12_2;
    assign in_chan_dep_data_vec_2[135 : 102] = dep_chan_data_12_2;
    assign token_in_vec_2[3] = token_12_2;
    assign dep_chan_vld_2_1 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_1 = out_chan_dep_data_2;
    assign token_2_1 = token_out_vec_2[0];
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[1];
    assign dep_chan_vld_2_0 = out_chan_dep_vld_vec_2[2];
    assign dep_chan_data_2_0 = out_chan_dep_data_2;
    assign token_2_0 = token_out_vec_2[2];
    assign dep_chan_vld_2_12 = out_chan_dep_vld_vec_2[3];
    assign dep_chan_data_2_12 = out_chan_dep_data_2;
    assign token_2_12 = token_out_vec_2[3];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53_U0$ap_idle <= AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53_U0
    AESL_deadlock_detect_unit #(34, 3, 2, 2) AESL_deadlock_detect_unit_3 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53_U0.data_V_data_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53bml_U.if_empty_n & (AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53_U0.ap_ready | AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53_U0$ap_idle)));
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53_U0.res_V_data_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0_U.if_full_n & AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[33 : 0] = dep_chan_data_2_3;
    assign token_in_vec_3[0] = token_2_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_4_3;
    assign in_chan_dep_data_vec_3[67 : 34] = dep_chan_data_4_3;
    assign token_in_vec_3[1] = token_4_3;
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[0];
    assign dep_chan_vld_3_4 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_4 = out_chan_dep_data_3;
    assign token_3_4 = token_out_vec_3[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0$ap_idle <= AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0
    AESL_deadlock_detect_unit #(34, 4, 2, 2) AESL_deadlock_detect_unit_4 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.data_V_data_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0_U.if_empty_n & (AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.ap_ready | AESL_inst_myproject$conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0$ap_idle)));
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153.res_stream_V_data_0_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153.res_stream_V_data_1_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153.res_stream_V_data_2_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153.res_stream_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0_U.if_full_n & AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_3_4;
    assign in_chan_dep_data_vec_4[33 : 0] = dep_chan_data_3_4;
    assign token_in_vec_4[0] = token_3_4;
    assign in_chan_dep_vld_vec_4[1] = dep_chan_vld_5_4;
    assign in_chan_dep_data_vec_4[67 : 34] = dep_chan_data_5_4;
    assign token_in_vec_4[1] = token_5_4;
    assign dep_chan_vld_4_3 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_3 = out_chan_dep_data_4;
    assign token_4_3 = token_out_vec_4[0];
    assign dep_chan_vld_4_5 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_5 = out_chan_dep_data_4;
    assign token_4_5 = token_out_vec_4[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0$ap_idle <= AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0
    AESL_deadlock_detect_unit #(34, 5, 2, 2) AESL_deadlock_detect_unit_5 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0_U.if_empty_n & (AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0.ap_ready | AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0$ap_idle)));
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0.res_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54bnm_U.if_full_n & AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_4_5;
    assign in_chan_dep_data_vec_5[33 : 0] = dep_chan_data_4_5;
    assign token_in_vec_5[0] = token_4_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_6_5;
    assign in_chan_dep_data_vec_5[67 : 34] = dep_chan_data_6_5;
    assign token_in_vec_5[1] = token_6_5;
    assign dep_chan_vld_5_4 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_4 = out_chan_dep_data_5;
    assign token_5_4 = token_out_vec_5[0];
    assign dep_chan_vld_5_6 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_6 = out_chan_dep_data_5;
    assign token_5_6 = token_out_vec_5[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0$ap_idle <= AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0
    AESL_deadlock_detect_unit #(34, 6, 2, 2) AESL_deadlock_detect_unit_6 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54bnm_U.if_empty_n & (AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0.ap_ready | AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0$ap_idle)));
    assign proc_dep_vld_vec_6[1] = dl_detect_out ? proc_dep_vld_vec_6_reg[1] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0.res_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0_U.if_full_n & AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_5_6;
    assign in_chan_dep_data_vec_6[33 : 0] = dep_chan_data_5_6;
    assign token_in_vec_6[0] = token_5_6;
    assign in_chan_dep_vld_vec_6[1] = dep_chan_vld_7_6;
    assign in_chan_dep_data_vec_6[67 : 34] = dep_chan_data_7_6;
    assign token_in_vec_6[1] = token_7_6;
    assign dep_chan_vld_6_5 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_5 = out_chan_dep_data_6;
    assign token_6_5 = token_out_vec_6[0];
    assign dep_chan_vld_6_7 = out_chan_dep_vld_vec_6[1];
    assign dep_chan_data_6_7 = out_chan_dep_data_6;
    assign token_6_7 = token_out_vec_6[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0$ap_idle <= AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0
    AESL_deadlock_detect_unit #(34, 7, 2, 2) AESL_deadlock_detect_unit_7 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0_U.if_empty_n & (AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.ap_ready | AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0$ap_idle)));
    assign proc_dep_vld_vec_7[1] = dl_detect_out ? proc_dep_vld_vec_7_reg[1] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.res_stream_V_data_0_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.res_stream_V_data_1_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.res_stream_V_data_2_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.res_stream_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0_U.if_full_n & AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_6_7;
    assign in_chan_dep_data_vec_7[33 : 0] = dep_chan_data_6_7;
    assign token_in_vec_7[0] = token_6_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_8_7;
    assign in_chan_dep_data_vec_7[67 : 34] = dep_chan_data_8_7;
    assign token_in_vec_7[1] = token_8_7;
    assign dep_chan_vld_7_6 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_6 = out_chan_dep_data_7;
    assign token_7_6 = token_out_vec_7[0];
    assign dep_chan_vld_7_8 = out_chan_dep_vld_vec_7[1];
    assign dep_chan_data_7_8 = out_chan_dep_data_7;
    assign token_7_8 = token_out_vec_7[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0$ap_idle <= AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0
    AESL_deadlock_detect_unit #(34, 8, 2, 2) AESL_deadlock_detect_unit_8 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0_U.if_empty_n & (AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0.ap_ready | AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0$ap_idle)));
    assign proc_dep_vld_vec_8[1] = dl_detect_out ? proc_dep_vld_vec_8_reg[1] : (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0.res_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55bom_U.if_full_n & AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_7_8;
    assign in_chan_dep_data_vec_8[33 : 0] = dep_chan_data_7_8;
    assign token_in_vec_8[0] = token_7_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_9_8;
    assign in_chan_dep_data_vec_8[67 : 34] = dep_chan_data_9_8;
    assign token_in_vec_8[1] = token_9_8;
    assign dep_chan_vld_8_7 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_7 = out_chan_dep_data_8;
    assign token_8_7 = token_out_vec_8[0];
    assign dep_chan_vld_8_9 = out_chan_dep_vld_vec_8[1];
    assign dep_chan_data_8_9 = out_chan_dep_data_8;
    assign token_8_9 = token_out_vec_8[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0$ap_idle <= AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0
    AESL_deadlock_detect_unit #(34, 9, 2, 2) AESL_deadlock_detect_unit_9 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55bom_U.if_empty_n & (AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0.ap_ready | AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0$ap_idle)));
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0.res_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0_U.if_full_n & AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_8_9;
    assign in_chan_dep_data_vec_9[33 : 0] = dep_chan_data_8_9;
    assign token_in_vec_9[0] = token_8_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_10_9;
    assign in_chan_dep_data_vec_9[67 : 34] = dep_chan_data_10_9;
    assign token_in_vec_9[1] = token_10_9;
    assign dep_chan_vld_9_8 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_8 = out_chan_dep_data_9;
    assign token_9_8 = token_out_vec_9[0];
    assign dep_chan_vld_9_10 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_10 = out_chan_dep_data_9;
    assign token_9_10 = token_out_vec_9[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0$ap_idle <= AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0
    AESL_deadlock_detect_unit #(34, 10, 2, 2) AESL_deadlock_detect_unit_10 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0_U.if_empty_n & (AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.ap_ready | AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0$ap_idle)));
    assign proc_dep_vld_vec_10[1] = dl_detect_out ? proc_dep_vld_vec_10_reg[1] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.res_stream_V_data_0_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.res_stream_V_data_1_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.res_stream_V_data_2_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.res_stream_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0_U.if_full_n & AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_9_10;
    assign in_chan_dep_data_vec_10[33 : 0] = dep_chan_data_9_10;
    assign token_in_vec_10[0] = token_9_10;
    assign in_chan_dep_vld_vec_10[1] = dep_chan_vld_11_10;
    assign in_chan_dep_data_vec_10[67 : 34] = dep_chan_data_11_10;
    assign token_in_vec_10[1] = token_11_10;
    assign dep_chan_vld_10_9 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_9 = out_chan_dep_data_10;
    assign token_10_9 = token_out_vec_10[0];
    assign dep_chan_vld_10_11 = out_chan_dep_vld_vec_10[1];
    assign dep_chan_data_10_11 = out_chan_dep_data_10;
    assign token_10_11 = token_out_vec_10[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0$ap_idle <= AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0
    AESL_deadlock_detect_unit #(34, 11, 2, 2) AESL_deadlock_detect_unit_11 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_11),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_11),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_11),
        .token_in_vec(token_in_vec_11),
        .dl_detect_in(dl_detect_out),
        .origin(origin[11]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_11),
        .out_chan_dep_data(out_chan_dep_data_11),
        .token_out_vec(token_out_vec_11),
        .dl_detect_out(dl_in_vec[11]));

    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0_U.if_empty_n & (AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0.ap_ready | AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0$ap_idle)));
    assign proc_dep_vld_vec_11[1] = dl_detect_out ? proc_dep_vld_vec_11_reg[1] : (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0.res_V_data_3_V_blk_n);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_10_11;
    assign in_chan_dep_data_vec_11[33 : 0] = dep_chan_data_10_11;
    assign token_in_vec_11[0] = token_10_11;
    assign in_chan_dep_vld_vec_11[1] = dep_chan_vld_13_11;
    assign in_chan_dep_data_vec_11[67 : 34] = dep_chan_data_13_11;
    assign token_in_vec_11[1] = token_13_11;
    assign dep_chan_vld_11_10 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_10 = out_chan_dep_data_11;
    assign token_11_10 = token_out_vec_11[0];
    assign dep_chan_vld_11_13 = out_chan_dep_vld_vec_11[1];
    assign dep_chan_data_11_13 = out_chan_dep_data_11;
    assign token_11_13 = token_out_vec_11[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0$ap_idle <= AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0
    AESL_deadlock_detect_unit #(34, 12, 3, 3) AESL_deadlock_detect_unit_12 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_12),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_12),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_12),
        .token_in_vec(token_in_vec_12),
        .dl_detect_in(dl_detect_out),
        .origin(origin[12]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_12),
        .out_chan_dep_data(out_chan_dep_data_12),
        .token_out_vec(token_out_vec_12),
        .dl_detect_out(dl_in_vec[12]));

    assign proc_dep_vld_vec_12[0] = dl_detect_out ? proc_dep_vld_vec_12_reg[0] : (~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0.res_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0_U.if_full_n & AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0.ap_done));
    assign proc_dep_vld_vec_12[1] = dl_detect_out ? proc_dep_vld_vec_12_reg[1] : (((AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0_ap_ready_count[0]) & AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0.ap_idle & ~(AESL_inst_myproject.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_16384_U0_ap_ready_count[0])));
    assign proc_dep_vld_vec_12[2] = dl_detect_out ? proc_dep_vld_vec_12_reg[2] : (((AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0_ap_ready_count[0]) & AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0.ap_idle & ~(AESL_inst_myproject.add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0_ap_ready_count[0])));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_12_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_12_reg <= proc_dep_vld_vec_12;
        end
    end
    assign in_chan_dep_vld_vec_12[0] = dep_chan_vld_0_12;
    assign in_chan_dep_data_vec_12[33 : 0] = dep_chan_data_0_12;
    assign token_in_vec_12[0] = token_0_12;
    assign in_chan_dep_vld_vec_12[1] = dep_chan_vld_2_12;
    assign in_chan_dep_data_vec_12[67 : 34] = dep_chan_data_2_12;
    assign token_in_vec_12[1] = token_2_12;
    assign in_chan_dep_vld_vec_12[2] = dep_chan_vld_13_12;
    assign in_chan_dep_data_vec_12[101 : 68] = dep_chan_data_13_12;
    assign token_in_vec_12[2] = token_13_12;
    assign dep_chan_vld_12_13 = out_chan_dep_vld_vec_12[0];
    assign dep_chan_data_12_13 = out_chan_dep_data_12;
    assign token_12_13 = token_out_vec_12[0];
    assign dep_chan_vld_12_0 = out_chan_dep_vld_vec_12[1];
    assign dep_chan_data_12_0 = out_chan_dep_data_12;
    assign token_12_0 = token_out_vec_12[1];
    assign dep_chan_vld_12_2 = out_chan_dep_vld_vec_12[2];
    assign dep_chan_data_12_2 = out_chan_dep_data_12;
    assign token_12_2 = token_out_vec_12[2];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0$ap_idle <= AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0
    AESL_deadlock_detect_unit #(34, 13, 3, 3) AESL_deadlock_detect_unit_13 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_13),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_13),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_13),
        .token_in_vec(token_in_vec_13),
        .dl_detect_in(dl_detect_out),
        .origin(origin[13]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_13),
        .out_chan_dep_data(out_chan_dep_data_13),
        .token_out_vec(token_out_vec_13),
        .dl_detect_out(dl_in_vec[13]));

    assign proc_dep_vld_vec_13[0] = dl_detect_out ? proc_dep_vld_vec_13_reg[0] : (~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0.data1_V_data_0_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0.data1_V_data_1_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0.data1_V_data_2_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0.data1_V_data_3_V_blk_n);
    assign proc_dep_vld_vec_13[1] = dl_detect_out ? proc_dep_vld_vec_13_reg[1] : (~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0.data2_V_data_0_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0.data2_V_data_1_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0.data2_V_data_2_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0.data2_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0_U.if_empty_n & (AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0.ap_ready | AESL_inst_myproject$add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0$ap_idle)));
    assign proc_dep_vld_vec_13[2] = dl_detect_out ? proc_dep_vld_vec_13_reg[2] : (~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0.res_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56bpm_U.if_full_n & AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_13_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_13_reg <= proc_dep_vld_vec_13;
        end
    end
    assign in_chan_dep_vld_vec_13[0] = dep_chan_vld_11_13;
    assign in_chan_dep_data_vec_13[33 : 0] = dep_chan_data_11_13;
    assign token_in_vec_13[0] = token_11_13;
    assign in_chan_dep_vld_vec_13[1] = dep_chan_vld_12_13;
    assign in_chan_dep_data_vec_13[67 : 34] = dep_chan_data_12_13;
    assign token_in_vec_13[1] = token_12_13;
    assign in_chan_dep_vld_vec_13[2] = dep_chan_vld_14_13;
    assign in_chan_dep_data_vec_13[101 : 68] = dep_chan_data_14_13;
    assign token_in_vec_13[2] = token_14_13;
    assign dep_chan_vld_13_11 = out_chan_dep_vld_vec_13[0];
    assign dep_chan_data_13_11 = out_chan_dep_data_13;
    assign token_13_11 = token_out_vec_13[0];
    assign dep_chan_vld_13_12 = out_chan_dep_vld_vec_13[1];
    assign dep_chan_data_13_12 = out_chan_dep_data_13;
    assign token_13_12 = token_out_vec_13[1];
    assign dep_chan_vld_13_14 = out_chan_dep_vld_vec_13[2];
    assign dep_chan_data_13_14 = out_chan_dep_data_13;
    assign token_13_14 = token_out_vec_13[2];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0$ap_idle <= AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0
    AESL_deadlock_detect_unit #(34, 14, 2, 2) AESL_deadlock_detect_unit_14 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_14),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_14),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_14),
        .token_in_vec(token_in_vec_14),
        .dl_detect_in(dl_detect_out),
        .origin(origin[14]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_14),
        .out_chan_dep_data(out_chan_dep_data_14),
        .token_out_vec(token_out_vec_14),
        .dl_detect_out(dl_in_vec[14]));

    assign proc_dep_vld_vec_14[0] = dl_detect_out ? proc_dep_vld_vec_14_reg[0] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56bpm_U.if_empty_n & (AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0.ap_ready | AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0$ap_idle)));
    assign proc_dep_vld_vec_14[1] = dl_detect_out ? proc_dep_vld_vec_14_reg[1] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0.res_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0_U.if_full_n & AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_14_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_14_reg <= proc_dep_vld_vec_14;
        end
    end
    assign in_chan_dep_vld_vec_14[0] = dep_chan_vld_13_14;
    assign in_chan_dep_data_vec_14[33 : 0] = dep_chan_data_13_14;
    assign token_in_vec_14[0] = token_13_14;
    assign in_chan_dep_vld_vec_14[1] = dep_chan_vld_15_14;
    assign in_chan_dep_data_vec_14[67 : 34] = dep_chan_data_15_14;
    assign token_in_vec_14[1] = token_15_14;
    assign dep_chan_vld_14_13 = out_chan_dep_vld_vec_14[0];
    assign dep_chan_data_14_13 = out_chan_dep_data_14;
    assign token_14_13 = token_out_vec_14[0];
    assign dep_chan_vld_14_15 = out_chan_dep_vld_vec_14[1];
    assign dep_chan_data_14_15 = out_chan_dep_data_14;
    assign token_14_15 = token_out_vec_14[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0$ap_idle <= AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0
    AESL_deadlock_detect_unit #(34, 15, 2, 2) AESL_deadlock_detect_unit_15 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_15),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_15),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_15),
        .token_in_vec(token_in_vec_15),
        .dl_detect_in(dl_detect_out),
        .origin(origin[15]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_15),
        .out_chan_dep_data(out_chan_dep_data_15),
        .token_out_vec(token_out_vec_15),
        .dl_detect_out(dl_in_vec[15]));

    assign proc_dep_vld_vec_15[0] = dl_detect_out ? proc_dep_vld_vec_15_reg[0] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0_U.if_empty_n & (AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.ap_ready | AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0$ap_idle)));
    assign proc_dep_vld_vec_15[1] = dl_detect_out ? proc_dep_vld_vec_15_reg[1] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.res_stream_V_data_0_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.res_stream_V_data_1_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.res_stream_V_data_2_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.res_stream_V_data_3_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.res_stream_V_data_4_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.res_stream_V_data_5_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.res_stream_V_data_6_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.res_stream_V_data_7_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0_U.if_full_n & AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_15_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_15_reg <= proc_dep_vld_vec_15;
        end
    end
    assign in_chan_dep_vld_vec_15[0] = dep_chan_vld_14_15;
    assign in_chan_dep_data_vec_15[33 : 0] = dep_chan_data_14_15;
    assign token_in_vec_15[0] = token_14_15;
    assign in_chan_dep_vld_vec_15[1] = dep_chan_vld_16_15;
    assign in_chan_dep_data_vec_15[67 : 34] = dep_chan_data_16_15;
    assign token_in_vec_15[1] = token_16_15;
    assign dep_chan_vld_15_14 = out_chan_dep_vld_vec_15[0];
    assign dep_chan_data_15_14 = out_chan_dep_data_15;
    assign token_15_14 = token_out_vec_15[0];
    assign dep_chan_vld_15_16 = out_chan_dep_vld_vec_15[1];
    assign dep_chan_data_15_16 = out_chan_dep_data_15;
    assign token_15_16 = token_out_vec_15[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0$ap_idle <= AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0
    AESL_deadlock_detect_unit #(34, 16, 2, 2) AESL_deadlock_detect_unit_16 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_16),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_16),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_16),
        .token_in_vec(token_in_vec_16),
        .dl_detect_in(dl_detect_out),
        .origin(origin[16]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_16),
        .out_chan_dep_data(out_chan_dep_data_16),
        .token_out_vec(token_out_vec_16),
        .dl_detect_out(dl_in_vec[16]));

    assign proc_dep_vld_vec_16[0] = dl_detect_out ? proc_dep_vld_vec_16_reg[0] : (~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.data_V_data_3_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.data_V_data_4_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.data_V_data_5_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.data_V_data_6_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.data_V_data_7_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0_U.if_empty_n & (AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.ap_ready | AESL_inst_myproject$relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0$ap_idle)));
    assign proc_dep_vld_vec_16[1] = dl_detect_out ? proc_dep_vld_vec_16_reg[1] : (~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.res_V_data_3_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.res_V_data_4_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.res_V_data_5_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.res_V_data_6_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0.res_V_data_7_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57bqm_U.if_full_n & AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_16_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_16_reg <= proc_dep_vld_vec_16;
        end
    end
    assign in_chan_dep_vld_vec_16[0] = dep_chan_vld_15_16;
    assign in_chan_dep_data_vec_16[33 : 0] = dep_chan_data_15_16;
    assign token_in_vec_16[0] = token_15_16;
    assign in_chan_dep_vld_vec_16[1] = dep_chan_vld_17_16;
    assign in_chan_dep_data_vec_16[67 : 34] = dep_chan_data_17_16;
    assign token_in_vec_16[1] = token_17_16;
    assign dep_chan_vld_16_15 = out_chan_dep_vld_vec_16[0];
    assign dep_chan_data_16_15 = out_chan_dep_data_16;
    assign token_16_15 = token_out_vec_16[0];
    assign dep_chan_vld_16_17 = out_chan_dep_vld_vec_16[1];
    assign dep_chan_data_16_17 = out_chan_dep_data_16;
    assign token_16_17 = token_out_vec_16[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0$ap_idle <= AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0
    AESL_deadlock_detect_unit #(34, 17, 2, 2) AESL_deadlock_detect_unit_17 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_17),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_17),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_17),
        .token_in_vec(token_in_vec_17),
        .dl_detect_in(dl_detect_out),
        .origin(origin[17]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_17),
        .out_chan_dep_data(out_chan_dep_data_17),
        .token_out_vec(token_out_vec_17),
        .dl_detect_out(dl_in_vec[17]));

    assign proc_dep_vld_vec_17[0] = dl_detect_out ? proc_dep_vld_vec_17_reg[0] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.data_V_data_3_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.data_V_data_4_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.data_V_data_5_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.data_V_data_6_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.data_V_data_7_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57bqm_U.if_empty_n & (AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.ap_ready | AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0$ap_idle)));
    assign proc_dep_vld_vec_17[1] = dl_detect_out ? proc_dep_vld_vec_17_reg[1] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.res_V_data_3_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.res_V_data_4_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.res_V_data_5_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.res_V_data_6_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0.res_V_data_7_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0_U.if_full_n & AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_17_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_17_reg <= proc_dep_vld_vec_17;
        end
    end
    assign in_chan_dep_vld_vec_17[0] = dep_chan_vld_16_17;
    assign in_chan_dep_data_vec_17[33 : 0] = dep_chan_data_16_17;
    assign token_in_vec_17[0] = token_16_17;
    assign in_chan_dep_vld_vec_17[1] = dep_chan_vld_18_17;
    assign in_chan_dep_data_vec_17[67 : 34] = dep_chan_data_18_17;
    assign token_in_vec_17[1] = token_18_17;
    assign dep_chan_vld_17_16 = out_chan_dep_vld_vec_17[0];
    assign dep_chan_data_17_16 = out_chan_dep_data_17;
    assign token_17_16 = token_out_vec_17[0];
    assign dep_chan_vld_17_18 = out_chan_dep_vld_vec_17[1];
    assign dep_chan_data_17_18 = out_chan_dep_data_17;
    assign token_17_18 = token_out_vec_17[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0$ap_idle <= AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0
    AESL_deadlock_detect_unit #(34, 18, 2, 2) AESL_deadlock_detect_unit_18 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_18),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_18),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_18),
        .token_in_vec(token_in_vec_18),
        .dl_detect_in(dl_detect_out),
        .origin(origin[18]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_18),
        .out_chan_dep_data(out_chan_dep_data_18),
        .token_out_vec(token_out_vec_18),
        .dl_detect_out(dl_in_vec[18]));

    assign proc_dep_vld_vec_18[0] = dl_detect_out ? proc_dep_vld_vec_18_reg[0] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.data_V_data_3_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.data_V_data_4_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.data_V_data_5_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.data_V_data_6_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.data_V_data_7_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0_U.if_empty_n & (AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.ap_ready | AESL_inst_myproject$conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0$ap_idle)));
    assign proc_dep_vld_vec_18[1] = dl_detect_out ? proc_dep_vld_vec_18_reg[1] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.res_stream_V_data_0_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.res_stream_V_data_1_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.res_stream_V_data_2_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.res_stream_V_data_3_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.res_stream_V_data_4_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.res_stream_V_data_5_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.res_stream_V_data_6_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.res_stream_V_data_7_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0_U.if_full_n & AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_18_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_18_reg <= proc_dep_vld_vec_18;
        end
    end
    assign in_chan_dep_vld_vec_18[0] = dep_chan_vld_17_18;
    assign in_chan_dep_data_vec_18[33 : 0] = dep_chan_data_17_18;
    assign token_in_vec_18[0] = token_17_18;
    assign in_chan_dep_vld_vec_18[1] = dep_chan_vld_19_18;
    assign in_chan_dep_data_vec_18[67 : 34] = dep_chan_data_19_18;
    assign token_in_vec_18[1] = token_19_18;
    assign dep_chan_vld_18_17 = out_chan_dep_vld_vec_18[0];
    assign dep_chan_data_18_17 = out_chan_dep_data_18;
    assign token_18_17 = token_out_vec_18[0];
    assign dep_chan_vld_18_19 = out_chan_dep_vld_vec_18[1];
    assign dep_chan_data_18_19 = out_chan_dep_data_18;
    assign token_18_19 = token_out_vec_18[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0$ap_idle <= AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0
    AESL_deadlock_detect_unit #(34, 19, 2, 2) AESL_deadlock_detect_unit_19 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_19),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_19),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_19),
        .token_in_vec(token_in_vec_19),
        .dl_detect_in(dl_detect_out),
        .origin(origin[19]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_19),
        .out_chan_dep_data(out_chan_dep_data_19),
        .token_out_vec(token_out_vec_19),
        .dl_detect_out(dl_in_vec[19]));

    assign proc_dep_vld_vec_19[0] = dl_detect_out ? proc_dep_vld_vec_19_reg[0] : (~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.data_V_data_3_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.data_V_data_4_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.data_V_data_5_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.data_V_data_6_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.data_V_data_7_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0_U.if_empty_n & (AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.ap_ready | AESL_inst_myproject$relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0$ap_idle)));
    assign proc_dep_vld_vec_19[1] = dl_detect_out ? proc_dep_vld_vec_19_reg[1] : (~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.res_V_data_3_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.res_V_data_4_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.res_V_data_5_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.res_V_data_6_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0.res_V_data_7_V_blk_n | (~AESL_inst_myproject.start_for_resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0_U.if_full_n & AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_19_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_19_reg <= proc_dep_vld_vec_19;
        end
    end
    assign in_chan_dep_vld_vec_19[0] = dep_chan_vld_18_19;
    assign in_chan_dep_data_vec_19[33 : 0] = dep_chan_data_18_19;
    assign token_in_vec_19[0] = token_18_19;
    assign in_chan_dep_vld_vec_19[1] = dep_chan_vld_20_19;
    assign in_chan_dep_data_vec_19[67 : 34] = dep_chan_data_20_19;
    assign token_in_vec_19[1] = token_20_19;
    assign dep_chan_vld_19_18 = out_chan_dep_vld_vec_19[0];
    assign dep_chan_data_19_18 = out_chan_dep_data_19;
    assign token_19_18 = token_out_vec_19[0];
    assign dep_chan_vld_19_20 = out_chan_dep_vld_vec_19[1];
    assign dep_chan_data_19_20 = out_chan_dep_data_19;
    assign token_19_20 = token_out_vec_19[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0$ap_idle <= AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0
    AESL_deadlock_detect_unit #(34, 20, 2, 2) AESL_deadlock_detect_unit_20 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_20),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_20),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_20),
        .token_in_vec(token_in_vec_20),
        .dl_detect_in(dl_detect_out),
        .origin(origin[20]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_20),
        .out_chan_dep_data(out_chan_dep_data_20),
        .token_out_vec(token_out_vec_20),
        .dl_detect_out(dl_in_vec[20]));

    assign proc_dep_vld_vec_20[0] = dl_detect_out ? proc_dep_vld_vec_20_reg[0] : (~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.image_V_data_0_V_blk_n | ~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.image_V_data_1_V_blk_n | ~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.image_V_data_2_V_blk_n | ~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.image_V_data_3_V_blk_n | ~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.image_V_data_4_V_blk_n | ~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.image_V_data_5_V_blk_n | ~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.image_V_data_6_V_blk_n | ~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.image_V_data_7_V_blk_n | (~AESL_inst_myproject.start_for_resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0_U.if_empty_n & (AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.ap_ready | AESL_inst_myproject$resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0$ap_idle)));
    assign proc_dep_vld_vec_20[1] = dl_detect_out ? proc_dep_vld_vec_20_reg[1] : (~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.resized_V_data_0_V_blk_n | ~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.resized_V_data_1_V_blk_n | ~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.resized_V_data_2_V_blk_n | ~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.resized_V_data_3_V_blk_n | ~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.resized_V_data_4_V_blk_n | ~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.resized_V_data_5_V_blk_n | ~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.resized_V_data_6_V_blk_n | ~AESL_inst_myproject.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0.resized_V_data_7_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58brm_U.if_full_n & AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_20_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_20_reg <= proc_dep_vld_vec_20;
        end
    end
    assign in_chan_dep_vld_vec_20[0] = dep_chan_vld_19_20;
    assign in_chan_dep_data_vec_20[33 : 0] = dep_chan_data_19_20;
    assign token_in_vec_20[0] = token_19_20;
    assign in_chan_dep_vld_vec_20[1] = dep_chan_vld_21_20;
    assign in_chan_dep_data_vec_20[67 : 34] = dep_chan_data_21_20;
    assign token_in_vec_20[1] = token_21_20;
    assign dep_chan_vld_20_19 = out_chan_dep_vld_vec_20[0];
    assign dep_chan_data_20_19 = out_chan_dep_data_20;
    assign token_20_19 = token_out_vec_20[0];
    assign dep_chan_vld_20_21 = out_chan_dep_vld_vec_20[1];
    assign dep_chan_data_20_21 = out_chan_dep_data_20;
    assign token_20_21 = token_out_vec_20[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0$ap_idle <= AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0
    AESL_deadlock_detect_unit #(34, 21, 2, 2) AESL_deadlock_detect_unit_21 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_21),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_21),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_21),
        .token_in_vec(token_in_vec_21),
        .dl_detect_in(dl_detect_out),
        .origin(origin[21]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_21),
        .out_chan_dep_data(out_chan_dep_data_21),
        .token_out_vec(token_out_vec_21),
        .dl_detect_out(dl_in_vec[21]));

    assign proc_dep_vld_vec_21[0] = dl_detect_out ? proc_dep_vld_vec_21_reg[0] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.data_V_data_3_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.data_V_data_4_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.data_V_data_5_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.data_V_data_6_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.data_V_data_7_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58brm_U.if_empty_n & (AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.ap_ready | AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0$ap_idle)));
    assign proc_dep_vld_vec_21[1] = dl_detect_out ? proc_dep_vld_vec_21_reg[1] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.res_V_data_3_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.res_V_data_4_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.res_V_data_5_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.res_V_data_6_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0.res_V_data_7_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0_U.if_full_n & AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_21_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_21_reg <= proc_dep_vld_vec_21;
        end
    end
    assign in_chan_dep_vld_vec_21[0] = dep_chan_vld_20_21;
    assign in_chan_dep_data_vec_21[33 : 0] = dep_chan_data_20_21;
    assign token_in_vec_21[0] = token_20_21;
    assign in_chan_dep_vld_vec_21[1] = dep_chan_vld_22_21;
    assign in_chan_dep_data_vec_21[67 : 34] = dep_chan_data_22_21;
    assign token_in_vec_21[1] = token_22_21;
    assign dep_chan_vld_21_20 = out_chan_dep_vld_vec_21[0];
    assign dep_chan_data_21_20 = out_chan_dep_data_21;
    assign token_21_20 = token_out_vec_21[0];
    assign dep_chan_vld_21_22 = out_chan_dep_vld_vec_21[1];
    assign dep_chan_data_21_22 = out_chan_dep_data_21;
    assign token_21_22 = token_out_vec_21[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0$ap_idle <= AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0
    AESL_deadlock_detect_unit #(34, 22, 2, 2) AESL_deadlock_detect_unit_22 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_22),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_22),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_22),
        .token_in_vec(token_in_vec_22),
        .dl_detect_in(dl_detect_out),
        .origin(origin[22]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_22),
        .out_chan_dep_data(out_chan_dep_data_22),
        .token_out_vec(token_out_vec_22),
        .dl_detect_out(dl_in_vec[22]));

    assign proc_dep_vld_vec_22[0] = dl_detect_out ? proc_dep_vld_vec_22_reg[0] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.data_V_data_3_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.data_V_data_4_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.data_V_data_5_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.data_V_data_6_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.data_V_data_7_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0_U.if_empty_n & (AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.ap_ready | AESL_inst_myproject$conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0$ap_idle)));
    assign proc_dep_vld_vec_22[1] = dl_detect_out ? proc_dep_vld_vec_22_reg[1] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.res_stream_V_data_0_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.res_stream_V_data_1_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.res_stream_V_data_2_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.res_stream_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0_U.if_full_n & AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_22_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_22_reg <= proc_dep_vld_vec_22;
        end
    end
    assign in_chan_dep_vld_vec_22[0] = dep_chan_vld_21_22;
    assign in_chan_dep_data_vec_22[33 : 0] = dep_chan_data_21_22;
    assign token_in_vec_22[0] = token_21_22;
    assign in_chan_dep_vld_vec_22[1] = dep_chan_vld_23_22;
    assign in_chan_dep_data_vec_22[67 : 34] = dep_chan_data_23_22;
    assign token_in_vec_22[1] = token_23_22;
    assign dep_chan_vld_22_21 = out_chan_dep_vld_vec_22[0];
    assign dep_chan_data_22_21 = out_chan_dep_data_22;
    assign token_22_21 = token_out_vec_22[0];
    assign dep_chan_vld_22_23 = out_chan_dep_vld_vec_22[1];
    assign dep_chan_data_22_23 = out_chan_dep_data_22;
    assign token_22_23 = token_out_vec_22[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0$ap_idle <= AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0
    AESL_deadlock_detect_unit #(34, 23, 2, 2) AESL_deadlock_detect_unit_23 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_23),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_23),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_23),
        .token_in_vec(token_in_vec_23),
        .dl_detect_in(dl_detect_out),
        .origin(origin[23]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_23),
        .out_chan_dep_data(out_chan_dep_data_23),
        .token_out_vec(token_out_vec_23),
        .dl_detect_out(dl_in_vec[23]));

    assign proc_dep_vld_vec_23[0] = dl_detect_out ? proc_dep_vld_vec_23_reg[0] : (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0_U.if_empty_n & (AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0.ap_ready | AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0$ap_idle)));
    assign proc_dep_vld_vec_23[1] = dl_detect_out ? proc_dep_vld_vec_23_reg[1] : (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0.res_V_data_3_V_blk_n);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_23_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_23_reg <= proc_dep_vld_vec_23;
        end
    end
    assign in_chan_dep_vld_vec_23[0] = dep_chan_vld_22_23;
    assign in_chan_dep_data_vec_23[33 : 0] = dep_chan_data_22_23;
    assign token_in_vec_23[0] = token_22_23;
    assign in_chan_dep_vld_vec_23[1] = dep_chan_vld_25_23;
    assign in_chan_dep_data_vec_23[67 : 34] = dep_chan_data_25_23;
    assign token_in_vec_23[1] = token_25_23;
    assign dep_chan_vld_23_22 = out_chan_dep_vld_vec_23[0];
    assign dep_chan_data_23_22 = out_chan_dep_data_23;
    assign token_23_22 = token_out_vec_23[0];
    assign dep_chan_vld_23_25 = out_chan_dep_vld_vec_23[1];
    assign dep_chan_data_23_25 = out_chan_dep_data_23;
    assign token_23_25 = token_out_vec_23[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0$ap_idle <= AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0
    AESL_deadlock_detect_unit #(34, 24, 2, 2) AESL_deadlock_detect_unit_24 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_24),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_24),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_24),
        .token_in_vec(token_in_vec_24),
        .dl_detect_in(dl_detect_out),
        .origin(origin[24]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_24),
        .out_chan_dep_data(out_chan_dep_data_24),
        .token_out_vec(token_out_vec_24),
        .dl_detect_out(dl_in_vec[24]));

    assign proc_dep_vld_vec_24[0] = dl_detect_out ? proc_dep_vld_vec_24_reg[0] : (~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0_U.if_empty_n & (AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0.ap_ready | AESL_inst_myproject$pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0$ap_idle)));
    assign proc_dep_vld_vec_24[1] = dl_detect_out ? proc_dep_vld_vec_24_reg[1] : (~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0.res_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0_U.if_full_n & AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_24_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_24_reg <= proc_dep_vld_vec_24;
        end
    end
    assign in_chan_dep_vld_vec_24[0] = dep_chan_vld_0_24;
    assign in_chan_dep_data_vec_24[33 : 0] = dep_chan_data_0_24;
    assign token_in_vec_24[0] = token_0_24;
    assign in_chan_dep_vld_vec_24[1] = dep_chan_vld_25_24;
    assign in_chan_dep_data_vec_24[67 : 34] = dep_chan_data_25_24;
    assign token_in_vec_24[1] = token_25_24;
    assign dep_chan_vld_24_0 = out_chan_dep_vld_vec_24[0];
    assign dep_chan_data_24_0 = out_chan_dep_data_24;
    assign token_24_0 = token_out_vec_24[0];
    assign dep_chan_vld_24_25 = out_chan_dep_vld_vec_24[1];
    assign dep_chan_data_24_25 = out_chan_dep_data_24;
    assign token_24_25 = token_out_vec_24[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0$ap_idle <= AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0
    AESL_deadlock_detect_unit #(34, 25, 3, 3) AESL_deadlock_detect_unit_25 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_25),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_25),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_25),
        .token_in_vec(token_in_vec_25),
        .dl_detect_in(dl_detect_out),
        .origin(origin[25]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_25),
        .out_chan_dep_data(out_chan_dep_data_25),
        .token_out_vec(token_out_vec_25),
        .dl_detect_out(dl_in_vec[25]));

    assign proc_dep_vld_vec_25[0] = dl_detect_out ? proc_dep_vld_vec_25_reg[0] : (~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0.data1_V_data_0_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0.data1_V_data_1_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0.data1_V_data_2_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0.data1_V_data_3_V_blk_n);
    assign proc_dep_vld_vec_25[1] = dl_detect_out ? proc_dep_vld_vec_25_reg[1] : (~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0.data2_V_data_0_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0.data2_V_data_1_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0.data2_V_data_2_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0.data2_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0_U.if_empty_n & (AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0.ap_ready | AESL_inst_myproject$add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0$ap_idle)));
    assign proc_dep_vld_vec_25[2] = dl_detect_out ? proc_dep_vld_vec_25_reg[2] : (~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0.res_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59bsm_U.if_full_n & AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_25_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_25_reg <= proc_dep_vld_vec_25;
        end
    end
    assign in_chan_dep_vld_vec_25[0] = dep_chan_vld_23_25;
    assign in_chan_dep_data_vec_25[33 : 0] = dep_chan_data_23_25;
    assign token_in_vec_25[0] = token_23_25;
    assign in_chan_dep_vld_vec_25[1] = dep_chan_vld_24_25;
    assign in_chan_dep_data_vec_25[67 : 34] = dep_chan_data_24_25;
    assign token_in_vec_25[1] = token_24_25;
    assign in_chan_dep_vld_vec_25[2] = dep_chan_vld_26_25;
    assign in_chan_dep_data_vec_25[101 : 68] = dep_chan_data_26_25;
    assign token_in_vec_25[2] = token_26_25;
    assign dep_chan_vld_25_23 = out_chan_dep_vld_vec_25[0];
    assign dep_chan_data_25_23 = out_chan_dep_data_25;
    assign token_25_23 = token_out_vec_25[0];
    assign dep_chan_vld_25_24 = out_chan_dep_vld_vec_25[1];
    assign dep_chan_data_25_24 = out_chan_dep_data_25;
    assign token_25_24 = token_out_vec_25[1];
    assign dep_chan_vld_25_26 = out_chan_dep_vld_vec_25[2];
    assign dep_chan_data_25_26 = out_chan_dep_data_25;
    assign token_25_26 = token_out_vec_25[2];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0$ap_idle <= AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0
    AESL_deadlock_detect_unit #(34, 26, 2, 2) AESL_deadlock_detect_unit_26 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_26),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_26),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_26),
        .token_in_vec(token_in_vec_26),
        .dl_detect_in(dl_detect_out),
        .origin(origin[26]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_26),
        .out_chan_dep_data(out_chan_dep_data_26),
        .token_out_vec(token_out_vec_26),
        .dl_detect_out(dl_in_vec[26]));

    assign proc_dep_vld_vec_26[0] = dl_detect_out ? proc_dep_vld_vec_26_reg[0] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59bsm_U.if_empty_n & (AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0.ap_ready | AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0$ap_idle)));
    assign proc_dep_vld_vec_26[1] = dl_detect_out ? proc_dep_vld_vec_26_reg[1] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0.res_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0_U.if_full_n & AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_26_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_26_reg <= proc_dep_vld_vec_26;
        end
    end
    assign in_chan_dep_vld_vec_26[0] = dep_chan_vld_25_26;
    assign in_chan_dep_data_vec_26[33 : 0] = dep_chan_data_25_26;
    assign token_in_vec_26[0] = token_25_26;
    assign in_chan_dep_vld_vec_26[1] = dep_chan_vld_27_26;
    assign in_chan_dep_data_vec_26[67 : 34] = dep_chan_data_27_26;
    assign token_in_vec_26[1] = token_27_26;
    assign dep_chan_vld_26_25 = out_chan_dep_vld_vec_26[0];
    assign dep_chan_data_26_25 = out_chan_dep_data_26;
    assign token_26_25 = token_out_vec_26[0];
    assign dep_chan_vld_26_27 = out_chan_dep_vld_vec_26[1];
    assign dep_chan_data_26_27 = out_chan_dep_data_26;
    assign token_26_27 = token_out_vec_26[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0$ap_idle <= AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0
    AESL_deadlock_detect_unit #(34, 27, 2, 2) AESL_deadlock_detect_unit_27 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_27),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_27),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_27),
        .token_in_vec(token_in_vec_27),
        .dl_detect_in(dl_detect_out),
        .origin(origin[27]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_27),
        .out_chan_dep_data(out_chan_dep_data_27),
        .token_out_vec(token_out_vec_27),
        .dl_detect_out(dl_in_vec[27]));

    assign proc_dep_vld_vec_27[0] = dl_detect_out ? proc_dep_vld_vec_27_reg[0] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0_U.if_empty_n & (AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.ap_ready | AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0$ap_idle)));
    assign proc_dep_vld_vec_27[1] = dl_detect_out ? proc_dep_vld_vec_27_reg[1] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.res_stream_V_data_0_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.res_stream_V_data_1_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.res_stream_V_data_2_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.res_stream_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0_U.if_full_n & AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_27_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_27_reg <= proc_dep_vld_vec_27;
        end
    end
    assign in_chan_dep_vld_vec_27[0] = dep_chan_vld_26_27;
    assign in_chan_dep_data_vec_27[33 : 0] = dep_chan_data_26_27;
    assign token_in_vec_27[0] = token_26_27;
    assign in_chan_dep_vld_vec_27[1] = dep_chan_vld_28_27;
    assign in_chan_dep_data_vec_27[67 : 34] = dep_chan_data_28_27;
    assign token_in_vec_27[1] = token_28_27;
    assign dep_chan_vld_27_26 = out_chan_dep_vld_vec_27[0];
    assign dep_chan_data_27_26 = out_chan_dep_data_27;
    assign token_27_26 = token_out_vec_27[0];
    assign dep_chan_vld_27_28 = out_chan_dep_vld_vec_27[1];
    assign dep_chan_data_27_28 = out_chan_dep_data_27;
    assign token_27_28 = token_out_vec_27[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0$ap_idle <= AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0
    AESL_deadlock_detect_unit #(34, 28, 2, 2) AESL_deadlock_detect_unit_28 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_28),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_28),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_28),
        .token_in_vec(token_in_vec_28),
        .dl_detect_in(dl_detect_out),
        .origin(origin[28]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_28),
        .out_chan_dep_data(out_chan_dep_data_28),
        .token_out_vec(token_out_vec_28),
        .dl_detect_out(dl_in_vec[28]));

    assign proc_dep_vld_vec_28[0] = dl_detect_out ? proc_dep_vld_vec_28_reg[0] : (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0_U.if_empty_n & (AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0.ap_ready | AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0$ap_idle)));
    assign proc_dep_vld_vec_28[1] = dl_detect_out ? proc_dep_vld_vec_28_reg[1] : (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0.res_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60btn_U.if_full_n & AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_28_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_28_reg <= proc_dep_vld_vec_28;
        end
    end
    assign in_chan_dep_vld_vec_28[0] = dep_chan_vld_27_28;
    assign in_chan_dep_data_vec_28[33 : 0] = dep_chan_data_27_28;
    assign token_in_vec_28[0] = token_27_28;
    assign in_chan_dep_vld_vec_28[1] = dep_chan_vld_29_28;
    assign in_chan_dep_data_vec_28[67 : 34] = dep_chan_data_29_28;
    assign token_in_vec_28[1] = token_29_28;
    assign dep_chan_vld_28_27 = out_chan_dep_vld_vec_28[0];
    assign dep_chan_data_28_27 = out_chan_dep_data_28;
    assign token_28_27 = token_out_vec_28[0];
    assign dep_chan_vld_28_29 = out_chan_dep_vld_vec_28[1];
    assign dep_chan_data_28_29 = out_chan_dep_data_28;
    assign token_28_29 = token_out_vec_28[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0$ap_idle <= AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0
    AESL_deadlock_detect_unit #(34, 29, 2, 2) AESL_deadlock_detect_unit_29 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_29),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_29),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_29),
        .token_in_vec(token_in_vec_29),
        .dl_detect_in(dl_detect_out),
        .origin(origin[29]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_29),
        .out_chan_dep_data(out_chan_dep_data_29),
        .token_out_vec(token_out_vec_29),
        .dl_detect_out(dl_in_vec[29]));

    assign proc_dep_vld_vec_29[0] = dl_detect_out ? proc_dep_vld_vec_29_reg[0] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60btn_U.if_empty_n & (AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0.ap_ready | AESL_inst_myproject$zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0$ap_idle)));
    assign proc_dep_vld_vec_29[1] = dl_detect_out ? proc_dep_vld_vec_29_reg[1] : (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0.res_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0_U.if_full_n & AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_29_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_29_reg <= proc_dep_vld_vec_29;
        end
    end
    assign in_chan_dep_vld_vec_29[0] = dep_chan_vld_28_29;
    assign in_chan_dep_data_vec_29[33 : 0] = dep_chan_data_28_29;
    assign token_in_vec_29[0] = token_28_29;
    assign in_chan_dep_vld_vec_29[1] = dep_chan_vld_30_29;
    assign in_chan_dep_data_vec_29[67 : 34] = dep_chan_data_30_29;
    assign token_in_vec_29[1] = token_30_29;
    assign dep_chan_vld_29_28 = out_chan_dep_vld_vec_29[0];
    assign dep_chan_data_29_28 = out_chan_dep_data_29;
    assign token_29_28 = token_out_vec_29[0];
    assign dep_chan_vld_29_30 = out_chan_dep_vld_vec_29[1];
    assign dep_chan_data_29_30 = out_chan_dep_data_29;
    assign token_29_30 = token_out_vec_29[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0$ap_idle <= AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0
    AESL_deadlock_detect_unit #(34, 30, 2, 2) AESL_deadlock_detect_unit_30 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_30),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_30),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_30),
        .token_in_vec(token_in_vec_30),
        .dl_detect_in(dl_detect_out),
        .origin(origin[30]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_30),
        .out_chan_dep_data(out_chan_dep_data_30),
        .token_out_vec(token_out_vec_30),
        .dl_detect_out(dl_in_vec[30]));

    assign proc_dep_vld_vec_30[0] = dl_detect_out ? proc_dep_vld_vec_30_reg[0] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0_U.if_empty_n & (AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.ap_ready | AESL_inst_myproject$conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0$ap_idle)));
    assign proc_dep_vld_vec_30[1] = dl_detect_out ? proc_dep_vld_vec_30_reg[1] : (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.res_stream_V_data_0_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.res_stream_V_data_1_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.res_stream_V_data_2_V_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.res_stream_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0_U.if_full_n & AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_30_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_30_reg <= proc_dep_vld_vec_30;
        end
    end
    assign in_chan_dep_vld_vec_30[0] = dep_chan_vld_29_30;
    assign in_chan_dep_data_vec_30[33 : 0] = dep_chan_data_29_30;
    assign token_in_vec_30[0] = token_29_30;
    assign in_chan_dep_vld_vec_30[1] = dep_chan_vld_31_30;
    assign in_chan_dep_data_vec_30[67 : 34] = dep_chan_data_31_30;
    assign token_in_vec_30[1] = token_31_30;
    assign dep_chan_vld_30_29 = out_chan_dep_vld_vec_30[0];
    assign dep_chan_data_30_29 = out_chan_dep_data_30;
    assign token_30_29 = token_out_vec_30[0];
    assign dep_chan_vld_30_31 = out_chan_dep_vld_vec_30[1];
    assign dep_chan_data_30_31 = out_chan_dep_data_30;
    assign token_30_31 = token_out_vec_30[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0$ap_idle <= AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0
    AESL_deadlock_detect_unit #(34, 31, 2, 2) AESL_deadlock_detect_unit_31 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_31),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_31),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_31),
        .token_in_vec(token_in_vec_31),
        .dl_detect_in(dl_detect_out),
        .origin(origin[31]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_31),
        .out_chan_dep_data(out_chan_dep_data_31),
        .token_out_vec(token_out_vec_31),
        .dl_detect_out(dl_in_vec[31]));

    assign proc_dep_vld_vec_31[0] = dl_detect_out ? proc_dep_vld_vec_31_reg[0] : (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0_U.if_empty_n & (AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0.ap_ready | AESL_inst_myproject$relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0$ap_idle)));
    assign proc_dep_vld_vec_31[1] = dl_detect_out ? proc_dep_vld_vec_31_reg[1] : (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0.res_V_data_0_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0.res_V_data_1_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0.res_V_data_2_V_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0.res_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0_U.if_full_n & AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_31_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_31_reg <= proc_dep_vld_vec_31;
        end
    end
    assign in_chan_dep_vld_vec_31[0] = dep_chan_vld_30_31;
    assign in_chan_dep_data_vec_31[33 : 0] = dep_chan_data_30_31;
    assign token_in_vec_31[0] = token_30_31;
    assign in_chan_dep_vld_vec_31[1] = dep_chan_vld_32_31;
    assign in_chan_dep_data_vec_31[67 : 34] = dep_chan_data_32_31;
    assign token_in_vec_31[1] = token_32_31;
    assign dep_chan_vld_31_30 = out_chan_dep_vld_vec_31[0];
    assign dep_chan_data_31_30 = out_chan_dep_data_31;
    assign token_31_30 = token_out_vec_31[0];
    assign dep_chan_vld_31_32 = out_chan_dep_vld_vec_31[1];
    assign dep_chan_data_31_32 = out_chan_dep_data_31;
    assign token_31_32 = token_out_vec_31[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0$ap_idle <= AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0
    AESL_deadlock_detect_unit #(34, 32, 2, 2) AESL_deadlock_detect_unit_32 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_32),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_32),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_32),
        .token_in_vec(token_in_vec_32),
        .dl_detect_in(dl_detect_out),
        .origin(origin[32]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_32),
        .out_chan_dep_data(out_chan_dep_data_32),
        .token_out_vec(token_out_vec_32),
        .dl_detect_out(dl_in_vec[32]));

    assign proc_dep_vld_vec_32[0] = dl_detect_out ? proc_dep_vld_vec_32_reg[0] : (~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0.data_V_data_0_V_blk_n | ~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0.data_V_data_1_V_blk_n | ~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0.data_V_data_2_V_blk_n | ~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0.data_V_data_3_V_blk_n | (~AESL_inst_myproject.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0_U.if_empty_n & (AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0.ap_ready | AESL_inst_myproject$pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0$ap_idle)));
    assign proc_dep_vld_vec_32[1] = dl_detect_out ? proc_dep_vld_vec_32_reg[1] : (~AESL_inst_myproject.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0.res_V_data_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0_U.if_full_n & AESL_inst_myproject.relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0.ap_done));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_32_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_32_reg <= proc_dep_vld_vec_32;
        end
    end
    assign in_chan_dep_vld_vec_32[0] = dep_chan_vld_31_32;
    assign in_chan_dep_data_vec_32[33 : 0] = dep_chan_data_31_32;
    assign token_in_vec_32[0] = token_31_32;
    assign in_chan_dep_vld_vec_32[1] = dep_chan_vld_33_32;
    assign in_chan_dep_data_vec_32[67 : 34] = dep_chan_data_33_32;
    assign token_in_vec_32[1] = token_33_32;
    assign dep_chan_vld_32_31 = out_chan_dep_vld_vec_32[0];
    assign dep_chan_data_32_31 = out_chan_dep_data_32;
    assign token_32_31 = token_out_vec_32[0];
    assign dep_chan_vld_32_33 = out_chan_dep_vld_vec_32[1];
    assign dep_chan_data_32_33 = out_chan_dep_data_32;
    assign token_32_33 = token_out_vec_32[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_myproject$relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_myproject$relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_myproject$relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0$ap_idle <= AESL_inst_myproject.relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0.ap_idle;
        end
    end
    // Process: AESL_inst_myproject.relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0
    AESL_deadlock_detect_unit #(34, 33, 1, 1) AESL_deadlock_detect_unit_33 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_33),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_33),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_33),
        .token_in_vec(token_in_vec_33),
        .dl_detect_in(dl_detect_out),
        .origin(origin[33]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_33),
        .out_chan_dep_data(out_chan_dep_data_33),
        .token_out_vec(token_out_vec_33),
        .dl_detect_out(dl_in_vec[33]));

    assign proc_dep_vld_vec_33[0] = dl_detect_out ? proc_dep_vld_vec_33_reg[0] : (~AESL_inst_myproject.relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0.data_V_data_V_blk_n | (~AESL_inst_myproject.start_for_relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0_U.if_empty_n & (AESL_inst_myproject.relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0.ap_ready | AESL_inst_myproject$relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0$ap_idle)));
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_33_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_33_reg <= proc_dep_vld_vec_33;
        end
    end
    assign in_chan_dep_vld_vec_33[0] = dep_chan_vld_32_33;
    assign in_chan_dep_data_vec_33[33 : 0] = dep_chan_data_32_33;
    assign token_in_vec_33[0] = token_32_33;
    assign dep_chan_vld_33_32 = out_chan_dep_vld_vec_33[0];
    assign dep_chan_data_33_32 = out_chan_dep_data_33;
    assign token_33_32 = token_out_vec_33[0];


    AESL_deadlock_report_unit #(34) AESL_deadlock_report_unit_inst (
        .reset(reset),
        .clock(clock),
        .dl_in_vec(dl_in_vec),
        .dl_detect_out(dl_detect_out),
        .origin(origin),
        .token_clear(token_clear));

endmodule
