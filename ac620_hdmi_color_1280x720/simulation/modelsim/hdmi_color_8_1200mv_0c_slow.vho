-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "01/05/2022 14:26:53"

-- 
-- Device: Altera EP4CE10F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hdmi_color IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	tmds_clk_p : OUT std_logic;
	tmds_clk_n : OUT std_logic;
	tmds_data_p : OUT std_logic_vector(2 DOWNTO 0);
	tmds_data_n : OUT std_logic_vector(2 DOWNTO 0)
	);
END hdmi_color;

-- Design Ports Information
-- tmds_clk_p	=>  Location: PIN_F10,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- tmds_clk_n	=>  Location: PIN_F11,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- tmds_data_p[0]	=>  Location: PIN_C15,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- tmds_data_p[1]	=>  Location: PIN_D15,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- tmds_data_p[2]	=>  Location: PIN_B16,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- tmds_data_n[0]	=>  Location: PIN_A11,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- tmds_data_n[1]	=>  Location: PIN_C16,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- tmds_data_n[2]	=>  Location: PIN_D16,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- rst_n	=>  Location: PIN_E16,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF hdmi_color IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_tmds_clk_p : std_logic;
SIGNAL ww_tmds_clk_n : std_logic;
SIGNAL ww_tmds_data_p : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tmds_data_n : std_logic_vector(2 DOWNTO 0);
SIGNAL \pll_hdmi_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll_hdmi_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~3_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~0_combout\ : std_logic;
SIGNAL \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \disp_driver|vcount_r[0]~12_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \disp_driver|LessThan7~0_combout\ : std_logic;
SIGNAL \disp_driver|LessThan5~0_combout\ : std_logic;
SIGNAL \disp_driver|LessThan1~1_combout\ : std_logic;
SIGNAL \disp_driver|vcount_r[10]~33\ : std_logic;
SIGNAL \disp_driver|vcount_r[11]~34_combout\ : std_logic;
SIGNAL \disp_driver|hcount_r[0]~12_combout\ : std_logic;
SIGNAL \disp_driver|hcount_r[0]~13\ : std_logic;
SIGNAL \disp_driver|hcount_r[1]~14_combout\ : std_logic;
SIGNAL \disp_driver|hcount_r[1]~15\ : std_logic;
SIGNAL \disp_driver|hcount_r[2]~16_combout\ : std_logic;
SIGNAL \disp_driver|hcount_r[2]~17\ : std_logic;
SIGNAL \disp_driver|hcount_r[3]~18_combout\ : std_logic;
SIGNAL \disp_driver|hcount_r[3]~19\ : std_logic;
SIGNAL \disp_driver|hcount_r[4]~20_combout\ : std_logic;
SIGNAL \disp_driver|hcount_r[4]~21\ : std_logic;
SIGNAL \disp_driver|hcount_r[5]~22_combout\ : std_logic;
SIGNAL \disp_driver|hcount_r[5]~23\ : std_logic;
SIGNAL \disp_driver|hcount_r[6]~24_combout\ : std_logic;
SIGNAL \disp_driver|LessThan0~1_combout\ : std_logic;
SIGNAL \disp_driver|hcount_r[6]~25\ : std_logic;
SIGNAL \disp_driver|hcount_r[7]~26_combout\ : std_logic;
SIGNAL \disp_driver|hcount_r[7]~27\ : std_logic;
SIGNAL \disp_driver|hcount_r[8]~28_combout\ : std_logic;
SIGNAL \disp_driver|LessThan0~0_combout\ : std_logic;
SIGNAL \disp_driver|LessThan0~2_combout\ : std_logic;
SIGNAL \disp_driver|hcount_r[8]~29\ : std_logic;
SIGNAL \disp_driver|hcount_r[9]~30_combout\ : std_logic;
SIGNAL \disp_driver|hcount_r[9]~31\ : std_logic;
SIGNAL \disp_driver|hcount_r[10]~32_combout\ : std_logic;
SIGNAL \disp_driver|hcount_r[10]~33\ : std_logic;
SIGNAL \disp_driver|hcount_r[11]~34_combout\ : std_logic;
SIGNAL \disp_driver|LessThan0~3_combout\ : std_logic;
SIGNAL \disp_driver|LessThan1~0_combout\ : std_logic;
SIGNAL \disp_driver|LessThan1~2_combout\ : std_logic;
SIGNAL \disp_driver|vcount_r[0]~13\ : std_logic;
SIGNAL \disp_driver|vcount_r[1]~14_combout\ : std_logic;
SIGNAL \disp_driver|vcount_r[1]~15\ : std_logic;
SIGNAL \disp_driver|vcount_r[2]~16_combout\ : std_logic;
SIGNAL \disp_driver|vcount_r[2]~17\ : std_logic;
SIGNAL \disp_driver|vcount_r[3]~18_combout\ : std_logic;
SIGNAL \disp_driver|vcount_r[3]~19\ : std_logic;
SIGNAL \disp_driver|vcount_r[4]~20_combout\ : std_logic;
SIGNAL \disp_driver|vcount_r[4]~21\ : std_logic;
SIGNAL \disp_driver|vcount_r[5]~22_combout\ : std_logic;
SIGNAL \disp_driver|vcount_r[5]~23\ : std_logic;
SIGNAL \disp_driver|vcount_r[6]~24_combout\ : std_logic;
SIGNAL \disp_driver|vcount_r[6]~25\ : std_logic;
SIGNAL \disp_driver|vcount_r[7]~26_combout\ : std_logic;
SIGNAL \disp_driver|vcount_r[7]~27\ : std_logic;
SIGNAL \disp_driver|vcount_r[8]~28_combout\ : std_logic;
SIGNAL \disp_driver|vcount_r[8]~29\ : std_logic;
SIGNAL \disp_driver|vcount_r[9]~30_combout\ : std_logic;
SIGNAL \disp_driver|vcount_r[9]~31\ : std_logic;
SIGNAL \disp_driver|vcount_r[10]~32_combout\ : std_logic;
SIGNAL \disp_driver|Add1~1\ : std_logic;
SIGNAL \disp_driver|Add1~3\ : std_logic;
SIGNAL \disp_driver|Add1~5\ : std_logic;
SIGNAL \disp_driver|Add1~7\ : std_logic;
SIGNAL \disp_driver|Add1~9\ : std_logic;
SIGNAL \disp_driver|Add1~11\ : std_logic;
SIGNAL \disp_driver|Add1~13\ : std_logic;
SIGNAL \disp_driver|Add1~14_combout\ : std_logic;
SIGNAL \disp_driver|Disp_DE~0_combout\ : std_logic;
SIGNAL \disp_driver|LessThan2~2_combout\ : std_logic;
SIGNAL \disp_driver|LessThan2~1_combout\ : std_logic;
SIGNAL \disp_driver|Disp_DE~1_combout\ : std_logic;
SIGNAL \disp_driver|Disp_DE~2_combout\ : std_logic;
SIGNAL \disp_driver|LessThan4~0_combout\ : std_logic;
SIGNAL \disp_driver|Disp_DE~5_combout\ : std_logic;
SIGNAL \disp_driver|Disp_DE~3_combout\ : std_logic;
SIGNAL \disp_driver|Disp_DE~4_combout\ : std_logic;
SIGNAL \disp_driver|Disp_DE~6_combout\ : std_logic;
SIGNAL \disp_driver|Disp_DE~q\ : std_logic;
SIGNAL \disp_driver|Add1~12_combout\ : std_logic;
SIGNAL \disp_driver|Add1~6_combout\ : std_logic;
SIGNAL \disp_driver|Add1~0_combout\ : std_logic;
SIGNAL \disp_driver|Add1~4_combout\ : std_logic;
SIGNAL \disp_driver|Add1~2_combout\ : std_logic;
SIGNAL \u_color_bar|LessThan5~0_combout\ : std_logic;
SIGNAL \u_color_bar|LessThan5~1_combout\ : std_logic;
SIGNAL \disp_driver|Add1~10_combout\ : std_logic;
SIGNAL \disp_driver|Add1~8_combout\ : std_logic;
SIGNAL \u_color_bar|LessThan5~2_combout\ : std_logic;
SIGNAL \u_color_bar|LessThan7~1_combout\ : std_logic;
SIGNAL \u_color_bar|LessThan7~0_combout\ : std_logic;
SIGNAL \u_color_bar|LessThan7~2_combout\ : std_logic;
SIGNAL \u_color_bar|Decoder0~10_combout\ : std_logic;
SIGNAL \u_color_bar|LessThan2~0_combout\ : std_logic;
SIGNAL \u_color_bar|LessThan2~1_combout\ : std_logic;
SIGNAL \u_color_bar|LessThan2~2_combout\ : std_logic;
SIGNAL \u_color_bar|LessThan2~3_combout\ : std_logic;
SIGNAL \u_color_bar|LessThan3~1_combout\ : std_logic;
SIGNAL \u_color_bar|LessThan3~0_combout\ : std_logic;
SIGNAL \u_color_bar|LessThan3~2_combout\ : std_logic;
SIGNAL \u_color_bar|LessThan3~3_combout\ : std_logic;
SIGNAL \disp_driver|Add1~15\ : std_logic;
SIGNAL \disp_driver|Add1~16_combout\ : std_logic;
SIGNAL \disp_driver|Add0~1_cout\ : std_logic;
SIGNAL \disp_driver|Add0~3_cout\ : std_logic;
SIGNAL \disp_driver|Add0~5_cout\ : std_logic;
SIGNAL \disp_driver|Add0~7_cout\ : std_logic;
SIGNAL \disp_driver|Add0~9_cout\ : std_logic;
SIGNAL \disp_driver|Add0~11_cout\ : std_logic;
SIGNAL \disp_driver|Add0~13\ : std_logic;
SIGNAL \disp_driver|Add0~15\ : std_logic;
SIGNAL \disp_driver|Add0~17\ : std_logic;
SIGNAL \disp_driver|Add0~19\ : std_logic;
SIGNAL \disp_driver|Add0~20_combout\ : std_logic;
SIGNAL \disp_driver|Add0~14_combout\ : std_logic;
SIGNAL \disp_driver|Add0~16_combout\ : std_logic;
SIGNAL \disp_driver|Add0~18_combout\ : std_logic;
SIGNAL \disp_driver|Add0~12_combout\ : std_logic;
SIGNAL \u_color_bar|Decoder0~4_combout\ : std_logic;
SIGNAL \u_color_bar|Decoder0~16_combout\ : std_logic;
SIGNAL \u_color_bar|WideOr2~1_combout\ : std_logic;
SIGNAL \u_color_bar|LessThan5~3_combout\ : std_logic;
SIGNAL \u_color_bar|Decoder0~9_combout\ : std_logic;
SIGNAL \u_color_bar|WideOr2~0_combout\ : std_logic;
SIGNAL \u_color_bar|WideOr2~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|n1d[3]~feeder_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|q_m_reg[8]~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add22~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|cnt~7_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|de_reg[0]~feeder_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|de_reg[1]~feeder_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|cnt[1]~5_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|cnt~4_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add22~1\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add22~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|cnt~6_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add19~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add21~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add22~3\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add22~4_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add24~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add24~6_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Equal1~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add19~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add21~1\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add21~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add22~5\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add22~6_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add24~1\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add24~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add24~4_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|Add24~5_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|decision3~0_combout\ : std_logic;
SIGNAL \disp_driver|LessThan6~0_combout\ : std_logic;
SIGNAL \disp_driver|LessThan2~0_combout\ : std_logic;
SIGNAL \disp_driver|LessThan6~1_combout\ : std_logic;
SIGNAL \disp_driver|Disp_HS~q\ : std_logic;
SIGNAL \u_dvi_encoder|encb|c0_reg[0]~feeder_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|c0_reg[1]~feeder_combout\ : std_logic;
SIGNAL \disp_driver|LessThan4~1_combout\ : std_logic;
SIGNAL \disp_driver|LessThan7~1_combout\ : std_logic;
SIGNAL \disp_driver|Disp_VS~q\ : std_logic;
SIGNAL \u_dvi_encoder|encb|c1_reg[1]~feeder_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|dout~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~4_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|dout~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~3_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|dout~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encb|dout~3_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~4_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~3_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~0_combout\ : std_logic;
SIGNAL \u_color_bar|Decoder0~17_combout\ : std_logic;
SIGNAL \u_color_bar|Decoder0~18_combout\ : std_logic;
SIGNAL \u_color_bar|Decoder0~11_combout\ : std_logic;
SIGNAL \u_color_bar|Decoder0~12_combout\ : std_logic;
SIGNAL \u_color_bar|Decoder0~13_combout\ : std_logic;
SIGNAL \u_color_bar|WideOr1~0_combout\ : std_logic;
SIGNAL \u_color_bar|Decoder0~14_combout\ : std_logic;
SIGNAL \u_color_bar|WideOr1~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|n1d[3]~feeder_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|q_m_reg[8]~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add22~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|cnt~6_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Equal1~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|cnt[2]~4_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add19~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add22~1\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add22~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|cnt~5_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add19~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add21~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|decision3~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add22~3\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add22~4_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add24~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add24~6_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add19~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add21~1\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add21~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add22~5\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add22~6_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add24~1\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add24~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add24~4_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|Add24~5_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|dout~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|dout[7]~feeder_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|dout[9]~feeder_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~4_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~3_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|dout~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encg|dout~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~4_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~3_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~0_combout\ : std_logic;
SIGNAL \u_color_bar|Decoder0~15_combout\ : std_logic;
SIGNAL \u_color_bar|WideOr0~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|n1d[3]~feeder_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|q_m_reg[8]~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add22~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|cnt~6_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|cnt[1]~4_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add19~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add22~1\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add22~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|cnt~5_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Equal1~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add22~3\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add22~4_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add24~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add19~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add21~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add24~6_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add22~5\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add22~6_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add24~1\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add24~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add19~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add21~1\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add21~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add24~4_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|Add24~5_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|decision3~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|dout[9]~feeder_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~4_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|dout~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~3_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|dout~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|encr|dout~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~4_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~3_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~2_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~1_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~0_combout\ : std_logic;
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_0|auto_generated|dataout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_dvi_encoder|encr|cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_1|auto_generated|dataout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \disp_driver|vcount_r\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_dvi_encoder|encg|n1d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \disp_driver|Disp_Blue\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_dvi_encoder|encg|cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_dvi_encoder|encb|cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \disp_driver|hcount_r\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \disp_driver|Disp_Green\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_dvi_encoder|encg|dout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_dvi_encoder|encr|dout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \disp_driver|Disp_Red\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_dvi_encoder|encb|dout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_dvi_encoder|encb|c0_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_dvi_encoder|encr|de_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_dvi_encoder|encb|q_m_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u_dvi_encoder|encg|q_m_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u_dvi_encoder|encb|n1d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_dvi_encoder|encr|q_m_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u_dvi_encoder|encr|n1d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_dvi_encoder|encb|c1_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \disp_driver|ALT_INV_Disp_DE~q\ : std_logic;
SIGNAL \u_dvi_encoder|encr|ALT_INV_de_reg\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_2h\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_2l\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_1h\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_1l\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_0h\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_0l\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_3h\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_3l\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
tmds_clk_p <= ww_tmds_clk_p;
tmds_clk_n <= ww_tmds_clk_n;
tmds_data_p <= ww_tmds_data_p;
tmds_data_n <= ww_tmds_data_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll_hdmi_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll_hdmi_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll_hdmi_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll_hdmi_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll_hdmi_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll_hdmi_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk\(1));

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);
\disp_driver|ALT_INV_Disp_DE~q\ <= NOT \disp_driver|Disp_DE~q\;
\u_dvi_encoder|encr|ALT_INV_de_reg\(1) <= NOT \u_dvi_encoder|encr|de_reg\(1);
\u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_2h\(0) <= NOT \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\(0);
\u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_2l\(0) <= NOT \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\(0);
\u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_1h\(0) <= NOT \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\(0);
\u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_1l\(0) <= NOT \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\(0);
\u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_0h\(0) <= NOT \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\(0);
\u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_0l\(0) <= NOT \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\(0);
\u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_3h\(0) <= NOT \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h\(0);
\u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_3l\(0) <= NOT \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l\(0);

-- Location: IOOBUF_X23_Y24_N9
\tmds_clk_p~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_0|auto_generated|dataout\(3),
	devoe => ww_devoe,
	o => ww_tmds_clk_p);

-- Location: IOOBUF_X23_Y24_N23
\tmds_clk_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_1|auto_generated|dataout\(3),
	devoe => ww_devoe,
	o => ww_tmds_clk_n);

-- Location: IOOBUF_X34_Y20_N2
\tmds_data_p[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_0|auto_generated|dataout\(0),
	devoe => ww_devoe,
	o => ww_tmds_data_p(0));

-- Location: IOOBUF_X34_Y19_N2
\tmds_data_p[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_0|auto_generated|dataout\(1),
	devoe => ww_devoe,
	o => ww_tmds_data_p(1));

-- Location: IOOBUF_X34_Y18_N2
\tmds_data_p[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_0|auto_generated|dataout\(2),
	devoe => ww_devoe,
	o => ww_tmds_data_p(2));

-- Location: IOOBUF_X25_Y24_N16
\tmds_data_n[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_1|auto_generated|dataout\(0),
	devoe => ww_devoe,
	o => ww_tmds_data_n(0));

-- Location: IOOBUF_X34_Y20_N9
\tmds_data_n[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_1|auto_generated|dataout\(1),
	devoe => ww_devoe,
	o => ww_tmds_data_n(1));

-- Location: IOOBUF_X34_Y19_N9
\tmds_data_n[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_1|auto_generated|dataout\(2),
	devoe => ww_devoe,
	o => ww_tmds_data_n(2));

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_1
\pll_hdmi_inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 2,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 1,
	c1_initial => 1,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 35,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 52,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 7,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 52,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 19,
	m => 52,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 336,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll_hdmi_inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll_hdmi_inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G4
\pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y20_N4
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5~1_combout\ = (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2) & (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1) $ (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5~1_combout\);

