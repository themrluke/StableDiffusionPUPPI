-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_3072_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    data_V_data_0_V_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    data_V_data_0_V_TVALID : IN STD_LOGIC;
    data_V_data_0_V_TREADY : OUT STD_LOGIC;
    data_V_data_1_V_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    data_V_data_1_V_TVALID : IN STD_LOGIC;
    data_V_data_1_V_TREADY : OUT STD_LOGIC;
    data_V_data_2_V_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    data_V_data_2_V_TVALID : IN STD_LOGIC;
    data_V_data_2_V_TREADY : OUT STD_LOGIC;
    data_V_data_3_V_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    data_V_data_3_V_TVALID : IN STD_LOGIC;
    data_V_data_3_V_TREADY : OUT STD_LOGIC;
    res1_V_data_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    res1_V_data_0_V_full_n : IN STD_LOGIC;
    res1_V_data_0_V_write : OUT STD_LOGIC;
    res1_V_data_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    res1_V_data_1_V_full_n : IN STD_LOGIC;
    res1_V_data_1_V_write : OUT STD_LOGIC;
    res1_V_data_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    res1_V_data_2_V_full_n : IN STD_LOGIC;
    res1_V_data_2_V_write : OUT STD_LOGIC;
    res1_V_data_3_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    res1_V_data_3_V_full_n : IN STD_LOGIC;
    res1_V_data_3_V_write : OUT STD_LOGIC;
    res2_V_data_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    res2_V_data_0_V_full_n : IN STD_LOGIC;
    res2_V_data_0_V_write : OUT STD_LOGIC;
    res2_V_data_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    res2_V_data_1_V_full_n : IN STD_LOGIC;
    res2_V_data_1_V_write : OUT STD_LOGIC;
    res2_V_data_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    res2_V_data_2_V_full_n : IN STD_LOGIC;
    res2_V_data_2_V_write : OUT STD_LOGIC;
    res2_V_data_3_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    res2_V_data_3_V_full_n : IN STD_LOGIC;
    res2_V_data_3_V_write : OUT STD_LOGIC );
end;


