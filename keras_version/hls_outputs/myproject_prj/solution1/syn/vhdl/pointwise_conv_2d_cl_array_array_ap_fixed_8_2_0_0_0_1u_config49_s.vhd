-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    data_V_data_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    data_V_data_0_V_empty_n : IN STD_LOGIC;
    data_V_data_0_V_read : OUT STD_LOGIC;
    data_V_data_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    data_V_data_1_V_empty_n : IN STD_LOGIC;
    data_V_data_1_V_read : OUT STD_LOGIC;
    data_V_data_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    data_V_data_2_V_empty_n : IN STD_LOGIC;
    data_V_data_2_V_read : OUT STD_LOGIC;
    data_V_data_3_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    data_V_data_3_V_empty_n : IN STD_LOGIC;
    data_V_data_3_V_read : OUT STD_LOGIC;
    res_V_data_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    res_V_data_V_full_n : IN STD_LOGIC;
    res_V_data_V_write : OUT STD_LOGIC );
end;


architecture behav of pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv15_7FDD : STD_LOGIC_VECTOR (14 downto 0) := "111111111011101";
    constant ap_const_lv15_7FDB : STD_LOGIC_VECTOR (14 downto 0) := "111111111011011";
    constant ap_const_lv14_3FE7 : STD_LOGIC_VECTOR (13 downto 0) := "11111111100111";
    constant ap_const_lv13_1000 : STD_LOGIC_VECTOR (12 downto 0) := "1000000000000";
    constant ap_const_lv13_1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv8_7F : STD_LOGIC_VECTOR (7 downto 0) := "01111111";
    constant ap_const_lv8_80 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal data_V_data_0_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln106_reg_724 : STD_LOGIC_VECTOR (0 downto 0);
    signal data_V_data_1_V_blk_n : STD_LOGIC;
    signal data_V_data_2_V_blk_n : STD_LOGIC;
    signal data_V_data_3_V_blk_n : STD_LOGIC;
    signal res_V_data_V_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal icmp_ln106_reg_724_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_reg_193 : STD_LOGIC_VECTOR (12 downto 0);
    signal icmp_ln106_fu_278_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal io_acc_block_signal_op18 : STD_LOGIC;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln106_reg_724_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln106_reg_724_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln106_fu_284_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal tmp_data_0_V_reg_733 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_data_1_V_reg_738 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_data_2_V_reg_743 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_data_3_V_reg_748 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_99_reg_754 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_100_reg_759 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln708_33_reg_764 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_101_reg_769 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln708_34_reg_774 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_102_reg_779 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln1192_35_fu_418_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln1192_35_reg_784 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Result_s_reg_789 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_2_fu_531_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Val2_2_reg_795 : STD_LOGIC_VECTOR (7 downto 0);
    signal carry_2_fu_551_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal carry_2_reg_801 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_4_fu_557_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_4_reg_807 : STD_LOGIC_VECTOR (0 downto 0);
    signal Range1_all_ones_fu_591_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal Range1_all_ones_reg_812 : STD_LOGIC_VECTOR (0 downto 0);
    signal Range1_all_zeros_fu_597_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal Range1_all_zeros_reg_818 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln786_fu_631_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln786_reg_823 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal mul_ln1118_fu_204_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal mul_ln1118_14_fu_206_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal mul_ln1118_15_fu_207_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal mul_ln1118_fu_204_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal trunc_ln_fu_310_p4 : STD_LOGIC_VECTOR (12 downto 0);
    signal mul_ln1118_14_fu_206_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal trunc_ln708_s_fu_336_p4 : STD_LOGIC_VECTOR (12 downto 0);
    signal mul_ln1118_15_fu_207_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal shl_ln_fu_383_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal sext_ln1118_49_fu_390_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln1118_48_fu_380_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_ln1118_fu_394_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln415_fu_320_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal sext_ln415_27_fu_346_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln415_fu_433_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal sext_ln415_28_fu_430_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln415_fu_436_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln415_16_fu_449_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal sext_ln415_30_fu_446_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln415_16_fu_452_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln1118_fu_424_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln1118_13_fu_427_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln1192_fu_465_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal sext_ln1192_fu_462_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal zext_ln1192_fu_471_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal add_ln1192_36_fu_475_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal sext_ln415_29_fu_442_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal sext_ln415_31_fu_458_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal acc_0_V_fu_481_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal acc_0_V_7_fu_487_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_105_fu_519_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln415_17_fu_527_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Val2_s_fu_501_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_106_fu_537_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_3_fu_511_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln416_fu_545_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_565_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_2_fu_581_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_108_fu_603_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal Range2_all_ones_fu_575_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln779_fu_611_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln779_fu_617_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal deleted_ones_fu_623_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal deleted_zeros_fu_637_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln785_7_fu_646_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln785_4_fu_652_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln785_8_fu_657_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln781_fu_642_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln786_fu_668_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln786_fu_673_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal underflow_fu_679_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal overflow_fu_662_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln340_fu_690_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln340_4_fu_684_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln340_24_fu_695_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln340_fu_701_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln388_fu_708_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten_reg_193_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln106_fu_278_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                indvar_flatten_reg_193 <= add_ln106_fu_284_p2;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvar_flatten_reg_193 <= ap_const_lv13_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln106_reg_724_pp0_iter2_reg = ap_const_lv1_0))) then
                Range1_all_ones_reg_812 <= Range1_all_ones_fu_591_p2;
                Range1_all_zeros_reg_818 <= Range1_all_zeros_fu_597_p2;
                and_ln786_reg_823 <= and_ln786_fu_631_p2;
                carry_2_reg_801 <= carry_2_fu_551_p2;
                p_Result_4_reg_807 <= p_Val2_2_fu_531_p2(7 downto 7);
                p_Result_s_reg_789 <= acc_0_V_7_fu_487_p2(14 downto 14);
                p_Val2_2_reg_795 <= p_Val2_2_fu_531_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln106_reg_724_pp0_iter1_reg = ap_const_lv1_0))) then
                add_ln1192_35_reg_784 <= add_ln1192_35_fu_418_p2;
                tmp_100_reg_759 <= mul_ln1118_14_fu_206_p2(1 downto 1);
                tmp_101_reg_769 <= mul_ln1118_15_fu_207_p2(1 downto 1);
                tmp_102_reg_779 <= sub_ln1118_fu_394_p2(1 downto 1);
                tmp_99_reg_754 <= mul_ln1118_fu_204_p2(1 downto 1);
                trunc_ln708_33_reg_764 <= mul_ln1118_15_fu_207_p2(13 downto 2);
                trunc_ln708_34_reg_774 <= sub_ln1118_fu_394_p2(11 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln106_reg_724 <= icmp_ln106_fu_278_p2;
                icmp_ln106_reg_724_pp0_iter1_reg <= icmp_ln106_reg_724;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                icmp_ln106_reg_724_pp0_iter2_reg <= icmp_ln106_reg_724_pp0_iter1_reg;
                icmp_ln106_reg_724_pp0_iter3_reg <= icmp_ln106_reg_724_pp0_iter2_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln106_reg_724 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_data_0_V_reg_733 <= data_V_data_0_V_dout;
                tmp_data_1_V_reg_738 <= data_V_data_1_V_dout;
                tmp_data_2_V_reg_743 <= data_V_data_2_V_dout;
                tmp_data_3_V_reg_748 <= data_V_data_3_V_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter4, icmp_ln106_fu_278_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((icmp_ln106_fu_278_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and not(((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((icmp_ln106_fu_278_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    Range1_all_ones_fu_591_p2 <= "1" when (tmp_2_fu_581_p4 = ap_const_lv3_7) else "0";
    Range1_all_zeros_fu_597_p2 <= "1" when (tmp_2_fu_581_p4 = ap_const_lv3_0) else "0";
    Range2_all_ones_fu_575_p2 <= "1" when (tmp_fu_565_p4 = ap_const_lv2_3) else "0";
    acc_0_V_7_fu_487_p2 <= std_logic_vector(signed(sext_ln415_31_fu_458_p1) + signed(acc_0_V_fu_481_p2));
    acc_0_V_fu_481_p2 <= std_logic_vector(unsigned(add_ln1192_36_fu_475_p2) + unsigned(sext_ln415_29_fu_442_p1));
    add_ln106_fu_284_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_193) + unsigned(ap_const_lv13_1));
    add_ln1192_35_fu_418_p2 <= std_logic_vector(signed(sext_ln415_fu_320_p1) + signed(sext_ln415_27_fu_346_p1));
    add_ln1192_36_fu_475_p2 <= std_logic_vector(signed(sext_ln1192_fu_462_p1) + signed(zext_ln1192_fu_471_p1));
    add_ln1192_fu_465_p2 <= std_logic_vector(unsigned(zext_ln1118_fu_424_p1) + unsigned(zext_ln1118_13_fu_427_p1));
    add_ln415_16_fu_452_p2 <= std_logic_vector(unsigned(zext_ln415_16_fu_449_p1) + unsigned(sext_ln415_30_fu_446_p1));
    add_ln415_fu_436_p2 <= std_logic_vector(unsigned(zext_ln415_fu_433_p1) + unsigned(sext_ln415_28_fu_430_p1));
    and_ln779_fu_617_p2 <= (xor_ln779_fu_611_p2 and Range2_all_ones_fu_575_p2);
    and_ln781_fu_642_p2 <= (carry_2_reg_801 and Range1_all_ones_reg_812);
    and_ln786_fu_631_p2 <= (p_Result_4_fu_557_p3 and deleted_ones_fu_623_p3);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state7 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(res_V_data_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln106_reg_724, ap_enable_reg_pp0_iter4, icmp_ln106_reg_724_pp0_iter3_reg, io_acc_block_signal_op18)
    begin
                ap_block_pp0_stage0_01001 <= (((icmp_ln106_reg_724_pp0_iter3_reg = ap_const_lv1_0) and (res_V_data_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1)) or ((icmp_ln106_reg_724 = ap_const_lv1_0) and (io_acc_block_signal_op18 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(res_V_data_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln106_reg_724, ap_enable_reg_pp0_iter4, icmp_ln106_reg_724_pp0_iter3_reg, io_acc_block_signal_op18)
    begin
                ap_block_pp0_stage0_11001 <= (((icmp_ln106_reg_724_pp0_iter3_reg = ap_const_lv1_0) and (res_V_data_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1)) or ((icmp_ln106_reg_724 = ap_const_lv1_0) and (io_acc_block_signal_op18 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(res_V_data_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln106_reg_724, ap_enable_reg_pp0_iter4, icmp_ln106_reg_724_pp0_iter3_reg, io_acc_block_signal_op18)
    begin
                ap_block_pp0_stage0_subdone <= (((icmp_ln106_reg_724_pp0_iter3_reg = ap_const_lv1_0) and (res_V_data_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1)) or ((icmp_ln106_reg_724 = ap_const_lv1_0) and (io_acc_block_signal_op18 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(icmp_ln106_reg_724, io_acc_block_signal_op18)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((icmp_ln106_reg_724 = ap_const_lv1_0) and (io_acc_block_signal_op18 = ap_const_logic_0));
    end process;

        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state6_pp0_stage0_iter4_assign_proc : process(res_V_data_V_full_n, icmp_ln106_reg_724_pp0_iter3_reg)
    begin
                ap_block_state6_pp0_stage0_iter4 <= ((icmp_ln106_reg_724_pp0_iter3_reg = ap_const_lv1_0) and (res_V_data_V_full_n = ap_const_logic_0));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln106_fu_278_p2)
    begin
        if ((icmp_ln106_fu_278_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    carry_2_fu_551_p2 <= (xor_ln416_fu_545_p2 and p_Result_3_fu_511_p3);

    data_V_data_0_V_blk_n_assign_proc : process(data_V_data_0_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln106_reg_724)
    begin
        if (((icmp_ln106_reg_724 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_V_data_0_V_blk_n <= data_V_data_0_V_empty_n;
        else 
            data_V_data_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    data_V_data_0_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln106_reg_724, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln106_reg_724 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_V_data_0_V_read <= ap_const_logic_1;
        else 
            data_V_data_0_V_read <= ap_const_logic_0;
        end if; 
    end process;


    data_V_data_1_V_blk_n_assign_proc : process(data_V_data_1_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln106_reg_724)
    begin
        if (((icmp_ln106_reg_724 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_V_data_1_V_blk_n <= data_V_data_1_V_empty_n;
        else 
            data_V_data_1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    data_V_data_1_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln106_reg_724, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln106_reg_724 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_V_data_1_V_read <= ap_const_logic_1;
        else 
            data_V_data_1_V_read <= ap_const_logic_0;
        end if; 
    end process;


    data_V_data_2_V_blk_n_assign_proc : process(data_V_data_2_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln106_reg_724)
    begin
        if (((icmp_ln106_reg_724 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_V_data_2_V_blk_n <= data_V_data_2_V_empty_n;
        else 
            data_V_data_2_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    data_V_data_2_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln106_reg_724, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln106_reg_724 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_V_data_2_V_read <= ap_const_logic_1;
        else 
            data_V_data_2_V_read <= ap_const_logic_0;
        end if; 
    end process;


    data_V_data_3_V_blk_n_assign_proc : process(data_V_data_3_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln106_reg_724)
    begin
        if (((icmp_ln106_reg_724 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_V_data_3_V_blk_n <= data_V_data_3_V_empty_n;
        else 
            data_V_data_3_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    data_V_data_3_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln106_reg_724, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln106_reg_724 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_V_data_3_V_read <= ap_const_logic_1;
        else 
            data_V_data_3_V_read <= ap_const_logic_0;
        end if; 
    end process;

    deleted_ones_fu_623_p3 <= 
        and_ln779_fu_617_p2 when (carry_2_fu_551_p2(0) = '1') else 
        Range1_all_ones_fu_591_p2;
    deleted_zeros_fu_637_p3 <= 
        Range1_all_ones_reg_812 when (carry_2_reg_801(0) = '1') else 
        Range1_all_zeros_reg_818;
    icmp_ln106_fu_278_p2 <= "1" when (indvar_flatten_reg_193 = ap_const_lv13_1000) else "0";
    io_acc_block_signal_op18 <= (data_V_data_3_V_empty_n and data_V_data_2_V_empty_n and data_V_data_1_V_empty_n and data_V_data_0_V_empty_n);
    mul_ln1118_14_fu_206_p1 <= tmp_data_1_V_reg_738;
    mul_ln1118_14_fu_206_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(ap_const_lv15_7FDB) * signed(mul_ln1118_14_fu_206_p1))), 15));
    mul_ln1118_15_fu_207_p1 <= tmp_data_2_V_reg_743;
    mul_ln1118_15_fu_207_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(ap_const_lv14_3FE7) * signed(mul_ln1118_15_fu_207_p1))), 14));
    mul_ln1118_fu_204_p1 <= tmp_data_0_V_reg_733;
    mul_ln1118_fu_204_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(ap_const_lv15_7FDD) * signed(mul_ln1118_fu_204_p1))), 15));
    or_ln340_24_fu_695_p2 <= (or_ln340_fu_690_p2 or and_ln781_fu_642_p2);
    or_ln340_4_fu_684_p2 <= (underflow_fu_679_p2 or overflow_fu_662_p2);
    or_ln340_fu_690_p2 <= (xor_ln785_8_fu_657_p2 or and_ln786_reg_823);
    or_ln785_4_fu_652_p2 <= (xor_ln785_7_fu_646_p2 or p_Result_4_reg_807);
    or_ln786_fu_668_p2 <= (and_ln786_reg_823 or and_ln781_fu_642_p2);
    overflow_fu_662_p2 <= (xor_ln785_8_fu_657_p2 and or_ln785_4_fu_652_p2);
    p_Result_3_fu_511_p3 <= acc_0_V_7_fu_487_p2(11 downto 11);
    p_Result_4_fu_557_p3 <= p_Val2_2_fu_531_p2(7 downto 7);
    p_Val2_2_fu_531_p2 <= std_logic_vector(unsigned(zext_ln415_17_fu_527_p1) + unsigned(p_Val2_s_fu_501_p4));
    p_Val2_s_fu_501_p4 <= acc_0_V_7_fu_487_p2(11 downto 4);

    res_V_data_V_blk_n_assign_proc : process(res_V_data_V_full_n, ap_block_pp0_stage0, ap_enable_reg_pp0_iter4, icmp_ln106_reg_724_pp0_iter3_reg)
    begin
        if (((icmp_ln106_reg_724_pp0_iter3_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            res_V_data_V_blk_n <= res_V_data_V_full_n;
        else 
            res_V_data_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    res_V_data_V_din <= 
        select_ln340_fu_701_p3 when (or_ln340_24_fu_695_p2(0) = '1') else 
        select_ln388_fu_708_p3;

    res_V_data_V_write_assign_proc : process(ap_enable_reg_pp0_iter4, icmp_ln106_reg_724_pp0_iter3_reg, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln106_reg_724_pp0_iter3_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            res_V_data_V_write <= ap_const_logic_1;
        else 
            res_V_data_V_write <= ap_const_logic_0;
        end if; 
    end process;

    select_ln340_fu_701_p3 <= 
        ap_const_lv8_7F when (or_ln340_4_fu_684_p2(0) = '1') else 
        p_Val2_2_reg_795;
    select_ln388_fu_708_p3 <= 
        ap_const_lv8_80 when (underflow_fu_679_p2(0) = '1') else 
        p_Val2_2_reg_795;
        sext_ln1118_48_fu_380_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_data_3_V_reg_748),12));

        sext_ln1118_49_fu_390_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln_fu_383_p3),12));

        sext_ln1192_fu_462_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln1192_35_reg_784),15));

        sext_ln415_27_fu_346_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln708_s_fu_336_p4),14));

        sext_ln415_28_fu_430_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln708_33_reg_764),13));

        sext_ln415_29_fu_442_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln415_fu_436_p2),15));

        sext_ln415_30_fu_446_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln708_34_reg_774),11));

        sext_ln415_31_fu_458_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln415_16_fu_452_p2),15));

        sext_ln415_fu_320_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln_fu_310_p4),14));

    shl_ln_fu_383_p3 <= (tmp_data_3_V_reg_748 & ap_const_lv3_0);
    sub_ln1118_fu_394_p2 <= std_logic_vector(signed(sext_ln1118_49_fu_390_p1) - signed(sext_ln1118_48_fu_380_p1));
    tmp_105_fu_519_p3 <= acc_0_V_7_fu_487_p2(3 downto 3);
    tmp_106_fu_537_p3 <= p_Val2_2_fu_531_p2(7 downto 7);
    tmp_108_fu_603_p3 <= acc_0_V_7_fu_487_p2(12 downto 12);
    tmp_2_fu_581_p4 <= acc_0_V_7_fu_487_p2(14 downto 12);
    tmp_fu_565_p4 <= acc_0_V_7_fu_487_p2(14 downto 13);
    trunc_ln708_s_fu_336_p4 <= mul_ln1118_14_fu_206_p2(14 downto 2);
    trunc_ln_fu_310_p4 <= mul_ln1118_fu_204_p2(14 downto 2);
    underflow_fu_679_p2 <= (xor_ln786_fu_673_p2 and p_Result_s_reg_789);
    xor_ln416_fu_545_p2 <= (tmp_106_fu_537_p3 xor ap_const_lv1_1);
    xor_ln779_fu_611_p2 <= (tmp_108_fu_603_p3 xor ap_const_lv1_1);
    xor_ln785_7_fu_646_p2 <= (deleted_zeros_fu_637_p3 xor ap_const_lv1_1);
    xor_ln785_8_fu_657_p2 <= (p_Result_s_reg_789 xor ap_const_lv1_1);
    xor_ln786_fu_673_p2 <= (or_ln786_fu_668_p2 xor ap_const_lv1_1);
    zext_ln1118_13_fu_427_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_100_reg_759),2));
    zext_ln1118_fu_424_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_99_reg_754),2));
    zext_ln1192_fu_471_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1192_fu_465_p2),15));
    zext_ln415_16_fu_449_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_102_reg_779),11));
    zext_ln415_17_fu_527_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_105_fu_519_p3),8));
    zext_ln415_fu_433_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_101_reg_769),13));
end behav;