-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.2 Build 209 09/17/2014 SJ Full Version"

-- DATE "03/16/2023 22:49:58"

-- 
-- Device: Altera EP4CE15E22C6 Package TQFP144
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

ENTITY 	control IS
    PORT (
	clk : IN std_logic;
	mclk : IN std_logic;
	enable : IN std_logic;
	statusC : IN std_logic;
	statusZ : IN std_logic;
	INST : IN std_logic_vector(31 DOWNTO 0);
	A_Mux : OUT std_logic;
	B_Mux : OUT std_logic;
	IM_MUX1 : OUT std_logic;
	REG_Mux : OUT std_logic;
	IM_MUX2 : OUT std_logic_vector(1 DOWNTO 0);
	DATA_Mux : OUT std_logic_vector(1 DOWNTO 0);
	ALU_op : OUT std_logic_vector(2 DOWNTO 0);
	inc_PC : OUT std_logic;
	ld_PC : OUT std_logic;
	clr_IR : OUT std_logic;
	ld_IR : OUT std_logic;
	clr_A : OUT std_logic;
	clr_B : OUT std_logic;
	clr_C : OUT std_logic;
	clr_Z : OUT std_logic;
	ld_A : OUT std_logic;
	ld_B : OUT std_logic;
	ld_C : OUT std_logic;
	ld_Z : OUT std_logic;
	T : OUT std_logic_vector(2 DOWNTO 0);
	wen : OUT std_logic;
	en : OUT std_logic
	);
END control;