architecture behav of clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_3072_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv10_300 : STD_LOGIC_VECTOR (9 downto 0) := "1100000000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal data_V_data_0_V_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln22_fu_219_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal data_V_data_1_V_TDATA_blk_n : STD_LOGIC;
    signal data_V_data_2_V_TDATA_blk_n : STD_LOGIC;
    signal data_V_data_3_V_TDATA_blk_n : STD_LOGIC;
    signal res1_V_data_0_V_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal icmp_ln22_reg_247 : STD_LOGIC_VECTOR (0 downto 0);
    signal res1_V_data_1_V_blk_n : STD_LOGIC;
    signal res1_V_data_2_V_blk_n : STD_LOGIC;
    signal res1_V_data_3_V_blk_n : STD_LOGIC;
    signal res2_V_data_0_V_blk_n : STD_LOGIC;
    signal res2_V_data_1_V_blk_n : STD_LOGIC;
    signal res2_V_data_2_V_blk_n : STD_LOGIC;
    signal res2_V_data_3_V_blk_n : STD_LOGIC;
    signal i_0_reg_208 : STD_LOGIC_VECTOR (9 downto 0);
    signal io_acc_block_signal_op23 : STD_LOGIC;
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal io_acc_block_signal_op31 : STD_LOGIC;
    signal io_acc_block_signal_op32 : STD_LOGIC;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_fu_225_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_data_0_V_reg_256 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_data_1_V_reg_262 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_data_2_V_reg_268 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_data_3_V_reg_274 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal regslice_both_data_V_data_0_V_U_apdone_blk : STD_LOGIC;
    signal data_V_data_0_V_TDATA_int : STD_LOGIC_VECTOR (7 downto 0);
    signal data_V_data_0_V_TVALID_int : STD_LOGIC;
    signal data_V_data_0_V_TREADY_int : STD_LOGIC;
    signal regslice_both_data_V_data_0_V_U_ack_in : STD_LOGIC;
    signal regslice_both_data_V_data_1_V_U_apdone_blk : STD_LOGIC;
    signal data_V_data_1_V_TDATA_int : STD_LOGIC_VECTOR (7 downto 0);
    signal data_V_data_1_V_TVALID_int : STD_LOGIC;
    signal data_V_data_1_V_TREADY_int : STD_LOGIC;
    signal regslice_both_data_V_data_1_V_U_ack_in : STD_LOGIC;
    signal regslice_both_data_V_data_2_V_U_apdone_blk : STD_LOGIC;
    signal data_V_data_2_V_TDATA_int : STD_LOGIC_VECTOR (7 downto 0);
    signal data_V_data_2_V_TVALID_int : STD_LOGIC;
    signal data_V_data_2_V_TREADY_int : STD_LOGIC;
    signal regslice_both_data_V_data_2_V_U_ack_in : STD_LOGIC;
    signal regslice_both_data_V_data_3_V_U_apdone_blk : STD_LOGIC;
    signal data_V_data_3_V_TDATA_int : STD_LOGIC_VECTOR (7 downto 0);
    signal data_V_data_3_V_TVALID_int : STD_LOGIC;
    signal data_V_data_3_V_TREADY_int : STD_LOGIC;
    signal regslice_both_data_V_data_3_V_U_ack_in : STD_LOGIC;

    component regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    regslice_both_data_V_data_0_V_U : component regslice_both
    generic map (
        DataWidth => 8)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => data_V_data_0_V_TDATA,
        vld_in => data_V_data_0_V_TVALID,
        ack_in => regslice_both_data_V_data_0_V_U_ack_in,
        data_out => data_V_data_0_V_TDATA_int,
        vld_out => data_V_data_0_V_TVALID_int,
        ack_out => data_V_data_0_V_TREADY_int,
        apdone_blk => regslice_both_data_V_data_0_V_U_apdone_blk);

    regslice_both_data_V_data_1_V_U : component regslice_both
    generic map (
        DataWidth => 8)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => data_V_data_1_V_TDATA,
        vld_in => data_V_data_1_V_TVALID,
        ack_in => regslice_both_data_V_data_1_V_U_ack_in,
        data_out => data_V_data_1_V_TDATA_int,
        vld_out => data_V_data_1_V_TVALID_int,
        ack_out => data_V_data_1_V_TREADY_int,
        apdone_blk => regslice_both_data_V_data_1_V_U_apdone_blk);

    regslice_both_data_V_data_2_V_U : component regslice_both
    generic map (
        DataWidth => 8)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => data_V_data_2_V_TDATA,
        vld_in => data_V_data_2_V_TVALID,
        ack_in => regslice_both_data_V_data_2_V_U_ack_in,
        data_out => data_V_data_2_V_TDATA_int,
        vld_out => data_V_data_2_V_TVALID_int,
        ack_out => data_V_data_2_V_TREADY_int,
        apdone_blk => regslice_both_data_V_data_2_V_U_apdone_blk);

    regslice_both_data_V_data_3_V_U : component regslice_both
    generic map (
        DataWidth => 8)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => data_V_data_3_V_TDATA,
        vld_in => data_V_data_3_V_TVALID,
        ack_in => regslice_both_data_V_data_3_V_U_ack_in,
        data_out => data_V_data_3_V_TDATA_int,
        vld_out => data_V_data_3_V_TVALID_int,
        ack_out => data_V_data_3_V_TREADY_int,
        apdone_blk => regslice_both_data_V_data_3_V_U_apdone_blk);





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
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
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
                elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
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
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_reg_208_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln22_fu_219_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                i_0_reg_208 <= i_fu_225_p2;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_208 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln22_reg_247 <= icmp_ln22_fu_219_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln22_fu_219_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_data_0_V_reg_256 <= data_V_data_0_V_TDATA_int;
                tmp_data_1_V_reg_262 <= data_V_data_1_V_TDATA_int;
                tmp_data_2_V_reg_268 <= data_V_data_2_V_TDATA_int;
                tmp_data_3_V_reg_274 <= data_V_data_3_V_TDATA_int;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter0, icmp_ln22_fu_219_p2, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((icmp_ln22_fu_219_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((icmp_ln22_fu_219_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter0, icmp_ln22_fu_219_p2, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247, io_acc_block_signal_op23, io_acc_block_signal_op31, io_acc_block_signal_op32)
    begin
                ap_block_pp0_stage0_01001 <= (((icmp_ln22_fu_219_p2 = ap_const_lv1_0) and (io_acc_block_signal_op23 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln22_reg_247 = ap_const_lv1_0) and (io_acc_block_signal_op32 = ap_const_logic_0)) or ((icmp_ln22_reg_247 = ap_const_lv1_0) and (io_acc_block_signal_op31 = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter0, icmp_ln22_fu_219_p2, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247, io_acc_block_signal_op23, io_acc_block_signal_op31, io_acc_block_signal_op32)
    begin
                ap_block_pp0_stage0_11001 <= (((icmp_ln22_fu_219_p2 = ap_const_lv1_0) and (io_acc_block_signal_op23 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln22_reg_247 = ap_const_lv1_0) and (io_acc_block_signal_op32 = ap_const_logic_0)) or ((icmp_ln22_reg_247 = ap_const_lv1_0) and (io_acc_block_signal_op31 = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter0, icmp_ln22_fu_219_p2, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247, io_acc_block_signal_op23, io_acc_block_signal_op31, io_acc_block_signal_op32)
    begin
                ap_block_pp0_stage0_subdone <= (((icmp_ln22_fu_219_p2 = ap_const_lv1_0) and (io_acc_block_signal_op23 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln22_reg_247 = ap_const_lv1_0) and (io_acc_block_signal_op32 = ap_const_logic_0)) or ((icmp_ln22_reg_247 = ap_const_lv1_0) and (io_acc_block_signal_op31 = ap_const_logic_0)))));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state2_pp0_stage0_iter0_assign_proc : process(icmp_ln22_fu_219_p2, io_acc_block_signal_op23)
    begin
                ap_block_state2_pp0_stage0_iter0 <= ((icmp_ln22_fu_219_p2 = ap_const_lv1_0) and (io_acc_block_signal_op23 = ap_const_logic_0));
    end process;


    ap_block_state3_pp0_stage0_iter1_assign_proc : process(icmp_ln22_reg_247, io_acc_block_signal_op31, io_acc_block_signal_op32)
    begin
                ap_block_state3_pp0_stage0_iter1 <= (((icmp_ln22_reg_247 = ap_const_lv1_0) and (io_acc_block_signal_op32 = ap_const_logic_0)) or ((icmp_ln22_reg_247 = ap_const_lv1_0) and (io_acc_block_signal_op31 = ap_const_logic_0)));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln22_fu_219_p2)
    begin
        if ((icmp_ln22_fu_219_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    data_V_data_0_V_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, icmp_ln22_fu_219_p2, data_V_data_0_V_TVALID_int)
    begin
        if (((icmp_ln22_fu_219_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_V_data_0_V_TDATA_blk_n <= data_V_data_0_V_TVALID_int;
        else 
            data_V_data_0_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    data_V_data_0_V_TREADY_assign_proc : process(data_V_data_0_V_TVALID, regslice_both_data_V_data_0_V_U_ack_in)
    begin
        if (((data_V_data_0_V_TVALID = ap_const_logic_1) and (regslice_both_data_V_data_0_V_U_ack_in = ap_const_logic_1))) then 
            data_V_data_0_V_TREADY <= ap_const_logic_1;
        else 
            data_V_data_0_V_TREADY <= ap_const_logic_0;
        end if; 
    end process;


    data_V_data_0_V_TREADY_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, icmp_ln22_fu_219_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln22_fu_219_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_V_data_0_V_TREADY_int <= ap_const_logic_1;
        else 
            data_V_data_0_V_TREADY_int <= ap_const_logic_0;
        end if; 
    end process;


    data_V_data_1_V_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, icmp_ln22_fu_219_p2, data_V_data_1_V_TVALID_int)
    begin
        if (((icmp_ln22_fu_219_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_V_data_1_V_TDATA_blk_n <= data_V_data_1_V_TVALID_int;
        else 
            data_V_data_1_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    data_V_data_1_V_TREADY_assign_proc : process(data_V_data_1_V_TVALID, regslice_both_data_V_data_1_V_U_ack_in)
    begin
        if (((data_V_data_1_V_TVALID = ap_const_logic_1) and (regslice_both_data_V_data_1_V_U_ack_in = ap_const_logic_1))) then 
            data_V_data_1_V_TREADY <= ap_const_logic_1;
        else 
            data_V_data_1_V_TREADY <= ap_const_logic_0;
        end if; 
    end process;


    data_V_data_1_V_TREADY_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, icmp_ln22_fu_219_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln22_fu_219_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_V_data_1_V_TREADY_int <= ap_const_logic_1;
        else 
            data_V_data_1_V_TREADY_int <= ap_const_logic_0;
        end if; 
    end process;


    data_V_data_2_V_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, icmp_ln22_fu_219_p2, data_V_data_2_V_TVALID_int)
    begin
        if (((icmp_ln22_fu_219_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_V_data_2_V_TDATA_blk_n <= data_V_data_2_V_TVALID_int;
        else 
            data_V_data_2_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    data_V_data_2_V_TREADY_assign_proc : process(data_V_data_2_V_TVALID, regslice_both_data_V_data_2_V_U_ack_in)
    begin
        if (((data_V_data_2_V_TVALID = ap_const_logic_1) and (regslice_both_data_V_data_2_V_U_ack_in = ap_const_logic_1))) then 
            data_V_data_2_V_TREADY <= ap_const_logic_1;
        else 
            data_V_data_2_V_TREADY <= ap_const_logic_0;
        end if; 
    end process;


    data_V_data_2_V_TREADY_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, icmp_ln22_fu_219_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln22_fu_219_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_V_data_2_V_TREADY_int <= ap_const_logic_1;
        else 
            data_V_data_2_V_TREADY_int <= ap_const_logic_0;
        end if; 
    end process;


    data_V_data_3_V_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, icmp_ln22_fu_219_p2, data_V_data_3_V_TVALID_int)
    begin
        if (((icmp_ln22_fu_219_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_V_data_3_V_TDATA_blk_n <= data_V_data_3_V_TVALID_int;
        else 
            data_V_data_3_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    data_V_data_3_V_TREADY_assign_proc : process(data_V_data_3_V_TVALID, regslice_both_data_V_data_3_V_U_ack_in)
    begin
        if (((data_V_data_3_V_TVALID = ap_const_logic_1) and (regslice_both_data_V_data_3_V_U_ack_in = ap_const_logic_1))) then 
            data_V_data_3_V_TREADY <= ap_const_logic_1;
        else 
            data_V_data_3_V_TREADY <= ap_const_logic_0;
        end if; 
    end process;


    data_V_data_3_V_TREADY_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, icmp_ln22_fu_219_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln22_fu_219_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_V_data_3_V_TREADY_int <= ap_const_logic_1;
        else 
            data_V_data_3_V_TREADY_int <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_225_p2 <= std_logic_vector(unsigned(i_0_reg_208) + unsigned(ap_const_lv10_1));
    icmp_ln22_fu_219_p2 <= "1" when (i_0_reg_208 = ap_const_lv10_300) else "0";

    internal_ap_ready_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    io_acc_block_signal_op23 <= (data_V_data_3_V_TVALID_int and data_V_data_2_V_TVALID_int and data_V_data_1_V_TVALID_int and data_V_data_0_V_TVALID_int);
    io_acc_block_signal_op31 <= (res1_V_data_3_V_full_n and res1_V_data_2_V_full_n and res1_V_data_1_V_full_n and res1_V_data_0_V_full_n);
    io_acc_block_signal_op32 <= (res2_V_data_3_V_full_n and res2_V_data_2_V_full_n and res2_V_data_1_V_full_n and res2_V_data_0_V_full_n);

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;


    res1_V_data_0_V_blk_n_assign_proc : process(res1_V_data_0_V_full_n, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            res1_V_data_0_V_blk_n <= res1_V_data_0_V_full_n;
        else 
            res1_V_data_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    res1_V_data_0_V_din <= tmp_data_0_V_reg_256;

    res1_V_data_0_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            res1_V_data_0_V_write <= ap_const_logic_1;
        else 
            res1_V_data_0_V_write <= ap_const_logic_0;
        end if; 
    end process;


    res1_V_data_1_V_blk_n_assign_proc : process(res1_V_data_1_V_full_n, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            res1_V_data_1_V_blk_n <= res1_V_data_1_V_full_n;
        else 
            res1_V_data_1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    res1_V_data_1_V_din <= tmp_data_1_V_reg_262;

    res1_V_data_1_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            res1_V_data_1_V_write <= ap_const_logic_1;
        else 
            res1_V_data_1_V_write <= ap_const_logic_0;
        end if; 
    end process;


    res1_V_data_2_V_blk_n_assign_proc : process(res1_V_data_2_V_full_n, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            res1_V_data_2_V_blk_n <= res1_V_data_2_V_full_n;
        else 
            res1_V_data_2_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    res1_V_data_2_V_din <= tmp_data_2_V_reg_268;

    res1_V_data_2_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            res1_V_data_2_V_write <= ap_const_logic_1;
        else 
            res1_V_data_2_V_write <= ap_const_logic_0;
        end if; 
    end process;


    res1_V_data_3_V_blk_n_assign_proc : process(res1_V_data_3_V_full_n, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            res1_V_data_3_V_blk_n <= res1_V_data_3_V_full_n;
        else 
            res1_V_data_3_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    res1_V_data_3_V_din <= tmp_data_3_V_reg_274;

    res1_V_data_3_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            res1_V_data_3_V_write <= ap_const_logic_1;
        else 
            res1_V_data_3_V_write <= ap_const_logic_0;
        end if; 
    end process;


    res2_V_data_0_V_blk_n_assign_proc : process(res2_V_data_0_V_full_n, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            res2_V_data_0_V_blk_n <= res2_V_data_0_V_full_n;
        else 
            res2_V_data_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    res2_V_data_0_V_din <= tmp_data_0_V_reg_256;

    res2_V_data_0_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            res2_V_data_0_V_write <= ap_const_logic_1;
        else 
            res2_V_data_0_V_write <= ap_const_logic_0;
        end if; 
    end process;


    res2_V_data_1_V_blk_n_assign_proc : process(res2_V_data_1_V_full_n, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            res2_V_data_1_V_blk_n <= res2_V_data_1_V_full_n;
        else 
            res2_V_data_1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    res2_V_data_1_V_din <= tmp_data_1_V_reg_262;

    res2_V_data_1_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            res2_V_data_1_V_write <= ap_const_logic_1;
        else 
            res2_V_data_1_V_write <= ap_const_logic_0;
        end if; 
    end process;


    res2_V_data_2_V_blk_n_assign_proc : process(res2_V_data_2_V_full_n, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            res2_V_data_2_V_blk_n <= res2_V_data_2_V_full_n;
        else 
            res2_V_data_2_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    res2_V_data_2_V_din <= tmp_data_2_V_reg_268;

    res2_V_data_2_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            res2_V_data_2_V_write <= ap_const_logic_1;
        else 
            res2_V_data_2_V_write <= ap_const_logic_0;
        end if; 
    end process;


    res2_V_data_3_V_blk_n_assign_proc : process(res2_V_data_3_V_full_n, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            res2_V_data_3_V_blk_n <= res2_V_data_3_V_full_n;
        else 
            res2_V_data_3_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    res2_V_data_3_V_din <= tmp_data_3_V_reg_274;

    res2_V_data_3_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln22_reg_247, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln22_reg_247 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            res2_V_data_3_V_write <= ap_const_logic_1;
        else 
            res2_V_data_3_V_write <= ap_const_logic_0;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;