-- Location: FF_X30_Y20_N5
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1));

-- Location: LCCOMB_X30_Y20_N18
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5~2_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1) & (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2) & \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5~2_combout\);

-- Location: FF_X30_Y20_N19
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2));

-- Location: LCCOMB_X30_Y20_N10
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5~0_combout\ = (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0) & !\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5~0_combout\);

-- Location: FF_X30_Y20_N11
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0));

-- Location: LCCOMB_X30_Y20_N16
\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2) & (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1) & !\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\);

-- Location: FF_X30_Y20_N23
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l\(4));

-- Location: LCCOMB_X26_Y20_N12
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~3_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l\(4)) # ((!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1) & (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0) & 
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l\(4),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~3_combout\);

-- Location: FF_X26_Y20_N13
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h\(3));

-- Location: LCCOMB_X26_Y22_N22
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l~2_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h\(3)) # ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2) & (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0) & 
-- !\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h\(3),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l~2_combout\);

-- Location: FF_X26_Y22_N23
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l\(2));

-- Location: LCCOMB_X26_Y22_N30
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l~1_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l\(2) & ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0)) # ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1)) # 
-- (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l\(2),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l~1_combout\);

-- Location: FF_X26_Y22_N31
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l\(1));

-- Location: LCCOMB_X26_Y22_N6
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l~0_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l\(1) & ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0)) # ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1)) # 
-- (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l\(1),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l~0_combout\);

-- Location: FF_X26_Y22_N7
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l\(0));

-- Location: LCCOMB_X26_Y22_N8
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~2_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h\(3) & (((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0)) # (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1))) # 
-- (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h\(3),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~2_combout\);

-- Location: FF_X26_Y22_N9
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h\(2));

-- Location: LCCOMB_X26_Y22_N4
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~1_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h\(2) & ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0)) # ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1)) # 
-- (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h\(2),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~1_combout\);

-- Location: FF_X26_Y22_N5
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h\(1));

-- Location: LCCOMB_X26_Y22_N0
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~0_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h\(1) & ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0)) # ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1)) # 
-- (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h\(1),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~0_combout\);

-- Location: FF_X26_Y22_N1
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h\(0));

-- Location: DDIOOUTCELL_X23_Y24_N11
\u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_0|auto_generated|ddio_outa[3]\ : cycloneive_ddio_out
-- pragma translate_off
GENERIC MAP (
	async_mode => "none",
	power_up => "low",
	sync_mode => "none",
	use_new_clocking_model => "true")
-- pragma translate_on
PORT MAP (
	datainlo => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3l\(0),
	datainhi => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_3h\(0),
	clkhi => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clklo => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	muxsel => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_0|auto_generated|dataout\(3));

-- Location: DDIOOUTCELL_X23_Y24_N25
\u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_1|auto_generated|ddio_outa[3]\ : cycloneive_ddio_out
-- pragma translate_off
GENERIC MAP (
	async_mode => "none",
	power_up => "low",
	sync_mode => "none",
	use_new_clocking_model => "true")
-- pragma translate_on
PORT MAP (
	datainlo => \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_3l\(0),
	datainhi => \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_3h\(0),
	clkhi => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clklo => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	muxsel => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_1|auto_generated|dataout\(3));

