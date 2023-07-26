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

-- DATE "02/09/2023 20:09:10"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0);
	op : IN std_logic_vector(2 DOWNTO 0);
	result : BUFFER std_logic_vector(31 DOWNTO 0);
	zero : BUFFER std_logic;
	Cout : BUFFER std_logic
	);
END alu;

-- Design Ports Information
-- result[0]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[16]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[17]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[18]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[19]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[20]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[21]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[22]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[23]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[24]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[25]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[26]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[27]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[28]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[29]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[30]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[31]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[16]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[17]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[18]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[19]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[20]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[21]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[22]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[23]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[24]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[25]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[26]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[27]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[28]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[29]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[30]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[31]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \result[16]~output_o\ : std_logic;
SIGNAL \result[17]~output_o\ : std_logic;
SIGNAL \result[18]~output_o\ : std_logic;
SIGNAL \result[19]~output_o\ : std_logic;
SIGNAL \result[20]~output_o\ : std_logic;
SIGNAL \result[21]~output_o\ : std_logic;
SIGNAL \result[22]~output_o\ : std_logic;
SIGNAL \result[23]~output_o\ : std_logic;
SIGNAL \result[24]~output_o\ : std_logic;
SIGNAL \result[25]~output_o\ : std_logic;
SIGNAL \result[26]~output_o\ : std_logic;
SIGNAL \result[27]~output_o\ : std_logic;
SIGNAL \result[28]~output_o\ : std_logic;
SIGNAL \result[29]~output_o\ : std_logic;
SIGNAL \result[30]~output_o\ : std_logic;
SIGNAL \result[31]~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \sub0|stage0|stage0|stage0|Cout~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \sub0|stage0|stage0|stage1|s~combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \add0|stage0|stage0|stage0|Cout~0_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \sub0|stage0|stage0|stage2|s~0_combout\ : std_logic;
SIGNAL \add0|stage0|stage0|stage2|s~combout\ : std_logic;
SIGNAL \result_s~0_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \sub0|stage0|stage0|stage2|s~combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \add0|stage0|stage0|stage2|Cout~0_combout\ : std_logic;
SIGNAL \add0|stage0|stage0|stage2|Cout~1_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \sub0|stage0|stage0|stage1|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage0|stage0|stage2|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage0|stage0|stage3|s~combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \add0|stage0|stage0|stage3|Cout~0_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \sub0|stage0|stage0|stage3|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage0|stage1|stage0|s~combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \add0|stage0|stage1|stage0|Cout~0_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \sub0|stage0|stage1|stage0|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage0|stage1|stage1|s~combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \add0|stage0|stage1|stage1|Cout~0_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \sub0|stage0|stage1|stage1|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage0|stage1|stage2|s~combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \add0|stage0|stage1|stage2|Cout~0_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \sub0|stage0|stage1|stage2|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage0|stage1|stage3|s~combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \sub0|stage0|stage1|stage3|Cout~0_combout\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \sub0|stage0|stage2|stage0|s~combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \add0|stage0|stage1|stage3|Cout~0_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \sub0|stage0|stage2|stage0|Cout~0_combout\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \sub0|stage0|stage2|stage1|s~combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \add0|stage0|stage2|stage0|Cout~0_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \add0|stage0|stage2|stage1|Cout~0_combout\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \sub0|stage0|stage2|stage1|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage0|stage2|stage2|s~combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \add0|stage0|stage2|stage2|Cout~0_combout\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \sub0|stage0|stage2|stage2|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage0|stage2|stage3|s~combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \sub0|stage0|stage2|stage3|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage0|stage3|stage0|s~combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \add0|stage0|stage2|stage3|Cout~0_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \add0|stage0|stage3|stage0|Cout~0_combout\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \sub0|stage0|stage3|stage0|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage0|stage3|stage1|s~combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \add0|stage0|stage3|stage1|Cout~0_combout\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \sub0|stage0|stage3|stage1|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage0|stage3|stage2|s~combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \add0|stage0|stage3|stage2|Cout~0_combout\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \sub0|stage0|stage3|stage2|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage0|stage3|stage3|s~combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \add0|stage0|stage3|stage3|Cout~0_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \sub0|stage0|stage3|stage3|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage1|stage0|stage0|s~combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \add0|stage1|stage0|stage0|Cout~0_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \sub0|stage1|stage0|stage0|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage1|stage0|stage1|s~combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \add0|stage1|stage0|stage1|Cout~0_combout\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \sub0|stage1|stage0|stage1|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage1|stage0|stage2|s~combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \sub0|stage1|stage0|stage2|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage1|stage0|stage3|s~combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \add0|stage1|stage0|stage2|Cout~0_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \add0|stage1|stage0|stage3|Cout~0_combout\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \sub0|stage1|stage0|stage3|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage1|stage1|stage0|s~combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \sub0|stage1|stage1|stage0|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage1|stage1|stage1|s~combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \add0|stage1|stage1|stage0|Cout~0_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \add0|stage1|stage1|stage1|Cout~0_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \sub0|stage1|stage1|stage1|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage1|stage1|stage2|s~combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \sub0|stage1|stage1|stage2|Cout~0_combout\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \sub0|stage1|stage1|stage3|s~combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \add0|stage1|stage1|stage2|Cout~0_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \add0|stage1|stage1|stage3|Cout~0_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \sub0|stage1|stage1|stage3|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage1|stage2|stage0|s~combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \b[25]~input_o\ : std_logic;
SIGNAL \sub0|stage1|stage2|stage0|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage1|stage2|stage1|s~combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \add0|stage1|stage2|stage0|Cout~0_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \b[26]~input_o\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \add0|stage1|stage2|stage1|Cout~0_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \sub0|stage1|stage2|stage1|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage1|stage2|stage2|s~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \add0|stage1|stage2|stage2|Cout~0_combout\ : std_logic;
SIGNAL \b[27]~input_o\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \sub0|stage1|stage2|stage2|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage1|stage2|stage3|s~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \b[28]~input_o\ : std_logic;
SIGNAL \sub0|stage1|stage2|stage3|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage1|stage3|stage0|s~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \add0|stage1|stage2|stage3|Cout~0_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \b[29]~input_o\ : std_logic;
SIGNAL \sub0|stage1|stage3|stage0|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage1|stage3|stage1|s~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \add0|stage1|stage3|stage0|Cout~0_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \b[30]~input_o\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \add0|stage1|stage3|stage1|Cout~0_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \sub0|stage1|stage3|stage1|Cout~0_combout\ : std_logic;
SIGNAL \sub0|stage1|stage3|stage2|s~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \b[31]~input_o\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \sub0|stage1|stage3|stage2|Cout~0_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \add0|stage1|stage3|stage2|Cout~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Mux32~4_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_op <= op;
result <= ww_result;
zero <= ww_zero;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X115_Y44_N2
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~3_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~2_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~4_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~2_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~4_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~2_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~2_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~2_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~2_combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~2_combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~2_combout\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~2_combout\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~2_combout\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~2_combout\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~2_combout\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\result[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~4_combout\,
	devoe => ww_devoe,
	o => \result[16]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\result[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~2_combout\,
	devoe => ww_devoe,
	o => \result[17]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\result[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~2_combout\,
	devoe => ww_devoe,
	o => \result[18]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\result[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~2_combout\,
	devoe => ww_devoe,
	o => \result[19]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\result[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~2_combout\,
	devoe => ww_devoe,
	o => \result[20]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\result[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~2_combout\,
	devoe => ww_devoe,
	o => \result[21]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\result[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~2_combout\,
	devoe => ww_devoe,
	o => \result[22]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\result[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~2_combout\,
	devoe => ww_devoe,
	o => \result[23]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\result[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~2_combout\,
	devoe => ww_devoe,
	o => \result[24]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\result[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => \result[25]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\result[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => \result[26]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\result[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~2_combout\,
	devoe => ww_devoe,
	o => \result[27]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\result[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~2_combout\,
	devoe => ww_devoe,
	o => \result[28]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\result[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => \result[29]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\result[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \result[30]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\result[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~6_combout\,
	devoe => ww_devoe,
	o => \result[31]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~11_combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~3_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOIBUF_X58_Y0_N8
\op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X57_Y44_N8
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\a[0]~input_o\ & ((!\op[0]~input_o\) # (!\op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: IOIBUF_X45_Y73_N1
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X57_Y44_N2
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\op[1]~input_o\ & (((\a[0]~input_o\) # (!\op[0]~input_o\)))) # (!\op[1]~input_o\ & (\a[1]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X57_Y44_N28
\Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\b[0]~input_o\ & ((\op[0]~input_o\) # (\Mux31~0_combout\ $ (\Mux31~1_combout\)))) # (!\b[0]~input_o\ & (\Mux31~0_combout\ & ((\op[0]~input_o\) # (\Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \Mux31~0_combout\,
	datac => \op[0]~input_o\,
	datad => \Mux31~1_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X57_Y44_N30
\Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\op[2]~input_o\ & (\Mux31~1_combout\ & ((\Mux31~2_combout\) # (\op[0]~input_o\)))) # (!\op[2]~input_o\ & (\Mux31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \Mux31~2_combout\,
	datac => \op[0]~input_o\,
	datad => \Mux31~1_combout\,
	combout => \Mux31~3_combout\);

-- Location: IOIBUF_X47_Y0_N8
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X57_Y44_N20
\sub0|stage0|stage0|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage0|stage0|Cout~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ & \op[2]~input_o\)) # (!\b[0]~input_o\ & ((\a[0]~input_o\) # (\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \sub0|stage0|stage0|stage0|Cout~0_combout\);

-- Location: IOIBUF_X58_Y73_N1
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X57_Y44_N6
\sub0|stage0|stage0|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage0|stage1|s~combout\ = \a[1]~input_o\ $ (\sub0|stage0|stage0|stage0|Cout~0_combout\ $ (\b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \sub0|stage0|stage0|stage0|Cout~0_combout\,
	datac => \b[1]~input_o\,
	combout => \sub0|stage0|stage0|stage1|s~combout\);

-- Location: LCCOMB_X57_Y44_N24
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)) # (!\sub0|stage0|stage0|stage1|s~combout\))) # (!\op[1]~input_o\ & (((!\op[0]~input_o\ & \a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage0|stage1|s~combout\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X57_Y44_N26
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & (((\a[1]~input_o\) # (!\op[0]~input_o\)))) # (!\Mux30~0_combout\ & (\a[2]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \Mux30~0_combout\,
	datac => \op[0]~input_o\,
	datad => \a[1]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X57_Y44_N16
\Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\b[1]~input_o\ & ((\op[0]~input_o\) # (\a[1]~input_o\ $ (\op[1]~input_o\)))) # (!\b[1]~input_o\ & (\a[1]~input_o\ & (\op[0]~input_o\ $ (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X57_Y44_N4
\add0|stage0|stage0|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage0|stage0|Cout~0_combout\ = (\b[0]~input_o\ & ((\a[0]~input_o\) # (\op[2]~input_o\))) # (!\b[0]~input_o\ & (\a[0]~input_o\ & \op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \add0|stage0|stage0|stage0|Cout~0_combout\);

-- Location: LCCOMB_X57_Y44_N18
\Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = \Mux30~3_combout\ $ (((\add0|stage0|stage0|stage0|Cout~0_combout\ & (!\op[0]~input_o\ & \op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \add0|stage0|stage0|stage0|Cout~0_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X56_Y43_N8
\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\op[2]~input_o\ & (\Mux30~1_combout\)) # (!\op[2]~input_o\ & ((\Mux30~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux30~1_combout\,
	datac => \Mux30~4_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux30~2_combout\);

-- Location: IOIBUF_X58_Y73_N15
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X57_Y45_N0
\sub0|stage0|stage0|stage2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage0|stage2|s~0_combout\ = \a[2]~input_o\ $ (\b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	combout => \sub0|stage0|stage0|stage2|s~0_combout\);

-- Location: LCCOMB_X57_Y44_N10
\add0|stage0|stage0|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage0|stage2|s~combout\ = \sub0|stage0|stage0|stage2|s~0_combout\ $ (((\a[1]~input_o\ & ((\b[1]~input_o\) # (\add0|stage0|stage0|stage0|Cout~0_combout\))) # (!\a[1]~input_o\ & (\b[1]~input_o\ & \add0|stage0|stage0|stage0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \sub0|stage0|stage0|stage2|s~0_combout\,
	datad => \add0|stage0|stage0|stage0|Cout~0_combout\,
	combout => \add0|stage0|stage0|stage2|s~combout\);

-- Location: LCCOMB_X57_Y45_N4
\result_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \result_s~0_combout\ = (\a[2]~input_o\ & \b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	combout => \result_s~0_combout\);

-- Location: LCCOMB_X57_Y45_N22
\Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\op[0]~input_o\ & (((\op[1]~input_o\)))) # (!\op[0]~input_o\ & ((\op[1]~input_o\ & (\add0|stage0|stage0|stage2|s~combout\)) # (!\op[1]~input_o\ & ((\result_s~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|stage0|stage0|stage2|s~combout\,
	datab => \result_s~0_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X57_Y45_N16
\Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\op[0]~input_o\ & ((\b[2]~input_o\) # ((!\Mux29~2_combout\ & \a[2]~input_o\)))) # (!\op[0]~input_o\ & (\Mux29~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~2_combout\,
	datab => \b[2]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[2]~input_o\,
	combout => \Mux29~3_combout\);

-- Location: IOIBUF_X45_Y73_N8
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X57_Y44_N22
\sub0|stage0|stage0|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage0|stage2|s~combout\ = \sub0|stage0|stage0|stage2|s~0_combout\ $ (((\sub0|stage0|stage0|stage0|Cout~0_combout\ & ((\a[1]~input_o\) # (!\b[1]~input_o\))) # (!\sub0|stage0|stage0|stage0|Cout~0_combout\ & (!\b[1]~input_o\ & 
-- \a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage0|stage2|s~0_combout\,
	datab => \sub0|stage0|stage0|stage0|Cout~0_combout\,
	datac => \b[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \sub0|stage0|stage0|stage2|s~combout\);

-- Location: LCCOMB_X57_Y44_N0
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)) # (!\sub0|stage0|stage0|stage2|s~combout\))) # (!\op[1]~input_o\ & (((!\op[0]~input_o\ & \a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage0|stage2|s~combout\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[1]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X57_Y45_N26
\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\op[0]~input_o\ & ((\Mux29~0_combout\ & (\a[2]~input_o\)) # (!\Mux29~0_combout\ & ((\a[3]~input_o\))))) # (!\op[0]~input_o\ & (((\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[3]~input_o\,
	datac => \op[0]~input_o\,
	datad => \Mux29~0_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X56_Y43_N10
\Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\op[2]~input_o\ & ((\Mux29~1_combout\))) # (!\op[2]~input_o\ & (\Mux29~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~3_combout\,
	datac => \Mux29~1_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux29~4_combout\);

-- Location: IOIBUF_X49_Y73_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X57_Y45_N2
\add0|stage0|stage0|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage0|stage2|Cout~0_combout\ = (\a[2]~input_o\) # (\b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	combout => \add0|stage0|stage0|stage2|Cout~0_combout\);

-- Location: LCCOMB_X57_Y44_N14
\add0|stage0|stage0|stage2|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage0|stage2|Cout~1_combout\ = (\add0|stage0|stage0|stage2|Cout~0_combout\ & ((\a[1]~input_o\ & ((\add0|stage0|stage0|stage0|Cout~0_combout\) # (\b[1]~input_o\))) # (!\a[1]~input_o\ & (\add0|stage0|stage0|stage0|Cout~0_combout\ & 
-- \b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \add0|stage0|stage0|stage0|Cout~0_combout\,
	datac => \b[1]~input_o\,
	datad => \add0|stage0|stage0|stage2|Cout~0_combout\,
	combout => \add0|stage0|stage0|stage2|Cout~1_combout\);

-- Location: LCCOMB_X57_Y45_N20
\Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = \a[3]~input_o\ $ (((\op[1]~input_o\ & ((\add0|stage0|stage0|stage2|Cout~1_combout\) # (\result_s~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|stage0|stage0|stage2|Cout~1_combout\,
	datab => \a[3]~input_o\,
	datac => \result_s~0_combout\,
	datad => \op[1]~input_o\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X57_Y45_N6
\Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\b[3]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\ $ (\Mux28~3_combout\)))) # (!\b[3]~input_o\ & (\Mux28~3_combout\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \b[3]~input_o\,
	datac => \op[0]~input_o\,
	datad => \Mux28~3_combout\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X57_Y44_N12
\sub0|stage0|stage0|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage0|stage1|Cout~0_combout\ = (\a[1]~input_o\ & ((\sub0|stage0|stage0|stage0|Cout~0_combout\) # (!\b[1]~input_o\))) # (!\a[1]~input_o\ & (\sub0|stage0|stage0|stage0|Cout~0_combout\ & !\b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \sub0|stage0|stage0|stage0|Cout~0_combout\,
	datac => \b[1]~input_o\,
	combout => \sub0|stage0|stage0|stage1|Cout~0_combout\);

-- Location: LCCOMB_X57_Y45_N10
\sub0|stage0|stage0|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage0|stage2|Cout~0_combout\ = (\a[2]~input_o\ & ((\sub0|stage0|stage0|stage1|Cout~0_combout\) # (!\b[2]~input_o\))) # (!\a[2]~input_o\ & (!\b[2]~input_o\ & \sub0|stage0|stage0|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \sub0|stage0|stage0|stage1|Cout~0_combout\,
	combout => \sub0|stage0|stage0|stage2|Cout~0_combout\);

-- Location: LCCOMB_X57_Y45_N28
\sub0|stage0|stage0|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage0|stage3|s~combout\ = \a[3]~input_o\ $ (\b[3]~input_o\ $ (\sub0|stage0|stage0|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[3]~input_o\,
	datac => \b[3]~input_o\,
	datad => \sub0|stage0|stage0|stage2|Cout~0_combout\,
	combout => \sub0|stage0|stage0|stage3|s~combout\);

-- Location: LCCOMB_X57_Y45_N30
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\op[0]~input_o\ & (((\op[1]~input_o\)))) # (!\op[0]~input_o\ & ((\op[1]~input_o\ & ((!\sub0|stage0|stage0|stage3|s~combout\))) # (!\op[1]~input_o\ & (\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \sub0|stage0|stage0|stage3|s~combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: IOIBUF_X58_Y73_N22
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X57_Y45_N24
\Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux28~0_combout\ & ((\a[3]~input_o\) # ((!\op[0]~input_o\)))) # (!\Mux28~0_combout\ & (((\op[0]~input_o\ & \a[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \a[3]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[4]~input_o\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X57_Y45_N12
\Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\op[2]~input_o\ & ((\Mux28~1_combout\))) # (!\op[2]~input_o\ & (\Mux28~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datac => \op[2]~input_o\,
	datad => \Mux28~1_combout\,
	combout => \Mux28~2_combout\);

-- Location: IOIBUF_X58_Y73_N8
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X57_Y45_N18
\add0|stage0|stage0|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage0|stage3|Cout~0_combout\ = (\b[3]~input_o\ & ((\add0|stage0|stage0|stage2|Cout~1_combout\) # ((\result_s~0_combout\) # (\a[3]~input_o\)))) # (!\b[3]~input_o\ & (\a[3]~input_o\ & ((\add0|stage0|stage0|stage2|Cout~1_combout\) # 
-- (\result_s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|stage0|stage0|stage2|Cout~1_combout\,
	datab => \result_s~0_combout\,
	datac => \b[3]~input_o\,
	datad => \a[3]~input_o\,
	combout => \add0|stage0|stage0|stage3|Cout~0_combout\);

-- Location: LCCOMB_X58_Y45_N4
\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = \a[4]~input_o\ $ (((\add0|stage0|stage0|stage3|Cout~0_combout\ & \op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \add0|stage0|stage0|stage3|Cout~0_combout\,
	datad => \op[1]~input_o\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X58_Y45_N6
\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\b[4]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\ $ (\Mux27~2_combout\)))) # (!\b[4]~input_o\ & (\Mux27~2_combout\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \b[4]~input_o\,
	datac => \Mux27~2_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X57_Y45_N14
\sub0|stage0|stage0|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage0|stage3|Cout~0_combout\ = (\a[3]~input_o\ & ((\sub0|stage0|stage0|stage2|Cout~0_combout\) # (!\b[3]~input_o\))) # (!\a[3]~input_o\ & (!\b[3]~input_o\ & \sub0|stage0|stage0|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[3]~input_o\,
	datac => \b[3]~input_o\,
	datad => \sub0|stage0|stage0|stage2|Cout~0_combout\,
	combout => \sub0|stage0|stage0|stage3|Cout~0_combout\);

-- Location: LCCOMB_X58_Y45_N16
\sub0|stage0|stage1|stage0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage1|stage0|s~combout\ = \sub0|stage0|stage0|stage3|Cout~0_combout\ $ (\b[4]~input_o\ $ (\a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage0|stage3|Cout~0_combout\,
	datab => \b[4]~input_o\,
	datad => \a[4]~input_o\,
	combout => \sub0|stage0|stage1|stage0|s~combout\);

-- Location: LCCOMB_X57_Y45_N8
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\) # (!\sub0|stage0|stage1|stage0|s~combout\)))) # (!\op[1]~input_o\ & (\a[3]~input_o\ & (!\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \a[3]~input_o\,
	datac => \op[0]~input_o\,
	datad => \sub0|stage0|stage1|stage0|s~combout\,
	combout => \Mux27~0_combout\);

-- Location: IOIBUF_X60_Y73_N15
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X58_Y45_N26
\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\op[0]~input_o\ & ((\Mux27~0_combout\ & (\a[4]~input_o\)) # (!\Mux27~0_combout\ & ((\a[5]~input_o\))))) # (!\op[0]~input_o\ & (((\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \op[0]~input_o\,
	datac => \Mux27~0_combout\,
	datad => \a[5]~input_o\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X58_Y45_N0
\Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\op[2]~input_o\ & ((\Mux27~1_combout\))) # (!\op[2]~input_o\ & (\Mux27~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~3_combout\,
	datab => \op[2]~input_o\,
	datac => \Mux27~1_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X58_Y45_N18
\add0|stage0|stage1|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage1|stage0|Cout~0_combout\ = (\a[4]~input_o\ & ((\add0|stage0|stage0|stage3|Cout~0_combout\) # (\b[4]~input_o\))) # (!\a[4]~input_o\ & (\add0|stage0|stage0|stage3|Cout~0_combout\ & \b[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \add0|stage0|stage0|stage3|Cout~0_combout\,
	datad => \b[4]~input_o\,
	combout => \add0|stage0|stage1|stage0|Cout~0_combout\);

-- Location: IOIBUF_X54_Y0_N22
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X58_Y45_N12
\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\b[5]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\ $ (\a[5]~input_o\)))) # (!\b[5]~input_o\ & (\a[5]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[5]~input_o\,
	datad => \a[5]~input_o\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X58_Y45_N22
\Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = \Mux26~3_combout\ $ (((\op[1]~input_o\ & (\add0|stage0|stage1|stage0|Cout~0_combout\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \add0|stage0|stage1|stage0|Cout~0_combout\,
	datac => \Mux26~3_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X58_Y45_N2
\sub0|stage0|stage1|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage1|stage0|Cout~0_combout\ = (\sub0|stage0|stage0|stage3|Cout~0_combout\ & ((\a[4]~input_o\) # (!\b[4]~input_o\))) # (!\sub0|stage0|stage0|stage3|Cout~0_combout\ & (!\b[4]~input_o\ & \a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage0|stage3|Cout~0_combout\,
	datab => \b[4]~input_o\,
	datad => \a[4]~input_o\,
	combout => \sub0|stage0|stage1|stage0|Cout~0_combout\);

-- Location: LCCOMB_X58_Y45_N28
\sub0|stage0|stage1|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage1|stage1|s~combout\ = \sub0|stage0|stage1|stage0|Cout~0_combout\ $ (\b[5]~input_o\ $ (\a[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub0|stage0|stage1|stage0|Cout~0_combout\,
	datac => \b[5]~input_o\,
	datad => \a[5]~input_o\,
	combout => \sub0|stage0|stage1|stage1|s~combout\);

-- Location: LCCOMB_X58_Y45_N30
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)) # (!\sub0|stage0|stage1|stage1|s~combout\))) # (!\op[1]~input_o\ & (((\a[4]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \sub0|stage0|stage1|stage1|s~combout\,
	datac => \a[4]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: IOIBUF_X62_Y73_N22
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X58_Y45_N24
\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux26~0_combout\ & (((\a[5]~input_o\)) # (!\op[0]~input_o\))) # (!\Mux26~0_combout\ & (\op[0]~input_o\ & (\a[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \op[0]~input_o\,
	datac => \a[6]~input_o\,
	datad => \a[5]~input_o\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X58_Y45_N20
\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\op[2]~input_o\ & ((\Mux26~1_combout\))) # (!\op[2]~input_o\ & (\Mux26~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[2]~input_o\,
	datac => \Mux26~4_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X58_Y45_N8
\add0|stage0|stage1|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage1|stage1|Cout~0_combout\ = (\add0|stage0|stage1|stage0|Cout~0_combout\ & ((\b[5]~input_o\) # (\a[5]~input_o\))) # (!\add0|stage0|stage1|stage0|Cout~0_combout\ & (\b[5]~input_o\ & \a[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add0|stage0|stage1|stage0|Cout~0_combout\,
	datac => \b[5]~input_o\,
	datad => \a[5]~input_o\,
	combout => \add0|stage0|stage1|stage1|Cout~0_combout\);

-- Location: IOIBUF_X60_Y73_N8
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X59_Y45_N4
\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\b[6]~input_o\ & ((\op[0]~input_o\) # (\a[6]~input_o\ $ (\op[1]~input_o\)))) # (!\b[6]~input_o\ & (\a[6]~input_o\ & (\op[0]~input_o\ $ (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \b[6]~input_o\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X59_Y45_N30
\Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = \Mux25~3_combout\ $ (((\add0|stage0|stage1|stage1|Cout~0_combout\ & (\op[1]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|stage0|stage1|stage1|Cout~0_combout\,
	datab => \op[1]~input_o\,
	datac => \Mux25~3_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux25~4_combout\);

-- Location: IOIBUF_X60_Y0_N22
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X58_Y45_N14
\sub0|stage0|stage1|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage1|stage1|Cout~0_combout\ = (\sub0|stage0|stage1|stage0|Cout~0_combout\ & ((\a[5]~input_o\) # (!\b[5]~input_o\))) # (!\sub0|stage0|stage1|stage0|Cout~0_combout\ & (!\b[5]~input_o\ & \a[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub0|stage0|stage1|stage0|Cout~0_combout\,
	datac => \b[5]~input_o\,
	datad => \a[5]~input_o\,
	combout => \sub0|stage0|stage1|stage1|Cout~0_combout\);

-- Location: LCCOMB_X59_Y45_N24
\sub0|stage0|stage1|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage1|stage2|s~combout\ = \sub0|stage0|stage1|stage1|Cout~0_combout\ $ (\b[6]~input_o\ $ (\a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage1|stage1|Cout~0_combout\,
	datab => \b[6]~input_o\,
	datad => \a[6]~input_o\,
	combout => \sub0|stage0|stage1|stage2|s~combout\);

-- Location: LCCOMB_X59_Y45_N18
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\) # (!\sub0|stage0|stage1|stage2|s~combout\)))) # (!\op[1]~input_o\ & (\a[5]~input_o\ & ((!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \sub0|stage0|stage1|stage2|s~combout\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X59_Y45_N12
\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\op[0]~input_o\ & ((\Mux25~0_combout\ & (\a[6]~input_o\)) # (!\Mux25~0_combout\ & ((\a[7]~input_o\))))) # (!\op[0]~input_o\ & (((\Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[7]~input_o\,
	datad => \Mux25~0_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X59_Y45_N6
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\op[2]~input_o\ & ((\Mux25~1_combout\))) # (!\op[2]~input_o\ & (\Mux25~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~4_combout\,
	datac => \op[2]~input_o\,
	datad => \Mux25~1_combout\,
	combout => \Mux25~2_combout\);

-- Location: IOIBUF_X60_Y73_N1
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X59_Y45_N8
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\b[7]~input_o\ & ((\op[0]~input_o\) # (\a[7]~input_o\ $ (\op[1]~input_o\)))) # (!\b[7]~input_o\ & (\a[7]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \op[1]~input_o\,
	datac => \b[7]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X59_Y45_N16
\add0|stage0|stage1|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage1|stage2|Cout~0_combout\ = (\add0|stage0|stage1|stage1|Cout~0_combout\ & ((\b[6]~input_o\) # (\a[6]~input_o\))) # (!\add0|stage0|stage1|stage1|Cout~0_combout\ & (\b[6]~input_o\ & \a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|stage0|stage1|stage1|Cout~0_combout\,
	datab => \b[6]~input_o\,
	datad => \a[6]~input_o\,
	combout => \add0|stage0|stage1|stage2|Cout~0_combout\);

-- Location: LCCOMB_X59_Y45_N2
\Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = \Mux24~3_combout\ $ (((!\op[0]~input_o\ & (\op[1]~input_o\ & \add0|stage0|stage1|stage2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \Mux24~3_combout\,
	datac => \op[1]~input_o\,
	datad => \add0|stage0|stage1|stage2|Cout~0_combout\,
	combout => \Mux24~4_combout\);

-- Location: IOIBUF_X62_Y73_N15
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X59_Y45_N0
\sub0|stage0|stage1|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage1|stage2|Cout~0_combout\ = (\sub0|stage0|stage1|stage1|Cout~0_combout\ & ((\a[6]~input_o\) # (!\b[6]~input_o\))) # (!\sub0|stage0|stage1|stage1|Cout~0_combout\ & (!\b[6]~input_o\ & \a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage1|stage1|Cout~0_combout\,
	datab => \b[6]~input_o\,
	datad => \a[6]~input_o\,
	combout => \sub0|stage0|stage1|stage2|Cout~0_combout\);

-- Location: LCCOMB_X59_Y45_N10
\sub0|stage0|stage1|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage1|stage3|s~combout\ = \b[7]~input_o\ $ (\sub0|stage0|stage1|stage2|Cout~0_combout\ $ (\a[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \sub0|stage0|stage1|stage2|Cout~0_combout\,
	datac => \a[7]~input_o\,
	combout => \sub0|stage0|stage1|stage3|s~combout\);

-- Location: LCCOMB_X59_Y45_N28
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\op[0]~input_o\ & (((\op[1]~input_o\)))) # (!\op[0]~input_o\ & ((\op[1]~input_o\ & (!\sub0|stage0|stage1|stage3|s~combout\)) # (!\op[1]~input_o\ & ((\a[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage1|stage3|s~combout\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \a[6]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X59_Y45_N14
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\op[0]~input_o\ & ((\Mux24~0_combout\ & (\a[7]~input_o\)) # (!\Mux24~0_combout\ & ((\a[8]~input_o\))))) # (!\op[0]~input_o\ & (((\Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[8]~input_o\,
	datad => \Mux24~0_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X59_Y45_N26
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\op[2]~input_o\ & ((\Mux24~1_combout\))) # (!\op[2]~input_o\ & (\Mux24~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \Mux24~4_combout\,
	datac => \Mux24~1_combout\,
	combout => \Mux24~2_combout\);

-- Location: IOIBUF_X115_Y36_N1
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: LCCOMB_X59_Y45_N20
\sub0|stage0|stage1|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage1|stage3|Cout~0_combout\ = (\b[7]~input_o\ & (\sub0|stage0|stage1|stage2|Cout~0_combout\ & \a[7]~input_o\)) # (!\b[7]~input_o\ & ((\sub0|stage0|stage1|stage2|Cout~0_combout\) # (\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \sub0|stage0|stage1|stage2|Cout~0_combout\,
	datac => \a[7]~input_o\,
	combout => \sub0|stage0|stage1|stage3|Cout~0_combout\);

-- Location: IOIBUF_X74_Y0_N15
\b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: LCCOMB_X66_Y37_N24
\sub0|stage0|stage2|stage0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage2|stage0|s~combout\ = \sub0|stage0|stage1|stage3|Cout~0_combout\ $ (\a[8]~input_o\ $ (\b[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage1|stage3|Cout~0_combout\,
	datac => \a[8]~input_o\,
	datad => \b[8]~input_o\,
	combout => \sub0|stage0|stage2|stage0|s~combout\);

-- Location: LCCOMB_X66_Y37_N2
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\op[1]~input_o\ & ((\op[0]~input_o\) # ((!\sub0|stage0|stage2|stage0|s~combout\)))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & (\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[7]~input_o\,
	datad => \sub0|stage0|stage2|stage0|s~combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X66_Y37_N12
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\op[0]~input_o\ & ((\Mux23~0_combout\ & (\a[8]~input_o\)) # (!\Mux23~0_combout\ & ((\a[9]~input_o\))))) # (!\op[0]~input_o\ & (((\Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[8]~input_o\,
	datac => \a[9]~input_o\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X59_Y45_N22
\add0|stage0|stage1|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage1|stage3|Cout~0_combout\ = (\b[7]~input_o\ & ((\add0|stage0|stage1|stage2|Cout~0_combout\) # (\a[7]~input_o\))) # (!\b[7]~input_o\ & (\add0|stage0|stage1|stage2|Cout~0_combout\ & \a[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \add0|stage0|stage1|stage2|Cout~0_combout\,
	datac => \a[7]~input_o\,
	combout => \add0|stage0|stage1|stage3|Cout~0_combout\);

-- Location: LCCOMB_X66_Y37_N4
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\b[8]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\ $ (\a[8]~input_o\)))) # (!\b[8]~input_o\ & (\a[8]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[8]~input_o\,
	datad => \b[8]~input_o\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X66_Y37_N6
\Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = \Mux23~3_combout\ $ (((\op[1]~input_o\ & (\add0|stage0|stage1|stage3|Cout~0_combout\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \add0|stage0|stage1|stage3|Cout~0_combout\,
	datac => \Mux23~3_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X66_Y33_N16
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\op[2]~input_o\ & (\Mux23~1_combout\)) # (!\op[2]~input_o\ & ((\Mux23~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux23~1_combout\,
	datac => \op[2]~input_o\,
	datad => \Mux23~4_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X66_Y37_N22
\sub0|stage0|stage2|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage2|stage0|Cout~0_combout\ = (\sub0|stage0|stage1|stage3|Cout~0_combout\ & ((\a[8]~input_o\) # (!\b[8]~input_o\))) # (!\sub0|stage0|stage1|stage3|Cout~0_combout\ & (\a[8]~input_o\ & !\b[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage1|stage3|Cout~0_combout\,
	datac => \a[8]~input_o\,
	datad => \b[8]~input_o\,
	combout => \sub0|stage0|stage2|stage0|Cout~0_combout\);

-- Location: IOIBUF_X69_Y73_N15
\b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: LCCOMB_X66_Y37_N8
\sub0|stage0|stage2|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage2|stage1|s~combout\ = \sub0|stage0|stage2|stage0|Cout~0_combout\ $ (\a[9]~input_o\ $ (\b[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage2|stage0|Cout~0_combout\,
	datab => \a[9]~input_o\,
	datac => \b[9]~input_o\,
	combout => \sub0|stage0|stage2|stage1|s~combout\);

-- Location: LCCOMB_X66_Y37_N26
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\) # (!\sub0|stage0|stage2|stage1|s~combout\)))) # (!\op[1]~input_o\ & (\a[8]~input_o\ & ((!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \a[8]~input_o\,
	datac => \sub0|stage0|stage2|stage1|s~combout\,
	datad => \op[0]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: IOIBUF_X67_Y73_N1
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X66_Y37_N28
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\ & (((\a[9]~input_o\)) # (!\op[0]~input_o\))) # (!\Mux22~0_combout\ & (\op[0]~input_o\ & ((\a[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \op[0]~input_o\,
	datac => \a[9]~input_o\,
	datad => \a[10]~input_o\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X66_Y37_N30
\add0|stage0|stage2|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage2|stage0|Cout~0_combout\ = (\add0|stage0|stage1|stage3|Cout~0_combout\ & ((\a[8]~input_o\) # (\b[8]~input_o\))) # (!\add0|stage0|stage1|stage3|Cout~0_combout\ & (\a[8]~input_o\ & \b[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add0|stage0|stage1|stage3|Cout~0_combout\,
	datac => \a[8]~input_o\,
	datad => \b[8]~input_o\,
	combout => \add0|stage0|stage2|stage0|Cout~0_combout\);

-- Location: LCCOMB_X66_Y37_N16
\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\b[9]~input_o\ & ((\op[0]~input_o\) # (\a[9]~input_o\ $ (\op[1]~input_o\)))) # (!\b[9]~input_o\ & (\a[9]~input_o\ & (\op[0]~input_o\ $ (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[9]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[9]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X66_Y37_N18
\Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = \Mux22~3_combout\ $ (((\op[1]~input_o\ & (!\op[0]~input_o\ & \add0|stage0|stage2|stage0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \add0|stage0|stage2|stage0|Cout~0_combout\,
	datad => \Mux22~3_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X66_Y33_N2
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\op[2]~input_o\ & (\Mux22~1_combout\)) # (!\op[2]~input_o\ & ((\Mux22~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Mux22~4_combout\,
	datac => \op[2]~input_o\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X66_Y37_N14
\add0|stage0|stage2|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage2|stage1|Cout~0_combout\ = (\add0|stage0|stage2|stage0|Cout~0_combout\ & ((\a[9]~input_o\) # (\b[9]~input_o\))) # (!\add0|stage0|stage2|stage0|Cout~0_combout\ & (\a[9]~input_o\ & \b[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|stage0|stage2|stage0|Cout~0_combout\,
	datab => \a[9]~input_o\,
	datac => \b[9]~input_o\,
	combout => \add0|stage0|stage2|stage1|Cout~0_combout\);

-- Location: IOIBUF_X115_Y35_N22
\b[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: LCCOMB_X66_Y36_N4
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\b[10]~input_o\ & ((\op[0]~input_o\) # (\a[10]~input_o\ $ (\op[1]~input_o\)))) # (!\b[10]~input_o\ & (\a[10]~input_o\ & (\op[0]~input_o\ $ (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[10]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[10]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X66_Y36_N14
\Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = \Mux21~3_combout\ $ (((\add0|stage0|stage2|stage1|Cout~0_combout\ & (!\op[0]~input_o\ & \op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|stage0|stage2|stage1|Cout~0_combout\,
	datab => \op[0]~input_o\,
	datac => \Mux21~3_combout\,
	datad => \op[1]~input_o\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X66_Y37_N0
\sub0|stage0|stage2|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage2|stage1|Cout~0_combout\ = (\sub0|stage0|stage2|stage0|Cout~0_combout\ & ((\a[9]~input_o\) # (!\b[9]~input_o\))) # (!\sub0|stage0|stage2|stage0|Cout~0_combout\ & (\a[9]~input_o\ & !\b[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage2|stage0|Cout~0_combout\,
	datab => \a[9]~input_o\,
	datac => \b[9]~input_o\,
	combout => \sub0|stage0|stage2|stage1|Cout~0_combout\);

-- Location: LCCOMB_X66_Y37_N10
\sub0|stage0|stage2|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage2|stage2|s~combout\ = \b[10]~input_o\ $ (\sub0|stage0|stage2|stage1|Cout~0_combout\ $ (\a[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[10]~input_o\,
	datab => \sub0|stage0|stage2|stage1|Cout~0_combout\,
	datad => \a[10]~input_o\,
	combout => \sub0|stage0|stage2|stage2|s~combout\);

-- Location: LCCOMB_X66_Y37_N20
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\op[1]~input_o\ & ((\op[0]~input_o\) # ((!\sub0|stage0|stage2|stage2|s~combout\)))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & (\a[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[9]~input_o\,
	datad => \sub0|stage0|stage2|stage2|s~combout\,
	combout => \Mux21~0_combout\);

-- Location: IOIBUF_X115_Y36_N15
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LCCOMB_X66_Y36_N24
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\ & (((\a[10]~input_o\)) # (!\op[0]~input_o\))) # (!\Mux21~0_combout\ & (\op[0]~input_o\ & ((\a[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \op[0]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[11]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X66_Y36_N2
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\op[2]~input_o\ & ((\Mux21~1_combout\))) # (!\op[2]~input_o\ & (\Mux21~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux21~4_combout\,
	datac => \op[2]~input_o\,
	datad => \Mux21~1_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X66_Y36_N28
\add0|stage0|stage2|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage2|stage2|Cout~0_combout\ = (\add0|stage0|stage2|stage1|Cout~0_combout\ & ((\a[10]~input_o\) # (\b[10]~input_o\))) # (!\add0|stage0|stage2|stage1|Cout~0_combout\ & (\a[10]~input_o\ & \b[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|stage0|stage2|stage1|Cout~0_combout\,
	datab => \a[10]~input_o\,
	datad => \b[10]~input_o\,
	combout => \add0|stage0|stage2|stage2|Cout~0_combout\);

-- Location: IOIBUF_X67_Y73_N15
\b[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: LCCOMB_X66_Y36_N8
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\b[11]~input_o\ & ((\op[0]~input_o\) # (\a[11]~input_o\ $ (\op[1]~input_o\)))) # (!\b[11]~input_o\ & (\a[11]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \b[11]~input_o\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X66_Y36_N26
\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = \Mux20~3_combout\ $ (((\add0|stage0|stage2|stage2|Cout~0_combout\ & (!\op[0]~input_o\ & \op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|stage0|stage2|stage2|Cout~0_combout\,
	datab => \op[0]~input_o\,
	datac => \Mux20~3_combout\,
	datad => \op[1]~input_o\,
	combout => \Mux20~4_combout\);

-- Location: IOIBUF_X115_Y33_N8
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LCCOMB_X66_Y36_N12
\sub0|stage0|stage2|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage2|stage2|Cout~0_combout\ = (\sub0|stage0|stage2|stage1|Cout~0_combout\ & ((\a[10]~input_o\) # (!\b[10]~input_o\))) # (!\sub0|stage0|stage2|stage1|Cout~0_combout\ & (\a[10]~input_o\ & !\b[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage2|stage1|Cout~0_combout\,
	datab => \a[10]~input_o\,
	datad => \b[10]~input_o\,
	combout => \sub0|stage0|stage2|stage2|Cout~0_combout\);

-- Location: LCCOMB_X66_Y36_N22
\sub0|stage0|stage2|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage2|stage3|s~combout\ = \sub0|stage0|stage2|stage2|Cout~0_combout\ $ (\b[11]~input_o\ $ (\a[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage2|stage2|Cout~0_combout\,
	datab => \b[11]~input_o\,
	datad => \a[11]~input_o\,
	combout => \sub0|stage0|stage2|stage3|s~combout\);

-- Location: LCCOMB_X66_Y36_N0
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\op[0]~input_o\ & (((\op[1]~input_o\)))) # (!\op[0]~input_o\ & ((\op[1]~input_o\ & (!\sub0|stage0|stage2|stage3|s~combout\)) # (!\op[1]~input_o\ & ((\a[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage2|stage3|s~combout\,
	datab => \op[0]~input_o\,
	datac => \a[10]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X66_Y36_N10
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux20~0_combout\ & (((\a[11]~input_o\) # (!\op[0]~input_o\)))) # (!\Mux20~0_combout\ & (\a[12]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[12]~input_o\,
	datab => \Mux20~0_combout\,
	datac => \op[0]~input_o\,
	datad => \a[11]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X66_Y36_N30
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\op[2]~input_o\ & ((\Mux20~1_combout\))) # (!\op[2]~input_o\ & (\Mux20~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datac => \op[2]~input_o\,
	datad => \Mux20~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: IOIBUF_X67_Y73_N22
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\b[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: LCCOMB_X66_Y36_N16
\sub0|stage0|stage2|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage2|stage3|Cout~0_combout\ = (\sub0|stage0|stage2|stage2|Cout~0_combout\ & ((\a[11]~input_o\) # (!\b[11]~input_o\))) # (!\sub0|stage0|stage2|stage2|Cout~0_combout\ & (!\b[11]~input_o\ & \a[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage2|stage2|Cout~0_combout\,
	datab => \b[11]~input_o\,
	datad => \a[11]~input_o\,
	combout => \sub0|stage0|stage2|stage3|Cout~0_combout\);

-- Location: LCCOMB_X66_Y32_N8
\sub0|stage0|stage3|stage0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage3|stage0|s~combout\ = \b[12]~input_o\ $ (\sub0|stage0|stage2|stage3|Cout~0_combout\ $ (\a[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datab => \sub0|stage0|stage2|stage3|Cout~0_combout\,
	datad => \a[12]~input_o\,
	combout => \sub0|stage0|stage3|stage0|s~combout\);

-- Location: LCCOMB_X66_Y36_N18
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)) # (!\sub0|stage0|stage3|stage0|s~combout\))) # (!\op[1]~input_o\ & (((!\op[0]~input_o\ & \a[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage0|stage3|stage0|s~combout\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[11]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X66_Y32_N10
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux19~0_combout\ & (((\a[12]~input_o\) # (!\op[0]~input_o\)))) # (!\Mux19~0_combout\ & (\a[13]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \Mux19~0_combout\,
	datac => \op[0]~input_o\,
	datad => \a[12]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X66_Y32_N20
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\b[12]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\ $ (\a[12]~input_o\)))) # (!\b[12]~input_o\ & (\a[12]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[12]~input_o\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X66_Y36_N20
\add0|stage0|stage2|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage2|stage3|Cout~0_combout\ = (\a[11]~input_o\ & ((\add0|stage0|stage2|stage2|Cout~0_combout\) # (\b[11]~input_o\))) # (!\a[11]~input_o\ & (\add0|stage0|stage2|stage2|Cout~0_combout\ & \b[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datab => \add0|stage0|stage2|stage2|Cout~0_combout\,
	datad => \b[11]~input_o\,
	combout => \add0|stage0|stage2|stage3|Cout~0_combout\);

-- Location: LCCOMB_X66_Y32_N6
\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = \Mux19~3_combout\ $ (((\op[1]~input_o\ & (!\op[0]~input_o\ & \add0|stage0|stage2|stage3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux19~3_combout\,
	datac => \op[0]~input_o\,
	datad => \add0|stage0|stage2|stage3|Cout~0_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X66_Y32_N4
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\op[2]~input_o\ & (\Mux19~1_combout\)) # (!\op[2]~input_o\ & ((\Mux19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datac => \op[2]~input_o\,
	datad => \Mux19~4_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X66_Y32_N22
\add0|stage0|stage3|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage3|stage0|Cout~0_combout\ = (\b[12]~input_o\ & ((\add0|stage0|stage2|stage3|Cout~0_combout\) # (\a[12]~input_o\))) # (!\b[12]~input_o\ & (\add0|stage0|stage2|stage3|Cout~0_combout\ & \a[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datab => \add0|stage0|stage2|stage3|Cout~0_combout\,
	datad => \a[12]~input_o\,
	combout => \add0|stage0|stage3|stage0|Cout~0_combout\);

-- Location: IOIBUF_X115_Y32_N1
\b[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: LCCOMB_X66_Y32_N16
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\b[13]~input_o\ & ((\op[0]~input_o\) # (\a[13]~input_o\ $ (\op[1]~input_o\)))) # (!\b[13]~input_o\ & (\a[13]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \b[13]~input_o\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X66_Y32_N26
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = \Mux18~3_combout\ $ (((\add0|stage0|stage3|stage0|Cout~0_combout\ & (\op[1]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|stage0|stage3|stage0|Cout~0_combout\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \Mux18~3_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X66_Y32_N14
\sub0|stage0|stage3|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage3|stage0|Cout~0_combout\ = (\b[12]~input_o\ & (\sub0|stage0|stage2|stage3|Cout~0_combout\ & \a[12]~input_o\)) # (!\b[12]~input_o\ & ((\sub0|stage0|stage2|stage3|Cout~0_combout\) # (\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datab => \sub0|stage0|stage2|stage3|Cout~0_combout\,
	datad => \a[12]~input_o\,
	combout => \sub0|stage0|stage3|stage0|Cout~0_combout\);

-- Location: LCCOMB_X66_Y32_N24
\sub0|stage0|stage3|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage3|stage1|s~combout\ = \a[13]~input_o\ $ (\sub0|stage0|stage3|stage0|Cout~0_combout\ $ (\b[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datac => \sub0|stage0|stage3|stage0|Cout~0_combout\,
	datad => \b[13]~input_o\,
	combout => \sub0|stage0|stage3|stage1|s~combout\);

-- Location: LCCOMB_X66_Y32_N18
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)) # (!\sub0|stage0|stage3|stage1|s~combout\))) # (!\op[1]~input_o\ & (((!\op[0]~input_o\ & \a[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \sub0|stage0|stage3|stage1|s~combout\,
	datac => \op[0]~input_o\,
	datad => \a[12]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: IOIBUF_X74_Y0_N8
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X66_Y32_N12
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & ((\a[13]~input_o\) # ((!\op[0]~input_o\)))) # (!\Mux18~0_combout\ & (((\op[0]~input_o\ & \a[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \Mux18~0_combout\,
	datac => \op[0]~input_o\,
	datad => \a[14]~input_o\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X66_Y32_N0
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\op[2]~input_o\ & ((\Mux18~1_combout\))) # (!\op[2]~input_o\ & (\Mux18~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~4_combout\,
	datac => \op[2]~input_o\,
	datad => \Mux18~1_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X66_Y32_N28
\add0|stage0|stage3|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage3|stage1|Cout~0_combout\ = (\a[13]~input_o\ & ((\add0|stage0|stage3|stage0|Cout~0_combout\) # (\b[13]~input_o\))) # (!\a[13]~input_o\ & (\add0|stage0|stage3|stage0|Cout~0_combout\ & \b[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datac => \add0|stage0|stage3|stage0|Cout~0_combout\,
	datad => \b[13]~input_o\,
	combout => \add0|stage0|stage3|stage1|Cout~0_combout\);

-- Location: IOIBUF_X69_Y0_N1
\b[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: LCCOMB_X67_Y33_N20
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\b[14]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\ $ (\a[14]~input_o\)))) # (!\b[14]~input_o\ & (\a[14]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[14]~input_o\,
	datad => \a[14]~input_o\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X67_Y33_N30
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = \Mux17~3_combout\ $ (((\op[1]~input_o\ & (\add0|stage0|stage3|stage1|Cout~0_combout\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \add0|stage0|stage3|stage1|Cout~0_combout\,
	datac => \Mux17~3_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux17~4_combout\);

-- Location: IOIBUF_X79_Y0_N1
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X66_Y32_N2
\sub0|stage0|stage3|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage3|stage1|Cout~0_combout\ = (\a[13]~input_o\ & ((\sub0|stage0|stage3|stage0|Cout~0_combout\) # (!\b[13]~input_o\))) # (!\a[13]~input_o\ & (\sub0|stage0|stage3|stage0|Cout~0_combout\ & !\b[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datac => \sub0|stage0|stage3|stage0|Cout~0_combout\,
	datad => \b[13]~input_o\,
	combout => \sub0|stage0|stage3|stage1|Cout~0_combout\);

-- Location: LCCOMB_X67_Y33_N24
\sub0|stage0|stage3|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage3|stage2|s~combout\ = \sub0|stage0|stage3|stage1|Cout~0_combout\ $ (\b[14]~input_o\ $ (\a[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub0|stage0|stage3|stage1|Cout~0_combout\,
	datac => \b[14]~input_o\,
	datad => \a[14]~input_o\,
	combout => \sub0|stage0|stage3|stage2|s~combout\);

-- Location: LCCOMB_X67_Y33_N10
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)) # (!\sub0|stage0|stage3|stage2|s~combout\))) # (!\op[1]~input_o\ & (((\a[13]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \sub0|stage0|stage3|stage2|s~combout\,
	datac => \a[13]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X67_Y33_N12
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\op[0]~input_o\ & ((\Mux17~0_combout\ & ((\a[14]~input_o\))) # (!\Mux17~0_combout\ & (\a[15]~input_o\)))) # (!\op[0]~input_o\ & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \op[0]~input_o\,
	datac => \Mux17~0_combout\,
	datad => \a[14]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X67_Y33_N6
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\op[2]~input_o\ & ((\Mux17~1_combout\))) # (!\op[2]~input_o\ & (\Mux17~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datac => \Mux17~4_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X67_Y33_N8
\add0|stage0|stage3|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage3|stage2|Cout~0_combout\ = (\add0|stage0|stage3|stage1|Cout~0_combout\ & ((\b[14]~input_o\) # (\a[14]~input_o\))) # (!\add0|stage0|stage3|stage1|Cout~0_combout\ & (\b[14]~input_o\ & \a[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add0|stage0|stage3|stage1|Cout~0_combout\,
	datac => \b[14]~input_o\,
	datad => \a[14]~input_o\,
	combout => \add0|stage0|stage3|stage2|Cout~0_combout\);

-- Location: IOIBUF_X72_Y73_N22
\b[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: LCCOMB_X67_Y33_N16
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\b[15]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\ $ (\a[15]~input_o\)))) # (!\b[15]~input_o\ & (\a[15]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[15]~input_o\,
	datad => \a[15]~input_o\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X67_Y33_N18
\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = \Mux16~3_combout\ $ (((\op[1]~input_o\ & (!\op[0]~input_o\ & \add0|stage0|stage3|stage2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \add0|stage0|stage3|stage2|Cout~0_combout\,
	datad => \Mux16~3_combout\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X67_Y33_N0
\sub0|stage0|stage3|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage3|stage2|Cout~0_combout\ = (\sub0|stage0|stage3|stage1|Cout~0_combout\ & ((\a[14]~input_o\) # (!\b[14]~input_o\))) # (!\sub0|stage0|stage3|stage1|Cout~0_combout\ & (!\b[14]~input_o\ & \a[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub0|stage0|stage3|stage1|Cout~0_combout\,
	datac => \b[14]~input_o\,
	datad => \a[14]~input_o\,
	combout => \sub0|stage0|stage3|stage2|Cout~0_combout\);

-- Location: LCCOMB_X67_Y33_N2
\sub0|stage0|stage3|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage3|stage3|s~combout\ = \sub0|stage0|stage3|stage2|Cout~0_combout\ $ (\b[15]~input_o\ $ (\a[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub0|stage0|stage3|stage2|Cout~0_combout\,
	datac => \b[15]~input_o\,
	datad => \a[15]~input_o\,
	combout => \sub0|stage0|stage3|stage3|s~combout\);

-- Location: LCCOMB_X67_Y33_N28
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)) # (!\sub0|stage0|stage3|stage3|s~combout\))) # (!\op[1]~input_o\ & (((!\op[0]~input_o\ & \a[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \sub0|stage0|stage3|stage3|s~combout\,
	datac => \op[0]~input_o\,
	datad => \a[14]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: IOIBUF_X115_Y33_N1
\a[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: LCCOMB_X67_Y33_N22
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & ((\a[15]~input_o\) # ((!\op[0]~input_o\)))) # (!\Mux16~0_combout\ & (((\a[16]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \Mux16~0_combout\,
	datac => \a[16]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X66_Y33_N12
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\op[2]~input_o\ & ((\Mux16~1_combout\))) # (!\op[2]~input_o\ & (\Mux16~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux16~4_combout\,
	datac => \op[2]~input_o\,
	datad => \Mux16~1_combout\,
	combout => \Mux16~2_combout\);

-- Location: IOIBUF_X69_Y73_N1
\b[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

-- Location: LCCOMB_X67_Y33_N4
\add0|stage0|stage3|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage0|stage3|stage3|Cout~0_combout\ = (\add0|stage0|stage3|stage2|Cout~0_combout\ & ((\b[15]~input_o\) # (\a[15]~input_o\))) # (!\add0|stage0|stage3|stage2|Cout~0_combout\ & (\b[15]~input_o\ & \a[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add0|stage0|stage3|stage2|Cout~0_combout\,
	datac => \b[15]~input_o\,
	datad => \a[15]~input_o\,
	combout => \add0|stage0|stage3|stage3|Cout~0_combout\);

-- Location: LCCOMB_X66_Y33_N4
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = \a[16]~input_o\ $ (((\add0|stage0|stage3|stage3|Cout~0_combout\ & \op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|stage0|stage3|stage3|Cout~0_combout\,
	datac => \op[1]~input_o\,
	datad => \a[16]~input_o\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X66_Y33_N22
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\b[16]~input_o\ & ((\op[0]~input_o\) # (\Mux15~2_combout\ $ (\op[1]~input_o\)))) # (!\b[16]~input_o\ & (\Mux15~2_combout\ & (\op[0]~input_o\ $ (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[16]~input_o\,
	datab => \Mux15~2_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux15~3_combout\);

-- Location: IOIBUF_X67_Y0_N8
\a[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: LCCOMB_X67_Y33_N26
\sub0|stage0|stage3|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage0|stage3|stage3|Cout~0_combout\ = (\sub0|stage0|stage3|stage2|Cout~0_combout\ & ((\a[15]~input_o\) # (!\b[15]~input_o\))) # (!\sub0|stage0|stage3|stage2|Cout~0_combout\ & (!\b[15]~input_o\ & \a[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub0|stage0|stage3|stage2|Cout~0_combout\,
	datac => \b[15]~input_o\,
	datad => \a[15]~input_o\,
	combout => \sub0|stage0|stage3|stage3|Cout~0_combout\);

-- Location: LCCOMB_X66_Y33_N14
\sub0|stage1|stage0|stage0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage0|stage0|s~combout\ = \sub0|stage0|stage3|stage3|Cout~0_combout\ $ (\b[16]~input_o\ $ (\a[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub0|stage0|stage3|stage3|Cout~0_combout\,
	datac => \b[16]~input_o\,
	datad => \a[16]~input_o\,
	combout => \sub0|stage1|stage0|stage0|s~combout\);

-- Location: LCCOMB_X66_Y33_N8
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\op[0]~input_o\ & (((\op[1]~input_o\)))) # (!\op[0]~input_o\ & ((\op[1]~input_o\ & (!\sub0|stage1|stage0|stage0|s~combout\)) # (!\op[1]~input_o\ & ((\a[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \sub0|stage1|stage0|stage0|s~combout\,
	datac => \op[1]~input_o\,
	datad => \a[15]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X66_Y33_N10
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\op[0]~input_o\ & ((\Mux15~0_combout\ & ((\a[16]~input_o\))) # (!\Mux15~0_combout\ & (\a[17]~input_o\)))) # (!\op[0]~input_o\ & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[17]~input_o\,
	datac => \Mux15~0_combout\,
	datad => \a[16]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X66_Y33_N0
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\op[2]~input_o\ & ((\Mux15~1_combout\))) # (!\op[2]~input_o\ & (\Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datac => \op[2]~input_o\,
	datad => \Mux15~1_combout\,
	combout => \Mux15~4_combout\);

-- Location: IOIBUF_X67_Y0_N15
\b[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

-- Location: LCCOMB_X66_Y3_N28
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\b[17]~input_o\ & ((\op[0]~input_o\) # (\a[17]~input_o\ $ (\op[1]~input_o\)))) # (!\b[17]~input_o\ & (\a[17]~input_o\ & (\op[0]~input_o\ $ (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[17]~input_o\,
	datac => \op[1]~input_o\,
	datad => \b[17]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X66_Y33_N28
\add0|stage1|stage0|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage1|stage0|stage0|Cout~0_combout\ = (\add0|stage0|stage3|stage3|Cout~0_combout\ & ((\b[16]~input_o\) # (\a[16]~input_o\))) # (!\add0|stage0|stage3|stage3|Cout~0_combout\ & (\b[16]~input_o\ & \a[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|stage0|stage3|stage3|Cout~0_combout\,
	datac => \b[16]~input_o\,
	datad => \a[16]~input_o\,
	combout => \add0|stage1|stage0|stage0|Cout~0_combout\);

-- Location: LCCOMB_X66_Y3_N6
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = \Mux14~3_combout\ $ (((\op[1]~input_o\ & (\add0|stage1|stage0|stage0|Cout~0_combout\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux14~3_combout\,
	datac => \add0|stage1|stage0|stage0|Cout~0_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux14~4_combout\);

-- Location: IOIBUF_X65_Y0_N1
\a[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: LCCOMB_X66_Y33_N26
\sub0|stage1|stage0|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage0|stage0|Cout~0_combout\ = (\sub0|stage0|stage3|stage3|Cout~0_combout\ & ((\a[16]~input_o\) # (!\b[16]~input_o\))) # (!\sub0|stage0|stage3|stage3|Cout~0_combout\ & (!\b[16]~input_o\ & \a[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub0|stage0|stage3|stage3|Cout~0_combout\,
	datac => \b[16]~input_o\,
	datad => \a[16]~input_o\,
	combout => \sub0|stage1|stage0|stage0|Cout~0_combout\);

-- Location: LCCOMB_X66_Y3_N8
\sub0|stage1|stage0|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage0|stage1|s~combout\ = \sub0|stage1|stage0|stage0|Cout~0_combout\ $ (\a[17]~input_o\ $ (\b[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub0|stage1|stage0|stage0|Cout~0_combout\,
	datac => \a[17]~input_o\,
	datad => \b[17]~input_o\,
	combout => \sub0|stage1|stage0|stage1|s~combout\);

-- Location: LCCOMB_X67_Y33_N14
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\op[1]~input_o\ & ((\op[0]~input_o\) # ((!\sub0|stage1|stage0|stage1|s~combout\)))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & ((\a[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \sub0|stage1|stage0|stage1|s~combout\,
	datad => \a[16]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X66_Y3_N10
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & (((\a[17]~input_o\) # (!\op[0]~input_o\)))) # (!\Mux14~0_combout\ & (\a[18]~input_o\ & ((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \a[17]~input_o\,
	datac => \Mux14~0_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X66_Y3_N12
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\op[2]~input_o\ & ((\Mux14~1_combout\))) # (!\op[2]~input_o\ & (\Mux14~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datac => \Mux14~1_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X66_Y3_N14
\add0|stage1|stage0|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage1|stage0|stage1|Cout~0_combout\ = (\a[17]~input_o\ & ((\add0|stage1|stage0|stage0|Cout~0_combout\) # (\b[17]~input_o\))) # (!\a[17]~input_o\ & (\add0|stage1|stage0|stage0|Cout~0_combout\ & \b[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[17]~input_o\,
	datac => \add0|stage1|stage0|stage0|Cout~0_combout\,
	datad => \b[17]~input_o\,
	combout => \add0|stage1|stage0|stage1|Cout~0_combout\);

-- Location: IOIBUF_X72_Y0_N1
\b[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

-- Location: LCCOMB_X66_Y3_N16
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\b[18]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\ $ (\a[18]~input_o\)))) # (!\b[18]~input_o\ & (\a[18]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \b[18]~input_o\,
	datac => \a[18]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X66_Y3_N26
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = \Mux13~3_combout\ $ (((!\op[0]~input_o\ & (\add0|stage1|stage0|stage1|Cout~0_combout\ & \op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \add0|stage1|stage0|stage1|Cout~0_combout\,
	datac => \op[1]~input_o\,
	datad => \Mux13~3_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X66_Y3_N30
\sub0|stage1|stage0|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage0|stage1|Cout~0_combout\ = (\sub0|stage1|stage0|stage0|Cout~0_combout\ & ((\a[17]~input_o\) # (!\b[17]~input_o\))) # (!\sub0|stage1|stage0|stage0|Cout~0_combout\ & (\a[17]~input_o\ & !\b[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub0|stage1|stage0|stage0|Cout~0_combout\,
	datac => \a[17]~input_o\,
	datad => \b[17]~input_o\,
	combout => \sub0|stage1|stage0|stage1|Cout~0_combout\);

-- Location: LCCOMB_X66_Y3_N24
\sub0|stage1|stage0|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage0|stage2|s~combout\ = \sub0|stage1|stage0|stage1|Cout~0_combout\ $ (\a[18]~input_o\ $ (\b[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage1|stage0|stage1|Cout~0_combout\,
	datac => \a[18]~input_o\,
	datad => \b[18]~input_o\,
	combout => \sub0|stage1|stage0|stage2|s~combout\);

-- Location: LCCOMB_X66_Y3_N18
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)) # (!\sub0|stage1|stage0|stage2|s~combout\))) # (!\op[1]~input_o\ & (((\a[17]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \sub0|stage1|stage0|stage2|s~combout\,
	datac => \a[17]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: IOIBUF_X65_Y0_N22
\a[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: LCCOMB_X66_Y3_N20
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & ((\a[18]~input_o\) # ((!\op[0]~input_o\)))) # (!\Mux13~0_combout\ & (((\a[19]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \Mux13~0_combout\,
	datac => \a[19]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X66_Y3_N0
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\op[2]~input_o\ & ((\Mux13~1_combout\))) # (!\op[2]~input_o\ & (\Mux13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datac => \Mux13~4_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: IOIBUF_X62_Y0_N15
\a[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\b[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

-- Location: LCCOMB_X66_Y3_N2
\sub0|stage1|stage0|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage0|stage2|Cout~0_combout\ = (\sub0|stage1|stage0|stage1|Cout~0_combout\ & ((\a[18]~input_o\) # (!\b[18]~input_o\))) # (!\sub0|stage1|stage0|stage1|Cout~0_combout\ & (\a[18]~input_o\ & !\b[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage1|stage0|stage1|Cout~0_combout\,
	datac => \a[18]~input_o\,
	datad => \b[18]~input_o\,
	combout => \sub0|stage1|stage0|stage2|Cout~0_combout\);

-- Location: LCCOMB_X65_Y4_N8
\sub0|stage1|stage0|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage0|stage3|s~combout\ = \a[19]~input_o\ $ (\b[19]~input_o\ $ (\sub0|stage1|stage0|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[19]~input_o\,
	datac => \b[19]~input_o\,
	datad => \sub0|stage1|stage0|stage2|Cout~0_combout\,
	combout => \sub0|stage1|stage0|stage3|s~combout\);

-- Location: LCCOMB_X65_Y4_N2
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\op[1]~input_o\ & ((\op[0]~input_o\) # ((!\sub0|stage1|stage0|stage3|s~combout\)))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & ((\a[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \sub0|stage1|stage0|stage3|s~combout\,
	datad => \a[18]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X65_Y4_N4
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\op[0]~input_o\ & ((\Mux12~0_combout\ & ((\a[19]~input_o\))) # (!\Mux12~0_combout\ & (\a[20]~input_o\)))) # (!\op[0]~input_o\ & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[20]~input_o\,
	datac => \Mux12~0_combout\,
	datad => \a[19]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X66_Y3_N4
\add0|stage1|stage0|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage1|stage0|stage2|Cout~0_combout\ = (\add0|stage1|stage0|stage1|Cout~0_combout\ & ((\a[18]~input_o\) # (\b[18]~input_o\))) # (!\add0|stage1|stage0|stage1|Cout~0_combout\ & (\a[18]~input_o\ & \b[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add0|stage1|stage0|stage1|Cout~0_combout\,
	datac => \a[18]~input_o\,
	datad => \b[18]~input_o\,
	combout => \add0|stage1|stage0|stage2|Cout~0_combout\);

-- Location: LCCOMB_X65_Y4_N20
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\b[19]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\ $ (\a[19]~input_o\)))) # (!\b[19]~input_o\ & (\a[19]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[19]~input_o\,
	datad => \a[19]~input_o\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X65_Y4_N14
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = \Mux12~3_combout\ $ (((\add0|stage1|stage0|stage2|Cout~0_combout\ & (!\op[0]~input_o\ & \op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|stage1|stage0|stage2|Cout~0_combout\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \Mux12~3_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X65_Y4_N30
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\op[2]~input_o\ & (\Mux12~1_combout\)) # (!\op[2]~input_o\ & ((\Mux12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \Mux12~1_combout\,
	datac => \Mux12~4_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X65_Y4_N0
\add0|stage1|stage0|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage1|stage0|stage3|Cout~0_combout\ = (\a[19]~input_o\ & ((\b[19]~input_o\) # (\add0|stage1|stage0|stage2|Cout~0_combout\))) # (!\a[19]~input_o\ & (\b[19]~input_o\ & \add0|stage1|stage0|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[19]~input_o\,
	datac => \b[19]~input_o\,
	datad => \add0|stage1|stage0|stage2|Cout~0_combout\,
	combout => \add0|stage1|stage0|stage3|Cout~0_combout\);

-- Location: IOIBUF_X69_Y0_N8
\b[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

-- Location: LCCOMB_X65_Y4_N16
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\b[20]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\ $ (\a[20]~input_o\)))) # (!\b[20]~input_o\ & (\a[20]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[20]~input_o\,
	datad => \a[20]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X65_Y4_N18
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = \Mux11~3_combout\ $ (((!\op[0]~input_o\ & (\add0|stage1|stage0|stage3|Cout~0_combout\ & \op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \add0|stage1|stage0|stage3|Cout~0_combout\,
	datac => \op[1]~input_o\,
	datad => \Mux11~3_combout\,
	combout => \Mux11~4_combout\);

-- Location: IOIBUF_X56_Y0_N22
\a[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: LCCOMB_X65_Y4_N24
\sub0|stage1|stage0|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage0|stage3|Cout~0_combout\ = (\a[19]~input_o\ & ((\sub0|stage1|stage0|stage2|Cout~0_combout\) # (!\b[19]~input_o\))) # (!\a[19]~input_o\ & (!\b[19]~input_o\ & \sub0|stage1|stage0|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[19]~input_o\,
	datac => \b[19]~input_o\,
	datad => \sub0|stage1|stage0|stage2|Cout~0_combout\,
	combout => \sub0|stage1|stage0|stage3|Cout~0_combout\);

-- Location: LCCOMB_X65_Y4_N10
\sub0|stage1|stage1|stage0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage1|stage0|s~combout\ = \a[20]~input_o\ $ (\b[20]~input_o\ $ (\sub0|stage1|stage0|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[20]~input_o\,
	datac => \b[20]~input_o\,
	datad => \sub0|stage1|stage0|stage3|Cout~0_combout\,
	combout => \sub0|stage1|stage1|stage0|s~combout\);

-- Location: LCCOMB_X65_Y4_N12
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\op[0]~input_o\ & (((\op[1]~input_o\)))) # (!\op[0]~input_o\ & ((\op[1]~input_o\ & (!\sub0|stage1|stage1|stage0|s~combout\)) # (!\op[1]~input_o\ & ((\a[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage1|stage1|stage0|s~combout\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \a[19]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X65_Y4_N22
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\op[0]~input_o\ & ((\Mux11~0_combout\ & ((\a[20]~input_o\))) # (!\Mux11~0_combout\ & (\a[21]~input_o\)))) # (!\op[0]~input_o\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \a[20]~input_o\,
	datac => \op[0]~input_o\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X65_Y4_N26
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\op[2]~input_o\ & ((\Mux11~1_combout\))) # (!\op[2]~input_o\ & (\Mux11~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \Mux11~4_combout\,
	datac => \Mux11~1_combout\,
	combout => \Mux11~2_combout\);

-- Location: IOIBUF_X52_Y0_N1
\b[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

-- Location: LCCOMB_X65_Y4_N28
\sub0|stage1|stage1|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage1|stage0|Cout~0_combout\ = (\a[20]~input_o\ & ((\sub0|stage1|stage0|stage3|Cout~0_combout\) # (!\b[20]~input_o\))) # (!\a[20]~input_o\ & (!\b[20]~input_o\ & \sub0|stage1|stage0|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[20]~input_o\,
	datac => \b[20]~input_o\,
	datad => \sub0|stage1|stage0|stage3|Cout~0_combout\,
	combout => \sub0|stage1|stage1|stage0|Cout~0_combout\);

-- Location: LCCOMB_X56_Y6_N16
\sub0|stage1|stage1|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage1|stage1|s~combout\ = \a[21]~input_o\ $ (\b[21]~input_o\ $ (\sub0|stage1|stage1|stage0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datac => \b[21]~input_o\,
	datad => \sub0|stage1|stage1|stage0|Cout~0_combout\,
	combout => \sub0|stage1|stage1|stage1|s~combout\);

-- Location: LCCOMB_X56_Y6_N2
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\) # (!\sub0|stage1|stage1|stage1|s~combout\)))) # (!\op[1]~input_o\ & (\a[20]~input_o\ & ((!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[20]~input_o\,
	datab => \sub0|stage1|stage1|stage1|s~combout\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: IOIBUF_X54_Y0_N15
\a[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: LCCOMB_X56_Y6_N20
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((\a[21]~input_o\) # ((!\op[0]~input_o\)))) # (!\Mux10~0_combout\ & (((\a[22]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \Mux10~0_combout\,
	datac => \a[22]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X56_Y6_N4
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\b[21]~input_o\ & ((\op[0]~input_o\) # (\a[21]~input_o\ $ (\op[1]~input_o\)))) # (!\b[21]~input_o\ & (\a[21]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \op[1]~input_o\,
	datac => \b[21]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X65_Y4_N6
\add0|stage1|stage1|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage1|stage1|stage0|Cout~0_combout\ = (\a[20]~input_o\ & ((\b[20]~input_o\) # (\add0|stage1|stage0|stage3|Cout~0_combout\))) # (!\a[20]~input_o\ & (\b[20]~input_o\ & \add0|stage1|stage0|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[20]~input_o\,
	datac => \b[20]~input_o\,
	datad => \add0|stage1|stage0|stage3|Cout~0_combout\,
	combout => \add0|stage1|stage1|stage0|Cout~0_combout\);

-- Location: LCCOMB_X56_Y6_N22
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = \Mux10~3_combout\ $ (((\op[1]~input_o\ & (\add0|stage1|stage1|stage0|Cout~0_combout\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux10~3_combout\,
	datac => \add0|stage1|stage1|stage0|Cout~0_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X56_Y6_N14
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\op[2]~input_o\ & (\Mux10~1_combout\)) # (!\op[2]~input_o\ & ((\Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~1_combout\,
	datac => \Mux10~4_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: IOIBUF_X52_Y0_N22
\b[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

-- Location: LCCOMB_X56_Y6_N0
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\b[22]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\ $ (\a[22]~input_o\)))) # (!\b[22]~input_o\ & (\a[22]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \b[22]~input_o\,
	datac => \a[22]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X56_Y6_N8
\add0|stage1|stage1|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage1|stage1|stage1|Cout~0_combout\ = (\b[21]~input_o\ & ((\add0|stage1|stage1|stage0|Cout~0_combout\) # (\a[21]~input_o\))) # (!\b[21]~input_o\ & (\add0|stage1|stage1|stage0|Cout~0_combout\ & \a[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[21]~input_o\,
	datab => \add0|stage1|stage1|stage0|Cout~0_combout\,
	datac => \a[21]~input_o\,
	combout => \add0|stage1|stage1|stage1|Cout~0_combout\);

-- Location: LCCOMB_X56_Y6_N10
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = \Mux9~3_combout\ $ (((\op[1]~input_o\ & (\add0|stage1|stage1|stage1|Cout~0_combout\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux9~3_combout\,
	datac => \add0|stage1|stage1|stage1|Cout~0_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X56_Y6_N24
\sub0|stage1|stage1|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage1|stage1|Cout~0_combout\ = (\a[21]~input_o\ & ((\sub0|stage1|stage1|stage0|Cout~0_combout\) # (!\b[21]~input_o\))) # (!\a[21]~input_o\ & (!\b[21]~input_o\ & \sub0|stage1|stage1|stage0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datac => \b[21]~input_o\,
	datad => \sub0|stage1|stage1|stage0|Cout~0_combout\,
	combout => \sub0|stage1|stage1|stage1|Cout~0_combout\);

-- Location: LCCOMB_X56_Y6_N18
\sub0|stage1|stage1|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage1|stage2|s~combout\ = \b[22]~input_o\ $ (\a[22]~input_o\ $ (\sub0|stage1|stage1|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[22]~input_o\,
	datac => \a[22]~input_o\,
	datad => \sub0|stage1|stage1|stage1|Cout~0_combout\,
	combout => \sub0|stage1|stage1|stage2|s~combout\);

-- Location: LCCOMB_X56_Y6_N12
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)) # (!\sub0|stage1|stage1|stage2|s~combout\))) # (!\op[1]~input_o\ & (((\a[21]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \sub0|stage1|stage1|stage2|s~combout\,
	datac => \a[21]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: IOIBUF_X52_Y0_N8
\a[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: LCCOMB_X56_Y6_N30
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (((\a[22]~input_o\) # (!\op[0]~input_o\)))) # (!\Mux9~0_combout\ & (\a[23]~input_o\ & ((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \a[23]~input_o\,
	datac => \a[22]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X56_Y6_N26
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\op[2]~input_o\ & ((\Mux9~1_combout\))) # (!\op[2]~input_o\ & (\Mux9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~4_combout\,
	datac => \Mux9~1_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X56_Y6_N28
\sub0|stage1|stage1|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage1|stage2|Cout~0_combout\ = (\b[22]~input_o\ & (\a[22]~input_o\ & \sub0|stage1|stage1|stage1|Cout~0_combout\)) # (!\b[22]~input_o\ & ((\a[22]~input_o\) # (\sub0|stage1|stage1|stage1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[22]~input_o\,
	datac => \a[22]~input_o\,
	datad => \sub0|stage1|stage1|stage1|Cout~0_combout\,
	combout => \sub0|stage1|stage1|stage2|Cout~0_combout\);

-- Location: IOIBUF_X49_Y0_N22
\b[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

-- Location: LCCOMB_X56_Y4_N0
\sub0|stage1|stage1|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage1|stage3|s~combout\ = \sub0|stage1|stage1|stage2|Cout~0_combout\ $ (\b[23]~input_o\ $ (\a[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage1|stage1|stage2|Cout~0_combout\,
	datab => \b[23]~input_o\,
	datac => \a[23]~input_o\,
	combout => \sub0|stage1|stage1|stage3|s~combout\);

-- Location: LCCOMB_X56_Y4_N10
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\op[0]~input_o\ & (((\op[1]~input_o\)))) # (!\op[0]~input_o\ & ((\op[1]~input_o\ & ((!\sub0|stage1|stage1|stage3|s~combout\))) # (!\op[1]~input_o\ & (\a[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[22]~input_o\,
	datac => \op[1]~input_o\,
	datad => \sub0|stage1|stage1|stage3|s~combout\,
	combout => \Mux8~0_combout\);

-- Location: IOIBUF_X56_Y0_N1
\a[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: LCCOMB_X56_Y4_N4
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & (((\a[23]~input_o\) # (!\op[0]~input_o\)))) # (!\Mux8~0_combout\ & (\a[24]~input_o\ & ((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \a[24]~input_o\,
	datac => \a[23]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X56_Y6_N6
\add0|stage1|stage1|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage1|stage1|stage2|Cout~0_combout\ = (\a[22]~input_o\ & ((\b[22]~input_o\) # (\add0|stage1|stage1|stage1|Cout~0_combout\))) # (!\a[22]~input_o\ & (\b[22]~input_o\ & \add0|stage1|stage1|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[22]~input_o\,
	datab => \b[22]~input_o\,
	datac => \add0|stage1|stage1|stage1|Cout~0_combout\,
	combout => \add0|stage1|stage1|stage2|Cout~0_combout\);

-- Location: LCCOMB_X56_Y4_N20
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\b[23]~input_o\ & ((\op[0]~input_o\) # (\a[23]~input_o\ $ (\op[1]~input_o\)))) # (!\b[23]~input_o\ & (\a[23]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \b[23]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X56_Y4_N14
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = \Mux8~3_combout\ $ (((!\op[0]~input_o\ & (\add0|stage1|stage1|stage2|Cout~0_combout\ & \op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \add0|stage1|stage1|stage2|Cout~0_combout\,
	datac => \op[1]~input_o\,
	datad => \Mux8~3_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X56_Y4_N6
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\op[2]~input_o\ & (\Mux8~1_combout\)) # (!\op[2]~input_o\ & ((\Mux8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~1_combout\,
	datac => \Mux8~4_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: IOIBUF_X54_Y0_N1
\b[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

-- Location: LCCOMB_X56_Y4_N8
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\b[24]~input_o\ & ((\op[0]~input_o\) # (\a[24]~input_o\ $ (\op[1]~input_o\)))) # (!\b[24]~input_o\ & (\a[24]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[24]~input_o\,
	datab => \a[24]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X56_Y4_N16
\add0|stage1|stage1|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage1|stage1|stage3|Cout~0_combout\ = (\b[23]~input_o\ & ((\a[23]~input_o\) # (\add0|stage1|stage1|stage2|Cout~0_combout\))) # (!\b[23]~input_o\ & (\a[23]~input_o\ & \add0|stage1|stage1|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[23]~input_o\,
	datac => \a[23]~input_o\,
	datad => \add0|stage1|stage1|stage2|Cout~0_combout\,
	combout => \add0|stage1|stage1|stage3|Cout~0_combout\);

-- Location: LCCOMB_X56_Y4_N18
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = \Mux7~3_combout\ $ (((!\op[0]~input_o\ & (\op[1]~input_o\ & \add0|stage1|stage1|stage3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \Mux7~3_combout\,
	datac => \op[1]~input_o\,
	datad => \add0|stage1|stage1|stage3|Cout~0_combout\,
	combout => \Mux7~4_combout\);

-- Location: IOIBUF_X47_Y0_N1
\a[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: LCCOMB_X56_Y4_N24
\sub0|stage1|stage1|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage1|stage3|Cout~0_combout\ = (\sub0|stage1|stage1|stage2|Cout~0_combout\ & ((\a[23]~input_o\) # (!\b[23]~input_o\))) # (!\sub0|stage1|stage1|stage2|Cout~0_combout\ & (!\b[23]~input_o\ & \a[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage1|stage1|stage2|Cout~0_combout\,
	datab => \b[23]~input_o\,
	datac => \a[23]~input_o\,
	combout => \sub0|stage1|stage1|stage3|Cout~0_combout\);

-- Location: LCCOMB_X56_Y4_N2
\sub0|stage1|stage2|stage0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage2|stage0|s~combout\ = \a[24]~input_o\ $ (\b[24]~input_o\ $ (\sub0|stage1|stage1|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[24]~input_o\,
	datac => \b[24]~input_o\,
	datad => \sub0|stage1|stage1|stage3|Cout~0_combout\,
	combout => \sub0|stage1|stage2|stage0|s~combout\);

-- Location: LCCOMB_X56_Y4_N28
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\) # (!\sub0|stage1|stage2|stage0|s~combout\)))) # (!\op[1]~input_o\ & (\a[23]~input_o\ & ((!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \sub0|stage1|stage2|stage0|s~combout\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X56_Y4_N22
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\op[0]~input_o\ & ((\Mux7~0_combout\ & (\a[24]~input_o\)) # (!\Mux7~0_combout\ & ((\a[25]~input_o\))))) # (!\op[0]~input_o\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[24]~input_o\,
	datac => \a[25]~input_o\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X56_Y4_N26
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\op[2]~input_o\ & ((\Mux7~1_combout\))) # (!\op[2]~input_o\ & (\Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~4_combout\,
	datac => \Mux7~1_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: IOIBUF_X47_Y73_N15
\a[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\b[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

-- Location: LCCOMB_X56_Y4_N12
\sub0|stage1|stage2|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage2|stage0|Cout~0_combout\ = (\a[24]~input_o\ & ((\sub0|stage1|stage1|stage3|Cout~0_combout\) # (!\b[24]~input_o\))) # (!\a[24]~input_o\ & (!\b[24]~input_o\ & \sub0|stage1|stage1|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[24]~input_o\,
	datac => \b[24]~input_o\,
	datad => \sub0|stage1|stage1|stage3|Cout~0_combout\,
	combout => \sub0|stage1|stage2|stage0|Cout~0_combout\);

-- Location: LCCOMB_X57_Y32_N8
\sub0|stage1|stage2|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage2|stage1|s~combout\ = \b[25]~input_o\ $ (\sub0|stage1|stage2|stage0|Cout~0_combout\ $ (\a[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[25]~input_o\,
	datab => \sub0|stage1|stage2|stage0|Cout~0_combout\,
	datac => \a[25]~input_o\,
	combout => \sub0|stage1|stage2|stage1|s~combout\);

-- Location: LCCOMB_X66_Y32_N30
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)) # (!\sub0|stage1|stage2|stage1|s~combout\))) # (!\op[1]~input_o\ & (((!\op[0]~input_o\ & \a[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage1|stage2|stage1|s~combout\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[24]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X57_Y32_N10
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\op[0]~input_o\ & ((\Mux6~0_combout\ & (\a[25]~input_o\)) # (!\Mux6~0_combout\ & ((\a[26]~input_o\))))) # (!\op[0]~input_o\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[25]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[26]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X57_Y32_N28
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\b[25]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\ $ (\a[25]~input_o\)))) # (!\b[25]~input_o\ & (\a[25]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[25]~input_o\,
	datad => \a[25]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X56_Y4_N30
\add0|stage1|stage2|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage1|stage2|stage0|Cout~0_combout\ = (\a[24]~input_o\ & ((\b[24]~input_o\) # (\add0|stage1|stage1|stage3|Cout~0_combout\))) # (!\a[24]~input_o\ & (\b[24]~input_o\ & \add0|stage1|stage1|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[24]~input_o\,
	datac => \b[24]~input_o\,
	datad => \add0|stage1|stage1|stage3|Cout~0_combout\,
	combout => \add0|stage1|stage2|stage0|Cout~0_combout\);

-- Location: LCCOMB_X57_Y32_N22
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = \Mux6~3_combout\ $ (((\op[1]~input_o\ & (!\op[0]~input_o\ & \add0|stage1|stage2|stage0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux6~3_combout\,
	datac => \op[0]~input_o\,
	datad => \add0|stage1|stage2|stage0|Cout~0_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X57_Y32_N12
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\op[2]~input_o\ & (\Mux6~1_combout\)) # (!\op[2]~input_o\ & ((\Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datac => \Mux6~4_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: IOIBUF_X52_Y73_N8
\b[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

-- Location: LCCOMB_X57_Y32_N24
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\b[26]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\ $ (\a[26]~input_o\)))) # (!\b[26]~input_o\ & (\a[26]~input_o\ & (\op[0]~input_o\ $ (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[26]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \a[26]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X57_Y32_N30
\add0|stage1|stage2|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage1|stage2|stage1|Cout~0_combout\ = (\a[25]~input_o\ & ((\add0|stage1|stage2|stage0|Cout~0_combout\) # (\b[25]~input_o\))) # (!\a[25]~input_o\ & (\add0|stage1|stage2|stage0|Cout~0_combout\ & \b[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[25]~input_o\,
	datab => \add0|stage1|stage2|stage0|Cout~0_combout\,
	datac => \b[25]~input_o\,
	combout => \add0|stage1|stage2|stage1|Cout~0_combout\);

-- Location: LCCOMB_X57_Y32_N18
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = \Mux5~3_combout\ $ (((\op[1]~input_o\ & (!\op[0]~input_o\ & \add0|stage1|stage2|stage1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux5~3_combout\,
	datac => \op[0]~input_o\,
	datad => \add0|stage1|stage2|stage1|Cout~0_combout\,
	combout => \Mux5~4_combout\);

-- Location: IOIBUF_X56_Y0_N8
\a[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: LCCOMB_X57_Y32_N14
\sub0|stage1|stage2|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage2|stage1|Cout~0_combout\ = (\b[25]~input_o\ & (\sub0|stage1|stage2|stage0|Cout~0_combout\ & \a[25]~input_o\)) # (!\b[25]~input_o\ & ((\sub0|stage1|stage2|stage0|Cout~0_combout\) # (\a[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[25]~input_o\,
	datab => \sub0|stage1|stage2|stage0|Cout~0_combout\,
	datac => \a[25]~input_o\,
	combout => \sub0|stage1|stage2|stage1|Cout~0_combout\);

-- Location: LCCOMB_X57_Y32_N0
\sub0|stage1|stage2|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage2|stage2|s~combout\ = \a[26]~input_o\ $ (\sub0|stage1|stage2|stage1|Cout~0_combout\ $ (\b[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[26]~input_o\,
	datab => \sub0|stage1|stage2|stage1|Cout~0_combout\,
	datac => \b[26]~input_o\,
	combout => \sub0|stage1|stage2|stage2|s~combout\);

-- Location: LCCOMB_X57_Y32_N26
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)) # (!\sub0|stage1|stage2|stage2|s~combout\))) # (!\op[1]~input_o\ & (((!\op[0]~input_o\ & \a[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \sub0|stage1|stage2|stage2|s~combout\,
	datac => \op[0]~input_o\,
	datad => \a[25]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X57_Y32_N20
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\op[0]~input_o\ & ((\Mux5~0_combout\ & ((\a[26]~input_o\))) # (!\Mux5~0_combout\ & (\a[27]~input_o\)))) # (!\op[0]~input_o\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[27]~input_o\,
	datab => \op[0]~input_o\,
	datac => \Mux5~0_combout\,
	datad => \a[26]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X57_Y32_N16
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\op[2]~input_o\ & ((\Mux5~1_combout\))) # (!\op[2]~input_o\ & (\Mux5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \Mux5~4_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X57_Y32_N4
\add0|stage1|stage2|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage1|stage2|stage2|Cout~0_combout\ = (\b[26]~input_o\ & ((\add0|stage1|stage2|stage1|Cout~0_combout\) # (\a[26]~input_o\))) # (!\b[26]~input_o\ & (\add0|stage1|stage2|stage1|Cout~0_combout\ & \a[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[26]~input_o\,
	datac => \add0|stage1|stage2|stage1|Cout~0_combout\,
	datad => \a[26]~input_o\,
	combout => \add0|stage1|stage2|stage2|Cout~0_combout\);

-- Location: IOIBUF_X49_Y73_N22
\b[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

-- Location: LCCOMB_X56_Y32_N12
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\b[27]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\ $ (\a[27]~input_o\)))) # (!\b[27]~input_o\ & (\a[27]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \a[27]~input_o\,
	datac => \b[27]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X56_Y32_N22
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = \Mux4~3_combout\ $ (((\add0|stage1|stage2|stage2|Cout~0_combout\ & (\op[1]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|stage1|stage2|stage2|Cout~0_combout\,
	datab => \Mux4~3_combout\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X57_Y32_N2
\sub0|stage1|stage2|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage2|stage2|Cout~0_combout\ = (\a[26]~input_o\ & ((\sub0|stage1|stage2|stage1|Cout~0_combout\) # (!\b[26]~input_o\))) # (!\a[26]~input_o\ & (\sub0|stage1|stage2|stage1|Cout~0_combout\ & !\b[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[26]~input_o\,
	datab => \sub0|stage1|stage2|stage1|Cout~0_combout\,
	datac => \b[26]~input_o\,
	combout => \sub0|stage1|stage2|stage2|Cout~0_combout\);

-- Location: LCCOMB_X56_Y32_N8
\sub0|stage1|stage2|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage2|stage3|s~combout\ = \a[27]~input_o\ $ (\b[27]~input_o\ $ (\sub0|stage1|stage2|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[27]~input_o\,
	datac => \b[27]~input_o\,
	datad => \sub0|stage1|stage2|stage2|Cout~0_combout\,
	combout => \sub0|stage1|stage2|stage3|s~combout\);

-- Location: LCCOMB_X56_Y32_N26
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\) # (!\sub0|stage1|stage2|stage3|s~combout\)))) # (!\op[1]~input_o\ & (\a[26]~input_o\ & ((!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \a[26]~input_o\,
	datac => \sub0|stage1|stage2|stage3|s~combout\,
	datad => \op[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X0_Y33_N22
\a[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: LCCOMB_X56_Y32_N28
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & ((\a[27]~input_o\) # ((!\op[0]~input_o\)))) # (!\Mux4~0_combout\ & (((\a[28]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \a[27]~input_o\,
	datac => \a[28]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X56_Y32_N14
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\op[2]~input_o\ & ((\Mux4~1_combout\))) # (!\op[2]~input_o\ & (\Mux4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \Mux4~1_combout\,
	datac => \op[2]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: IOIBUF_X52_Y73_N22
\a[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\b[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

-- Location: LCCOMB_X56_Y32_N16
\sub0|stage1|stage2|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage2|stage3|Cout~0_combout\ = (\a[27]~input_o\ & ((\sub0|stage1|stage2|stage2|Cout~0_combout\) # (!\b[27]~input_o\))) # (!\a[27]~input_o\ & (!\b[27]~input_o\ & \sub0|stage1|stage2|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[27]~input_o\,
	datac => \b[27]~input_o\,
	datad => \sub0|stage1|stage2|stage2|Cout~0_combout\,
	combout => \sub0|stage1|stage2|stage3|Cout~0_combout\);

-- Location: LCCOMB_X56_Y32_N10
\sub0|stage1|stage3|stage0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage3|stage0|s~combout\ = \a[28]~input_o\ $ (\b[28]~input_o\ $ (\sub0|stage1|stage2|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datac => \b[28]~input_o\,
	datad => \sub0|stage1|stage2|stage3|Cout~0_combout\,
	combout => \sub0|stage1|stage3|stage0|s~combout\);

-- Location: LCCOMB_X56_Y32_N4
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)) # (!\sub0|stage1|stage3|stage0|s~combout\))) # (!\op[1]~input_o\ & (((\a[27]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub0|stage1|stage3|stage0|s~combout\,
	datab => \a[27]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X56_Y32_N6
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & ((\a[28]~input_o\) # ((!\op[0]~input_o\)))) # (!\Mux3~0_combout\ & (((\a[29]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datab => \a[29]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X56_Y32_N24
\add0|stage1|stage2|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage1|stage2|stage3|Cout~0_combout\ = (\a[27]~input_o\ & ((\b[27]~input_o\) # (\add0|stage1|stage2|stage2|Cout~0_combout\))) # (!\a[27]~input_o\ & (\b[27]~input_o\ & \add0|stage1|stage2|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[27]~input_o\,
	datac => \b[27]~input_o\,
	datad => \add0|stage1|stage2|stage2|Cout~0_combout\,
	combout => \add0|stage1|stage2|stage3|Cout~0_combout\);

-- Location: LCCOMB_X56_Y32_N0
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\b[28]~input_o\ & ((\op[0]~input_o\) # (\a[28]~input_o\ $ (\op[1]~input_o\)))) # (!\b[28]~input_o\ & (\a[28]~input_o\ & (\op[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datab => \b[28]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X56_Y32_N2
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = \Mux3~3_combout\ $ (((!\op[0]~input_o\ & (\add0|stage1|stage2|stage3|Cout~0_combout\ & \op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \add0|stage1|stage2|stage3|Cout~0_combout\,
	datac => \op[1]~input_o\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X56_Y32_N18
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\op[2]~input_o\ & (\Mux3~1_combout\)) # (!\op[2]~input_o\ & ((\Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~4_combout\,
	datac => \op[2]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X0_Y35_N8
\b[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

-- Location: LCCOMB_X56_Y32_N20
\sub0|stage1|stage3|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage3|stage0|Cout~0_combout\ = (\a[28]~input_o\ & ((\sub0|stage1|stage2|stage3|Cout~0_combout\) # (!\b[28]~input_o\))) # (!\a[28]~input_o\ & (!\b[28]~input_o\ & \sub0|stage1|stage2|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datac => \b[28]~input_o\,
	datad => \sub0|stage1|stage2|stage3|Cout~0_combout\,
	combout => \sub0|stage1|stage3|stage0|Cout~0_combout\);

-- Location: LCCOMB_X56_Y35_N16
\sub0|stage1|stage3|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage3|stage1|s~combout\ = \b[29]~input_o\ $ (\a[29]~input_o\ $ (\sub0|stage1|stage3|stage0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[29]~input_o\,
	datac => \a[29]~input_o\,
	datad => \sub0|stage1|stage3|stage0|Cout~0_combout\,
	combout => \sub0|stage1|stage3|stage1|s~combout\);

-- Location: LCCOMB_X56_Y35_N26
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\op[0]~input_o\ & (((\op[1]~input_o\)))) # (!\op[0]~input_o\ & ((\op[1]~input_o\ & ((!\sub0|stage1|stage3|stage1|s~combout\))) # (!\op[1]~input_o\ & (\a[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datab => \sub0|stage1|stage3|stage1|s~combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X54_Y73_N8
\a[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: LCCOMB_X56_Y35_N12
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((\a[29]~input_o\) # ((!\op[0]~input_o\)))) # (!\Mux2~0_combout\ & (((\op[0]~input_o\ & \a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \a[29]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[30]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X56_Y32_N30
\add0|stage1|stage3|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage1|stage3|stage0|Cout~0_combout\ = (\a[28]~input_o\ & ((\b[28]~input_o\) # (\add0|stage1|stage2|stage3|Cout~0_combout\))) # (!\a[28]~input_o\ & (\b[28]~input_o\ & \add0|stage1|stage2|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datac => \b[28]~input_o\,
	datad => \add0|stage1|stage2|stage3|Cout~0_combout\,
	combout => \add0|stage1|stage3|stage0|Cout~0_combout\);

-- Location: LCCOMB_X56_Y35_N18
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\b[29]~input_o\ & ((\op[0]~input_o\) # (\a[29]~input_o\ $ (\op[1]~input_o\)))) # (!\b[29]~input_o\ & (\a[29]~input_o\ & (\op[0]~input_o\ $ (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[29]~input_o\,
	datab => \a[29]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X56_Y35_N28
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = \Mux2~3_combout\ $ (((\add0|stage1|stage3|stage0|Cout~0_combout\ & (!\op[0]~input_o\ & \op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add0|stage1|stage3|stage0|Cout~0_combout\,
	datab => \Mux2~3_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X56_Y35_N14
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\op[2]~input_o\ & (\Mux2~1_combout\)) # (!\op[2]~input_o\ & ((\Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux2~4_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: IOIBUF_X45_Y0_N15
\b[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

-- Location: LCCOMB_X56_Y35_N30
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\b[30]~input_o\ & ((\op[0]~input_o\) # (\a[30]~input_o\ $ (\op[1]~input_o\)))) # (!\b[30]~input_o\ & (\a[30]~input_o\ & (\op[0]~input_o\ $ (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datab => \b[30]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X56_Y35_N2
\add0|stage1|stage3|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage1|stage3|stage1|Cout~0_combout\ = (\b[29]~input_o\ & ((\a[29]~input_o\) # (\add0|stage1|stage3|stage0|Cout~0_combout\))) # (!\b[29]~input_o\ & (\a[29]~input_o\ & \add0|stage1|stage3|stage0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[29]~input_o\,
	datab => \a[29]~input_o\,
	datac => \add0|stage1|stage3|stage0|Cout~0_combout\,
	combout => \add0|stage1|stage3|stage1|Cout~0_combout\);

-- Location: LCCOMB_X56_Y35_N0
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = \Mux1~3_combout\ $ (((\add0|stage1|stage3|stage1|Cout~0_combout\ & (!\op[0]~input_o\ & \op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \add0|stage1|stage3|stage1|Cout~0_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X56_Y35_N24
\sub0|stage1|stage3|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage3|stage1|Cout~0_combout\ = (\b[29]~input_o\ & (\a[29]~input_o\ & \sub0|stage1|stage3|stage0|Cout~0_combout\)) # (!\b[29]~input_o\ & ((\a[29]~input_o\) # (\sub0|stage1|stage3|stage0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[29]~input_o\,
	datac => \a[29]~input_o\,
	datad => \sub0|stage1|stage3|stage0|Cout~0_combout\,
	combout => \sub0|stage1|stage3|stage1|Cout~0_combout\);

-- Location: LCCOMB_X56_Y43_N4
\sub0|stage1|stage3|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage3|stage2|s~combout\ = \a[30]~input_o\ $ (\b[30]~input_o\ $ (\sub0|stage1|stage3|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datac => \b[30]~input_o\,
	datad => \sub0|stage1|stage3|stage1|Cout~0_combout\,
	combout => \sub0|stage1|stage3|stage2|s~combout\);

-- Location: LCCOMB_X56_Y43_N14
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\) # (!\sub0|stage1|stage3|stage2|s~combout\)))) # (!\op[1]~input_o\ & (\a[29]~input_o\ & ((!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[29]~input_o\,
	datab => \op[1]~input_o\,
	datac => \sub0|stage1|stage3|stage2|s~combout\,
	datad => \op[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X115_Y41_N8
\a[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: LCCOMB_X56_Y43_N0
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\op[0]~input_o\ & ((\Mux1~0_combout\ & (\a[30]~input_o\)) # (!\Mux1~0_combout\ & ((\a[31]~input_o\))))) # (!\op[0]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datab => \op[0]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \a[31]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X56_Y35_N20
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\op[2]~input_o\ & ((\Mux1~1_combout\))) # (!\op[2]~input_o\ & (\Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~4_combout\,
	datac => \Mux1~1_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X56_Y43_N12
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\op[0]~input_o\ & (\a[31]~input_o\ & ((\op[1]~input_o\)))) # (!\op[0]~input_o\ & (((\a[30]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[30]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux0~7_combout\);

-- Location: IOIBUF_X42_Y73_N8
\b[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

-- Location: LCCOMB_X56_Y43_N16
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\b[31]~input_o\ & ((\op[0]~input_o\) # (\a[31]~input_o\ $ (\op[1]~input_o\)))) # (!\b[31]~input_o\ & (\a[31]~input_o\ & (\op[0]~input_o\ $ (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[31]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X56_Y43_N22
\sub0|stage1|stage3|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub0|stage1|stage3|stage2|Cout~0_combout\ = (\a[30]~input_o\ & ((\sub0|stage1|stage3|stage1|Cout~0_combout\) # (!\b[30]~input_o\))) # (!\a[30]~input_o\ & (!\b[30]~input_o\ & \sub0|stage1|stage3|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datac => \b[30]~input_o\,
	datad => \sub0|stage1|stage3|stage1|Cout~0_combout\,
	combout => \sub0|stage1|stage3|stage2|Cout~0_combout\);

-- Location: LCCOMB_X56_Y43_N18
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = \Mux0~4_combout\ $ (((\sub0|stage1|stage3|stage2|Cout~0_combout\ & \op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~4_combout\,
	datac => \sub0|stage1|stage3|stage2|Cout~0_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X56_Y35_N22
\add0|stage1|stage3|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add0|stage1|stage3|stage2|Cout~0_combout\ = (\a[30]~input_o\ & ((\b[30]~input_o\) # (\add0|stage1|stage3|stage1|Cout~0_combout\))) # (!\a[30]~input_o\ & (\b[30]~input_o\ & \add0|stage1|stage3|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datac => \b[30]~input_o\,
	datad => \add0|stage1|stage3|stage1|Cout~0_combout\,
	combout => \add0|stage1|stage3|stage2|Cout~0_combout\);

-- Location: LCCOMB_X56_Y43_N26
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\op[1]~input_o\ & ((\a[31]~input_o\) # (!\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X56_Y43_N28
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & ((\add0|stage1|stage3|stage2|Cout~0_combout\) # (\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add0|stage1|stage3|stage2|Cout~0_combout\,
	datac => \Mux0~2_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X56_Y43_N20
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\Mux0~7_combout\ & ((\Mux0~5_combout\) # ((\op[2]~input_o\)))) # (!\Mux0~7_combout\ & ((\Mux0~5_combout\ & (!\Mux0~3_combout\ & !\op[2]~input_o\)) # (!\Mux0~5_combout\ & (\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~7_combout\,
	datab => \Mux0~5_combout\,
	datac => \Mux0~3_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X57_Y32_N6
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\Mux4~2_combout\ & (!\Mux3~2_combout\ & (!\Mux5~2_combout\ & !\Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \Mux3~2_combout\,
	datac => \Mux5~2_combout\,
	datad => \Mux6~2_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X56_Y35_N10
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!\Mux1~2_combout\ & (!\Mux2~2_combout\ & \Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~2_combout\,
	datac => \Mux2~2_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X56_Y35_N8
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Mux7~2_combout\ & (!\Mux9~2_combout\ & (!\Mux8~2_combout\ & !\Mux10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Mux9~2_combout\,
	datac => \Mux8~2_combout\,
	datad => \Mux10~2_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X58_Y45_N10
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Mux28~2_combout\ & ((\op[2]~input_o\ & (!\Mux27~1_combout\)) # (!\op[2]~input_o\ & ((!\Mux27~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \op[2]~input_o\,
	datac => \Mux27~1_combout\,
	datad => \Mux27~3_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X66_Y33_N24
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\Mux16~2_combout\ & ((\op[2]~input_o\ & ((!\Mux15~1_combout\))) # (!\op[2]~input_o\ & (!\Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \Mux16~2_combout\,
	datac => \op[2]~input_o\,
	datad => \Mux15~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X66_Y36_N6
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Mux19~2_combout\ & (!\Mux20~2_combout\ & (!\Mux22~2_combout\ & !\Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux20~2_combout\,
	datac => \Mux22~2_combout\,
	datad => \Mux21~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X66_Y33_N18
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Mux17~2_combout\ & (\Equal0~4_combout\ & (\Equal0~3_combout\ & !\Mux18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~3_combout\,
	datad => \Mux18~2_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X66_Y33_N30
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Mux26~2_combout\ & (!\Mux25~2_combout\ & (!\Mux24~2_combout\ & !\Mux23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \Mux25~2_combout\,
	datac => \Mux24~2_combout\,
	datad => \Mux23~2_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X56_Y43_N6
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Mux29~4_combout\ & (!\Mux0~6_combout\ & (!\Mux30~2_combout\ & !\Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~4_combout\,
	datab => \Mux0~6_combout\,
	datac => \Mux30~2_combout\,
	datad => \Mux31~3_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X66_Y33_N20
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~1_combout\ & (\Equal0~5_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X66_Y3_N22
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Mux14~2_combout\ & (!\Mux11~2_combout\ & (!\Mux12~2_combout\ & !\Mux13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Mux11~2_combout\,
	datac => \Mux12~2_combout\,
	datad => \Mux13~2_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X56_Y35_N4
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\Equal0~10_combout\ & (\Equal0~8_combout\ & (\Equal0~6_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X56_Y43_N30
\Mux32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~4_combout\ = (\op[1]~input_o\ & ((\op[2]~input_o\ & ((\sub0|stage1|stage3|stage2|Cout~0_combout\))) # (!\op[2]~input_o\ & (\add0|stage1|stage3|stage2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \add0|stage1|stage3|stage2|Cout~0_combout\,
	datac => \sub0|stage1|stage3|stage2|Cout~0_combout\,
	datad => \op[1]~input_o\,
	combout => \Mux32~4_combout\);

-- Location: LCCOMB_X56_Y43_N24
\Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = \op[2]~input_o\ $ (((\b[31]~input_o\ & \op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datac => \b[31]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X56_Y43_N2
\Mux32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (!\op[0]~input_o\ & ((\Mux32~4_combout\ & ((\Mux32~2_combout\) # (\a[31]~input_o\))) # (!\Mux32~4_combout\ & (\Mux32~2_combout\ & \a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~4_combout\,
	datab => \op[0]~input_o\,
	datac => \Mux32~2_combout\,
	datad => \a[31]~input_o\,
	combout => \Mux32~3_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;

ww_result(16) <= \result[16]~output_o\;

ww_result(17) <= \result[17]~output_o\;

ww_result(18) <= \result[18]~output_o\;

ww_result(19) <= \result[19]~output_o\;

ww_result(20) <= \result[20]~output_o\;

ww_result(21) <= \result[21]~output_o\;

ww_result(22) <= \result[22]~output_o\;

ww_result(23) <= \result[23]~output_o\;

ww_result(24) <= \result[24]~output_o\;

ww_result(25) <= \result[25]~output_o\;

ww_result(26) <= \result[26]~output_o\;

ww_result(27) <= \result[27]~output_o\;

ww_result(28) <= \result[28]~output_o\;

ww_result(29) <= \result[29]~output_o\;

ww_result(30) <= \result[30]~output_o\;

ww_result(31) <= \result[31]~output_o\;

ww_zero <= \zero~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