-- Design Ports Information
-- statusC	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[0]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[1]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[3]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[4]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[6]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[7]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[8]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[9]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[10]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[11]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[12]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[13]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[14]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[15]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[16]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[17]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[18]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[19]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[20]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[21]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[22]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[23]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Mux	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Mux	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX1	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_Mux	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX2[0]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX2[1]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_Mux[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_Mux[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_op[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_op[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_op[2]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inc_PC	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_PC	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_IR	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_IR	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_A	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_B	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_C	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_Z	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_A	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_B	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_C	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_Z	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[2]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wen	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[31]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[30]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[28]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- statusZ	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[29]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[24]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[26]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[27]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[25]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mclk	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control IS
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
SIGNAL ww_mclk : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_statusC : std_logic;
SIGNAL ww_statusZ : std_logic;
SIGNAL ww_INST : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_A_Mux : std_logic;
SIGNAL ww_B_Mux : std_logic;
SIGNAL ww_IM_MUX1 : std_logic;
SIGNAL ww_REG_Mux : std_logic;
SIGNAL ww_IM_MUX2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DATA_Mux : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ALU_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_inc_PC : std_logic;
SIGNAL ww_ld_PC : std_logic;
SIGNAL ww_clr_IR : std_logic;
SIGNAL ww_ld_IR : std_logic;
SIGNAL ww_clr_A : std_logic;
SIGNAL ww_clr_B : std_logic;
SIGNAL ww_clr_C : std_logic;
SIGNAL ww_clr_Z : std_logic;
SIGNAL ww_ld_A : std_logic;
SIGNAL ww_ld_B : std_logic;
SIGNAL ww_ld_C : std_logic;
SIGNAL ww_ld_Z : std_logic;
SIGNAL ww_T : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_wen : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \enable~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \statusC~input_o\ : std_logic;
SIGNAL \INST[0]~input_o\ : std_logic;
SIGNAL \INST[1]~input_o\ : std_logic;
SIGNAL \INST[2]~input_o\ : std_logic;
SIGNAL \INST[3]~input_o\ : std_logic;
SIGNAL \INST[4]~input_o\ : std_logic;
SIGNAL \INST[5]~input_o\ : std_logic;
SIGNAL \INST[6]~input_o\ : std_logic;
SIGNAL \INST[7]~input_o\ : std_logic;
SIGNAL \INST[8]~input_o\ : std_logic;
SIGNAL \INST[9]~input_o\ : std_logic;
SIGNAL \INST[10]~input_o\ : std_logic;
SIGNAL \INST[11]~input_o\ : std_logic;
SIGNAL \INST[12]~input_o\ : std_logic;
SIGNAL \INST[13]~input_o\ : std_logic;
SIGNAL \INST[14]~input_o\ : std_logic;
SIGNAL \INST[15]~input_o\ : std_logic;
SIGNAL \INST[16]~input_o\ : std_logic;
SIGNAL \INST[17]~input_o\ : std_logic;
SIGNAL \INST[18]~input_o\ : std_logic;
SIGNAL \INST[19]~input_o\ : std_logic;
SIGNAL \INST[20]~input_o\ : std_logic;
SIGNAL \INST[21]~input_o\ : std_logic;
SIGNAL \INST[22]~input_o\ : std_logic;
SIGNAL \INST[23]~input_o\ : std_logic;
SIGNAL \A_Mux~output_o\ : std_logic;
SIGNAL \B_Mux~output_o\ : std_logic;
SIGNAL \IM_MUX1~output_o\ : std_logic;
SIGNAL \REG_Mux~output_o\ : std_logic;
SIGNAL \IM_MUX2[0]~output_o\ : std_logic;
SIGNAL \IM_MUX2[1]~output_o\ : std_logic;
SIGNAL \DATA_Mux[0]~output_o\ : std_logic;
SIGNAL \DATA_Mux[1]~output_o\ : std_logic;
SIGNAL \ALU_op[0]~output_o\ : std_logic;
SIGNAL \ALU_op[1]~output_o\ : std_logic;
SIGNAL \ALU_op[2]~output_o\ : std_logic;
SIGNAL \inc_PC~output_o\ : std_logic;
SIGNAL \ld_PC~output_o\ : std_logic;
SIGNAL \clr_IR~output_o\ : std_logic;
SIGNAL \ld_IR~output_o\ : std_logic;
SIGNAL \clr_A~output_o\ : std_logic;
SIGNAL \clr_B~output_o\ : std_logic;
SIGNAL \clr_C~output_o\ : std_logic;
SIGNAL \clr_Z~output_o\ : std_logic;
SIGNAL \ld_A~output_o\ : std_logic;
SIGNAL \ld_B~output_o\ : std_logic;
SIGNAL \ld_C~output_o\ : std_logic;
SIGNAL \ld_Z~output_o\ : std_logic;
SIGNAL \T[0]~output_o\ : std_logic;
SIGNAL \T[1]~output_o\ : std_logic;
SIGNAL \T[2]~output_o\ : std_logic;
SIGNAL \wen~output_o\ : std_logic;
SIGNAL \en~output_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \enable~inputclkctrl_outclk\ : std_logic;
SIGNAL \INST[31]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \present_state.state_0~0_combout\ : std_logic;
SIGNAL \present_state.state_0~q\ : std_logic;
SIGNAL \present_state.state_1~0_combout\ : std_logic;
SIGNAL \present_state.state_1~q\ : std_logic;
SIGNAL \present_state.state_2~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \A_Mux$latch~combout\ : std_logic;
SIGNAL \INST[29]~input_o\ : std_logic;
SIGNAL \IM_MUX1$latch~combout\ : std_logic;
SIGNAL \INST[28]~input_o\ : std_logic;
SIGNAL \REG_Mux$latch~combout\ : std_logic;
SIGNAL \INST[24]~input_o\ : std_logic;
SIGNAL \INST[25]~input_o\ : std_logic;
SIGNAL \IM_MUX2~0_combout\ : std_logic;
SIGNAL \IM_MUX2[0]$latch~combout\ : std_logic;
SIGNAL \INST[27]~input_o\ : std_logic;
SIGNAL \IM_MUX2~1_combout\ : std_logic;
SIGNAL \IM_MUX2[1]$latch~combout\ : std_logic;
SIGNAL \DATA_Mux~0_combout\ : std_logic;
SIGNAL \DATA_Mux[0]$latch~combout\ : std_logic;
SIGNAL \DATA_Mux~1_combout\ : std_logic;
SIGNAL \DATA_Mux[1]$latch~combout\ : std_logic;
SIGNAL \INST[26]~input_o\ : std_logic;
SIGNAL \ALU_op~0_combout\ : std_logic;
SIGNAL \ALU_op[0]$latch~combout\ : std_logic;
SIGNAL \ALU_op~1_combout\ : std_logic;
SIGNAL \ALU_op[1]$latch~combout\ : std_logic;
SIGNAL \ALU_op~2_combout\ : std_logic;
SIGNAL \ALU_op[2]$latch~combout\ : std_logic;
SIGNAL \inc_PC~0_combout\ : std_logic;
SIGNAL \statusZ~input_o\ : std_logic;
SIGNAL \ld_PC~2_combout\ : std_logic;
SIGNAL \INST[30]~input_o\ : std_logic;
SIGNAL \ld_PC~0_combout\ : std_logic;
SIGNAL \ld_PC~1_combout\ : std_logic;
SIGNAL \ld_A~0_combout\ : std_logic;
SIGNAL \ld_PC~3_combout\ : std_logic;
SIGNAL \ld_IR~0_combout\ : std_logic;
SIGNAL \clr_A~0_combout\ : std_logic;
SIGNAL \clr_A~1_combout\ : std_logic;
SIGNAL \clr_A~2_combout\ : std_logic;
SIGNAL \clr_B~0_combout\ : std_logic;
SIGNAL \clr_B~1_combout\ : std_logic;
SIGNAL \clr_C~0_combout\ : std_logic;
SIGNAL \clr_Z~0_combout\ : std_logic;
SIGNAL \clr_Z~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \ld_A~3_combout\ : std_logic;
SIGNAL \ld_A~1_combout\ : std_logic;
SIGNAL \ld_A~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ld_A~4_combout\ : std_logic;
SIGNAL \ld_B~0_combout\ : std_logic;
SIGNAL \ld_B~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \ld_C~0_combout\ : std_logic;
SIGNAL \T[0]~0_combout\ : std_logic;
SIGNAL \T[0]~reg0_q\ : std_logic;
SIGNAL \T[1]~1_combout\ : std_logic;
SIGNAL \T[1]~reg0_q\ : std_logic;
SIGNAL \T[2]~reg0_q\ : std_logic;
SIGNAL \mclk~input_o\ : std_logic;
SIGNAL \mclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \wen~0_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \wen~1_combout\ : std_logic;
SIGNAL \wen~reg0_q\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \en~0_combout\ : std_logic;
SIGNAL \en~1_combout\ : std_logic;
SIGNAL \en~reg0_q\ : std_logic;
SIGNAL \ALT_INV_mclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_T[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ld_IR~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_mclk <= mclk;
ww_enable <= enable;
ww_statusC <= statusC;
ww_statusZ <= statusZ;
ww_INST <= INST;
A_Mux <= ww_A_Mux;
B_Mux <= ww_B_Mux;
IM_MUX1 <= ww_IM_MUX1;
REG_Mux <= ww_REG_Mux;
IM_MUX2 <= ww_IM_MUX2;
DATA_Mux <= ww_DATA_Mux;
ALU_op <= ww_ALU_op;
inc_PC <= ww_inc_PC;
ld_PC <= ww_ld_PC;
clr_IR <= ww_clr_IR;
ld_IR <= ww_ld_IR;
clr_A <= ww_clr_A;
clr_B <= ww_clr_B;
clr_C <= ww_clr_C;
clr_Z <= ww_clr_Z;
ld_A <= ww_ld_A;
ld_B <= ww_ld_B;
ld_C <= ww_ld_C;
ld_Z <= ww_ld_Z;
T <= ww_T;
wen <= ww_wen;
en <= ww_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\mclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mclk~input_o\);

\enable~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \enable~input_o\);
\ALT_INV_mclk~inputclkctrl_outclk\ <= NOT \mclk~inputclkctrl_outclk\;
\ALT_INV_T[0]~reg0_q\ <= NOT \T[0]~reg0_q\;
\ALT_INV_ld_IR~0_combout\ <= NOT \ld_IR~0_combout\;

-- Location: IOOBUF_X0_Y21_N23
\A_Mux~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_Mux$latch~combout\,
	devoe => ww_devoe,
	o => \A_Mux~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\B_Mux~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_Mux$latch~combout\,
	devoe => ww_devoe,
	o => \B_Mux~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\IM_MUX1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IM_MUX1$latch~combout\,
	devoe => ww_devoe,
	o => \IM_MUX1~output_o\);

-- Location: IOOBUF_X41_Y3_N23
\REG_Mux~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_Mux$latch~combout\,
	devoe => ww_devoe,
	o => \REG_Mux~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\IM_MUX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IM_MUX2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \IM_MUX2[0]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\IM_MUX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IM_MUX2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \IM_MUX2[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\DATA_Mux[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_Mux[0]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_Mux[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\DATA_Mux[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_Mux[1]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_Mux[1]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\ALU_op[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_op[0]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_op[0]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\ALU_op[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_op[1]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_op[1]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\ALU_op[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_op[2]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_op[2]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\inc_PC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inc_PC~0_combout\,
	devoe => ww_devoe,
	o => \inc_PC~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\ld_PC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_PC~3_combout\,
	devoe => ww_devoe,
	o => \ld_PC~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\clr_IR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clr_IR~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\ld_IR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ld_IR~0_combout\,
	devoe => ww_devoe,
	o => \ld_IR~output_o\);

-- Location: IOOBUF_X35_Y29_N9
\clr_A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_A~2_combout\,
	devoe => ww_devoe,
	o => \clr_A~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\clr_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_B~1_combout\,
	devoe => ww_devoe,
	o => \clr_B~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\clr_C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_C~0_combout\,
	devoe => ww_devoe,
	o => \clr_C~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\clr_Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_Z~1_combout\,
	devoe => ww_devoe,
	o => \clr_Z~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\ld_A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_A~4_combout\,
	devoe => ww_devoe,
	o => \ld_A~output_o\);

-- Location: IOOBUF_X37_Y0_N30
\ld_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_B~1_combout\,
	devoe => ww_devoe,
	o => \ld_B~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\ld_C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_C~0_combout\,
	devoe => ww_devoe,
	o => \ld_C~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\ld_Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_C~0_combout\,
	devoe => ww_devoe,
	o => \ld_Z~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\T[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_T[0]~reg0_q\,
	devoe => ww_devoe,
	o => \T[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\T[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T[1]~reg0_q\,
	devoe => ww_devoe,
	o => \T[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\T[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T[2]~reg0_q\,
	devoe => ww_devoe,
	o => \T[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\wen~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wen~reg0_q\,
	devoe => ww_devoe,
	o => \wen~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \en~reg0_q\,
	devoe => ww_devoe,
	o => \en~output_o\);

-- Location: IOIBUF_X0_Y14_N8
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: CLKCTRL_G2
\enable~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \enable~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \enable~inputclkctrl_outclk\);

-- Location: IOIBUF_X26_Y0_N15
\INST[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(31),
	o => \INST[31]~input_o\);

-- Location: IOIBUF_X0_Y14_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N10
\present_state.state_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.state_0~0_combout\ = !\present_state.state_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.state_2~q\,
	combout => \present_state.state_0~0_combout\);

-- Location: FF_X1_Y11_N11
\present_state.state_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \present_state.state_0~0_combout\,
	clrn => \enable~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.state_0~q\);

-- Location: LCCOMB_X1_Y11_N26
\present_state.state_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.state_1~0_combout\ = !\present_state.state_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.state_0~q\,
	combout => \present_state.state_1~0_combout\);

-- Location: FF_X1_Y11_N27
\present_state.state_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \present_state.state_1~0_combout\,
	clrn => \enable~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.state_1~q\);

-- Location: FF_X1_Y11_N29
\present_state.state_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \present_state.state_1~q\,
	clrn => \enable~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.state_2~q\);

-- Location: LCCOMB_X1_Y11_N20
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\INST[31]~input_o\) # (\present_state.state_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datad => \present_state.state_2~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X1_Y11_N22
\A_Mux$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux$latch~combout\ = (GLOBAL(\enable~inputclkctrl_outclk\) & ((!\Selector3~0_combout\))) # (!GLOBAL(\enable~inputclkctrl_outclk\) & (\A_Mux$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux$latch~combout\,
	datac => \enable~inputclkctrl_outclk\,
	datad => \Selector3~0_combout\,
	combout => \A_Mux$latch~combout\);

-- Location: IOIBUF_X41_Y15_N22
\INST[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(29),
	o => \INST[29]~input_o\);

-- Location: LCCOMB_X4_Y11_N20
\IM_MUX1$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1$latch~combout\ = (GLOBAL(\enable~inputclkctrl_outclk\) & (!\INST[29]~input_o\)) # (!GLOBAL(\enable~inputclkctrl_outclk\) & ((\IM_MUX1$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST[29]~input_o\,
	datac => \enable~inputclkctrl_outclk\,
	datad => \IM_MUX1$latch~combout\,
	combout => \IM_MUX1$latch~combout\);

-- Location: IOIBUF_X41_Y10_N1
\INST[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(28),
	o => \INST[28]~input_o\);

-- Location: LCCOMB_X36_Y11_N10
\REG_Mux$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_Mux$latch~combout\ = (GLOBAL(\enable~inputclkctrl_outclk\) & (\INST[28]~input_o\)) # (!GLOBAL(\enable~inputclkctrl_outclk\) & ((\REG_Mux$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST[28]~input_o\,
	datac => \enable~inputclkctrl_outclk\,
	datad => \REG_Mux$latch~combout\,
	combout => \REG_Mux$latch~combout\);

-- Location: IOIBUF_X41_Y15_N15
\INST[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(24),
	o => \INST[24]~input_o\);

-- Location: IOIBUF_X41_Y15_N8
\INST[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(25),
	o => \INST[25]~input_o\);

-- Location: LCCOMB_X40_Y13_N24
\IM_MUX2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2~0_combout\ = (\INST[24]~input_o\ & (!\INST[25]~input_o\ & \INST[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[24]~input_o\,
	datab => \INST[25]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \IM_MUX2~0_combout\);

-- Location: LCCOMB_X39_Y13_N0
\IM_MUX2[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[0]$latch~combout\ = (GLOBAL(\enable~inputclkctrl_outclk\) & (\IM_MUX2~0_combout\)) # (!GLOBAL(\enable~inputclkctrl_outclk\) & ((\IM_MUX2[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX2~0_combout\,
	datac => \enable~inputclkctrl_outclk\,
	datad => \IM_MUX2[0]$latch~combout\,
	combout => \IM_MUX2[0]$latch~combout\);

-- Location: IOIBUF_X41_Y23_N1
\INST[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(27),
	o => \INST[27]~input_o\);

-- Location: LCCOMB_X40_Y13_N30
\IM_MUX2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2~1_combout\ = (\INST[29]~input_o\ & (\INST[25]~input_o\ & (\INST[24]~input_o\ $ (\INST[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[24]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[25]~input_o\,
	datad => \INST[27]~input_o\,
	combout => \IM_MUX2~1_combout\);

-- Location: LCCOMB_X40_Y13_N6
\IM_MUX2[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[1]$latch~combout\ = (GLOBAL(\enable~inputclkctrl_outclk\) & (\IM_MUX2~1_combout\)) # (!GLOBAL(\enable~inputclkctrl_outclk\) & ((\IM_MUX2[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2~1_combout\,
	datac => \enable~inputclkctrl_outclk\,
	datad => \IM_MUX2[1]$latch~combout\,
	combout => \IM_MUX2[1]$latch~combout\);

-- Location: LCCOMB_X1_Y11_N18
\DATA_Mux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux~0_combout\ = (\INST[31]~input_o\ & \present_state.state_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datad => \present_state.state_2~q\,
	combout => \DATA_Mux~0_combout\);

-- Location: LCCOMB_X1_Y11_N6
\DATA_Mux[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[0]$latch~combout\ = (GLOBAL(\enable~inputclkctrl_outclk\) & ((\DATA_Mux~0_combout\))) # (!GLOBAL(\enable~inputclkctrl_outclk\) & (\DATA_Mux[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]$latch~combout\,
	datab => \enable~inputclkctrl_outclk\,
	datad => \DATA_Mux~0_combout\,
	combout => \DATA_Mux[0]$latch~combout\);

-- Location: LCCOMB_X1_Y11_N24
\DATA_Mux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux~1_combout\ = (\INST[31]~input_o\) # (!\present_state.state_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datad => \present_state.state_2~q\,
	combout => \DATA_Mux~1_combout\);

-- Location: LCCOMB_X1_Y11_N8
\DATA_Mux[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]$latch~combout\ = (GLOBAL(\enable~inputclkctrl_outclk\) & ((!\DATA_Mux~1_combout\))) # (!GLOBAL(\enable~inputclkctrl_outclk\) & (\DATA_Mux[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_Mux[1]$latch~combout\,
	datac => \enable~inputclkctrl_outclk\,
	datad => \DATA_Mux~1_combout\,
	combout => \DATA_Mux[1]$latch~combout\);

-- Location: IOIBUF_X41_Y19_N8
\INST[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(26),
	o => \INST[26]~input_o\);

-- Location: LCCOMB_X40_Y13_N12
\ALU_op~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op~0_combout\ = (\INST[24]~input_o\ & (\INST[29]~input_o\ & \INST[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[24]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[26]~input_o\,
	combout => \ALU_op~0_combout\);

-- Location: LCCOMB_X40_Y13_N4
\ALU_op[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[0]$latch~combout\ = (GLOBAL(\enable~inputclkctrl_outclk\) & (\ALU_op~0_combout\)) # (!GLOBAL(\enable~inputclkctrl_outclk\) & ((\ALU_op[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_op~0_combout\,
	datac => \ALU_op[0]$latch~combout\,
	datad => \enable~inputclkctrl_outclk\,
	combout => \ALU_op[0]$latch~combout\);

-- Location: LCCOMB_X40_Y13_N26
\ALU_op~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op~1_combout\ = ((\INST[26]~input_o\ & (!\INST[24]~input_o\ & \INST[27]~input_o\)) # (!\INST[26]~input_o\ & ((!\INST[27]~input_o\)))) # (!\INST[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[24]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[26]~input_o\,
	datad => \INST[27]~input_o\,
	combout => \ALU_op~1_combout\);

-- Location: LCCOMB_X40_Y13_N10
\ALU_op[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[1]$latch~combout\ = (GLOBAL(\enable~inputclkctrl_outclk\) & (\ALU_op~1_combout\)) # (!GLOBAL(\enable~inputclkctrl_outclk\) & ((\ALU_op[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_op~1_combout\,
	datac => \enable~inputclkctrl_outclk\,
	datad => \ALU_op[1]$latch~combout\,
	combout => \ALU_op[1]$latch~combout\);

-- Location: LCCOMB_X40_Y13_N20
\ALU_op~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op~2_combout\ = (\INST[29]~input_o\ & ((\INST[24]~input_o\ & (\INST[25]~input_o\ & \INST[26]~input_o\)) # (!\INST[24]~input_o\ & ((\INST[25]~input_o\) # (\INST[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[24]~input_o\,
	datab => \INST[25]~input_o\,
	datac => \INST[26]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \ALU_op~2_combout\);

-- Location: LCCOMB_X39_Y13_N18
\ALU_op[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[2]$latch~combout\ = (GLOBAL(\enable~inputclkctrl_outclk\) & (\ALU_op~2_combout\)) # (!GLOBAL(\enable~inputclkctrl_outclk\) & ((\ALU_op[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_op~2_combout\,
	datac => \enable~inputclkctrl_outclk\,
	datad => \ALU_op[2]$latch~combout\,
	combout => \ALU_op[2]$latch~combout\);

-- Location: LCCOMB_X36_Y11_N28
\inc_PC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~0_combout\ = (\enable~input_o\ & \present_state.state_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~input_o\,
	datad => \present_state.state_1~q\,
	combout => \inc_PC~0_combout\);

-- Location: IOIBUF_X37_Y0_N8
\statusZ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_statusZ,
	o => \statusZ~input_o\);

-- Location: LCCOMB_X36_Y11_N22
\ld_PC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_PC~2_combout\ = (\INST[29]~input_o\ & (\statusZ~input_o\ & !\INST[28]~input_o\)) # (!\INST[29]~input_o\ & ((\INST[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statusZ~input_o\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \ld_PC~2_combout\);

-- Location: IOIBUF_X19_Y0_N1
\INST[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(30),
	o => \INST[30]~input_o\);

-- Location: LCCOMB_X36_Y11_N14
\ld_PC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_PC~0_combout\ = (\INST[31]~input_o\ & (\enable~input_o\ & (!\INST[30]~input_o\ & \present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \enable~input_o\,
	datac => \INST[30]~input_o\,
	datad => \present_state.state_2~q\,
	combout => \ld_PC~0_combout\);

-- Location: LCCOMB_X36_Y11_N8
\ld_PC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_PC~1_combout\ = (!\statusZ~input_o\ & (\ld_PC~0_combout\ & (!\INST[29]~input_o\ & !\INST[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statusZ~input_o\,
	datab => \ld_PC~0_combout\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \ld_PC~1_combout\);

-- Location: LCCOMB_X36_Y11_N16
\ld_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~0_combout\ = (!\INST[31]~input_o\ & (\enable~input_o\ & (\INST[30]~input_o\ & \present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \enable~input_o\,
	datac => \INST[30]~input_o\,
	datad => \present_state.state_2~q\,
	combout => \ld_A~0_combout\);

-- Location: LCCOMB_X36_Y11_N18
\ld_PC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_PC~3_combout\ = (\inc_PC~0_combout\) # ((\ld_PC~1_combout\) # ((\ld_PC~2_combout\ & \ld_A~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_PC~2_combout\,
	datab => \inc_PC~0_combout\,
	datac => \ld_PC~1_combout\,
	datad => \ld_A~0_combout\,
	combout => \ld_PC~3_combout\);

-- Location: LCCOMB_X1_Y11_N28
\ld_IR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_IR~0_combout\ = (\present_state.state_0~q\) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datad => \present_state.state_0~q\,
	combout => \ld_IR~0_combout\);

-- Location: LCCOMB_X40_Y13_N28
\clr_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_A~0_combout\ = (\INST[26]~input_o\ & (\INST[24]~input_o\ & !\INST[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[26]~input_o\,
	datac => \INST[24]~input_o\,
	datad => \INST[27]~input_o\,
	combout => \clr_A~0_combout\);

-- Location: LCCOMB_X36_Y11_N20
\clr_A~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_A~1_combout\ = (\clr_A~0_combout\ & (\ld_A~0_combout\ & (\INST[29]~input_o\ & \INST[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_A~0_combout\,
	datab => \ld_A~0_combout\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \clr_A~1_combout\);

-- Location: LCCOMB_X36_Y25_N0
\clr_A~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_A~2_combout\ = (\clr_A~1_combout\ & !\INST[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr_A~1_combout\,
	datad => \INST[25]~input_o\,
	combout => \clr_A~2_combout\);

-- Location: LCCOMB_X40_Y13_N18
\clr_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_B~0_combout\ = (\INST[26]~input_o\ & (\INST[25]~input_o\ & (!\INST[24]~input_o\ & !\INST[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[26]~input_o\,
	datab => \INST[25]~input_o\,
	datac => \INST[24]~input_o\,
	datad => \INST[27]~input_o\,
	combout => \clr_B~0_combout\);

-- Location: LCCOMB_X40_Y13_N16
\clr_B~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_B~1_combout\ = (\ld_A~0_combout\ & ((\INST[28]~input_o\ & (\clr_B~0_combout\ & \INST[29]~input_o\)) # (!\INST[28]~input_o\ & ((!\INST[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_A~0_combout\,
	datab => \clr_B~0_combout\,
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \clr_B~1_combout\);

-- Location: LCCOMB_X36_Y25_N2
\clr_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_C~0_combout\ = (\clr_A~1_combout\ & \INST[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr_A~1_combout\,
	datad => \INST[25]~input_o\,
	combout => \clr_C~0_combout\);

-- Location: LCCOMB_X40_Y13_N14
\clr_Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_Z~0_combout\ = (!\INST[26]~input_o\ & (!\INST[25]~input_o\ & (!\INST[24]~input_o\ & \INST[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[26]~input_o\,
	datab => \INST[25]~input_o\,
	datac => \INST[24]~input_o\,
	datad => \INST[27]~input_o\,
	combout => \clr_Z~0_combout\);

-- Location: LCCOMB_X40_Y13_N8
\clr_Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_Z~1_combout\ = (\ld_A~0_combout\ & (\clr_Z~0_combout\ & (\INST[28]~input_o\ & \INST[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_A~0_combout\,
	datab => \clr_Z~0_combout\,
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \clr_Z~1_combout\);

-- Location: LCCOMB_X40_Y13_N2
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\INST[26]~input_o\ & (\INST[27]~input_o\ $ (((\INST[25]~input_o\) # (\INST[24]~input_o\))))) # (!\INST[26]~input_o\ & (((!\INST[24]~input_o\ & \INST[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[26]~input_o\,
	datab => \INST[25]~input_o\,
	datac => \INST[24]~input_o\,
	datad => \INST[27]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X36_Y11_N6
\ld_A~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~3_combout\ = (\ld_A~0_combout\ & (!\Mux3~0_combout\ & \INST[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_A~0_combout\,
	datac => \Mux3~0_combout\,
	datad => \INST[28]~input_o\,
	combout => \ld_A~3_combout\);

-- Location: LCCOMB_X36_Y11_N2
\ld_A~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~1_combout\ = (!\INST[29]~input_o\ & ((\INST[31]~input_o\ & (!\INST[30]~input_o\ & \INST[28]~input_o\)) # (!\INST[31]~input_o\ & (\INST[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \ld_A~1_combout\);

-- Location: LCCOMB_X36_Y11_N24
\ld_A~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~2_combout\ = (\present_state.state_2~q\ & (\enable~input_o\ & \ld_A~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_2~q\,
	datac => \enable~input_o\,
	datad => \ld_A~1_combout\,
	combout => \ld_A~2_combout\);

-- Location: LCCOMB_X36_Y11_N4
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\INST[30]~input_o\) # ((\INST[29]~input_o\) # (\INST[31]~input_o\ $ (\INST[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X36_Y11_N30
\ld_A~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~4_combout\ = (\ld_A~3_combout\) # ((\ld_A~2_combout\) # ((!\Mux0~0_combout\ & \inc_PC~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_A~3_combout\,
	datab => \ld_A~2_combout\,
	datac => \Mux0~0_combout\,
	datad => \inc_PC~0_combout\,
	combout => \ld_A~4_combout\);

-- Location: LCCOMB_X36_Y11_N12
\ld_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_B~0_combout\ = (\inc_PC~0_combout\ & (!\INST[30]~input_o\ & (\INST[31]~input_o\ $ (\INST[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \inc_PC~0_combout\,
	datac => \INST[30]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \ld_B~0_combout\);

-- Location: LCCOMB_X36_Y11_N26
\ld_B~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_B~1_combout\ = (\ld_B~0_combout\ & ((\INST[29]~input_o\ $ (\INST[28]~input_o\)))) # (!\ld_B~0_combout\ & (\ld_PC~0_combout\ & (\INST[29]~input_o\ & !\INST[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_B~0_combout\,
	datab => \ld_PC~0_combout\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \ld_B~1_combout\);

-- Location: LCCOMB_X40_Y13_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\INST[26]~input_o\ & ((\INST[25]~input_o\ & ((!\INST[27]~input_o\))) # (!\INST[25]~input_o\ & ((\INST[24]~input_o\) # (\INST[27]~input_o\))))) # (!\INST[26]~input_o\ & (((\INST[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[26]~input_o\,
	datab => \INST[25]~input_o\,
	datac => \INST[24]~input_o\,
	datad => \INST[27]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X40_Y13_N22
\ld_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_C~0_combout\ = (\ld_A~0_combout\ & ((\INST[28]~input_o\ & (!\Mux6~0_combout\ & \INST[29]~input_o\)) # (!\INST[28]~input_o\ & ((!\INST[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_A~0_combout\,
	datab => \Mux6~0_combout\,
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \ld_C~0_combout\);

-- Location: LCCOMB_X1_Y11_N0
\T[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T[0]~0_combout\ = !\present_state.state_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.state_2~q\,
	combout => \T[0]~0_combout\);

-- Location: FF_X1_Y11_N1
\T[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \T[0]~0_combout\,
	clrn => \enable~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T[0]~reg0_q\);

-- Location: LCCOMB_X1_Y11_N12
\T[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \T[1]~1_combout\ = !\present_state.state_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.state_0~q\,
	combout => \T[1]~1_combout\);

-- Location: FF_X1_Y11_N13
\T[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \T[1]~1_combout\,
	clrn => \enable~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T[1]~reg0_q\);

-- Location: FF_X1_Y11_N7
\T[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \present_state.state_1~q\,
	clrn => \enable~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T[2]~reg0_q\);

-- Location: IOIBUF_X0_Y14_N22
\mclk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mclk,
	o => \mclk~input_o\);

-- Location: CLKCTRL_G3
\mclk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mclk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N4
\wen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wen~0_combout\ = (!\INST[31]~input_o\ & (\INST[29]~input_o\ & (!\clk~input_o\ & !\INST[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \clk~input_o\,
	datad => \INST[30]~input_o\,
	combout => \wen~0_combout\);

-- Location: LCCOMB_X1_Y11_N30
\process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (\clk~input_o\ & \present_state.state_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~input_o\,
	datad => \present_state.state_2~q\,
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X1_Y11_N16
\wen~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wen~1_combout\ = (\present_state.state_1~q\ & (\wen~0_combout\)) # (!\present_state.state_1~q\ & (((\wen~reg0_q\ & !\process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_1~q\,
	datab => \wen~0_combout\,
	datac => \wen~reg0_q\,
	datad => \process_2~0_combout\,
	combout => \wen~1_combout\);

-- Location: FF_X1_Y11_N17
\wen~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mclk~inputclkctrl_outclk\,
	d => \wen~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wen~reg0_q\);

-- Location: LCCOMB_X36_Y11_N0
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\INST[31]~input_o\ & (!\INST[30]~input_o\ & (\INST[29]~input_o\ $ (\INST[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X1_Y11_N14
\en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \en~0_combout\ = (\process_2~0_combout\ & (((\Mux22~0_combout\)))) # (!\process_2~0_combout\ & (!\present_state.state_1~q\ & ((\en~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_1~q\,
	datab => \Mux22~0_combout\,
	datac => \process_2~0_combout\,
	datad => \en~reg0_q\,
	combout => \en~0_combout\);

-- Location: LCCOMB_X1_Y11_N2
\en~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \en~1_combout\ = (\en~0_combout\) # ((\wen~0_combout\ & \present_state.state_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wen~0_combout\,
	datac => \en~0_combout\,
	datad => \present_state.state_1~q\,
	combout => \en~1_combout\);

-- Location: FF_X1_Y11_N3
\en~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mclk~inputclkctrl_outclk\,
	d => \en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en~reg0_q\);

-- Location: IOIBUF_X21_Y0_N8
\statusC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_statusC,
	o => \statusC~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\INST[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(0),
	o => \INST[0]~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\INST[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(1),
	o => \INST[1]~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\INST[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(2),
	o => \INST[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\INST[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(3),
	o => \INST[3]~input_o\);

-- Location: IOIBUF_X28_Y29_N15
\INST[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(4),
	o => \INST[4]~input_o\);

-- Location: IOIBUF_X26_Y29_N15
\INST[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(5),
	o => \INST[5]~input_o\);

-- Location: IOIBUF_X41_Y2_N1
\INST[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(6),
	o => \INST[6]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\INST[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(7),
	o => \INST[7]~input_o\);

-- Location: IOIBUF_X32_Y29_N1
\INST[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(8),
	o => \INST[8]~input_o\);

-- Location: IOIBUF_X1_Y29_N1
\INST[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(9),
	o => \INST[9]~input_o\);

-- Location: IOIBUF_X14_Y29_N22
\INST[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(10),
	o => \INST[10]~input_o\);

-- Location: IOIBUF_X1_Y29_N29
\INST[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(11),
	o => \INST[11]~input_o\);

-- Location: IOIBUF_X3_Y29_N15
\INST[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(12),
	o => \INST[12]~input_o\);

-- Location: IOIBUF_X11_Y29_N1
\INST[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(13),
	o => \INST[13]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\INST[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(14),
	o => \INST[14]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\INST[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(15),
	o => \INST[15]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\INST[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(16),
	o => \INST[16]~input_o\);

-- Location: IOIBUF_X14_Y29_N29
\INST[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(17),
	o => \INST[17]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\INST[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(18),
	o => \INST[18]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\INST[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(19),
	o => \INST[19]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\INST[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(20),
	o => \INST[20]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\INST[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(21),
	o => \INST[21]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\INST[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(22),
	o => \INST[22]~input_o\);

-- Location: IOIBUF_X11_Y29_N8
\INST[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(23),
	o => \INST[23]~input_o\);

ww_A_Mux <= \A_Mux~output_o\;

ww_B_Mux <= \B_Mux~output_o\;

ww_IM_MUX1 <= \IM_MUX1~output_o\;

ww_REG_Mux <= \REG_Mux~output_o\;

ww_IM_MUX2(0) <= \IM_MUX2[0]~output_o\;

ww_IM_MUX2(1) <= \IM_MUX2[1]~output_o\;

ww_DATA_Mux(0) <= \DATA_Mux[0]~output_o\;

ww_DATA_Mux(1) <= \DATA_Mux[1]~output_o\;

ww_ALU_op(0) <= \ALU_op[0]~output_o\;

ww_ALU_op(1) <= \ALU_op[1]~output_o\;

ww_ALU_op(2) <= \ALU_op[2]~output_o\;

ww_inc_PC <= \inc_PC~output_o\;

ww_ld_PC <= \ld_PC~output_o\;

ww_clr_IR <= \clr_IR~output_o\;

ww_ld_IR <= \ld_IR~output_o\;

ww_clr_A <= \clr_A~output_o\;

ww_clr_B <= \clr_B~output_o\;

ww_clr_C <= \clr_C~output_o\;

ww_clr_Z <= \clr_Z~output_o\;

ww_ld_A <= \ld_A~output_o\;

ww_ld_B <= \ld_B~output_o\;

ww_ld_C <= \ld_C~output_o\;

ww_ld_Z <= \ld_Z~output_o\;

ww_T(0) <= \T[0]~output_o\;

ww_T(1) <= \T[1]~output_o\;

ww_T(2) <= \T[2]~output_o\;

ww_wen <= \wen~output_o\;

ww_en <= \en~output_o\;
END structure;