-- Location: CLKCTRL_G3
\pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y20_N4
\disp_driver|vcount_r[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|vcount_r[0]~12_combout\ = \disp_driver|vcount_r\(0) $ (VCC)
-- \disp_driver|vcount_r[0]~13\ = CARRY(\disp_driver|vcount_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|vcount_r\(0),
	datad => VCC,
	combout => \disp_driver|vcount_r[0]~12_combout\,
	cout => \disp_driver|vcount_r[0]~13\);

-- Location: IOIBUF_X34_Y12_N8
\rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G7
\rst_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y20_N30
\disp_driver|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan7~0_combout\ = (\disp_driver|vcount_r\(2) & ((\disp_driver|vcount_r\(0)) # (\disp_driver|vcount_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|vcount_r\(0),
	datac => \disp_driver|vcount_r\(2),
	datad => \disp_driver|vcount_r\(1),
	combout => \disp_driver|LessThan7~0_combout\);

-- Location: LCCOMB_X25_Y20_N24
\disp_driver|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan5~0_combout\ = (\disp_driver|vcount_r\(5) & (\disp_driver|vcount_r\(6) & \disp_driver|vcount_r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|vcount_r\(5),
	datac => \disp_driver|vcount_r\(6),
	datad => \disp_driver|vcount_r\(7),
	combout => \disp_driver|LessThan5~0_combout\);

-- Location: LCCOMB_X24_Y20_N28
\disp_driver|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan1~1_combout\ = ((!\disp_driver|vcount_r\(4) & ((!\disp_driver|vcount_r\(3)) # (!\disp_driver|LessThan7~0_combout\)))) # (!\disp_driver|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|LessThan7~0_combout\,
	datab => \disp_driver|LessThan5~0_combout\,
	datac => \disp_driver|vcount_r\(4),
	datad => \disp_driver|vcount_r\(3),
	combout => \disp_driver|LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y20_N24
\disp_driver|vcount_r[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|vcount_r[10]~32_combout\ = (\disp_driver|vcount_r\(10) & (\disp_driver|vcount_r[9]~31\ $ (GND))) # (!\disp_driver|vcount_r\(10) & (!\disp_driver|vcount_r[9]~31\ & VCC))
-- \disp_driver|vcount_r[10]~33\ = CARRY((\disp_driver|vcount_r\(10) & !\disp_driver|vcount_r[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|vcount_r\(10),
	datad => VCC,
	cin => \disp_driver|vcount_r[9]~31\,
	combout => \disp_driver|vcount_r[10]~32_combout\,
	cout => \disp_driver|vcount_r[10]~33\);

-- Location: LCCOMB_X24_Y20_N26
\disp_driver|vcount_r[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|vcount_r[11]~34_combout\ = \disp_driver|vcount_r\(11) $ (\disp_driver|vcount_r[10]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|vcount_r\(11),
	cin => \disp_driver|vcount_r[10]~33\,
	combout => \disp_driver|vcount_r[11]~34_combout\);

-- Location: LCCOMB_X24_Y21_N6
\disp_driver|hcount_r[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|hcount_r[0]~12_combout\ = \disp_driver|hcount_r\(0) $ (VCC)
-- \disp_driver|hcount_r[0]~13\ = CARRY(\disp_driver|hcount_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(0),
	datad => VCC,
	combout => \disp_driver|hcount_r[0]~12_combout\,
	cout => \disp_driver|hcount_r[0]~13\);

-- Location: FF_X24_Y21_N7
\disp_driver|hcount_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|hcount_r[0]~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|hcount_r\(0));

-- Location: LCCOMB_X24_Y21_N8
\disp_driver|hcount_r[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|hcount_r[1]~14_combout\ = (\disp_driver|hcount_r\(1) & (!\disp_driver|hcount_r[0]~13\)) # (!\disp_driver|hcount_r\(1) & ((\disp_driver|hcount_r[0]~13\) # (GND)))
-- \disp_driver|hcount_r[1]~15\ = CARRY((!\disp_driver|hcount_r[0]~13\) # (!\disp_driver|hcount_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|hcount_r\(1),
	datad => VCC,
	cin => \disp_driver|hcount_r[0]~13\,
	combout => \disp_driver|hcount_r[1]~14_combout\,
	cout => \disp_driver|hcount_r[1]~15\);

-- Location: FF_X24_Y21_N9
\disp_driver|hcount_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|hcount_r[1]~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|hcount_r\(1));

-- Location: LCCOMB_X24_Y21_N10
\disp_driver|hcount_r[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|hcount_r[2]~16_combout\ = (\disp_driver|hcount_r\(2) & (\disp_driver|hcount_r[1]~15\ $ (GND))) # (!\disp_driver|hcount_r\(2) & (!\disp_driver|hcount_r[1]~15\ & VCC))
-- \disp_driver|hcount_r[2]~17\ = CARRY((\disp_driver|hcount_r\(2) & !\disp_driver|hcount_r[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(2),
	datad => VCC,
	cin => \disp_driver|hcount_r[1]~15\,
	combout => \disp_driver|hcount_r[2]~16_combout\,
	cout => \disp_driver|hcount_r[2]~17\);

-- Location: FF_X24_Y21_N11
\disp_driver|hcount_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|hcount_r[2]~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|hcount_r\(2));

-- Location: LCCOMB_X24_Y21_N12
\disp_driver|hcount_r[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|hcount_r[3]~18_combout\ = (\disp_driver|hcount_r\(3) & (!\disp_driver|hcount_r[2]~17\)) # (!\disp_driver|hcount_r\(3) & ((\disp_driver|hcount_r[2]~17\) # (GND)))
-- \disp_driver|hcount_r[3]~19\ = CARRY((!\disp_driver|hcount_r[2]~17\) # (!\disp_driver|hcount_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(3),
	datad => VCC,
	cin => \disp_driver|hcount_r[2]~17\,
	combout => \disp_driver|hcount_r[3]~18_combout\,
	cout => \disp_driver|hcount_r[3]~19\);

-- Location: FF_X24_Y21_N13
\disp_driver|hcount_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|hcount_r[3]~18_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|hcount_r\(3));

-- Location: LCCOMB_X24_Y21_N14
\disp_driver|hcount_r[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|hcount_r[4]~20_combout\ = (\disp_driver|hcount_r\(4) & (\disp_driver|hcount_r[3]~19\ $ (GND))) # (!\disp_driver|hcount_r\(4) & (!\disp_driver|hcount_r[3]~19\ & VCC))
-- \disp_driver|hcount_r[4]~21\ = CARRY((\disp_driver|hcount_r\(4) & !\disp_driver|hcount_r[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|hcount_r\(4),
	datad => VCC,
	cin => \disp_driver|hcount_r[3]~19\,
	combout => \disp_driver|hcount_r[4]~20_combout\,
	cout => \disp_driver|hcount_r[4]~21\);

-- Location: FF_X24_Y21_N15
\disp_driver|hcount_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|hcount_r[4]~20_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|hcount_r\(4));

-- Location: LCCOMB_X24_Y21_N16
\disp_driver|hcount_r[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|hcount_r[5]~22_combout\ = (\disp_driver|hcount_r\(5) & (!\disp_driver|hcount_r[4]~21\)) # (!\disp_driver|hcount_r\(5) & ((\disp_driver|hcount_r[4]~21\) # (GND)))
-- \disp_driver|hcount_r[5]~23\ = CARRY((!\disp_driver|hcount_r[4]~21\) # (!\disp_driver|hcount_r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|hcount_r\(5),
	datad => VCC,
	cin => \disp_driver|hcount_r[4]~21\,
	combout => \disp_driver|hcount_r[5]~22_combout\,
	cout => \disp_driver|hcount_r[5]~23\);

-- Location: FF_X24_Y21_N17
\disp_driver|hcount_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|hcount_r[5]~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|hcount_r\(5));

-- Location: LCCOMB_X24_Y21_N18
\disp_driver|hcount_r[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|hcount_r[6]~24_combout\ = (\disp_driver|hcount_r\(6) & (\disp_driver|hcount_r[5]~23\ $ (GND))) # (!\disp_driver|hcount_r\(6) & (!\disp_driver|hcount_r[5]~23\ & VCC))
-- \disp_driver|hcount_r[6]~25\ = CARRY((\disp_driver|hcount_r\(6) & !\disp_driver|hcount_r[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|hcount_r\(6),
	datad => VCC,
	cin => \disp_driver|hcount_r[5]~23\,
	combout => \disp_driver|hcount_r[6]~24_combout\,
	cout => \disp_driver|hcount_r[6]~25\);

-- Location: FF_X24_Y21_N19
\disp_driver|hcount_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|hcount_r[6]~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|hcount_r\(6));

-- Location: LCCOMB_X25_Y21_N26
\disp_driver|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan0~1_combout\ = ((!\disp_driver|hcount_r\(4)) # (!\disp_driver|hcount_r\(5))) # (!\disp_driver|hcount_r\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|hcount_r\(6),
	datac => \disp_driver|hcount_r\(5),
	datad => \disp_driver|hcount_r\(4),
	combout => \disp_driver|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y21_N20
\disp_driver|hcount_r[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|hcount_r[7]~26_combout\ = (\disp_driver|hcount_r\(7) & (!\disp_driver|hcount_r[6]~25\)) # (!\disp_driver|hcount_r\(7) & ((\disp_driver|hcount_r[6]~25\) # (GND)))
-- \disp_driver|hcount_r[7]~27\ = CARRY((!\disp_driver|hcount_r[6]~25\) # (!\disp_driver|hcount_r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|hcount_r\(7),
	datad => VCC,
	cin => \disp_driver|hcount_r[6]~25\,
	combout => \disp_driver|hcount_r[7]~26_combout\,
	cout => \disp_driver|hcount_r[7]~27\);

-- Location: FF_X24_Y21_N21
\disp_driver|hcount_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|hcount_r[7]~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|hcount_r\(7));

-- Location: LCCOMB_X24_Y21_N22
\disp_driver|hcount_r[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|hcount_r[8]~28_combout\ = (\disp_driver|hcount_r\(8) & (\disp_driver|hcount_r[7]~27\ $ (GND))) # (!\disp_driver|hcount_r\(8) & (!\disp_driver|hcount_r[7]~27\ & VCC))
-- \disp_driver|hcount_r[8]~29\ = CARRY((\disp_driver|hcount_r\(8) & !\disp_driver|hcount_r[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(8),
	datad => VCC,
	cin => \disp_driver|hcount_r[7]~27\,
	combout => \disp_driver|hcount_r[8]~28_combout\,
	cout => \disp_driver|hcount_r[8]~29\);

-- Location: FF_X24_Y21_N23
\disp_driver|hcount_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|hcount_r[8]~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|hcount_r\(8));

-- Location: LCCOMB_X24_Y21_N0
\disp_driver|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan0~0_combout\ = (!\disp_driver|hcount_r\(0) & (!\disp_driver|hcount_r\(3) & (!\disp_driver|hcount_r\(1) & !\disp_driver|hcount_r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(0),
	datab => \disp_driver|hcount_r\(3),
	datac => \disp_driver|hcount_r\(1),
	datad => \disp_driver|hcount_r\(2),
	combout => \disp_driver|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y21_N2
\disp_driver|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan0~2_combout\ = (!\disp_driver|hcount_r\(8) & (!\disp_driver|hcount_r\(7) & ((\disp_driver|LessThan0~1_combout\) # (\disp_driver|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|LessThan0~1_combout\,
	datab => \disp_driver|hcount_r\(8),
	datac => \disp_driver|LessThan0~0_combout\,
	datad => \disp_driver|hcount_r\(7),
	combout => \disp_driver|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y21_N24
\disp_driver|hcount_r[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|hcount_r[9]~30_combout\ = (\disp_driver|hcount_r\(9) & (!\disp_driver|hcount_r[8]~29\)) # (!\disp_driver|hcount_r\(9) & ((\disp_driver|hcount_r[8]~29\) # (GND)))
-- \disp_driver|hcount_r[9]~31\ = CARRY((!\disp_driver|hcount_r[8]~29\) # (!\disp_driver|hcount_r\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|hcount_r\(9),
	datad => VCC,
	cin => \disp_driver|hcount_r[8]~29\,
	combout => \disp_driver|hcount_r[9]~30_combout\,
	cout => \disp_driver|hcount_r[9]~31\);

-- Location: FF_X24_Y21_N25
\disp_driver|hcount_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|hcount_r[9]~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|hcount_r\(9));

-- Location: LCCOMB_X24_Y21_N26
\disp_driver|hcount_r[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|hcount_r[10]~32_combout\ = (\disp_driver|hcount_r\(10) & (\disp_driver|hcount_r[9]~31\ $ (GND))) # (!\disp_driver|hcount_r\(10) & (!\disp_driver|hcount_r[9]~31\ & VCC))
-- \disp_driver|hcount_r[10]~33\ = CARRY((\disp_driver|hcount_r\(10) & !\disp_driver|hcount_r[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(10),
	datad => VCC,
	cin => \disp_driver|hcount_r[9]~31\,
	combout => \disp_driver|hcount_r[10]~32_combout\,
	cout => \disp_driver|hcount_r[10]~33\);

-- Location: FF_X24_Y21_N27
\disp_driver|hcount_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|hcount_r[10]~32_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|hcount_r\(10));

-- Location: LCCOMB_X24_Y21_N28
\disp_driver|hcount_r[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|hcount_r[11]~34_combout\ = \disp_driver|hcount_r\(11) $ (\disp_driver|hcount_r[10]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|hcount_r\(11),
	cin => \disp_driver|hcount_r[10]~33\,
	combout => \disp_driver|hcount_r[11]~34_combout\);

-- Location: FF_X24_Y21_N29
\disp_driver|hcount_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|hcount_r[11]~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|hcount_r\(11));

-- Location: LCCOMB_X24_Y21_N30
\disp_driver|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan0~3_combout\ = (\disp_driver|hcount_r\(11)) # ((!\disp_driver|LessThan0~2_combout\ & (\disp_driver|hcount_r\(9) & \disp_driver|hcount_r\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|LessThan0~2_combout\,
	datab => \disp_driver|hcount_r\(9),
	datac => \disp_driver|hcount_r\(10),
	datad => \disp_driver|hcount_r\(11),
	combout => \disp_driver|LessThan0~3_combout\);

-- Location: FF_X24_Y20_N27
\disp_driver|vcount_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|vcount_r[11]~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan1~2_combout\,
	ena => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|vcount_r\(11));

-- Location: LCCOMB_X24_Y20_N0
\disp_driver|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan1~0_combout\ = (!\disp_driver|vcount_r\(11) & !\disp_driver|vcount_r\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \disp_driver|vcount_r\(11),
	datad => \disp_driver|vcount_r\(10),
	combout => \disp_driver|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y20_N2
\disp_driver|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan1~2_combout\ = ((\disp_driver|vcount_r\(9) & ((\disp_driver|vcount_r\(8)) # (!\disp_driver|LessThan1~1_combout\)))) # (!\disp_driver|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|LessThan1~1_combout\,
	datab => \disp_driver|vcount_r\(8),
	datac => \disp_driver|vcount_r\(9),
	datad => \disp_driver|LessThan1~0_combout\,
	combout => \disp_driver|LessThan1~2_combout\);

-- Location: FF_X24_Y20_N5
\disp_driver|vcount_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|vcount_r[0]~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan1~2_combout\,
	ena => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|vcount_r\(0));

-- Location: LCCOMB_X24_Y20_N6
\disp_driver|vcount_r[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|vcount_r[1]~14_combout\ = (\disp_driver|vcount_r\(1) & (!\disp_driver|vcount_r[0]~13\)) # (!\disp_driver|vcount_r\(1) & ((\disp_driver|vcount_r[0]~13\) # (GND)))
-- \disp_driver|vcount_r[1]~15\ = CARRY((!\disp_driver|vcount_r[0]~13\) # (!\disp_driver|vcount_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|vcount_r\(1),
	datad => VCC,
	cin => \disp_driver|vcount_r[0]~13\,
	combout => \disp_driver|vcount_r[1]~14_combout\,
	cout => \disp_driver|vcount_r[1]~15\);

-- Location: FF_X24_Y20_N7
\disp_driver|vcount_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|vcount_r[1]~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan1~2_combout\,
	ena => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|vcount_r\(1));

-- Location: LCCOMB_X24_Y20_N8
\disp_driver|vcount_r[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|vcount_r[2]~16_combout\ = (\disp_driver|vcount_r\(2) & (\disp_driver|vcount_r[1]~15\ $ (GND))) # (!\disp_driver|vcount_r\(2) & (!\disp_driver|vcount_r[1]~15\ & VCC))
-- \disp_driver|vcount_r[2]~17\ = CARRY((\disp_driver|vcount_r\(2) & !\disp_driver|vcount_r[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|vcount_r\(2),
	datad => VCC,
	cin => \disp_driver|vcount_r[1]~15\,
	combout => \disp_driver|vcount_r[2]~16_combout\,
	cout => \disp_driver|vcount_r[2]~17\);

-- Location: FF_X24_Y20_N9
\disp_driver|vcount_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|vcount_r[2]~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan1~2_combout\,
	ena => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|vcount_r\(2));

-- Location: LCCOMB_X24_Y20_N10
\disp_driver|vcount_r[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|vcount_r[3]~18_combout\ = (\disp_driver|vcount_r\(3) & (!\disp_driver|vcount_r[2]~17\)) # (!\disp_driver|vcount_r\(3) & ((\disp_driver|vcount_r[2]~17\) # (GND)))
-- \disp_driver|vcount_r[3]~19\ = CARRY((!\disp_driver|vcount_r[2]~17\) # (!\disp_driver|vcount_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|vcount_r\(3),
	datad => VCC,
	cin => \disp_driver|vcount_r[2]~17\,
	combout => \disp_driver|vcount_r[3]~18_combout\,
	cout => \disp_driver|vcount_r[3]~19\);

-- Location: FF_X24_Y20_N11
\disp_driver|vcount_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|vcount_r[3]~18_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan1~2_combout\,
	ena => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|vcount_r\(3));

-- Location: LCCOMB_X24_Y20_N12
\disp_driver|vcount_r[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|vcount_r[4]~20_combout\ = (\disp_driver|vcount_r\(4) & (\disp_driver|vcount_r[3]~19\ $ (GND))) # (!\disp_driver|vcount_r\(4) & (!\disp_driver|vcount_r[3]~19\ & VCC))
-- \disp_driver|vcount_r[4]~21\ = CARRY((\disp_driver|vcount_r\(4) & !\disp_driver|vcount_r[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|vcount_r\(4),
	datad => VCC,
	cin => \disp_driver|vcount_r[3]~19\,
	combout => \disp_driver|vcount_r[4]~20_combout\,
	cout => \disp_driver|vcount_r[4]~21\);

-- Location: FF_X24_Y20_N13
\disp_driver|vcount_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|vcount_r[4]~20_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan1~2_combout\,
	ena => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|vcount_r\(4));

-- Location: LCCOMB_X24_Y20_N14
\disp_driver|vcount_r[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|vcount_r[5]~22_combout\ = (\disp_driver|vcount_r\(5) & (!\disp_driver|vcount_r[4]~21\)) # (!\disp_driver|vcount_r\(5) & ((\disp_driver|vcount_r[4]~21\) # (GND)))
-- \disp_driver|vcount_r[5]~23\ = CARRY((!\disp_driver|vcount_r[4]~21\) # (!\disp_driver|vcount_r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|vcount_r\(5),
	datad => VCC,
	cin => \disp_driver|vcount_r[4]~21\,
	combout => \disp_driver|vcount_r[5]~22_combout\,
	cout => \disp_driver|vcount_r[5]~23\);

-- Location: FF_X24_Y20_N15
\disp_driver|vcount_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|vcount_r[5]~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan1~2_combout\,
	ena => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|vcount_r\(5));

-- Location: LCCOMB_X24_Y20_N16
\disp_driver|vcount_r[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|vcount_r[6]~24_combout\ = (\disp_driver|vcount_r\(6) & (\disp_driver|vcount_r[5]~23\ $ (GND))) # (!\disp_driver|vcount_r\(6) & (!\disp_driver|vcount_r[5]~23\ & VCC))
-- \disp_driver|vcount_r[6]~25\ = CARRY((\disp_driver|vcount_r\(6) & !\disp_driver|vcount_r[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|vcount_r\(6),
	datad => VCC,
	cin => \disp_driver|vcount_r[5]~23\,
	combout => \disp_driver|vcount_r[6]~24_combout\,
	cout => \disp_driver|vcount_r[6]~25\);

-- Location: FF_X24_Y20_N17
\disp_driver|vcount_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|vcount_r[6]~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan1~2_combout\,
	ena => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|vcount_r\(6));

-- Location: LCCOMB_X24_Y20_N18
\disp_driver|vcount_r[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|vcount_r[7]~26_combout\ = (\disp_driver|vcount_r\(7) & (!\disp_driver|vcount_r[6]~25\)) # (!\disp_driver|vcount_r\(7) & ((\disp_driver|vcount_r[6]~25\) # (GND)))
-- \disp_driver|vcount_r[7]~27\ = CARRY((!\disp_driver|vcount_r[6]~25\) # (!\disp_driver|vcount_r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|vcount_r\(7),
	datad => VCC,
	cin => \disp_driver|vcount_r[6]~25\,
	combout => \disp_driver|vcount_r[7]~26_combout\,
	cout => \disp_driver|vcount_r[7]~27\);

-- Location: FF_X24_Y20_N19
\disp_driver|vcount_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|vcount_r[7]~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan1~2_combout\,
	ena => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|vcount_r\(7));

-- Location: LCCOMB_X24_Y20_N20
\disp_driver|vcount_r[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|vcount_r[8]~28_combout\ = (\disp_driver|vcount_r\(8) & (\disp_driver|vcount_r[7]~27\ $ (GND))) # (!\disp_driver|vcount_r\(8) & (!\disp_driver|vcount_r[7]~27\ & VCC))
-- \disp_driver|vcount_r[8]~29\ = CARRY((\disp_driver|vcount_r\(8) & !\disp_driver|vcount_r[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|vcount_r\(8),
	datad => VCC,
	cin => \disp_driver|vcount_r[7]~27\,
	combout => \disp_driver|vcount_r[8]~28_combout\,
	cout => \disp_driver|vcount_r[8]~29\);

-- Location: FF_X24_Y20_N21
\disp_driver|vcount_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|vcount_r[8]~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan1~2_combout\,
	ena => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|vcount_r\(8));

-- Location: LCCOMB_X24_Y20_N22
\disp_driver|vcount_r[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|vcount_r[9]~30_combout\ = (\disp_driver|vcount_r\(9) & (!\disp_driver|vcount_r[8]~29\)) # (!\disp_driver|vcount_r\(9) & ((\disp_driver|vcount_r[8]~29\) # (GND)))
-- \disp_driver|vcount_r[9]~31\ = CARRY((!\disp_driver|vcount_r[8]~29\) # (!\disp_driver|vcount_r\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|vcount_r\(9),
	datad => VCC,
	cin => \disp_driver|vcount_r[8]~29\,
	combout => \disp_driver|vcount_r[9]~30_combout\,
	cout => \disp_driver|vcount_r[9]~31\);

-- Location: FF_X24_Y20_N23
\disp_driver|vcount_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|vcount_r[9]~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan1~2_combout\,
	ena => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|vcount_r\(9));

-- Location: FF_X24_Y20_N25
\disp_driver|vcount_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|vcount_r[10]~32_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \disp_driver|LessThan1~2_combout\,
	ena => \disp_driver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|vcount_r\(10));

-- Location: LCCOMB_X25_Y20_N0
\disp_driver|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add1~0_combout\ = \disp_driver|vcount_r\(3) $ (VCC)
-- \disp_driver|Add1~1\ = CARRY(\disp_driver|vcount_r\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|vcount_r\(3),
	datad => VCC,
	combout => \disp_driver|Add1~0_combout\,
	cout => \disp_driver|Add1~1\);

-- Location: LCCOMB_X25_Y20_N2
\disp_driver|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add1~2_combout\ = (\disp_driver|vcount_r\(4) & (!\disp_driver|Add1~1\)) # (!\disp_driver|vcount_r\(4) & ((\disp_driver|Add1~1\) # (GND)))
-- \disp_driver|Add1~3\ = CARRY((!\disp_driver|Add1~1\) # (!\disp_driver|vcount_r\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|vcount_r\(4),
	datad => VCC,
	cin => \disp_driver|Add1~1\,
	combout => \disp_driver|Add1~2_combout\,
	cout => \disp_driver|Add1~3\);

-- Location: LCCOMB_X25_Y20_N4
\disp_driver|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add1~4_combout\ = (\disp_driver|vcount_r\(5) & ((GND) # (!\disp_driver|Add1~3\))) # (!\disp_driver|vcount_r\(5) & (\disp_driver|Add1~3\ $ (GND)))
-- \disp_driver|Add1~5\ = CARRY((\disp_driver|vcount_r\(5)) # (!\disp_driver|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|vcount_r\(5),
	datad => VCC,
	cin => \disp_driver|Add1~3\,
	combout => \disp_driver|Add1~4_combout\,
	cout => \disp_driver|Add1~5\);

-- Location: LCCOMB_X25_Y20_N6
\disp_driver|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add1~6_combout\ = (\disp_driver|vcount_r\(6) & (\disp_driver|Add1~5\ & VCC)) # (!\disp_driver|vcount_r\(6) & (!\disp_driver|Add1~5\))
-- \disp_driver|Add1~7\ = CARRY((!\disp_driver|vcount_r\(6) & !\disp_driver|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|vcount_r\(6),
	datad => VCC,
	cin => \disp_driver|Add1~5\,
	combout => \disp_driver|Add1~6_combout\,
	cout => \disp_driver|Add1~7\);

-- Location: LCCOMB_X25_Y20_N8
\disp_driver|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add1~8_combout\ = (\disp_driver|vcount_r\(7) & ((GND) # (!\disp_driver|Add1~7\))) # (!\disp_driver|vcount_r\(7) & (\disp_driver|Add1~7\ $ (GND)))
-- \disp_driver|Add1~9\ = CARRY((\disp_driver|vcount_r\(7)) # (!\disp_driver|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|vcount_r\(7),
	datad => VCC,
	cin => \disp_driver|Add1~7\,
	combout => \disp_driver|Add1~8_combout\,
	cout => \disp_driver|Add1~9\);

-- Location: LCCOMB_X25_Y20_N10
\disp_driver|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add1~10_combout\ = (\disp_driver|vcount_r\(8) & (\disp_driver|Add1~9\ & VCC)) # (!\disp_driver|vcount_r\(8) & (!\disp_driver|Add1~9\))
-- \disp_driver|Add1~11\ = CARRY((!\disp_driver|vcount_r\(8) & !\disp_driver|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|vcount_r\(8),
	datad => VCC,
	cin => \disp_driver|Add1~9\,
	combout => \disp_driver|Add1~10_combout\,
	cout => \disp_driver|Add1~11\);

-- Location: LCCOMB_X25_Y20_N12
\disp_driver|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add1~12_combout\ = (\disp_driver|vcount_r\(9) & ((GND) # (!\disp_driver|Add1~11\))) # (!\disp_driver|vcount_r\(9) & (\disp_driver|Add1~11\ $ (GND)))
-- \disp_driver|Add1~13\ = CARRY((\disp_driver|vcount_r\(9)) # (!\disp_driver|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|vcount_r\(9),
	datad => VCC,
	cin => \disp_driver|Add1~11\,
	combout => \disp_driver|Add1~12_combout\,
	cout => \disp_driver|Add1~13\);

-- Location: LCCOMB_X25_Y20_N14
\disp_driver|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add1~14_combout\ = (\disp_driver|vcount_r\(10) & (\disp_driver|Add1~13\ & VCC)) # (!\disp_driver|vcount_r\(10) & (!\disp_driver|Add1~13\))
-- \disp_driver|Add1~15\ = CARRY((!\disp_driver|vcount_r\(10) & !\disp_driver|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|vcount_r\(10),
	datad => VCC,
	cin => \disp_driver|Add1~13\,
	combout => \disp_driver|Add1~14_combout\,
	cout => \disp_driver|Add1~15\);

-- Location: LCCOMB_X25_Y20_N26
\disp_driver|Disp_DE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Disp_DE~0_combout\ = (\disp_driver|vcount_r\(8)) # ((\disp_driver|LessThan5~0_combout\ & ((\disp_driver|vcount_r\(4)) # (\disp_driver|vcount_r\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|vcount_r\(4),
	datab => \disp_driver|vcount_r\(8),
	datac => \disp_driver|LessThan5~0_combout\,
	datad => \disp_driver|vcount_r\(3),
	combout => \disp_driver|Disp_DE~0_combout\);

-- Location: LCCOMB_X24_Y21_N2
\disp_driver|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan2~2_combout\ = (!\disp_driver|hcount_r\(2) & (!\disp_driver|hcount_r\(5) & (!\disp_driver|hcount_r\(6) & !\disp_driver|hcount_r\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(2),
	datab => \disp_driver|hcount_r\(5),
	datac => \disp_driver|hcount_r\(6),
	datad => \disp_driver|hcount_r\(7),
	combout => \disp_driver|LessThan2~2_combout\);

-- Location: LCCOMB_X25_Y21_N28
\disp_driver|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan2~1_combout\ = (!\disp_driver|hcount_r\(3) & (!\disp_driver|hcount_r\(4) & ((!\disp_driver|hcount_r\(0)) # (!\disp_driver|hcount_r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(1),
	datab => \disp_driver|hcount_r\(3),
	datac => \disp_driver|hcount_r\(0),
	datad => \disp_driver|hcount_r\(4),
	combout => \disp_driver|LessThan2~1_combout\);

-- Location: LCCOMB_X28_Y21_N8
\disp_driver|Disp_DE~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Disp_DE~1_combout\ = (\disp_driver|hcount_r\(10) & ((\disp_driver|hcount_r\(8)) # ((!\disp_driver|LessThan2~1_combout\) # (!\disp_driver|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(8),
	datab => \disp_driver|LessThan2~2_combout\,
	datac => \disp_driver|LessThan2~1_combout\,
	datad => \disp_driver|hcount_r\(10),
	combout => \disp_driver|Disp_DE~1_combout\);

-- Location: LCCOMB_X26_Y20_N6
\disp_driver|Disp_DE~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Disp_DE~2_combout\ = (\disp_driver|vcount_r\(9) & (!\disp_driver|Disp_DE~0_combout\ & ((!\disp_driver|Disp_DE~1_combout\) # (!\disp_driver|hcount_r\(9))))) # (!\disp_driver|vcount_r\(9) & (((!\disp_driver|Disp_DE~1_combout\)) # 
-- (!\disp_driver|hcount_r\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|vcount_r\(9),
	datab => \disp_driver|hcount_r\(9),
	datac => \disp_driver|Disp_DE~0_combout\,
	datad => \disp_driver|Disp_DE~1_combout\,
	combout => \disp_driver|Disp_DE~2_combout\);

-- Location: LCCOMB_X25_Y20_N28
\disp_driver|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan4~0_combout\ = (!\disp_driver|vcount_r\(5) & (!\disp_driver|vcount_r\(8) & (!\disp_driver|vcount_r\(6) & !\disp_driver|vcount_r\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|vcount_r\(5),
	datab => \disp_driver|vcount_r\(8),
	datac => \disp_driver|vcount_r\(6),
	datad => \disp_driver|vcount_r\(7),
	combout => \disp_driver|LessThan4~0_combout\);

-- Location: LCCOMB_X25_Y20_N22
\disp_driver|Disp_DE~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Disp_DE~5_combout\ = ((\disp_driver|vcount_r\(9)) # ((\disp_driver|vcount_r\(3) & \disp_driver|vcount_r\(4)))) # (!\disp_driver|LessThan4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|vcount_r\(3),
	datab => \disp_driver|LessThan4~0_combout\,
	datac => \disp_driver|vcount_r\(9),
	datad => \disp_driver|vcount_r\(4),
	combout => \disp_driver|Disp_DE~5_combout\);

-- Location: LCCOMB_X28_Y21_N6
\disp_driver|Disp_DE~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Disp_DE~3_combout\ = (\disp_driver|hcount_r\(8) & ((!\disp_driver|LessThan2~2_combout\) # (!\disp_driver|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|LessThan2~1_combout\,
	datab => \disp_driver|LessThan2~2_combout\,
	datac => \disp_driver|hcount_r\(8),
	combout => \disp_driver|Disp_DE~3_combout\);

-- Location: LCCOMB_X26_Y21_N20
\disp_driver|Disp_DE~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Disp_DE~4_combout\ = (!\disp_driver|hcount_r\(11) & ((\disp_driver|hcount_r\(10)) # ((\disp_driver|Disp_DE~3_combout\) # (\disp_driver|hcount_r\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(11),
	datab => \disp_driver|hcount_r\(10),
	datac => \disp_driver|Disp_DE~3_combout\,
	datad => \disp_driver|hcount_r\(9),
	combout => \disp_driver|Disp_DE~4_combout\);

-- Location: LCCOMB_X25_Y20_N18
\disp_driver|Disp_DE~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Disp_DE~6_combout\ = (\disp_driver|LessThan1~0_combout\ & (\disp_driver|Disp_DE~2_combout\ & (\disp_driver|Disp_DE~5_combout\ & \disp_driver|Disp_DE~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|LessThan1~0_combout\,
	datab => \disp_driver|Disp_DE~2_combout\,
	datac => \disp_driver|Disp_DE~5_combout\,
	datad => \disp_driver|Disp_DE~4_combout\,
	combout => \disp_driver|Disp_DE~6_combout\);

-- Location: FF_X25_Y20_N19
\disp_driver|Disp_DE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|Disp_DE~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|Disp_DE~q\);

-- Location: LCCOMB_X26_Y20_N28
\u_color_bar|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|LessThan5~0_combout\ = (!\disp_driver|Add1~4_combout\ & (((!\disp_driver|Add1~2_combout\) # (!\disp_driver|vcount_r\(2))) # (!\disp_driver|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add1~0_combout\,
	datab => \disp_driver|vcount_r\(2),
	datac => \disp_driver|Add1~4_combout\,
	datad => \disp_driver|Add1~2_combout\,
	combout => \u_color_bar|LessThan5~0_combout\);

-- Location: LCCOMB_X26_Y20_N2
\u_color_bar|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|LessThan5~1_combout\ = (\disp_driver|Disp_DE~q\ & ((\disp_driver|Add1~6_combout\) # (!\u_color_bar|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|Disp_DE~q\,
	datac => \disp_driver|Add1~6_combout\,
	datad => \u_color_bar|LessThan5~0_combout\,
	combout => \u_color_bar|LessThan5~1_combout\);

-- Location: LCCOMB_X26_Y20_N0
\u_color_bar|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|LessThan5~2_combout\ = ((!\u_color_bar|LessThan5~1_combout\ & (!\disp_driver|Add1~10_combout\ & !\disp_driver|Add1~8_combout\))) # (!\disp_driver|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add1~12_combout\,
	datab => \u_color_bar|LessThan5~1_combout\,
	datac => \disp_driver|Add1~10_combout\,
	datad => \disp_driver|Add1~8_combout\,
	combout => \u_color_bar|LessThan5~2_combout\);

-- Location: LCCOMB_X26_Y20_N24
\u_color_bar|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|LessThan7~1_combout\ = (!\disp_driver|Add1~10_combout\ & (((!\disp_driver|Add1~8_combout\) # (!\disp_driver|Add1~6_combout\)) # (!\disp_driver|Disp_DE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add1~10_combout\,
	datab => \disp_driver|Disp_DE~q\,
	datac => \disp_driver|Add1~6_combout\,
	datad => \disp_driver|Add1~8_combout\,
	combout => \u_color_bar|LessThan7~1_combout\);

-- Location: LCCOMB_X26_Y20_N30
\u_color_bar|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|LessThan7~0_combout\ = (!\disp_driver|Add1~10_combout\ & (!\disp_driver|Add1~4_combout\ & !\disp_driver|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add1~10_combout\,
	datac => \disp_driver|Add1~4_combout\,
	datad => \disp_driver|Add1~2_combout\,
	combout => \u_color_bar|LessThan7~0_combout\);

-- Location: LCCOMB_X26_Y20_N22
\u_color_bar|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|LessThan7~2_combout\ = (!\disp_driver|Add1~14_combout\ & ((\u_color_bar|LessThan7~1_combout\) # ((\u_color_bar|LessThan7~0_combout\) # (!\disp_driver|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add1~14_combout\,
	datab => \u_color_bar|LessThan7~1_combout\,
	datac => \u_color_bar|LessThan7~0_combout\,
	datad => \disp_driver|Add1~12_combout\,
	combout => \u_color_bar|LessThan7~2_combout\);

-- Location: LCCOMB_X28_Y20_N12
\u_color_bar|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|Decoder0~10_combout\ = (\disp_driver|Disp_DE~q\ & (\u_color_bar|LessThan7~2_combout\ & ((\disp_driver|Add1~14_combout\) # (!\u_color_bar|LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add1~14_combout\,
	datab => \disp_driver|Disp_DE~q\,
	datac => \u_color_bar|LessThan5~2_combout\,
	datad => \u_color_bar|LessThan7~2_combout\,
	combout => \u_color_bar|Decoder0~10_combout\);

-- Location: LCCOMB_X26_Y20_N18
\u_color_bar|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|LessThan2~0_combout\ = (\disp_driver|Disp_DE~q\ & (\disp_driver|Add1~4_combout\ & ((\disp_driver|Add1~0_combout\) # (\disp_driver|vcount_r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add1~0_combout\,
	datab => \disp_driver|Disp_DE~q\,
	datac => \disp_driver|Add1~4_combout\,
	datad => \disp_driver|vcount_r\(2),
	combout => \u_color_bar|LessThan2~0_combout\);

-- Location: LCCOMB_X26_Y20_N4
\u_color_bar|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|LessThan2~1_combout\ = (\disp_driver|Add1~8_combout\ & ((\disp_driver|Add1~6_combout\) # ((\disp_driver|Add1~2_combout\ & \u_color_bar|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add1~2_combout\,
	datab => \u_color_bar|LessThan2~0_combout\,
	datac => \disp_driver|Add1~6_combout\,
	datad => \disp_driver|Add1~8_combout\,
	combout => \u_color_bar|LessThan2~1_combout\);

-- Location: LCCOMB_X26_Y20_N26
\u_color_bar|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|LessThan2~2_combout\ = (\disp_driver|Add1~12_combout\) # ((\u_color_bar|LessThan2~1_combout\) # ((\disp_driver|Add1~10_combout\) # (\disp_driver|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add1~12_combout\,
	datab => \u_color_bar|LessThan2~1_combout\,
	datac => \disp_driver|Add1~10_combout\,
	datad => \disp_driver|Add1~14_combout\,
	combout => \u_color_bar|LessThan2~2_combout\);

-- Location: LCCOMB_X28_Y20_N28
\u_color_bar|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|LessThan2~3_combout\ = (\disp_driver|Disp_DE~q\ & \u_color_bar|LessThan2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \disp_driver|Disp_DE~q\,
	datad => \u_color_bar|LessThan2~2_combout\,
	combout => \u_color_bar|LessThan2~3_combout\);

-- Location: LCCOMB_X26_Y20_N10
\u_color_bar|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|LessThan3~1_combout\ = (\disp_driver|Disp_DE~q\ & (\disp_driver|Add1~4_combout\ & ((\disp_driver|Add1~0_combout\) # (\disp_driver|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add1~0_combout\,
	datab => \disp_driver|Disp_DE~q\,
	datac => \disp_driver|Add1~4_combout\,
	datad => \disp_driver|Add1~2_combout\,
	combout => \u_color_bar|LessThan3~1_combout\);

-- Location: LCCOMB_X26_Y20_N16
\u_color_bar|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|LessThan3~0_combout\ = (\disp_driver|Add1~14_combout\) # ((\disp_driver|Add1~12_combout\) # ((\disp_driver|Add1~8_combout\ & \disp_driver|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add1~8_combout\,
	datab => \disp_driver|Add1~14_combout\,
	datac => \disp_driver|Add1~10_combout\,
	datad => \disp_driver|Add1~12_combout\,
	combout => \u_color_bar|LessThan3~0_combout\);

-- Location: LCCOMB_X26_Y20_N20
\u_color_bar|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|LessThan3~2_combout\ = (\u_color_bar|LessThan3~0_combout\) # ((\u_color_bar|LessThan3~1_combout\ & (\disp_driver|Add1~6_combout\ & \disp_driver|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_color_bar|LessThan3~1_combout\,
	datab => \u_color_bar|LessThan3~0_combout\,
	datac => \disp_driver|Add1~6_combout\,
	datad => \disp_driver|Add1~10_combout\,
	combout => \u_color_bar|LessThan3~2_combout\);

-- Location: LCCOMB_X28_Y20_N30
\u_color_bar|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|LessThan3~3_combout\ = (\u_color_bar|LessThan3~2_combout\ & \disp_driver|Disp_DE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_color_bar|LessThan3~2_combout\,
	datac => \disp_driver|Disp_DE~q\,
	combout => \u_color_bar|LessThan3~3_combout\);

-- Location: LCCOMB_X25_Y20_N16
\disp_driver|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add1~16_combout\ = \disp_driver|vcount_r\(11) $ (\disp_driver|Add1~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|vcount_r\(11),
	cin => \disp_driver|Add1~15\,
	combout => \disp_driver|Add1~16_combout\);

-- Location: LCCOMB_X25_Y21_N4
\disp_driver|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add0~1_cout\ = CARRY((\disp_driver|hcount_r\(1) & \disp_driver|hcount_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(1),
	datab => \disp_driver|hcount_r\(0),
	datad => VCC,
	cout => \disp_driver|Add0~1_cout\);

-- Location: LCCOMB_X25_Y21_N6
\disp_driver|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add0~3_cout\ = CARRY((!\disp_driver|hcount_r\(2) & !\disp_driver|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(2),
	datad => VCC,
	cin => \disp_driver|Add0~1_cout\,
	cout => \disp_driver|Add0~3_cout\);

-- Location: LCCOMB_X25_Y21_N8
\disp_driver|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add0~5_cout\ = CARRY((\disp_driver|hcount_r\(3)) # (!\disp_driver|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(3),
	datad => VCC,
	cin => \disp_driver|Add0~3_cout\,
	cout => \disp_driver|Add0~5_cout\);

-- Location: LCCOMB_X25_Y21_N10
\disp_driver|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add0~7_cout\ = CARRY((!\disp_driver|hcount_r\(4) & !\disp_driver|Add0~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(4),
	datad => VCC,
	cin => \disp_driver|Add0~5_cout\,
	cout => \disp_driver|Add0~7_cout\);

-- Location: LCCOMB_X25_Y21_N12
\disp_driver|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add0~9_cout\ = CARRY((\disp_driver|hcount_r\(5)) # (!\disp_driver|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(5),
	datad => VCC,
	cin => \disp_driver|Add0~7_cout\,
	cout => \disp_driver|Add0~9_cout\);

-- Location: LCCOMB_X25_Y21_N14
\disp_driver|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add0~11_cout\ = CARRY((!\disp_driver|hcount_r\(6) & !\disp_driver|Add0~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|hcount_r\(6),
	datad => VCC,
	cin => \disp_driver|Add0~9_cout\,
	cout => \disp_driver|Add0~11_cout\);

-- Location: LCCOMB_X25_Y21_N16
\disp_driver|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add0~12_combout\ = (\disp_driver|hcount_r\(7) & ((GND) # (!\disp_driver|Add0~11_cout\))) # (!\disp_driver|hcount_r\(7) & (\disp_driver|Add0~11_cout\ $ (GND)))
-- \disp_driver|Add0~13\ = CARRY((\disp_driver|hcount_r\(7)) # (!\disp_driver|Add0~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|hcount_r\(7),
	datad => VCC,
	cin => \disp_driver|Add0~11_cout\,
	combout => \disp_driver|Add0~12_combout\,
	cout => \disp_driver|Add0~13\);

-- Location: LCCOMB_X25_Y21_N18
\disp_driver|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add0~14_combout\ = (\disp_driver|hcount_r\(8) & (!\disp_driver|Add0~13\)) # (!\disp_driver|hcount_r\(8) & ((\disp_driver|Add0~13\) # (GND)))
-- \disp_driver|Add0~15\ = CARRY((!\disp_driver|Add0~13\) # (!\disp_driver|hcount_r\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|hcount_r\(8),
	datad => VCC,
	cin => \disp_driver|Add0~13\,
	combout => \disp_driver|Add0~14_combout\,
	cout => \disp_driver|Add0~15\);

-- Location: LCCOMB_X25_Y21_N20
\disp_driver|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add0~16_combout\ = (\disp_driver|hcount_r\(9) & ((GND) # (!\disp_driver|Add0~15\))) # (!\disp_driver|hcount_r\(9) & (\disp_driver|Add0~15\ $ (GND)))
-- \disp_driver|Add0~17\ = CARRY((\disp_driver|hcount_r\(9)) # (!\disp_driver|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp_driver|hcount_r\(9),
	datad => VCC,
	cin => \disp_driver|Add0~15\,
	combout => \disp_driver|Add0~16_combout\,
	cout => \disp_driver|Add0~17\);

-- Location: LCCOMB_X25_Y21_N22
\disp_driver|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add0~18_combout\ = (\disp_driver|hcount_r\(10) & (\disp_driver|Add0~17\ & VCC)) # (!\disp_driver|hcount_r\(10) & (!\disp_driver|Add0~17\))
-- \disp_driver|Add0~19\ = CARRY((!\disp_driver|hcount_r\(10) & !\disp_driver|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(10),
	datad => VCC,
	cin => \disp_driver|Add0~17\,
	combout => \disp_driver|Add0~18_combout\,
	cout => \disp_driver|Add0~19\);

-- Location: LCCOMB_X25_Y21_N24
\disp_driver|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|Add0~20_combout\ = \disp_driver|Add0~19\ $ (\disp_driver|hcount_r\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \disp_driver|hcount_r\(11),
	cin => \disp_driver|Add0~19\,
	combout => \disp_driver|Add0~20_combout\);

-- Location: LCCOMB_X25_Y21_N0
\u_color_bar|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|Decoder0~4_combout\ = (\disp_driver|Add0~16_combout\ & (!\disp_driver|Add0~18_combout\ & ((\disp_driver|Add0~14_combout\) # (\disp_driver|Add0~12_combout\)))) # (!\disp_driver|Add0~16_combout\ & (!\disp_driver|Add0~14_combout\ & 
-- (\disp_driver|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add0~14_combout\,
	datab => \disp_driver|Add0~16_combout\,
	datac => \disp_driver|Add0~18_combout\,
	datad => \disp_driver|Add0~12_combout\,
	combout => \u_color_bar|Decoder0~4_combout\);

-- Location: LCCOMB_X26_Y20_N8
\u_color_bar|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|Decoder0~16_combout\ = (!\disp_driver|Add1~16_combout\ & (\disp_driver|Disp_DE~q\ & (!\disp_driver|Add0~20_combout\ & \u_color_bar|Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add1~16_combout\,
	datab => \disp_driver|Disp_DE~q\,
	datac => \disp_driver|Add0~20_combout\,
	datad => \u_color_bar|Decoder0~4_combout\,
	combout => \u_color_bar|Decoder0~16_combout\);

-- Location: LCCOMB_X28_Y20_N10
\u_color_bar|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|WideOr2~1_combout\ = ((\u_color_bar|Decoder0~10_combout\ $ (\u_color_bar|LessThan3~3_combout\)) # (!\u_color_bar|Decoder0~16_combout\)) # (!\u_color_bar|LessThan2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_color_bar|Decoder0~10_combout\,
	datab => \u_color_bar|LessThan2~3_combout\,
	datac => \u_color_bar|LessThan3~3_combout\,
	datad => \u_color_bar|Decoder0~16_combout\,
	combout => \u_color_bar|WideOr2~1_combout\);

-- Location: LCCOMB_X28_Y20_N26
\u_color_bar|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|LessThan5~3_combout\ = ((!\disp_driver|Add1~14_combout\ & \u_color_bar|LessThan5~2_combout\)) # (!\disp_driver|Disp_DE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add1~14_combout\,
	datab => \u_color_bar|LessThan5~2_combout\,
	datac => \disp_driver|Disp_DE~q\,
	combout => \u_color_bar|LessThan5~3_combout\);

-- Location: LCCOMB_X28_Y20_N18
\u_color_bar|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|Decoder0~9_combout\ = (!\u_color_bar|LessThan5~3_combout\ & (!\u_color_bar|LessThan7~2_combout\ & (\disp_driver|Disp_DE~q\ & !\u_color_bar|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_color_bar|LessThan5~3_combout\,
	datab => \u_color_bar|LessThan7~2_combout\,
	datac => \disp_driver|Disp_DE~q\,
	datad => \u_color_bar|LessThan2~2_combout\,
	combout => \u_color_bar|Decoder0~9_combout\);

-- Location: LCCOMB_X28_Y20_N8
\u_color_bar|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|WideOr2~0_combout\ = (\u_color_bar|LessThan5~3_combout\ & (\u_color_bar|Decoder0~16_combout\ & (\u_color_bar|LessThan2~3_combout\ $ (!\u_color_bar|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_color_bar|LessThan5~3_combout\,
	datab => \u_color_bar|LessThan2~3_combout\,
	datac => \u_color_bar|LessThan3~3_combout\,
	datad => \u_color_bar|Decoder0~16_combout\,
	combout => \u_color_bar|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y20_N0
\u_color_bar|WideOr2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|WideOr2~2_combout\ = ((\u_color_bar|WideOr2~0_combout\) # ((\u_color_bar|Decoder0~9_combout\ & \u_color_bar|Decoder0~16_combout\))) # (!\u_color_bar|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_color_bar|WideOr2~1_combout\,
	datab => \u_color_bar|Decoder0~9_combout\,
	datac => \u_color_bar|WideOr2~0_combout\,
	datad => \u_color_bar|Decoder0~16_combout\,
	combout => \u_color_bar|WideOr2~2_combout\);

-- Location: FF_X28_Y20_N1
\disp_driver|Disp_Blue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_color_bar|WideOr2~2_combout\,
	sclr => \disp_driver|ALT_INV_Disp_DE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|Disp_Blue\(0));

-- Location: LCCOMB_X29_Y21_N14
\u_dvi_encoder|encb|n1d[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|n1d[3]~feeder_combout\ = \disp_driver|Disp_Blue\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp_driver|Disp_Blue\(0),
	combout => \u_dvi_encoder|encb|n1d[3]~feeder_combout\);

-- Location: FF_X29_Y21_N15
\u_dvi_encoder|encb|n1d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encb|n1d[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encb|n1d\(3));

-- Location: LCCOMB_X30_Y21_N4
\u_dvi_encoder|encb|q_m_reg[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|q_m_reg[8]~0_combout\ = !\u_dvi_encoder|encb|n1d\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dvi_encoder|encb|n1d\(3),
	combout => \u_dvi_encoder|encb|q_m_reg[8]~0_combout\);

-- Location: FF_X30_Y21_N5
\u_dvi_encoder|encb|q_m_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encb|q_m_reg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encb|q_m_reg\(8));

-- Location: LCCOMB_X31_Y20_N20
\u_dvi_encoder|encb|Add22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|Add22~0_combout\ = (\u_dvi_encoder|encb|cnt\(1) & ((\u_dvi_encoder|encb|q_m_reg\(8)) # (GND))) # (!\u_dvi_encoder|encb|cnt\(1) & (\u_dvi_encoder|encb|q_m_reg\(8) $ (VCC)))
-- \u_dvi_encoder|encb|Add22~1\ = CARRY((\u_dvi_encoder|encb|cnt\(1)) # (\u_dvi_encoder|encb|q_m_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|cnt\(1),
	datab => \u_dvi_encoder|encb|q_m_reg\(8),
	datad => VCC,
	combout => \u_dvi_encoder|encb|Add22~0_combout\,
	cout => \u_dvi_encoder|encb|Add22~1\);

-- Location: LCCOMB_X31_Y20_N6
\u_dvi_encoder|encb|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|cnt~7_combout\ = (\u_dvi_encoder|encb|cnt\(4) & ((\u_dvi_encoder|encb|q_m_reg\(8) & ((!\u_dvi_encoder|encb|cnt\(1)))) # (!\u_dvi_encoder|encb|q_m_reg\(8) & (\u_dvi_encoder|encb|Add22~0_combout\)))) # (!\u_dvi_encoder|encb|cnt\(4) & 
-- ((\u_dvi_encoder|encb|q_m_reg\(8) & (\u_dvi_encoder|encb|Add22~0_combout\)) # (!\u_dvi_encoder|encb|q_m_reg\(8) & ((\u_dvi_encoder|encb|cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|cnt\(4),
	datab => \u_dvi_encoder|encb|Add22~0_combout\,
	datac => \u_dvi_encoder|encb|cnt\(1),
	datad => \u_dvi_encoder|encb|q_m_reg\(8),
	combout => \u_dvi_encoder|encb|cnt~7_combout\);

-- Location: LCCOMB_X28_Y19_N24
\u_dvi_encoder|encr|de_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|de_reg[0]~feeder_combout\ = \disp_driver|Disp_DE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp_driver|Disp_DE~q\,
	combout => \u_dvi_encoder|encr|de_reg[0]~feeder_combout\);

-- Location: FF_X28_Y19_N25
\u_dvi_encoder|encr|de_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encr|de_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encr|de_reg\(0));

-- Location: LCCOMB_X29_Y19_N4
\u_dvi_encoder|encr|de_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|de_reg[1]~feeder_combout\ = \u_dvi_encoder|encr|de_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dvi_encoder|encr|de_reg\(0),
	combout => \u_dvi_encoder|encr|de_reg[1]~feeder_combout\);

-- Location: FF_X29_Y19_N5
\u_dvi_encoder|encr|de_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encr|de_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encr|de_reg\(1));

-- Location: LCCOMB_X30_Y20_N22
\u_dvi_encoder|encb|cnt[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|cnt[1]~5_combout\ = (!\u_dvi_encoder|encr|de_reg\(1)) # (!\u_dvi_encoder|encb|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|Equal1~0_combout\,
	datab => \u_dvi_encoder|encr|de_reg\(1),
	combout => \u_dvi_encoder|encb|cnt[1]~5_combout\);

-- Location: FF_X31_Y20_N7
\u_dvi_encoder|encb|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encb|cnt~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_dvi_encoder|encr|ALT_INV_de_reg\(1),
	ena => \u_dvi_encoder|encb|cnt[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encb|cnt\(1));

-- Location: LCCOMB_X31_Y20_N10
\u_dvi_encoder|encb|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|cnt~4_combout\ = (\u_dvi_encoder|encb|q_m_reg\(8) & (\u_dvi_encoder|encb|cnt\(4) & (\u_dvi_encoder|encb|cnt\(1) $ (\u_dvi_encoder|encb|cnt\(2))))) # (!\u_dvi_encoder|encb|q_m_reg\(8) & (((\u_dvi_encoder|encb|cnt\(2) & 
-- !\u_dvi_encoder|encb|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|cnt\(1),
	datab => \u_dvi_encoder|encb|q_m_reg\(8),
	datac => \u_dvi_encoder|encb|cnt\(2),
	datad => \u_dvi_encoder|encb|cnt\(4),
	combout => \u_dvi_encoder|encb|cnt~4_combout\);

-- Location: LCCOMB_X31_Y20_N22
\u_dvi_encoder|encb|Add22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|Add22~2_combout\ = (\u_dvi_encoder|encb|cnt\(2) & (\u_dvi_encoder|encb|Add22~1\ & VCC)) # (!\u_dvi_encoder|encb|cnt\(2) & (!\u_dvi_encoder|encb|Add22~1\))
-- \u_dvi_encoder|encb|Add22~3\ = CARRY((!\u_dvi_encoder|encb|cnt\(2) & !\u_dvi_encoder|encb|Add22~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encb|cnt\(2),
	datad => VCC,
	cin => \u_dvi_encoder|encb|Add22~1\,
	combout => \u_dvi_encoder|encb|Add22~2_combout\,
	cout => \u_dvi_encoder|encb|Add22~3\);

-- Location: LCCOMB_X31_Y20_N8
\u_dvi_encoder|encb|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|cnt~6_combout\ = (\u_dvi_encoder|encb|cnt~4_combout\) # ((\u_dvi_encoder|encb|Add22~2_combout\ & (\u_dvi_encoder|encb|q_m_reg\(8) $ (\u_dvi_encoder|encb|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|cnt~4_combout\,
	datab => \u_dvi_encoder|encb|q_m_reg\(8),
	datac => \u_dvi_encoder|encb|Add22~2_combout\,
	datad => \u_dvi_encoder|encb|cnt\(4),
	combout => \u_dvi_encoder|encb|cnt~6_combout\);

-- Location: FF_X31_Y20_N9
\u_dvi_encoder|encb|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encb|cnt~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_dvi_encoder|encr|ALT_INV_de_reg\(1),
	ena => \u_dvi_encoder|encb|cnt[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encb|cnt\(2));

-- Location: LCCOMB_X31_Y20_N12
\u_dvi_encoder|encb|Add19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|Add19~0_combout\ = (\u_dvi_encoder|encb|cnt\(1) & (\u_dvi_encoder|encb|cnt\(2) & \u_dvi_encoder|encb|q_m_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|cnt\(1),
	datac => \u_dvi_encoder|encb|cnt\(2),
	datad => \u_dvi_encoder|encb|q_m_reg\(8),
	combout => \u_dvi_encoder|encb|Add19~0_combout\);

-- Location: LCCOMB_X31_Y20_N2
\u_dvi_encoder|encb|Add21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|Add21~0_combout\ = \u_dvi_encoder|encb|Add19~0_combout\ $ (\u_dvi_encoder|encb|cnt\(3) $ (VCC))
-- \u_dvi_encoder|encb|Add21~1\ = CARRY(\u_dvi_encoder|encb|Add19~0_combout\ $ (\u_dvi_encoder|encb|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|Add19~0_combout\,
	datab => \u_dvi_encoder|encb|cnt\(3),
	datad => VCC,
	combout => \u_dvi_encoder|encb|Add21~0_combout\,
	cout => \u_dvi_encoder|encb|Add21~1\);

-- Location: LCCOMB_X31_Y20_N24
\u_dvi_encoder|encb|Add22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|Add22~4_combout\ = (\u_dvi_encoder|encb|cnt\(3) & ((GND) # (!\u_dvi_encoder|encb|Add22~3\))) # (!\u_dvi_encoder|encb|cnt\(3) & (\u_dvi_encoder|encb|Add22~3\ $ (GND)))
-- \u_dvi_encoder|encb|Add22~5\ = CARRY((\u_dvi_encoder|encb|cnt\(3)) # (!\u_dvi_encoder|encb|Add22~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encb|cnt\(3),
	datad => VCC,
	cin => \u_dvi_encoder|encb|Add22~3\,
	combout => \u_dvi_encoder|encb|Add22~4_combout\,
	cout => \u_dvi_encoder|encb|Add22~5\);

-- Location: LCCOMB_X31_Y20_N16
\u_dvi_encoder|encb|Add24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|Add24~0_combout\ = \u_dvi_encoder|encb|Add22~4_combout\ $ (VCC)
-- \u_dvi_encoder|encb|Add24~1\ = CARRY(\u_dvi_encoder|encb|Add22~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encb|Add22~4_combout\,
	datad => VCC,
	combout => \u_dvi_encoder|encb|Add24~0_combout\,
	cout => \u_dvi_encoder|encb|Add24~1\);

-- Location: LCCOMB_X31_Y20_N14
\u_dvi_encoder|encb|Add24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|Add24~6_combout\ = (\u_dvi_encoder|encb|Equal1~0_combout\) # ((\u_dvi_encoder|encb|decision3~0_combout\ & ((\u_dvi_encoder|encb|Add24~0_combout\))) # (!\u_dvi_encoder|encb|decision3~0_combout\ & (\u_dvi_encoder|encb|Add21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|Equal1~0_combout\,
	datab => \u_dvi_encoder|encb|Add21~0_combout\,
	datac => \u_dvi_encoder|encb|decision3~0_combout\,
	datad => \u_dvi_encoder|encb|Add24~0_combout\,
	combout => \u_dvi_encoder|encb|Add24~6_combout\);

-- Location: FF_X31_Y20_N15
\u_dvi_encoder|encb|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encb|Add24~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_dvi_encoder|encr|ALT_INV_de_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encb|cnt\(3));

-- Location: LCCOMB_X31_Y20_N30
\u_dvi_encoder|encb|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|Equal1~0_combout\ = (!\u_dvi_encoder|encb|cnt\(1) & (!\u_dvi_encoder|encb|cnt\(2) & (!\u_dvi_encoder|encb|cnt\(3) & !\u_dvi_encoder|encb|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|cnt\(1),
	datab => \u_dvi_encoder|encb|cnt\(2),
	datac => \u_dvi_encoder|encb|cnt\(3),
	datad => \u_dvi_encoder|encb|cnt\(4),
	combout => \u_dvi_encoder|encb|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y21_N28
\u_dvi_encoder|encb|Add19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|Add19~1_combout\ = \u_dvi_encoder|encb|cnt\(4) $ (((\u_dvi_encoder|encb|cnt\(3) & \u_dvi_encoder|encb|Add19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encb|cnt\(4),
	datac => \u_dvi_encoder|encb|cnt\(3),
	datad => \u_dvi_encoder|encb|Add19~0_combout\,
	combout => \u_dvi_encoder|encb|Add19~1_combout\);

-- Location: LCCOMB_X31_Y20_N4
\u_dvi_encoder|encb|Add21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|Add21~2_combout\ = \u_dvi_encoder|encb|q_m_reg\(8) $ (\u_dvi_encoder|encb|Add21~1\ $ (!\u_dvi_encoder|encb|Add19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encb|q_m_reg\(8),
	datad => \u_dvi_encoder|encb|Add19~1_combout\,
	cin => \u_dvi_encoder|encb|Add21~1\,
	combout => \u_dvi_encoder|encb|Add21~2_combout\);

-- Location: LCCOMB_X31_Y20_N26
\u_dvi_encoder|encb|Add22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|Add22~6_combout\ = \u_dvi_encoder|encb|Add22~5\ $ (!\u_dvi_encoder|encb|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_dvi_encoder|encb|cnt\(4),
	cin => \u_dvi_encoder|encb|Add22~5\,
	combout => \u_dvi_encoder|encb|Add22~6_combout\);

-- Location: LCCOMB_X31_Y20_N18
\u_dvi_encoder|encb|Add24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|Add24~2_combout\ = \u_dvi_encoder|encb|Add22~6_combout\ $ (\u_dvi_encoder|encb|Add24~1\ $ (\u_dvi_encoder|encb|q_m_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|Add22~6_combout\,
	datad => \u_dvi_encoder|encb|q_m_reg\(8),
	cin => \u_dvi_encoder|encb|Add24~1\,
	combout => \u_dvi_encoder|encb|Add24~2_combout\);

-- Location: LCCOMB_X31_Y20_N28
\u_dvi_encoder|encb|Add24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|Add24~4_combout\ = (!\u_dvi_encoder|encb|Equal1~0_combout\ & ((\u_dvi_encoder|encb|decision3~0_combout\ & ((\u_dvi_encoder|encb|Add24~2_combout\))) # (!\u_dvi_encoder|encb|decision3~0_combout\ & 
-- (\u_dvi_encoder|encb|Add21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|decision3~0_combout\,
	datab => \u_dvi_encoder|encb|Add21~2_combout\,
	datac => \u_dvi_encoder|encb|Equal1~0_combout\,
	datad => \u_dvi_encoder|encb|Add24~2_combout\,
	combout => \u_dvi_encoder|encb|Add24~4_combout\);

-- Location: LCCOMB_X31_Y20_N0
\u_dvi_encoder|encb|Add24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|Add24~5_combout\ = (\u_dvi_encoder|encb|Add24~4_combout\) # ((\u_dvi_encoder|encb|Equal1~0_combout\ & (\u_dvi_encoder|encb|cnt\(3) $ (!\u_dvi_encoder|encb|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|Equal1~0_combout\,
	datab => \u_dvi_encoder|encb|cnt\(3),
	datac => \u_dvi_encoder|encb|cnt\(4),
	datad => \u_dvi_encoder|encb|Add24~4_combout\,
	combout => \u_dvi_encoder|encb|Add24~5_combout\);

-- Location: FF_X31_Y20_N1
\u_dvi_encoder|encb|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encb|Add24~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_dvi_encoder|encr|ALT_INV_de_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encb|cnt\(4));

-- Location: LCCOMB_X30_Y21_N10
\u_dvi_encoder|encb|decision3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|decision3~0_combout\ = \u_dvi_encoder|encb|q_m_reg\(8) $ (\u_dvi_encoder|encb|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dvi_encoder|encb|q_m_reg\(8),
	datad => \u_dvi_encoder|encb|cnt\(4),
	combout => \u_dvi_encoder|encb|decision3~0_combout\);

-- Location: LCCOMB_X24_Y21_N4
\disp_driver|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan6~0_combout\ = (\disp_driver|hcount_r\(11)) # ((\disp_driver|hcount_r\(5) & ((\disp_driver|hcount_r\(3)) # (\disp_driver|hcount_r\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(3),
	datab => \disp_driver|hcount_r\(11),
	datac => \disp_driver|hcount_r\(4),
	datad => \disp_driver|hcount_r\(5),
	combout => \disp_driver|LessThan6~0_combout\);

-- Location: LCCOMB_X28_Y21_N18
\disp_driver|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan2~0_combout\ = (!\disp_driver|hcount_r\(10) & (!\disp_driver|hcount_r\(8) & !\disp_driver|hcount_r\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(10),
	datac => \disp_driver|hcount_r\(8),
	datad => \disp_driver|hcount_r\(9),
	combout => \disp_driver|LessThan2~0_combout\);

-- Location: LCCOMB_X28_Y21_N24
\disp_driver|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan6~1_combout\ = (\disp_driver|hcount_r\(6)) # ((\disp_driver|hcount_r\(7)) # ((\disp_driver|LessThan6~0_combout\) # (!\disp_driver|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|hcount_r\(6),
	datab => \disp_driver|hcount_r\(7),
	datac => \disp_driver|LessThan6~0_combout\,
	datad => \disp_driver|LessThan2~0_combout\,
	combout => \disp_driver|LessThan6~1_combout\);

-- Location: FF_X28_Y21_N25
\disp_driver|Disp_HS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|Disp_HS~q\);

-- Location: LCCOMB_X29_Y21_N12
\u_dvi_encoder|encb|c0_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|c0_reg[0]~feeder_combout\ = \disp_driver|Disp_HS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp_driver|Disp_HS~q\,
	combout => \u_dvi_encoder|encb|c0_reg[0]~feeder_combout\);

-- Location: FF_X29_Y21_N13
\u_dvi_encoder|encb|c0_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encb|c0_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encb|c0_reg\(0));

-- Location: LCCOMB_X30_Y21_N24
\u_dvi_encoder|encb|c0_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|c0_reg[1]~feeder_combout\ = \u_dvi_encoder|encb|c0_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dvi_encoder|encb|c0_reg\(0),
	combout => \u_dvi_encoder|encb|c0_reg[1]~feeder_combout\);

-- Location: FF_X30_Y21_N25
\u_dvi_encoder|encb|c0_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encb|c0_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encb|c0_reg\(1));

-- Location: LCCOMB_X25_Y20_N30
\disp_driver|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan4~1_combout\ = (!\disp_driver|vcount_r\(3) & (!\disp_driver|vcount_r\(9) & \disp_driver|LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|vcount_r\(3),
	datab => \disp_driver|vcount_r\(9),
	datad => \disp_driver|LessThan4~0_combout\,
	combout => \disp_driver|LessThan4~1_combout\);

-- Location: LCCOMB_X25_Y20_N20
\disp_driver|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_driver|LessThan7~1_combout\ = ((\disp_driver|LessThan7~0_combout\) # ((\disp_driver|vcount_r\(4)) # (!\disp_driver|LessThan1~0_combout\))) # (!\disp_driver|LessThan4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|LessThan4~1_combout\,
	datab => \disp_driver|LessThan7~0_combout\,
	datac => \disp_driver|LessThan1~0_combout\,
	datad => \disp_driver|vcount_r\(4),
	combout => \disp_driver|LessThan7~1_combout\);

-- Location: FF_X25_Y20_N21
\disp_driver|Disp_VS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \disp_driver|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|Disp_VS~q\);

-- Location: FF_X29_Y21_N11
\u_dvi_encoder|encb|c1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \disp_driver|Disp_VS~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encb|c1_reg\(0));

-- Location: LCCOMB_X30_Y21_N20
\u_dvi_encoder|encb|c1_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|c1_reg[1]~feeder_combout\ = \u_dvi_encoder|encb|c1_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dvi_encoder|encb|c1_reg\(0),
	combout => \u_dvi_encoder|encb|c1_reg[1]~feeder_combout\);

-- Location: FF_X30_Y21_N21
\u_dvi_encoder|encb|c1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encb|c1_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encb|c1_reg\(1));

-- Location: LCCOMB_X30_Y21_N18
\u_dvi_encoder|encb|dout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|dout~2_combout\ = (\u_dvi_encoder|encr|de_reg\(1) & (!\u_dvi_encoder|encb|decision3~0_combout\)) # (!\u_dvi_encoder|encr|de_reg\(1) & ((\u_dvi_encoder|encb|c0_reg\(1) $ (!\u_dvi_encoder|encb|c1_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|decision3~0_combout\,
	datab => \u_dvi_encoder|encb|c0_reg\(1),
	datac => \u_dvi_encoder|encr|de_reg\(1),
	datad => \u_dvi_encoder|encb|c1_reg\(1),
	combout => \u_dvi_encoder|encb|dout~2_combout\);

-- Location: FF_X30_Y21_N19
\u_dvi_encoder|encb|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encb|dout~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encb|dout\(9));

-- Location: LCCOMB_X29_Y20_N22
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~4_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2) & (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0) & (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1) & \u_dvi_encoder|encb|dout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	datad => \u_dvi_encoder|encb|dout\(9),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~4_combout\);

-- Location: FF_X29_Y20_N23
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\(4));

-- Location: LCCOMB_X30_Y21_N6
\u_dvi_encoder|encb|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|dout~0_combout\ = (\u_dvi_encoder|encr|de_reg\(1) & ((\u_dvi_encoder|encb|cnt\(4)))) # (!\u_dvi_encoder|encr|de_reg\(1) & (\u_dvi_encoder|encb|c0_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encb|c0_reg\(1),
	datac => \u_dvi_encoder|encr|de_reg\(1),
	datad => \u_dvi_encoder|encb|cnt\(4),
	combout => \u_dvi_encoder|encb|dout~0_combout\);

-- Location: FF_X30_Y21_N7
\u_dvi_encoder|encb|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encb|dout~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encb|dout\(7));

-- Location: LCCOMB_X29_Y20_N30
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~3_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & ((\u_dvi_encoder|encb|dout\(7)))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\(4),
	datab => \u_dvi_encoder|encb|dout\(7),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~3_combout\);

-- Location: FF_X29_Y20_N31
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\(3));

-- Location: LCCOMB_X29_Y20_N10
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~2_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & ((\u_dvi_encoder|encb|dout\(7)))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\(3),
	datab => \u_dvi_encoder|encb|dout\(7),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~2_combout\);

-- Location: FF_X29_Y20_N11
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\(2));

-- Location: LCCOMB_X29_Y20_N6
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~1_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & ((\u_dvi_encoder|encb|dout\(7)))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\(2),
	datab => \u_dvi_encoder|encb|dout\(7),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~1_combout\);

-- Location: FF_X29_Y20_N7
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\(1));

-- Location: LCCOMB_X29_Y20_N18
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~0_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & ((\u_dvi_encoder|encb|dout\(7)))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\(1),
	datab => \u_dvi_encoder|encb|dout\(7),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~0_combout\);

-- Location: FF_X29_Y20_N19
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\(0));

-- Location: LCCOMB_X30_Y21_N30
\u_dvi_encoder|encb|dout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|dout~1_combout\ = (\u_dvi_encoder|encr|de_reg\(1) & ((\u_dvi_encoder|encb|cnt\(4)))) # (!\u_dvi_encoder|encr|de_reg\(1) & (!\u_dvi_encoder|encb|c0_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encb|c0_reg\(1),
	datac => \u_dvi_encoder|encr|de_reg\(1),
	datad => \u_dvi_encoder|encb|cnt\(4),
	combout => \u_dvi_encoder|encb|dout~1_combout\);

-- Location: FF_X30_Y21_N31
\u_dvi_encoder|encb|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encb|dout~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encb|dout\(6));

-- Location: LCCOMB_X30_Y21_N16
\u_dvi_encoder|encb|dout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encb|dout~3_combout\ = (\u_dvi_encoder|encr|de_reg\(1) & (\u_dvi_encoder|encb|q_m_reg\(8))) # (!\u_dvi_encoder|encr|de_reg\(1) & ((!\u_dvi_encoder|encb|c0_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encr|de_reg\(1),
	datac => \u_dvi_encoder|encb|q_m_reg\(8),
	datad => \u_dvi_encoder|encb|c0_reg\(1),
	combout => \u_dvi_encoder|encb|dout~3_combout\);

-- Location: FF_X30_Y21_N17
\u_dvi_encoder|encb|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encb|dout~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encb|dout\(8));

-- Location: LCCOMB_X30_Y20_N24
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~4_combout\ = (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0) & (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2) & (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1) & \u_dvi_encoder|encb|dout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	datad => \u_dvi_encoder|encb|dout\(8),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~4_combout\);

-- Location: FF_X30_Y20_N25
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\(4));

-- Location: LCCOMB_X30_Y20_N2
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~3_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & (\u_dvi_encoder|encb|dout\(6))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|dout\(6),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\(4),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~3_combout\);

-- Location: FF_X30_Y20_N3
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\(3));

-- Location: LCCOMB_X30_Y20_N0
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~2_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & (\u_dvi_encoder|encb|dout\(6))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|dout\(6),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\(3),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~2_combout\);

-- Location: FF_X30_Y20_N1
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\(2));

-- Location: LCCOMB_X30_Y20_N30
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~1_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & (\u_dvi_encoder|encb|dout\(6))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encb|dout\(6),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\(2),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~1_combout\);

-- Location: FF_X30_Y20_N31
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\(1));

-- Location: LCCOMB_X29_Y20_N0
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~0_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & (\u_dvi_encoder|encb|dout\(7))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encb|dout\(7),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\(1),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~0_combout\);

-- Location: FF_X29_Y20_N1
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\(0));

-- Location: DDIOOUTCELL_X34_Y20_N4
\u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_0|auto_generated|ddio_outa[0]\ : cycloneive_ddio_out
-- pragma translate_off
GENERIC MAP (
	async_mode => "none",
	power_up => "low",
	sync_mode => "none",
	use_new_clocking_model => "true")
-- pragma translate_on
PORT MAP (
	datainlo => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0l\(0),
	datainhi => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_0h\(0),
	clkhi => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clklo => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	muxsel => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_0|auto_generated|dataout\(0));

-- Location: LCCOMB_X25_Y21_N30
\u_color_bar|Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|Decoder0~17_combout\ = (!\disp_driver|Add0~18_combout\ & (((!\disp_driver|Add0~14_combout\ & !\disp_driver|Add0~12_combout\)) # (!\disp_driver|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add0~14_combout\,
	datab => \disp_driver|Add0~16_combout\,
	datac => \disp_driver|Add0~18_combout\,
	datad => \disp_driver|Add0~12_combout\,
	combout => \u_color_bar|Decoder0~17_combout\);

-- Location: LCCOMB_X26_Y20_N14
\u_color_bar|Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|Decoder0~18_combout\ = ((!\disp_driver|Add1~16_combout\ & (!\disp_driver|Add0~20_combout\ & \u_color_bar|Decoder0~17_combout\))) # (!\disp_driver|Disp_DE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp_driver|Add1~16_combout\,
	datab => \disp_driver|Disp_DE~q\,
	datac => \disp_driver|Add0~20_combout\,
	datad => \u_color_bar|Decoder0~17_combout\,
	combout => \u_color_bar|Decoder0~18_combout\);

-- Location: LCCOMB_X28_Y20_N24
\u_color_bar|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|Decoder0~11_combout\ = (\u_color_bar|Decoder0~18_combout\ & (\disp_driver|Disp_DE~q\ & (\u_color_bar|LessThan5~2_combout\ & \u_color_bar|LessThan7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_color_bar|Decoder0~18_combout\,
	datab => \disp_driver|Disp_DE~q\,
	datac => \u_color_bar|LessThan5~2_combout\,
	datad => \u_color_bar|LessThan7~2_combout\,
	combout => \u_color_bar|Decoder0~11_combout\);

-- Location: LCCOMB_X28_Y20_N22
\u_color_bar|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|Decoder0~12_combout\ = (\u_color_bar|LessThan3~2_combout\ & (\u_color_bar|LessThan2~2_combout\ & (\disp_driver|Disp_DE~q\ & \u_color_bar|Decoder0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_color_bar|LessThan3~2_combout\,
	datab => \u_color_bar|LessThan2~2_combout\,
	datac => \disp_driver|Disp_DE~q\,
	datad => \u_color_bar|Decoder0~11_combout\,
	combout => \u_color_bar|Decoder0~12_combout\);

-- Location: LCCOMB_X28_Y20_N4
\u_color_bar|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|Decoder0~13_combout\ = (\u_color_bar|Decoder0~16_combout\ & (((\u_color_bar|LessThan5~2_combout\ & !\disp_driver|Add1~14_combout\)) # (!\disp_driver|Disp_DE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_color_bar|Decoder0~16_combout\,
	datab => \u_color_bar|LessThan5~2_combout\,
	datac => \disp_driver|Disp_DE~q\,
	datad => \disp_driver|Add1~14_combout\,
	combout => \u_color_bar|Decoder0~13_combout\);

-- Location: LCCOMB_X28_Y20_N14
\u_color_bar|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|WideOr1~0_combout\ = (\u_color_bar|Decoder0~12_combout\) # ((\u_color_bar|Decoder0~13_combout\ & (\u_color_bar|LessThan3~3_combout\ & \u_color_bar|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_color_bar|Decoder0~12_combout\,
	datab => \u_color_bar|Decoder0~13_combout\,
	datac => \u_color_bar|LessThan3~3_combout\,
	datad => \u_color_bar|LessThan2~3_combout\,
	combout => \u_color_bar|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y20_N16
\u_color_bar|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|Decoder0~14_combout\ = (\u_color_bar|LessThan3~2_combout\ & (\u_color_bar|LessThan2~2_combout\ & (\disp_driver|Disp_DE~q\ & \u_color_bar|Decoder0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_color_bar|LessThan3~2_combout\,
	datab => \u_color_bar|LessThan2~2_combout\,
	datac => \disp_driver|Disp_DE~q\,
	datad => \u_color_bar|Decoder0~10_combout\,
	combout => \u_color_bar|Decoder0~14_combout\);

-- Location: LCCOMB_X28_Y20_N6
\u_color_bar|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|WideOr1~1_combout\ = (\u_color_bar|WideOr1~0_combout\) # ((\u_color_bar|Decoder0~14_combout\ & ((\u_color_bar|Decoder0~16_combout\) # (\u_color_bar|Decoder0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_color_bar|Decoder0~16_combout\,
	datab => \u_color_bar|WideOr1~0_combout\,
	datac => \u_color_bar|Decoder0~18_combout\,
	datad => \u_color_bar|Decoder0~14_combout\,
	combout => \u_color_bar|WideOr1~1_combout\);

-- Location: FF_X28_Y20_N7
\disp_driver|Disp_Green[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_color_bar|WideOr1~1_combout\,
	sclr => \disp_driver|ALT_INV_Disp_DE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|Disp_Green\(0));

-- Location: LCCOMB_X28_Y18_N18
\u_dvi_encoder|encg|n1d[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|n1d[3]~feeder_combout\ = \disp_driver|Disp_Green\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp_driver|Disp_Green\(0),
	combout => \u_dvi_encoder|encg|n1d[3]~feeder_combout\);

-- Location: FF_X28_Y18_N19
\u_dvi_encoder|encg|n1d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encg|n1d[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encg|n1d\(3));

-- Location: LCCOMB_X28_Y18_N24
\u_dvi_encoder|encg|q_m_reg[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|q_m_reg[8]~0_combout\ = !\u_dvi_encoder|encg|n1d\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encg|n1d\(3),
	combout => \u_dvi_encoder|encg|q_m_reg[8]~0_combout\);

-- Location: FF_X28_Y18_N25
\u_dvi_encoder|encg|q_m_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encg|q_m_reg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encg|q_m_reg\(8));

-- Location: LCCOMB_X32_Y20_N12
\u_dvi_encoder|encg|Add22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|Add22~0_combout\ = (\u_dvi_encoder|encg|cnt\(1) & ((\u_dvi_encoder|encg|q_m_reg\(8)) # (GND))) # (!\u_dvi_encoder|encg|cnt\(1) & (\u_dvi_encoder|encg|q_m_reg\(8) $ (VCC)))
-- \u_dvi_encoder|encg|Add22~1\ = CARRY((\u_dvi_encoder|encg|cnt\(1)) # (\u_dvi_encoder|encg|q_m_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encg|cnt\(1),
	datab => \u_dvi_encoder|encg|q_m_reg\(8),
	datad => VCC,
	combout => \u_dvi_encoder|encg|Add22~0_combout\,
	cout => \u_dvi_encoder|encg|Add22~1\);

-- Location: LCCOMB_X32_Y20_N8
\u_dvi_encoder|encg|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|cnt~6_combout\ = (\u_dvi_encoder|encg|q_m_reg\(8) & ((\u_dvi_encoder|encg|cnt\(4) & ((!\u_dvi_encoder|encg|cnt\(1)))) # (!\u_dvi_encoder|encg|cnt\(4) & (\u_dvi_encoder|encg|Add22~0_combout\)))) # (!\u_dvi_encoder|encg|q_m_reg\(8) & 
-- ((\u_dvi_encoder|encg|cnt\(4) & (\u_dvi_encoder|encg|Add22~0_combout\)) # (!\u_dvi_encoder|encg|cnt\(4) & ((\u_dvi_encoder|encg|cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encg|Add22~0_combout\,
	datab => \u_dvi_encoder|encg|q_m_reg\(8),
	datac => \u_dvi_encoder|encg|cnt\(1),
	datad => \u_dvi_encoder|encg|cnt\(4),
	combout => \u_dvi_encoder|encg|cnt~6_combout\);

-- Location: LCCOMB_X32_Y20_N10
\u_dvi_encoder|encg|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|Equal1~0_combout\ = (!\u_dvi_encoder|encg|cnt\(2) & (!\u_dvi_encoder|encg|cnt\(1) & (!\u_dvi_encoder|encg|cnt\(3) & !\u_dvi_encoder|encg|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encg|cnt\(2),
	datab => \u_dvi_encoder|encg|cnt\(1),
	datac => \u_dvi_encoder|encg|cnt\(3),
	datad => \u_dvi_encoder|encg|cnt\(4),
	combout => \u_dvi_encoder|encg|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y20_N20
\u_dvi_encoder|encg|cnt[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|cnt[2]~4_combout\ = (!\u_dvi_encoder|encg|Equal1~0_combout\) # (!\u_dvi_encoder|encr|de_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dvi_encoder|encr|de_reg\(1),
	datad => \u_dvi_encoder|encg|Equal1~0_combout\,
	combout => \u_dvi_encoder|encg|cnt[2]~4_combout\);

-- Location: FF_X32_Y20_N9
\u_dvi_encoder|encg|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encg|cnt~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_dvi_encoder|encr|ALT_INV_de_reg\(1),
	ena => \u_dvi_encoder|encg|cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encg|cnt\(1));

-- Location: LCCOMB_X32_Y20_N30
\u_dvi_encoder|encg|Add19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|Add19~2_combout\ = \u_dvi_encoder|encg|cnt\(2) $ (((\u_dvi_encoder|encg|q_m_reg\(8) & \u_dvi_encoder|encg|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encg|cnt\(2),
	datab => \u_dvi_encoder|encg|q_m_reg\(8),
	datac => \u_dvi_encoder|encg|cnt\(1),
	combout => \u_dvi_encoder|encg|Add19~2_combout\);

-- Location: LCCOMB_X32_Y20_N14
\u_dvi_encoder|encg|Add22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|Add22~2_combout\ = (\u_dvi_encoder|encg|cnt\(2) & (\u_dvi_encoder|encg|Add22~1\ & VCC)) # (!\u_dvi_encoder|encg|cnt\(2) & (!\u_dvi_encoder|encg|Add22~1\))
-- \u_dvi_encoder|encg|Add22~3\ = CARRY((!\u_dvi_encoder|encg|cnt\(2) & !\u_dvi_encoder|encg|Add22~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encg|cnt\(2),
	datad => VCC,
	cin => \u_dvi_encoder|encg|Add22~1\,
	combout => \u_dvi_encoder|encg|Add22~2_combout\,
	cout => \u_dvi_encoder|encg|Add22~3\);

-- Location: LCCOMB_X32_Y20_N26
\u_dvi_encoder|encg|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|cnt~5_combout\ = (\u_dvi_encoder|encg|Add19~2_combout\ & ((\u_dvi_encoder|encg|Add22~2_combout\) # (\u_dvi_encoder|encg|q_m_reg\(8) $ (!\u_dvi_encoder|encg|cnt\(4))))) # (!\u_dvi_encoder|encg|Add19~2_combout\ & 
-- (\u_dvi_encoder|encg|Add22~2_combout\ & (\u_dvi_encoder|encg|q_m_reg\(8) $ (\u_dvi_encoder|encg|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encg|Add19~2_combout\,
	datab => \u_dvi_encoder|encg|q_m_reg\(8),
	datac => \u_dvi_encoder|encg|Add22~2_combout\,
	datad => \u_dvi_encoder|encg|cnt\(4),
	combout => \u_dvi_encoder|encg|cnt~5_combout\);

-- Location: FF_X32_Y20_N27
\u_dvi_encoder|encg|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encg|cnt~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_dvi_encoder|encr|ALT_INV_de_reg\(1),
	ena => \u_dvi_encoder|encg|cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encg|cnt\(2));

-- Location: LCCOMB_X32_Y20_N22
\u_dvi_encoder|encg|Add19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|Add19~0_combout\ = (\u_dvi_encoder|encg|cnt\(2) & (\u_dvi_encoder|encg|q_m_reg\(8) & \u_dvi_encoder|encg|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encg|cnt\(2),
	datab => \u_dvi_encoder|encg|q_m_reg\(8),
	datac => \u_dvi_encoder|encg|cnt\(1),
	combout => \u_dvi_encoder|encg|Add19~0_combout\);

-- Location: LCCOMB_X32_Y20_N4
\u_dvi_encoder|encg|Add21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|Add21~0_combout\ = \u_dvi_encoder|encg|Add19~0_combout\ $ (\u_dvi_encoder|encg|cnt\(3) $ (VCC))
-- \u_dvi_encoder|encg|Add21~1\ = CARRY(\u_dvi_encoder|encg|Add19~0_combout\ $ (\u_dvi_encoder|encg|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encg|Add19~0_combout\,
	datab => \u_dvi_encoder|encg|cnt\(3),
	datad => VCC,
	combout => \u_dvi_encoder|encg|Add21~0_combout\,
	cout => \u_dvi_encoder|encg|Add21~1\);

-- Location: LCCOMB_X29_Y20_N28
\u_dvi_encoder|encg|decision3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|decision3~0_combout\ = \u_dvi_encoder|encg|q_m_reg\(8) $ (!\u_dvi_encoder|encg|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dvi_encoder|encg|q_m_reg\(8),
	datad => \u_dvi_encoder|encg|cnt\(4),
	combout => \u_dvi_encoder|encg|decision3~0_combout\);

-- Location: LCCOMB_X32_Y20_N16
\u_dvi_encoder|encg|Add22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|Add22~4_combout\ = (\u_dvi_encoder|encg|cnt\(3) & ((GND) # (!\u_dvi_encoder|encg|Add22~3\))) # (!\u_dvi_encoder|encg|cnt\(3) & (\u_dvi_encoder|encg|Add22~3\ $ (GND)))
-- \u_dvi_encoder|encg|Add22~5\ = CARRY((\u_dvi_encoder|encg|cnt\(3)) # (!\u_dvi_encoder|encg|Add22~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encg|cnt\(3),
	datad => VCC,
	cin => \u_dvi_encoder|encg|Add22~3\,
	combout => \u_dvi_encoder|encg|Add22~4_combout\,
	cout => \u_dvi_encoder|encg|Add22~5\);

-- Location: LCCOMB_X32_Y20_N0
\u_dvi_encoder|encg|Add24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|Add24~0_combout\ = \u_dvi_encoder|encg|Add22~4_combout\ $ (VCC)
-- \u_dvi_encoder|encg|Add24~1\ = CARRY(\u_dvi_encoder|encg|Add22~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encg|Add22~4_combout\,
	datad => VCC,
	combout => \u_dvi_encoder|encg|Add24~0_combout\,
	cout => \u_dvi_encoder|encg|Add24~1\);

-- Location: LCCOMB_X29_Y20_N16
\u_dvi_encoder|encg|Add24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|Add24~6_combout\ = (\u_dvi_encoder|encg|Equal1~0_combout\) # ((\u_dvi_encoder|encg|decision3~0_combout\ & (\u_dvi_encoder|encg|Add21~0_combout\)) # (!\u_dvi_encoder|encg|decision3~0_combout\ & ((\u_dvi_encoder|encg|Add24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encg|Add21~0_combout\,
	datab => \u_dvi_encoder|encg|decision3~0_combout\,
	datac => \u_dvi_encoder|encg|Add24~0_combout\,
	datad => \u_dvi_encoder|encg|Equal1~0_combout\,
	combout => \u_dvi_encoder|encg|Add24~6_combout\);

-- Location: FF_X29_Y20_N17
\u_dvi_encoder|encg|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encg|Add24~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_dvi_encoder|encr|ALT_INV_de_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encg|cnt\(3));

-- Location: LCCOMB_X32_Y20_N28
\u_dvi_encoder|encg|Add19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|Add19~1_combout\ = \u_dvi_encoder|encg|cnt\(4) $ (((\u_dvi_encoder|encg|Add19~0_combout\ & \u_dvi_encoder|encg|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encg|Add19~0_combout\,
	datac => \u_dvi_encoder|encg|cnt\(3),
	datad => \u_dvi_encoder|encg|cnt\(4),
	combout => \u_dvi_encoder|encg|Add19~1_combout\);

-- Location: LCCOMB_X32_Y20_N6
\u_dvi_encoder|encg|Add21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|Add21~2_combout\ = \u_dvi_encoder|encg|q_m_reg\(8) $ (\u_dvi_encoder|encg|Add21~1\ $ (!\u_dvi_encoder|encg|Add19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encg|q_m_reg\(8),
	datad => \u_dvi_encoder|encg|Add19~1_combout\,
	cin => \u_dvi_encoder|encg|Add21~1\,
	combout => \u_dvi_encoder|encg|Add21~2_combout\);

-- Location: LCCOMB_X32_Y20_N18
\u_dvi_encoder|encg|Add22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|Add22~6_combout\ = \u_dvi_encoder|encg|Add22~5\ $ (!\u_dvi_encoder|encg|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_dvi_encoder|encg|cnt\(4),
	cin => \u_dvi_encoder|encg|Add22~5\,
	combout => \u_dvi_encoder|encg|Add22~6_combout\);

-- Location: LCCOMB_X32_Y20_N2
\u_dvi_encoder|encg|Add24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|Add24~2_combout\ = \u_dvi_encoder|encg|q_m_reg\(8) $ (\u_dvi_encoder|encg|Add24~1\ $ (\u_dvi_encoder|encg|Add22~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encg|q_m_reg\(8),
	datad => \u_dvi_encoder|encg|Add22~6_combout\,
	cin => \u_dvi_encoder|encg|Add24~1\,
	combout => \u_dvi_encoder|encg|Add24~2_combout\);

-- Location: LCCOMB_X32_Y20_N20
\u_dvi_encoder|encg|Add24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|Add24~4_combout\ = (!\u_dvi_encoder|encg|Equal1~0_combout\ & ((\u_dvi_encoder|encg|decision3~0_combout\ & (\u_dvi_encoder|encg|Add21~2_combout\)) # (!\u_dvi_encoder|encg|decision3~0_combout\ & 
-- ((\u_dvi_encoder|encg|Add24~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encg|Add21~2_combout\,
	datab => \u_dvi_encoder|encg|Add24~2_combout\,
	datac => \u_dvi_encoder|encg|decision3~0_combout\,
	datad => \u_dvi_encoder|encg|Equal1~0_combout\,
	combout => \u_dvi_encoder|encg|Add24~4_combout\);

-- Location: LCCOMB_X32_Y20_N24
\u_dvi_encoder|encg|Add24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|Add24~5_combout\ = (\u_dvi_encoder|encg|Add24~4_combout\) # ((\u_dvi_encoder|encg|Equal1~0_combout\ & (\u_dvi_encoder|encg|cnt\(3) $ (!\u_dvi_encoder|encg|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encg|cnt\(3),
	datab => \u_dvi_encoder|encg|Add24~4_combout\,
	datac => \u_dvi_encoder|encg|cnt\(4),
	datad => \u_dvi_encoder|encg|Equal1~0_combout\,
	combout => \u_dvi_encoder|encg|Add24~5_combout\);

-- Location: FF_X32_Y20_N25
\u_dvi_encoder|encg|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encg|Add24~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_dvi_encoder|encr|ALT_INV_de_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encg|cnt\(4));

-- Location: LCCOMB_X29_Y20_N12
\u_dvi_encoder|encg|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|dout~0_combout\ = (\u_dvi_encoder|encr|de_reg\(1) & \u_dvi_encoder|encg|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dvi_encoder|encr|de_reg\(1),
	datad => \u_dvi_encoder|encg|cnt\(4),
	combout => \u_dvi_encoder|encg|dout~0_combout\);

-- Location: LCCOMB_X33_Y20_N8
\u_dvi_encoder|encg|dout[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|dout[7]~feeder_combout\ = \u_dvi_encoder|encg|dout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dvi_encoder|encg|dout~0_combout\,
	combout => \u_dvi_encoder|encg|dout[7]~feeder_combout\);

-- Location: FF_X33_Y20_N9
\u_dvi_encoder|encg|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encg|dout[7]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encg|dout\(7));

-- Location: LCCOMB_X30_Y21_N28
\u_dvi_encoder|encg|dout[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|dout[9]~feeder_combout\ = \u_dvi_encoder|encg|decision3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dvi_encoder|encg|decision3~0_combout\,
	combout => \u_dvi_encoder|encg|dout[9]~feeder_combout\);

-- Location: FF_X30_Y21_N29
\u_dvi_encoder|encg|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encg|dout[9]~feeder_combout\,
	asdata => VCC,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_dvi_encoder|encr|ALT_INV_de_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encg|dout\(9));

-- Location: LCCOMB_X30_Y20_N14
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~4_combout\ = (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0) & (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2) & (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1) & \u_dvi_encoder|encg|dout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	datad => \u_dvi_encoder|encg|dout\(9),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~4_combout\);

-- Location: FF_X30_Y20_N15
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\(4));

-- Location: LCCOMB_X30_Y20_N8
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~3_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & (\u_dvi_encoder|encg|dout\(7))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encg|dout\(7),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\(4),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~3_combout\);

-- Location: FF_X30_Y20_N9
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\(3));

-- Location: LCCOMB_X30_Y20_N6
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~2_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & (\u_dvi_encoder|encg|dout\(7))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encg|dout\(7),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\(3),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~2_combout\);

-- Location: FF_X30_Y20_N7
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\(2));

-- Location: LCCOMB_X30_Y20_N28
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~1_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & ((\u_dvi_encoder|encg|dout\(7)))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\(2),
	datab => \u_dvi_encoder|encg|dout\(7),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~1_combout\);

-- Location: FF_X30_Y20_N29
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\(1));

-- Location: LCCOMB_X30_Y20_N12
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~0_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & ((\u_dvi_encoder|encg|dout\(7)))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\(1),
	datac => \u_dvi_encoder|encg|dout\(7),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~0_combout\);

-- Location: FF_X30_Y20_N13
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\(0));

-- Location: LCCOMB_X29_Y20_N2
\u_dvi_encoder|encg|dout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|dout~1_combout\ = (\u_dvi_encoder|encg|cnt\(4)) # (!\u_dvi_encoder|encr|de_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dvi_encoder|encr|de_reg\(1),
	datad => \u_dvi_encoder|encg|cnt\(4),
	combout => \u_dvi_encoder|encg|dout~1_combout\);

-- Location: FF_X29_Y20_N3
\u_dvi_encoder|encg|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encg|dout~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encg|dout\(6));

-- Location: LCCOMB_X30_Y21_N26
\u_dvi_encoder|encg|dout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encg|dout~2_combout\ = (\u_dvi_encoder|encg|q_m_reg\(8)) # (!\u_dvi_encoder|encr|de_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encr|de_reg\(1),
	datac => \u_dvi_encoder|encg|q_m_reg\(8),
	combout => \u_dvi_encoder|encg|dout~2_combout\);

-- Location: FF_X30_Y21_N27
\u_dvi_encoder|encg|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encg|dout~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encg|dout\(8));

-- Location: LCCOMB_X30_Y21_N12
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~4_combout\ = (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1) & (\u_dvi_encoder|encg|dout\(8) & (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2) & !\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	datab => \u_dvi_encoder|encg|dout\(8),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~4_combout\);

-- Location: FF_X30_Y21_N13
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\(4));

-- Location: LCCOMB_X29_Y20_N26
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~3_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & (\u_dvi_encoder|encg|dout\(6))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encg|dout\(6),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\(4),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~3_combout\);

-- Location: FF_X29_Y20_N27
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\(3));

-- Location: LCCOMB_X29_Y20_N8
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~2_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & (\u_dvi_encoder|encg|dout\(6))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encg|dout\(6),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\(3),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~2_combout\);

-- Location: FF_X29_Y20_N9
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\(2));

-- Location: LCCOMB_X29_Y20_N4
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~1_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & (\u_dvi_encoder|encg|dout\(6))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encg|dout\(6),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\(2),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~1_combout\);

-- Location: FF_X29_Y20_N5
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\(1));

-- Location: LCCOMB_X33_Y20_N16
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~0_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & (\u_dvi_encoder|encg|dout\(7))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encg|dout\(7),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\(1),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~0_combout\);

-- Location: FF_X33_Y20_N17
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\(0));

-- Location: DDIOOUTCELL_X34_Y19_N4
\u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_0|auto_generated|ddio_outa[1]\ : cycloneive_ddio_out
-- pragma translate_off
GENERIC MAP (
	async_mode => "none",
	power_up => "low",
	sync_mode => "none",
	use_new_clocking_model => "true")
-- pragma translate_on
PORT MAP (
	datainlo => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1l\(0),
	datainhi => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_1h\(0),
	clkhi => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clklo => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	muxsel => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_0|auto_generated|dataout\(1));

-- Location: LCCOMB_X28_Y20_N2
\u_color_bar|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|Decoder0~15_combout\ = (\u_color_bar|LessThan2~2_combout\ & (!\u_color_bar|LessThan3~2_combout\ & \u_color_bar|Decoder0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_color_bar|LessThan2~2_combout\,
	datac => \u_color_bar|LessThan3~2_combout\,
	datad => \u_color_bar|Decoder0~11_combout\,
	combout => \u_color_bar|Decoder0~15_combout\);

-- Location: LCCOMB_X28_Y20_N20
\u_color_bar|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_color_bar|WideOr0~0_combout\ = ((\u_color_bar|Decoder0~15_combout\) # ((\u_color_bar|Decoder0~18_combout\ & \u_color_bar|Decoder0~14_combout\))) # (!\u_color_bar|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_color_bar|WideOr2~1_combout\,
	datab => \u_color_bar|Decoder0~15_combout\,
	datac => \u_color_bar|Decoder0~18_combout\,
	datad => \u_color_bar|Decoder0~14_combout\,
	combout => \u_color_bar|WideOr0~0_combout\);

-- Location: FF_X28_Y20_N21
\disp_driver|Disp_Red[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_color_bar|WideOr0~0_combout\,
	sclr => \disp_driver|ALT_INV_Disp_DE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_driver|Disp_Red\(0));

-- Location: LCCOMB_X28_Y19_N14
\u_dvi_encoder|encr|n1d[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|n1d[3]~feeder_combout\ = \disp_driver|Disp_Red\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp_driver|Disp_Red\(0),
	combout => \u_dvi_encoder|encr|n1d[3]~feeder_combout\);

-- Location: FF_X28_Y19_N15
\u_dvi_encoder|encr|n1d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encr|n1d[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encr|n1d\(3));

-- Location: LCCOMB_X29_Y19_N28
\u_dvi_encoder|encr|q_m_reg[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|q_m_reg[8]~0_combout\ = !\u_dvi_encoder|encr|n1d\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dvi_encoder|encr|n1d\(3),
	combout => \u_dvi_encoder|encr|q_m_reg[8]~0_combout\);

-- Location: FF_X29_Y19_N29
\u_dvi_encoder|encr|q_m_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encr|q_m_reg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encr|q_m_reg\(8));

-- Location: LCCOMB_X26_Y19_N6
\u_dvi_encoder|encr|Add22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|Add22~0_combout\ = (\u_dvi_encoder|encr|cnt\(1) & ((\u_dvi_encoder|encr|q_m_reg\(8)) # (GND))) # (!\u_dvi_encoder|encr|cnt\(1) & (\u_dvi_encoder|encr|q_m_reg\(8) $ (VCC)))
-- \u_dvi_encoder|encr|Add22~1\ = CARRY((\u_dvi_encoder|encr|cnt\(1)) # (\u_dvi_encoder|encr|q_m_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|cnt\(1),
	datab => \u_dvi_encoder|encr|q_m_reg\(8),
	datad => VCC,
	combout => \u_dvi_encoder|encr|Add22~0_combout\,
	cout => \u_dvi_encoder|encr|Add22~1\);

-- Location: LCCOMB_X26_Y19_N14
\u_dvi_encoder|encr|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|cnt~6_combout\ = (\u_dvi_encoder|encr|cnt\(4) & ((\u_dvi_encoder|encr|q_m_reg\(8) & ((!\u_dvi_encoder|encr|cnt\(1)))) # (!\u_dvi_encoder|encr|q_m_reg\(8) & (\u_dvi_encoder|encr|Add22~0_combout\)))) # (!\u_dvi_encoder|encr|cnt\(4) & 
-- ((\u_dvi_encoder|encr|q_m_reg\(8) & (\u_dvi_encoder|encr|Add22~0_combout\)) # (!\u_dvi_encoder|encr|q_m_reg\(8) & ((\u_dvi_encoder|encr|cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|Add22~0_combout\,
	datab => \u_dvi_encoder|encr|cnt\(4),
	datac => \u_dvi_encoder|encr|cnt\(1),
	datad => \u_dvi_encoder|encr|q_m_reg\(8),
	combout => \u_dvi_encoder|encr|cnt~6_combout\);

-- Location: LCCOMB_X26_Y19_N18
\u_dvi_encoder|encr|cnt[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|cnt[1]~4_combout\ = (!\u_dvi_encoder|encr|de_reg\(1)) # (!\u_dvi_encoder|encr|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encr|Equal1~0_combout\,
	datac => \u_dvi_encoder|encr|de_reg\(1),
	combout => \u_dvi_encoder|encr|cnt[1]~4_combout\);

-- Location: FF_X26_Y19_N15
\u_dvi_encoder|encr|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encr|cnt~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_dvi_encoder|encr|ALT_INV_de_reg\(1),
	ena => \u_dvi_encoder|encr|cnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encr|cnt\(1));

-- Location: LCCOMB_X26_Y19_N24
\u_dvi_encoder|encr|Add19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|Add19~2_combout\ = \u_dvi_encoder|encr|cnt\(2) $ (((\u_dvi_encoder|encr|cnt\(1) & \u_dvi_encoder|encr|q_m_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encr|cnt\(2),
	datac => \u_dvi_encoder|encr|cnt\(1),
	datad => \u_dvi_encoder|encr|q_m_reg\(8),
	combout => \u_dvi_encoder|encr|Add19~2_combout\);

-- Location: LCCOMB_X26_Y19_N8
\u_dvi_encoder|encr|Add22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|Add22~2_combout\ = (\u_dvi_encoder|encr|cnt\(2) & (\u_dvi_encoder|encr|Add22~1\ & VCC)) # (!\u_dvi_encoder|encr|cnt\(2) & (!\u_dvi_encoder|encr|Add22~1\))
-- \u_dvi_encoder|encr|Add22~3\ = CARRY((!\u_dvi_encoder|encr|cnt\(2) & !\u_dvi_encoder|encr|Add22~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encr|cnt\(2),
	datad => VCC,
	cin => \u_dvi_encoder|encr|Add22~1\,
	combout => \u_dvi_encoder|encr|Add22~2_combout\,
	cout => \u_dvi_encoder|encr|Add22~3\);

-- Location: LCCOMB_X26_Y19_N0
\u_dvi_encoder|encr|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|cnt~5_combout\ = (\u_dvi_encoder|encr|Add19~2_combout\ & ((\u_dvi_encoder|encr|Add22~2_combout\) # (\u_dvi_encoder|encr|cnt\(4) $ (!\u_dvi_encoder|encr|q_m_reg\(8))))) # (!\u_dvi_encoder|encr|Add19~2_combout\ & 
-- (\u_dvi_encoder|encr|Add22~2_combout\ & (\u_dvi_encoder|encr|cnt\(4) $ (\u_dvi_encoder|encr|q_m_reg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|Add19~2_combout\,
	datab => \u_dvi_encoder|encr|Add22~2_combout\,
	datac => \u_dvi_encoder|encr|cnt\(4),
	datad => \u_dvi_encoder|encr|q_m_reg\(8),
	combout => \u_dvi_encoder|encr|cnt~5_combout\);

-- Location: FF_X26_Y19_N1
\u_dvi_encoder|encr|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encr|cnt~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_dvi_encoder|encr|ALT_INV_de_reg\(1),
	ena => \u_dvi_encoder|encr|cnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encr|cnt\(2));

-- Location: LCCOMB_X26_Y19_N20
\u_dvi_encoder|encr|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|Equal1~0_combout\ = (!\u_dvi_encoder|encr|cnt\(3) & (!\u_dvi_encoder|encr|cnt\(1) & (!\u_dvi_encoder|encr|cnt\(4) & !\u_dvi_encoder|encr|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|cnt\(3),
	datab => \u_dvi_encoder|encr|cnt\(1),
	datac => \u_dvi_encoder|encr|cnt\(4),
	datad => \u_dvi_encoder|encr|cnt\(2),
	combout => \u_dvi_encoder|encr|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y19_N10
\u_dvi_encoder|encr|Add22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|Add22~4_combout\ = (\u_dvi_encoder|encr|cnt\(3) & ((GND) # (!\u_dvi_encoder|encr|Add22~3\))) # (!\u_dvi_encoder|encr|cnt\(3) & (\u_dvi_encoder|encr|Add22~3\ $ (GND)))
-- \u_dvi_encoder|encr|Add22~5\ = CARRY((\u_dvi_encoder|encr|cnt\(3)) # (!\u_dvi_encoder|encr|Add22~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|cnt\(3),
	datad => VCC,
	cin => \u_dvi_encoder|encr|Add22~3\,
	combout => \u_dvi_encoder|encr|Add22~4_combout\,
	cout => \u_dvi_encoder|encr|Add22~5\);

-- Location: LCCOMB_X26_Y19_N26
\u_dvi_encoder|encr|Add24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|Add24~0_combout\ = \u_dvi_encoder|encr|Add22~4_combout\ $ (VCC)
-- \u_dvi_encoder|encr|Add24~1\ = CARRY(\u_dvi_encoder|encr|Add22~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|Add22~4_combout\,
	datad => VCC,
	combout => \u_dvi_encoder|encr|Add24~0_combout\,
	cout => \u_dvi_encoder|encr|Add24~1\);

-- Location: LCCOMB_X26_Y19_N16
\u_dvi_encoder|encr|Add19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|Add19~0_combout\ = (\u_dvi_encoder|encr|cnt\(2) & (\u_dvi_encoder|encr|cnt\(1) & \u_dvi_encoder|encr|q_m_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encr|cnt\(2),
	datac => \u_dvi_encoder|encr|cnt\(1),
	datad => \u_dvi_encoder|encr|q_m_reg\(8),
	combout => \u_dvi_encoder|encr|Add19~0_combout\);

-- Location: LCCOMB_X29_Y19_N16
\u_dvi_encoder|encr|Add21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|Add21~0_combout\ = \u_dvi_encoder|encr|cnt\(3) $ (\u_dvi_encoder|encr|Add19~0_combout\ $ (VCC))
-- \u_dvi_encoder|encr|Add21~1\ = CARRY(\u_dvi_encoder|encr|cnt\(3) $ (\u_dvi_encoder|encr|Add19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|cnt\(3),
	datab => \u_dvi_encoder|encr|Add19~0_combout\,
	datad => VCC,
	combout => \u_dvi_encoder|encr|Add21~0_combout\,
	cout => \u_dvi_encoder|encr|Add21~1\);

-- Location: LCCOMB_X26_Y19_N30
\u_dvi_encoder|encr|Add24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|Add24~6_combout\ = (\u_dvi_encoder|encr|Equal1~0_combout\) # ((\u_dvi_encoder|encr|decision3~0_combout\ & ((\u_dvi_encoder|encr|Add21~0_combout\))) # (!\u_dvi_encoder|encr|decision3~0_combout\ & (\u_dvi_encoder|encr|Add24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|decision3~0_combout\,
	datab => \u_dvi_encoder|encr|Equal1~0_combout\,
	datac => \u_dvi_encoder|encr|Add24~0_combout\,
	datad => \u_dvi_encoder|encr|Add21~0_combout\,
	combout => \u_dvi_encoder|encr|Add24~6_combout\);

-- Location: FF_X26_Y19_N31
\u_dvi_encoder|encr|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encr|Add24~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_dvi_encoder|encr|ALT_INV_de_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encr|cnt\(3));

-- Location: LCCOMB_X26_Y19_N12
\u_dvi_encoder|encr|Add22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|Add22~6_combout\ = \u_dvi_encoder|encr|cnt\(4) $ (!\u_dvi_encoder|encr|Add22~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encr|cnt\(4),
	cin => \u_dvi_encoder|encr|Add22~5\,
	combout => \u_dvi_encoder|encr|Add22~6_combout\);

-- Location: LCCOMB_X26_Y19_N28
\u_dvi_encoder|encr|Add24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|Add24~2_combout\ = \u_dvi_encoder|encr|Add22~6_combout\ $ (\u_dvi_encoder|encr|Add24~1\ $ (\u_dvi_encoder|encr|q_m_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|Add22~6_combout\,
	datad => \u_dvi_encoder|encr|q_m_reg\(8),
	cin => \u_dvi_encoder|encr|Add24~1\,
	combout => \u_dvi_encoder|encr|Add24~2_combout\);

-- Location: LCCOMB_X29_Y19_N10
\u_dvi_encoder|encr|Add19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|Add19~1_combout\ = \u_dvi_encoder|encr|cnt\(4) $ (((\u_dvi_encoder|encr|cnt\(3) & \u_dvi_encoder|encr|Add19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|cnt\(3),
	datab => \u_dvi_encoder|encr|cnt\(4),
	datad => \u_dvi_encoder|encr|Add19~0_combout\,
	combout => \u_dvi_encoder|encr|Add19~1_combout\);

-- Location: LCCOMB_X29_Y19_N18
\u_dvi_encoder|encr|Add21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|Add21~2_combout\ = \u_dvi_encoder|encr|Add19~1_combout\ $ (\u_dvi_encoder|encr|Add21~1\ $ (!\u_dvi_encoder|encr|q_m_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|Add19~1_combout\,
	datad => \u_dvi_encoder|encr|q_m_reg\(8),
	cin => \u_dvi_encoder|encr|Add21~1\,
	combout => \u_dvi_encoder|encr|Add21~2_combout\);

-- Location: LCCOMB_X26_Y19_N2
\u_dvi_encoder|encr|Add24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|Add24~4_combout\ = (!\u_dvi_encoder|encr|Equal1~0_combout\ & ((\u_dvi_encoder|encr|decision3~0_combout\ & ((\u_dvi_encoder|encr|Add21~2_combout\))) # (!\u_dvi_encoder|encr|decision3~0_combout\ & 
-- (\u_dvi_encoder|encr|Add24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|decision3~0_combout\,
	datab => \u_dvi_encoder|encr|Equal1~0_combout\,
	datac => \u_dvi_encoder|encr|Add24~2_combout\,
	datad => \u_dvi_encoder|encr|Add21~2_combout\,
	combout => \u_dvi_encoder|encr|Add24~4_combout\);

-- Location: LCCOMB_X26_Y19_N4
\u_dvi_encoder|encr|Add24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|Add24~5_combout\ = (\u_dvi_encoder|encr|Add24~4_combout\) # ((\u_dvi_encoder|encr|Equal1~0_combout\ & (\u_dvi_encoder|encr|cnt\(3) $ (!\u_dvi_encoder|encr|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|cnt\(3),
	datab => \u_dvi_encoder|encr|Equal1~0_combout\,
	datac => \u_dvi_encoder|encr|cnt\(4),
	datad => \u_dvi_encoder|encr|Add24~4_combout\,
	combout => \u_dvi_encoder|encr|Add24~5_combout\);

-- Location: FF_X26_Y19_N5
\u_dvi_encoder|encr|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encr|Add24~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_dvi_encoder|encr|ALT_INV_de_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encr|cnt\(4));

-- Location: LCCOMB_X26_Y19_N22
\u_dvi_encoder|encr|decision3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|decision3~0_combout\ = \u_dvi_encoder|encr|cnt\(4) $ (!\u_dvi_encoder|encr|q_m_reg\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dvi_encoder|encr|cnt\(4),
	datad => \u_dvi_encoder|encr|q_m_reg\(8),
	combout => \u_dvi_encoder|encr|decision3~0_combout\);

-- Location: LCCOMB_X26_Y22_N28
\u_dvi_encoder|encr|dout[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|dout[9]~feeder_combout\ = \u_dvi_encoder|encr|decision3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_dvi_encoder|encr|decision3~0_combout\,
	combout => \u_dvi_encoder|encr|dout[9]~feeder_combout\);

-- Location: FF_X26_Y22_N29
\u_dvi_encoder|encr|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encr|dout[9]~feeder_combout\,
	asdata => VCC,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_dvi_encoder|encr|ALT_INV_de_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encr|dout\(9));

-- Location: LCCOMB_X30_Y22_N10
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~4_combout\ = (\u_dvi_encoder|encr|dout\(9) & (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2) & (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1) & !\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|dout\(9),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~4_combout\);

-- Location: FF_X30_Y22_N11
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\(4));

-- Location: LCCOMB_X30_Y22_N8
\u_dvi_encoder|encr|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|dout~0_combout\ = (\u_dvi_encoder|encr|cnt\(4) & \u_dvi_encoder|encr|de_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dvi_encoder|encr|cnt\(4),
	datad => \u_dvi_encoder|encr|de_reg\(1),
	combout => \u_dvi_encoder|encr|dout~0_combout\);

-- Location: FF_X30_Y22_N9
\u_dvi_encoder|encr|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encr|dout~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encr|dout\(7));

-- Location: LCCOMB_X30_Y22_N28
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~3_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & ((\u_dvi_encoder|encr|dout\(7)))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\(4),
	datac => \u_dvi_encoder|encr|dout\(7),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~3_combout\);

-- Location: FF_X30_Y22_N29
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\(3));

-- Location: LCCOMB_X30_Y22_N30
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~2_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & ((\u_dvi_encoder|encr|dout\(7)))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\(3),
	datac => \u_dvi_encoder|encr|dout\(7),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~2_combout\);

-- Location: FF_X30_Y22_N31
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\(2));

-- Location: LCCOMB_X30_Y22_N22
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~1_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & ((\u_dvi_encoder|encr|dout\(7)))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\(2),
	datac => \u_dvi_encoder|encr|dout\(7),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~1_combout\);

-- Location: FF_X30_Y22_N23
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\(1));

-- Location: LCCOMB_X30_Y22_N12
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~0_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\(1) & ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1)) # ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0)) # 
-- (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\(1),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~0_combout\);

-- Location: FF_X30_Y22_N13
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\(0));

-- Location: LCCOMB_X29_Y19_N22
\u_dvi_encoder|encr|dout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|dout~1_combout\ = (\u_dvi_encoder|encr|cnt\(4)) # (!\u_dvi_encoder|encr|de_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|encr|de_reg\(1),
	datac => \u_dvi_encoder|encr|cnt\(4),
	combout => \u_dvi_encoder|encr|dout~1_combout\);

-- Location: FF_X29_Y19_N23
\u_dvi_encoder|encr|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encr|dout~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encr|dout\(6));

-- Location: LCCOMB_X29_Y21_N8
\u_dvi_encoder|encr|dout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|encr|dout~2_combout\ = (\u_dvi_encoder|encr|q_m_reg\(8)) # (!\u_dvi_encoder|encr|de_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|q_m_reg\(8),
	datac => \u_dvi_encoder|encr|de_reg\(1),
	combout => \u_dvi_encoder|encr|dout~2_combout\);

-- Location: FF_X29_Y21_N9
\u_dvi_encoder|encr|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_dvi_encoder|encr|dout~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|encr|dout\(8));

-- Location: LCCOMB_X29_Y20_N14
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~4_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2) & (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0) & (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1) & \u_dvi_encoder|encr|dout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	datad => \u_dvi_encoder|encr|dout\(8),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~4_combout\);

-- Location: FF_X29_Y20_N15
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\(4));

-- Location: LCCOMB_X29_Y20_N24
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~3_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & ((\u_dvi_encoder|encr|dout\(6)))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\(4),
	datac => \u_dvi_encoder|encr|dout\(6),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~3_combout\);

-- Location: FF_X29_Y20_N25
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\(3));

-- Location: LCCOMB_X30_Y20_N20
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~2_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & (\u_dvi_encoder|encr|dout\(6))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- ((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|encr|dout\(6),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\(3),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~2_combout\);

-- Location: FF_X30_Y20_N21
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\(2));

-- Location: LCCOMB_X30_Y20_N26
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~1_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & ((\u_dvi_encoder|encr|dout\(6)))) # (!\u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\ & 
-- (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\(2),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|Equal0~0_combout\,
	datad => \u_dvi_encoder|encr|dout\(6),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~1_combout\);

-- Location: FF_X30_Y20_N27
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\(1));

-- Location: LCCOMB_X33_Y20_N30
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~0_combout\ = (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\(1) & (((\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1)) # (\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0))) # 
-- (!\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(2),
	datab => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(1),
	datac => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\(1),
	datad => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_mod5\(0),
	combout => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~0_combout\);

-- Location: FF_X33_Y20_N31
\u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\(0));

-- Location: DDIOOUTCELL_X34_Y18_N4
\u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_0|auto_generated|ddio_outa[2]\ : cycloneive_ddio_out
-- pragma translate_off
GENERIC MAP (
	async_mode => "none",
	power_up => "low",
	sync_mode => "none",
	use_new_clocking_model => "true")
-- pragma translate_on
PORT MAP (
	datainlo => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2l\(0),
	datainhi => \u_dvi_encoder|serdes_4b_10to1_inst|TMDS_shift_2h\(0),
	clkhi => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clklo => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	muxsel => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_0|auto_generated|dataout\(2));

-- Location: DDIOOUTCELL_X25_Y24_N18
\u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_1|auto_generated|ddio_outa[0]\ : cycloneive_ddio_out
-- pragma translate_off
GENERIC MAP (
	async_mode => "none",
	power_up => "low",
	sync_mode => "none",
	use_new_clocking_model => "true")
-- pragma translate_on
PORT MAP (
	datainlo => \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_0l\(0),
	datainhi => \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_0h\(0),
	clkhi => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clklo => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	muxsel => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_1|auto_generated|dataout\(0));

-- Location: DDIOOUTCELL_X34_Y20_N11
\u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_1|auto_generated|ddio_outa[1]\ : cycloneive_ddio_out
-- pragma translate_off
GENERIC MAP (
	async_mode => "none",
	power_up => "low",
	sync_mode => "none",
	use_new_clocking_model => "true")
-- pragma translate_on
PORT MAP (
	datainlo => \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_1l\(0),
	datainhi => \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_1h\(0),
	clkhi => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clklo => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	muxsel => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_1|auto_generated|dataout\(1));

-- Location: DDIOOUTCELL_X34_Y19_N11
\u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_1|auto_generated|ddio_outa[2]\ : cycloneive_ddio_out
-- pragma translate_off
GENERIC MAP (
	async_mode => "none",
	power_up => "low",
	sync_mode => "none",
	use_new_clocking_model => "true")
-- pragma translate_on
PORT MAP (
	datainlo => \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_2l\(0),
	datainhi => \u_dvi_encoder|serdes_4b_10to1_inst|ALT_INV_TMDS_shift_2h\(0),
	clkhi => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clklo => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	muxsel => \pll_hdmi_inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u_dvi_encoder|serdes_4b_10to1_inst|altddio_out_1|auto_generated|dataout\(2));
END structure;


