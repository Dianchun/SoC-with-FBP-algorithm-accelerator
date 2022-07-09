-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity hls_xfft2real_Loop_realfft_be_buffer_proc3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    descramble_buf_0_M_imag_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    descramble_buf_0_M_imag_V_ce0 : OUT STD_LOGIC;
    descramble_buf_0_M_imag_V_we0 : OUT STD_LOGIC;
    descramble_buf_0_M_imag_V_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    descramble_buf_1_M_imag_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    descramble_buf_1_M_imag_V_ce0 : OUT STD_LOGIC;
    descramble_buf_1_M_imag_V_we0 : OUT STD_LOGIC;
    descramble_buf_1_M_imag_V_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    din_V_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    din_V_TVALID : IN STD_LOGIC;
    din_V_TREADY : OUT STD_LOGIC;
    descramble_buf_0_M_real_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    descramble_buf_0_M_real_V_ce0 : OUT STD_LOGIC;
    descramble_buf_0_M_real_V_we0 : OUT STD_LOGIC;
    descramble_buf_0_M_real_V_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    descramble_buf_1_M_real_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    descramble_buf_1_M_real_V_ce0 : OUT STD_LOGIC;
    descramble_buf_1_M_real_V_we0 : OUT STD_LOGIC;
    descramble_buf_1_M_real_V_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of hls_xfft2real_Loop_realfft_be_buffer_proc3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv10_3FF : STD_LOGIC_VECTOR (9 downto 0) := "1111111111";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal din_V_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_fu_128_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_state2 : BOOLEAN;
    signal i_121_reg_114 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal icmp_ln83_fu_178_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln89_fu_162_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_170_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln145_fu_134_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln5_fu_152_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal regslice_both_din_V_U_apdone_blk : STD_LOGIC;
    signal din_V_TDATA_int_regslice : STD_LOGIC_VECTOR (63 downto 0);
    signal din_V_TVALID_int_regslice : STD_LOGIC;
    signal din_V_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_din_V_U_ack_in : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component hls_xfft2real_regslice_both IS
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
    regslice_both_din_V_U : component hls_xfft2real_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => din_V_TDATA,
        vld_in => din_V_TVALID,
        ack_in => regslice_both_din_V_U_ack_in,
        data_out => din_V_TDATA_int_regslice,
        vld_out => din_V_TVALID_int_regslice,
        ack_out => din_V_TREADY_int_regslice,
        apdone_blk => regslice_both_din_V_U_apdone_blk);





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
                elsif ((not(((ap_start = ap_const_logic_0) or (din_V_TVALID_int_regslice = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (icmp_ln83_fu_178_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_121_reg_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (din_V_TVALID_int_regslice = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (icmp_ln83_fu_178_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_121_reg_114 <= i_fu_128_p2;
            elsif (((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1)) or (not(((ap_start = ap_const_logic_0) or (din_V_TVALID_int_regslice = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (icmp_ln83_fu_178_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
                i_121_reg_114 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, din_V_TVALID_int_regslice)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state2_assign_proc : process(ap_start, ap_done_reg, din_V_TVALID_int_regslice)
    begin
                ap_block_state2 <= ((ap_start = ap_const_logic_0) or (din_V_TVALID_int_regslice = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state2, icmp_ln83_fu_178_p2, din_V_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (din_V_TVALID_int_regslice = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (icmp_ln83_fu_178_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state2, icmp_ln83_fu_178_p2, din_V_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (din_V_TVALID_int_regslice = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (icmp_ln83_fu_178_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_0_M_imag_V_address0 <= zext_ln89_fu_162_p1(9 - 1 downto 0);

    descramble_buf_0_M_imag_V_ce0_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state2, din_V_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (din_V_TVALID_int_regslice = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            descramble_buf_0_M_imag_V_ce0 <= ap_const_logic_1;
        else 
            descramble_buf_0_M_imag_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_0_M_imag_V_d0 <= din_V_TDATA_int_regslice(63 downto 32);

    descramble_buf_0_M_imag_V_we0_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state2, tmp_fu_170_p3, din_V_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (din_V_TVALID_int_regslice = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (tmp_fu_170_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            descramble_buf_0_M_imag_V_we0 <= ap_const_logic_1;
        else 
            descramble_buf_0_M_imag_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_0_M_real_V_address0 <= zext_ln89_fu_162_p1(9 - 1 downto 0);

    descramble_buf_0_M_real_V_ce0_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state2, din_V_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (din_V_TVALID_int_regslice = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            descramble_buf_0_M_real_V_ce0 <= ap_const_logic_1;
        else 
            descramble_buf_0_M_real_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_0_M_real_V_d0 <= trunc_ln145_fu_134_p1;

    descramble_buf_0_M_real_V_we0_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state2, tmp_fu_170_p3, din_V_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (din_V_TVALID_int_regslice = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (tmp_fu_170_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            descramble_buf_0_M_real_V_we0 <= ap_const_logic_1;
        else 
            descramble_buf_0_M_real_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_1_M_imag_V_address0 <= zext_ln89_fu_162_p1(9 - 1 downto 0);

    descramble_buf_1_M_imag_V_ce0_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state2, din_V_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (din_V_TVALID_int_regslice = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            descramble_buf_1_M_imag_V_ce0 <= ap_const_logic_1;
        else 
            descramble_buf_1_M_imag_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_1_M_imag_V_d0 <= din_V_TDATA_int_regslice(63 downto 32);

    descramble_buf_1_M_imag_V_we0_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state2, tmp_fu_170_p3, din_V_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (din_V_TVALID_int_regslice = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (tmp_fu_170_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            descramble_buf_1_M_imag_V_we0 <= ap_const_logic_1;
        else 
            descramble_buf_1_M_imag_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_1_M_real_V_address0 <= zext_ln89_fu_162_p1(9 - 1 downto 0);

    descramble_buf_1_M_real_V_ce0_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state2, din_V_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (din_V_TVALID_int_regslice = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            descramble_buf_1_M_real_V_ce0 <= ap_const_logic_1;
        else 
            descramble_buf_1_M_real_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_1_M_real_V_d0 <= trunc_ln145_fu_134_p1;

    descramble_buf_1_M_real_V_we0_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state2, tmp_fu_170_p3, din_V_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (din_V_TVALID_int_regslice = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (tmp_fu_170_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            descramble_buf_1_M_real_V_we0 <= ap_const_logic_1;
        else 
            descramble_buf_1_M_real_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    din_V_TDATA_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state2, din_V_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            din_V_TDATA_blk_n <= din_V_TVALID_int_regslice;
        else 
            din_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    din_V_TREADY <= regslice_both_din_V_U_ack_in;

    din_V_TREADY_int_regslice_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state2, din_V_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (din_V_TVALID_int_regslice = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            din_V_TREADY_int_regslice <= ap_const_logic_1;
        else 
            din_V_TREADY_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_128_p2 <= std_logic_vector(unsigned(i_121_reg_114) + unsigned(ap_const_lv10_1));
    icmp_ln83_fu_178_p2 <= "1" when (i_121_reg_114 = ap_const_lv10_3FF) else "0";
    tmp_fu_170_p3 <= i_121_reg_114(0 downto 0);
    trunc_ln145_fu_134_p1 <= din_V_TDATA_int_regslice(32 - 1 downto 0);
    
    trunc_ln5_fu_152_p4_proc : process(i_121_reg_114)
    variable vlo_cpy : STD_LOGIC_VECTOR(10+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(10+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(10 - 1 downto 0);
    variable trunc_ln5_fu_152_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(10 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(10 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(10 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(4 - 1 downto 0) := ap_const_lv32_9(4 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(4 - 1 downto 0) := ap_const_lv32_1(4 - 1 downto 0);
        v0_cpy := i_121_reg_114;
        if (vlo_cpy(4 - 1 downto 0) > vhi_cpy(4 - 1 downto 0)) then
            vhi_cpy(4-1 downto 0) := std_logic_vector(10-1-unsigned(ap_const_lv32_1(4-1 downto 0)));
            vlo_cpy(4-1 downto 0) := std_logic_vector(10-1-unsigned(ap_const_lv32_9(4-1 downto 0)));
            for trunc_ln5_fu_152_p4_i in 0 to 10-1 loop
                v0_cpy(trunc_ln5_fu_152_p4_i) := i_121_reg_114(10-1-trunc_ln5_fu_152_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(4-1 downto 0)))));

        section := (others=>'0');
        section(4-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(4-1 downto 0)) - unsigned(vlo_cpy(4-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(10-1 downto 0)))));
        res_mask := res_mask(10-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        trunc_ln5_fu_152_p4 <= resvalue(9-1 downto 0);
    end process;

    zext_ln89_fu_162_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln5_fu_152_p4),64));
end behav;
