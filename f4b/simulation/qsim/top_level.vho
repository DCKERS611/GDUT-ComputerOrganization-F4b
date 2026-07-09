-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "06/02/2026 23:38:03"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	ACC : OUT std_logic_vector(15 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	clkMBR : IN std_logic;
	ALUIN : OUT std_logic_vector(3 DOWNTO 0);
	BRIN : OUT std_logic_vector(15 DOWNTO 0);
	BROUT : OUT std_logic_vector(15 DOWNTO 0);
	CARcIN : OUT std_logic_vector(3 DOWNTO 0);
	CAROUT : OUT std_logic_vector(7 DOWNTO 0);
	CONTROLIN : OUT std_logic_vector(31 DOWNTO 0);
	IROUT : OUT std_logic_vector(7 DOWNTO 0);
	MAROUT : OUT std_logic_vector(7 DOWNTO 0);
	PCOUT : OUT std_logic_vector(7 DOWNTO 0);
	RAMIN : OUT std_logic_vector(15 DOWNTO 0);
	RAMOUT : OUT std_logic_vector(15 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- ACC[15]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[14]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[13]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[12]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[11]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[10]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[9]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[8]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[7]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[6]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUIN[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUIN[2]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUIN[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUIN[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[15]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[14]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[13]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[12]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[11]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[10]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[9]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[8]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[7]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[5]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[15]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[14]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[13]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[12]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[11]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[10]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[9]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[8]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[7]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CARcIN[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CARcIN[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CARcIN[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CARcIN[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[5]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[4]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[31]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[30]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[29]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[28]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[27]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[26]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[25]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[24]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[23]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[22]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[21]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[20]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[19]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[18]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[17]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[16]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[15]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[14]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[13]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[12]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[11]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[10]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[9]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[8]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[7]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[6]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROLIN[0]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[6]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[5]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[5]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[3]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[0]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[15]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[13]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[11]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[10]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[9]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[8]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[7]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[4]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[1]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[15]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[14]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[13]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[12]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[11]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[10]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[9]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[8]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[7]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[4]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[3]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkMBR	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ACC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clkMBR : std_logic;
SIGNAL ww_ALUIN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BRIN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_BROUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CARcIN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CAROUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CONTROLIN : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_IROUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MAROUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PCOUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RAMIN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RAMOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst3|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst3|Mult0~24\ : std_logic;
SIGNAL \inst3|Mult0~25\ : std_logic;
SIGNAL \inst3|Mult0~26\ : std_logic;
SIGNAL \inst3|Mult0~27\ : std_logic;
SIGNAL \inst3|Mult0~28\ : std_logic;
SIGNAL \inst3|Mult0~29\ : std_logic;
SIGNAL \inst3|Mult0~30\ : std_logic;
SIGNAL \inst3|Mult0~31\ : std_logic;
SIGNAL \inst3|Mult0~32\ : std_logic;
SIGNAL \inst3|Mult0~33\ : std_logic;
SIGNAL \inst3|Mult0~34\ : std_logic;
SIGNAL \inst3|Mult0~35\ : std_logic;
SIGNAL \inst3|Mult0~36\ : std_logic;
SIGNAL \inst3|Mult0~37\ : std_logic;
SIGNAL \inst3|Mult0~38\ : std_logic;
SIGNAL \inst3|Mult0~39\ : std_logic;
SIGNAL \inst3|Mult0~40\ : std_logic;
SIGNAL \inst3|Mult0~41\ : std_logic;
SIGNAL \inst3|Mult0~42\ : std_logic;
SIGNAL \inst3|Mult0~43\ : std_logic;
SIGNAL \inst3|Mult0~44\ : std_logic;
SIGNAL \inst3|Mult0~45\ : std_logic;
SIGNAL \inst3|Mult0~46\ : std_logic;
SIGNAL \inst3|Mult0~47\ : std_logic;
SIGNAL \inst3|Mult0~48\ : std_logic;
SIGNAL \inst3|Mult0~49\ : std_logic;
SIGNAL \inst3|Mult0~50\ : std_logic;
SIGNAL \inst3|Mult0~51\ : std_logic;
SIGNAL \inst3|Mult0~52\ : std_logic;
SIGNAL \inst3|Mult0~53\ : std_logic;
SIGNAL \inst3|Mult0~54\ : std_logic;
SIGNAL \inst3|Mult0~55\ : std_logic;
SIGNAL \inst3|Mult0~56\ : std_logic;
SIGNAL \inst3|Mult0~57\ : std_logic;
SIGNAL \inst3|Mult0~58\ : std_logic;
SIGNAL \inst3|Mult0~59\ : std_logic;
SIGNAL \inst3|Mult0~60\ : std_logic;
SIGNAL \inst3|Mult0~61\ : std_logic;
SIGNAL \inst3|Mult0~62\ : std_logic;
SIGNAL \inst3|Mult0~63\ : std_logic;
SIGNAL \inst3|Mult0~64\ : std_logic;
SIGNAL \inst3|Mult0~65\ : std_logic;
SIGNAL \inst3|Mult0~66\ : std_logic;
SIGNAL \inst3|Mult0~67\ : std_logic;
SIGNAL \inst3|Mult0~68\ : std_logic;
SIGNAL \inst3|Mult0~69\ : std_logic;
SIGNAL \inst3|Mult0~70\ : std_logic;
SIGNAL \inst3|Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clkMBR~input_o\ : std_logic;
SIGNAL \clkMBR~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|temp~11_combout\ : std_logic;
SIGNAL \inst|MBR_RAM[15]~0_combout\ : std_logic;
SIGNAL \inst|temp~10_combout\ : std_logic;
SIGNAL \inst|temp~9_combout\ : std_logic;
SIGNAL \inst|temp~8_combout\ : std_logic;
SIGNAL \inst|temp~7_combout\ : std_logic;
SIGNAL \inst|temp~6_combout\ : std_logic;
SIGNAL \inst|temp~5_combout\ : std_logic;
SIGNAL \inst|temp~4_combout\ : std_logic;
SIGNAL \inst|MBR_RAM[11]~feeder_combout\ : std_logic;
SIGNAL \inst|temp~3_combout\ : std_logic;
SIGNAL \inst|MBR_RAM[12]~feeder_combout\ : std_logic;
SIGNAL \inst|temp~2_combout\ : std_logic;
SIGNAL \inst|temp~0_combout\ : std_logic;
SIGNAL \inst|MBR_OP[5]~0_combout\ : std_logic;
SIGNAL \inst|MBR_OP[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add0~30\ : std_logic;
SIGNAL \inst6|Add0~26\ : std_logic;
SIGNAL \inst6|Add0~22\ : std_logic;
SIGNAL \inst6|Add0~18\ : std_logic;
SIGNAL \inst6|Add0~14\ : std_logic;
SIGNAL \inst6|Add0~10\ : std_logic;
SIGNAL \inst6|Add0~6\ : std_logic;
SIGNAL \inst6|Add0~1_sumout\ : std_logic;
SIGNAL \inst6|CARout[0]~0_combout\ : std_logic;
SIGNAL \inst6|CARout[0]~1_combout\ : std_logic;
SIGNAL \inst6|CARout[0]~2_combout\ : std_logic;
SIGNAL \inst|MBR_BR[5]~0_combout\ : std_logic;
SIGNAL \inst3|Mult0~8_resulta\ : std_logic;
SIGNAL \inst3|ACC~0_combout\ : std_logic;
SIGNAL \inst3|ACC~1_combout\ : std_logic;
SIGNAL \inst3|ACC~38_combout\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|Add0~66_cout\ : std_logic;
SIGNAL \inst3|Add0~61_sumout\ : std_logic;
SIGNAL \inst3|ACC~39_combout\ : std_logic;
SIGNAL \inst3|ACC~40_combout\ : std_logic;
SIGNAL \inst3|Mult0~22\ : std_logic;
SIGNAL \inst3|Add0~62\ : std_logic;
SIGNAL \inst3|Add0~58\ : std_logic;
SIGNAL \inst3|Add0~54\ : std_logic;
SIGNAL \inst3|Add0~50\ : std_logic;
SIGNAL \inst3|Add0~46\ : std_logic;
SIGNAL \inst3|Add0~42\ : std_logic;
SIGNAL \inst3|Add0~38\ : std_logic;
SIGNAL \inst3|Add0~34\ : std_logic;
SIGNAL \inst3|Add0~30\ : std_logic;
SIGNAL \inst3|Add0~26\ : std_logic;
SIGNAL \inst3|Add0~22\ : std_logic;
SIGNAL \inst3|Add0~18\ : std_logic;
SIGNAL \inst3|Add0~14\ : std_logic;
SIGNAL \inst3|Add0~10\ : std_logic;
SIGNAL \inst3|Add0~5_sumout\ : std_logic;
SIGNAL \inst3|ACC~6_combout\ : std_logic;
SIGNAL \inst3|ACC~9_combout\ : std_logic;
SIGNAL \inst3|ACC[3]~10_combout\ : std_logic;
SIGNAL \inst3|ACC[3]~11_combout\ : std_logic;
SIGNAL \inst|temp~1_combout\ : std_logic;
SIGNAL \inst|MBR_OP[6]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add0~5_sumout\ : std_logic;
SIGNAL \inst3|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|Add0~9_sumout\ : std_logic;
SIGNAL \inst3|ACC~12_combout\ : std_logic;
SIGNAL \inst3|Mult0~21\ : std_logic;
SIGNAL \inst3|ACC~13_combout\ : std_logic;
SIGNAL \inst3|Add0~13_sumout\ : std_logic;
SIGNAL \inst3|ACC~14_combout\ : std_logic;
SIGNAL \inst3|Mult0~20\ : std_logic;
SIGNAL \inst3|ACC~15_combout\ : std_logic;
SIGNAL \inst3|Mult0~19\ : std_logic;
SIGNAL \inst3|Add0~17_sumout\ : std_logic;
SIGNAL \inst3|ACC~16_combout\ : std_logic;
SIGNAL \inst3|ACC~17_combout\ : std_logic;
SIGNAL \inst3|Add0~21_sumout\ : std_logic;
SIGNAL \inst3|ACC~18_combout\ : std_logic;
SIGNAL \inst3|Mult0~18\ : std_logic;
SIGNAL \inst3|ACC~19_combout\ : std_logic;
SIGNAL \inst3|Mult0~17\ : std_logic;
SIGNAL \inst3|Add0~25_sumout\ : std_logic;
SIGNAL \inst3|ACC~20_combout\ : std_logic;
SIGNAL \inst3|ACC~21_combout\ : std_logic;
SIGNAL \inst3|Add0~29_sumout\ : std_logic;
SIGNAL \inst3|ACC~22_combout\ : std_logic;
SIGNAL \inst3|Mult0~16\ : std_logic;
SIGNAL \inst3|ACC~23_combout\ : std_logic;
SIGNAL \inst3|Mult0~15\ : std_logic;
SIGNAL \inst3|Add0~33_sumout\ : std_logic;
SIGNAL \inst3|ACC~24_combout\ : std_logic;
SIGNAL \inst3|ACC~25_combout\ : std_logic;
SIGNAL \inst3|Add0~37_sumout\ : std_logic;
SIGNAL \inst3|ACC~26_combout\ : std_logic;
SIGNAL \inst3|Mult0~14\ : std_logic;
SIGNAL \inst3|ACC~27_combout\ : std_logic;
SIGNAL \inst3|Add0~41_sumout\ : std_logic;
SIGNAL \inst3|ACC~28_combout\ : std_logic;
SIGNAL \inst3|Mult0~13\ : std_logic;
SIGNAL \inst3|ACC~29_combout\ : std_logic;
SIGNAL \inst3|Mult0~12\ : std_logic;
SIGNAL \inst3|Add0~45_sumout\ : std_logic;
SIGNAL \inst3|ACC~30_combout\ : std_logic;
SIGNAL \inst3|ACC~31_combout\ : std_logic;
SIGNAL \inst3|Mult0~11\ : std_logic;
SIGNAL \inst3|Add0~49_sumout\ : std_logic;
SIGNAL \inst3|ACC~32_combout\ : std_logic;
SIGNAL \inst3|ACC~33_combout\ : std_logic;
SIGNAL \inst|temp~12_combout\ : std_logic;
SIGNAL \inst|MBR_OP[5]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add0~9_sumout\ : std_logic;
SIGNAL \inst3|Equal4~0_combout\ : std_logic;
SIGNAL \inst3|ACC~8_combout\ : std_logic;
SIGNAL \inst3|Add0~53_sumout\ : std_logic;
SIGNAL \inst3|ACC~34_combout\ : std_logic;
SIGNAL \inst3|Mult0~10\ : std_logic;
SIGNAL \inst3|ACC~35_combout\ : std_logic;
SIGNAL \inst|temp~13_combout\ : std_logic;
SIGNAL \inst|MBR_OP[4]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add0~13_sumout\ : std_logic;
SIGNAL \inst3|ACC[3]~7_combout\ : std_logic;
SIGNAL \inst3|Add0~57_sumout\ : std_logic;
SIGNAL \inst3|ACC~36_combout\ : std_logic;
SIGNAL \inst3|Mult0~9\ : std_logic;
SIGNAL \inst3|ACC~37_combout\ : std_logic;
SIGNAL \inst|temp~14_combout\ : std_logic;
SIGNAL \inst7|MARout[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|PCout[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|PCout[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|PCout[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|PCout[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|PCout[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|PCout[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|PCout[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|PCout[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|Add0~29_sumout\ : std_logic;
SIGNAL \inst4|PCout[4]~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst4|PCout[4]~1_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|PCout[4]~2_combout\ : std_logic;
SIGNAL \inst4|Add0~30\ : std_logic;
SIGNAL \inst4|Add0~25_sumout\ : std_logic;
SIGNAL \inst4|Add0~26\ : std_logic;
SIGNAL \inst4|Add0~21_sumout\ : std_logic;
SIGNAL \inst4|Add0~22\ : std_logic;
SIGNAL \inst4|Add0~17_sumout\ : std_logic;
SIGNAL \inst4|Add0~18\ : std_logic;
SIGNAL \inst4|Add0~13_sumout\ : std_logic;
SIGNAL \inst4|Add0~14\ : std_logic;
SIGNAL \inst4|Add0~9_sumout\ : std_logic;
SIGNAL \inst4|Add0~10\ : std_logic;
SIGNAL \inst4|Add0~5_sumout\ : std_logic;
SIGNAL \inst4|Add0~6\ : std_logic;
SIGNAL \inst4|Add0~1_sumout\ : std_logic;
SIGNAL \inst7|MARout[1]~0_combout\ : std_logic;
SIGNAL \inst7|MARout[6]~feeder_combout\ : std_logic;
SIGNAL \inst|MBR_MAR[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|MARout[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|MARout[4]~feeder_combout\ : std_logic;
SIGNAL \inst7|MARout[3]~feeder_combout\ : std_logic;
SIGNAL \inst7|MARout[2]~feeder_combout\ : std_logic;
SIGNAL \inst|MBR_MAR[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|MARout[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|MARout[0]~feeder_combout\ : std_logic;
SIGNAL \inst|MBR_OP[3]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add0~17_sumout\ : std_logic;
SIGNAL \inst|temp~15_combout\ : std_logic;
SIGNAL \inst|MBR_OP[2]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add0~21_sumout\ : std_logic;
SIGNAL \inst|MBR_OP[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add0~25_sumout\ : std_logic;
SIGNAL \inst6|Equal3~0_combout\ : std_logic;
SIGNAL \inst6|Add0~29_sumout\ : std_logic;
SIGNAL \inst3|Equal4~1_combout\ : std_logic;
SIGNAL \inst|MBR_BR[15]~feeder_combout\ : std_logic;
SIGNAL \inst3|ACC~2_combout\ : std_logic;
SIGNAL \inst3|Mult0~23\ : std_logic;
SIGNAL \inst3|ACC~4_combout\ : std_logic;
SIGNAL \inst3|ACC~3_combout\ : std_logic;
SIGNAL \inst3|Add0~6\ : std_logic;
SIGNAL \inst3|Add0~1_sumout\ : std_logic;
SIGNAL \inst3|ACC~5_combout\ : std_logic;
SIGNAL \inst4|PCout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|MBR_OP\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|ACC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|MBR_BR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|MARout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|CARout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|MBR_MAR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|MBR_RAM\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|BRout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_temp~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_temp~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~39_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~38_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~36_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~34_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~32_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~30_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~28_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~26_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~24_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~22_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~20_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~18_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~16_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~14_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~12_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~8_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC[3]~7_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~6_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_MBR_MAR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_clkMBR~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst6|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~16\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~15\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~14\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~13\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~12\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~11\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~10\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~9\ : std_logic;
SIGNAL \inst3|ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst9|sram|ram_block|auto_generated|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 1);
SIGNAL \inst4|ALT_INV_PCout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALT_INV_MBR_OP\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\ : std_logic_vector(26 DOWNTO 8);
SIGNAL \inst6|ALT_INV_CARout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALT_INV_MBR_BR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|ALT_INV_ACC\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ACC <= ww_ACC;
ww_clk <= clk;
ww_reset <= reset;
ww_clkMBR <= clkMBR;
ALUIN <= ww_ALUIN;
BRIN <= ww_BRIN;
BROUT <= ww_BROUT;
CARcIN <= ww_CARcIN;
CAROUT <= ww_CAROUT;
CONTROLIN <= ww_CONTROLIN;
IROUT <= ww_IROUT;
MAROUT <= ww_MAROUT;
PCOUT <= ww_PCOUT;
RAMIN <= ww_RAMIN;
RAMOUT <= ww_RAMOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst8|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(0) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst8|srom|rom_block|auto_generated|q_a\(1) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst8|srom|rom_block|auto_generated|q_a\(2) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst8|srom|rom_block|auto_generated|q_a\(3) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst8|srom|rom_block|auto_generated|q_a\(4) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst8|srom|rom_block|auto_generated|q_a\(5) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst8|srom|rom_block|auto_generated|q_a\(6) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst8|srom|rom_block|auto_generated|q_a\(7) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst8|srom|rom_block|auto_generated|q_a\(8) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst8|srom|rom_block|auto_generated|q_a\(9) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst8|srom|rom_block|auto_generated|q_a\(10) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst8|srom|rom_block|auto_generated|q_a\(11) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst8|srom|rom_block|auto_generated|q_a\(12) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst8|srom|rom_block|auto_generated|q_a\(13) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst8|srom|rom_block|auto_generated|q_a\(14) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst8|srom|rom_block|auto_generated|q_a\(15) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst8|srom|rom_block|auto_generated|q_a\(16) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\inst8|srom|rom_block|auto_generated|q_a\(17) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\inst8|srom|rom_block|auto_generated|q_a\(18) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\inst8|srom|rom_block|auto_generated|q_a\(19) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\inst8|srom|rom_block|auto_generated|q_a\(20) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\inst8|srom|rom_block|auto_generated|q_a\(21) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\inst8|srom|rom_block|auto_generated|q_a\(22) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\inst8|srom|rom_block|auto_generated|q_a\(23) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\inst8|srom|rom_block|auto_generated|q_a\(24) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\inst8|srom|rom_block|auto_generated|q_a\(25) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\inst8|srom|rom_block|auto_generated|q_a\(26) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\inst8|srom|rom_block|auto_generated|q_a\(27) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\inst8|srom|rom_block|auto_generated|q_a\(28) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\inst8|srom|rom_block|auto_generated|q_a\(29) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\inst8|srom|rom_block|auto_generated|q_a\(30) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\inst8|srom|rom_block|auto_generated|q_a\(31) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);

\inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \inst|MBR_RAM\(15) & \inst|MBR_RAM\(14) & \inst|MBR_RAM\(13) & \inst|MBR_RAM\(12) & \inst|MBR_RAM\(11) & \inst|MBR_RAM\(10) & \inst|MBR_RAM\(9) & 
\inst|MBR_RAM\(8) & \inst|MBR_RAM\(7) & \inst|MBR_RAM\(6) & \inst|MBR_RAM\(5) & \inst|MBR_RAM\(4) & \inst|MBR_RAM\(3) & \inst|MBR_RAM\(2) & \inst|MBR_RAM\(1) & \inst|MBR_RAM\(0));

\inst9|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(0) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst9|sram|ram_block|auto_generated|q_a\(1) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst9|sram|ram_block|auto_generated|q_a\(2) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst9|sram|ram_block|auto_generated|q_a\(3) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst9|sram|ram_block|auto_generated|q_a\(4) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst9|sram|ram_block|auto_generated|q_a\(5) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst9|sram|ram_block|auto_generated|q_a\(6) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst9|sram|ram_block|auto_generated|q_a\(7) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst9|sram|ram_block|auto_generated|q_a\(8) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst9|sram|ram_block|auto_generated|q_a\(9) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst9|sram|ram_block|auto_generated|q_a\(10) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst9|sram|ram_block|auto_generated|q_a\(11) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst9|sram|ram_block|auto_generated|q_a\(12) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst9|sram|ram_block|auto_generated|q_a\(13) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst9|sram|ram_block|auto_generated|q_a\(14) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst9|sram|ram_block|auto_generated|q_a\(15) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\inst3|Mult0~8_AX_bus\ <= (\inst3|ACC\(7) & \inst3|ACC\(6) & \inst3|ACC\(5) & \inst3|ACC\(4) & \inst3|ACC\(3) & \inst3|ACC\(2) & \inst3|ACC\(1) & \inst3|ACC\(0));

\inst3|Mult0~8_AY_bus\ <= (\inst2|BRout\(7) & \inst2|BRout\(6) & \inst2|BRout\(5) & \inst2|BRout\(4) & \inst2|BRout\(3) & \inst2|BRout\(2) & \inst2|BRout\(1) & \inst2|BRout\(0));

\inst3|Mult0~8_resulta\ <= \inst3|Mult0~8_RESULTA_bus\(0);
\inst3|Mult0~9\ <= \inst3|Mult0~8_RESULTA_bus\(1);
\inst3|Mult0~10\ <= \inst3|Mult0~8_RESULTA_bus\(2);
\inst3|Mult0~11\ <= \inst3|Mult0~8_RESULTA_bus\(3);
\inst3|Mult0~12\ <= \inst3|Mult0~8_RESULTA_bus\(4);
\inst3|Mult0~13\ <= \inst3|Mult0~8_RESULTA_bus\(5);
\inst3|Mult0~14\ <= \inst3|Mult0~8_RESULTA_bus\(6);
\inst3|Mult0~15\ <= \inst3|Mult0~8_RESULTA_bus\(7);
\inst3|Mult0~16\ <= \inst3|Mult0~8_RESULTA_bus\(8);
\inst3|Mult0~17\ <= \inst3|Mult0~8_RESULTA_bus\(9);
\inst3|Mult0~18\ <= \inst3|Mult0~8_RESULTA_bus\(10);
\inst3|Mult0~19\ <= \inst3|Mult0~8_RESULTA_bus\(11);
\inst3|Mult0~20\ <= \inst3|Mult0~8_RESULTA_bus\(12);
\inst3|Mult0~21\ <= \inst3|Mult0~8_RESULTA_bus\(13);
\inst3|Mult0~22\ <= \inst3|Mult0~8_RESULTA_bus\(14);
\inst3|Mult0~23\ <= \inst3|Mult0~8_RESULTA_bus\(15);
\inst3|Mult0~24\ <= \inst3|Mult0~8_RESULTA_bus\(16);
\inst3|Mult0~25\ <= \inst3|Mult0~8_RESULTA_bus\(17);
\inst3|Mult0~26\ <= \inst3|Mult0~8_RESULTA_bus\(18);
\inst3|Mult0~27\ <= \inst3|Mult0~8_RESULTA_bus\(19);
\inst3|Mult0~28\ <= \inst3|Mult0~8_RESULTA_bus\(20);
\inst3|Mult0~29\ <= \inst3|Mult0~8_RESULTA_bus\(21);
\inst3|Mult0~30\ <= \inst3|Mult0~8_RESULTA_bus\(22);
\inst3|Mult0~31\ <= \inst3|Mult0~8_RESULTA_bus\(23);
\inst3|Mult0~32\ <= \inst3|Mult0~8_RESULTA_bus\(24);
\inst3|Mult0~33\ <= \inst3|Mult0~8_RESULTA_bus\(25);
\inst3|Mult0~34\ <= \inst3|Mult0~8_RESULTA_bus\(26);
\inst3|Mult0~35\ <= \inst3|Mult0~8_RESULTA_bus\(27);
\inst3|Mult0~36\ <= \inst3|Mult0~8_RESULTA_bus\(28);
\inst3|Mult0~37\ <= \inst3|Mult0~8_RESULTA_bus\(29);
\inst3|Mult0~38\ <= \inst3|Mult0~8_RESULTA_bus\(30);
\inst3|Mult0~39\ <= \inst3|Mult0~8_RESULTA_bus\(31);
\inst3|Mult0~40\ <= \inst3|Mult0~8_RESULTA_bus\(32);
\inst3|Mult0~41\ <= \inst3|Mult0~8_RESULTA_bus\(33);
\inst3|Mult0~42\ <= \inst3|Mult0~8_RESULTA_bus\(34);
\inst3|Mult0~43\ <= \inst3|Mult0~8_RESULTA_bus\(35);
\inst3|Mult0~44\ <= \inst3|Mult0~8_RESULTA_bus\(36);
\inst3|Mult0~45\ <= \inst3|Mult0~8_RESULTA_bus\(37);
\inst3|Mult0~46\ <= \inst3|Mult0~8_RESULTA_bus\(38);
\inst3|Mult0~47\ <= \inst3|Mult0~8_RESULTA_bus\(39);
\inst3|Mult0~48\ <= \inst3|Mult0~8_RESULTA_bus\(40);
\inst3|Mult0~49\ <= \inst3|Mult0~8_RESULTA_bus\(41);
\inst3|Mult0~50\ <= \inst3|Mult0~8_RESULTA_bus\(42);
\inst3|Mult0~51\ <= \inst3|Mult0~8_RESULTA_bus\(43);
\inst3|Mult0~52\ <= \inst3|Mult0~8_RESULTA_bus\(44);
\inst3|Mult0~53\ <= \inst3|Mult0~8_RESULTA_bus\(45);
\inst3|Mult0~54\ <= \inst3|Mult0~8_RESULTA_bus\(46);
\inst3|Mult0~55\ <= \inst3|Mult0~8_RESULTA_bus\(47);
\inst3|Mult0~56\ <= \inst3|Mult0~8_RESULTA_bus\(48);
\inst3|Mult0~57\ <= \inst3|Mult0~8_RESULTA_bus\(49);
\inst3|Mult0~58\ <= \inst3|Mult0~8_RESULTA_bus\(50);
\inst3|Mult0~59\ <= \inst3|Mult0~8_RESULTA_bus\(51);
\inst3|Mult0~60\ <= \inst3|Mult0~8_RESULTA_bus\(52);
\inst3|Mult0~61\ <= \inst3|Mult0~8_RESULTA_bus\(53);
\inst3|Mult0~62\ <= \inst3|Mult0~8_RESULTA_bus\(54);
\inst3|Mult0~63\ <= \inst3|Mult0~8_RESULTA_bus\(55);
\inst3|Mult0~64\ <= \inst3|Mult0~8_RESULTA_bus\(56);
\inst3|Mult0~65\ <= \inst3|Mult0~8_RESULTA_bus\(57);
\inst3|Mult0~66\ <= \inst3|Mult0~8_RESULTA_bus\(58);
\inst3|Mult0~67\ <= \inst3|Mult0~8_RESULTA_bus\(59);
\inst3|Mult0~68\ <= \inst3|Mult0~8_RESULTA_bus\(60);
\inst3|Mult0~69\ <= \inst3|Mult0~8_RESULTA_bus\(61);
\inst3|Mult0~70\ <= \inst3|Mult0~8_RESULTA_bus\(62);
\inst3|Mult0~71\ <= \inst3|Mult0~8_RESULTA_bus\(63);
\inst|ALT_INV_temp\(4) <= NOT \inst|temp\(4);
\inst|ALT_INV_temp\(5) <= NOT \inst|temp\(5);
\inst|ALT_INV_temp\(6) <= NOT \inst|temp\(6);
\inst|ALT_INV_temp\(7) <= NOT \inst|temp\(7);
\inst|ALT_INV_temp\(8) <= NOT \inst|temp\(8);
\inst|ALT_INV_temp\(9) <= NOT \inst|temp\(9);
\inst|ALT_INV_temp\(10) <= NOT \inst|temp\(10);
\inst|ALT_INV_temp~4_combout\ <= NOT \inst|temp~4_combout\;
\inst|ALT_INV_temp\(11) <= NOT \inst|temp\(11);
\inst|ALT_INV_temp~3_combout\ <= NOT \inst|temp~3_combout\;
\inst|ALT_INV_temp\(12) <= NOT \inst|temp\(12);
\inst|ALT_INV_temp\(13) <= NOT \inst|temp\(13);
\inst|ALT_INV_temp\(14) <= NOT \inst|temp\(14);
\inst|ALT_INV_temp\(15) <= NOT \inst|temp\(15);
\inst4|ALT_INV_Equal0~0_combout\ <= NOT \inst4|Equal0~0_combout\;
\inst3|ALT_INV_LessThan0~2_combout\ <= NOT \inst3|LessThan0~2_combout\;
\inst3|ALT_INV_LessThan0~1_combout\ <= NOT \inst3|LessThan0~1_combout\;
\inst3|ALT_INV_LessThan0~0_combout\ <= NOT \inst3|LessThan0~0_combout\;
\inst3|ALT_INV_ACC~39_combout\ <= NOT \inst3|ACC~39_combout\;
\inst3|ALT_INV_ACC~38_combout\ <= NOT \inst3|ACC~38_combout\;
\inst3|ALT_INV_ACC~36_combout\ <= NOT \inst3|ACC~36_combout\;
\inst3|ALT_INV_ACC~34_combout\ <= NOT \inst3|ACC~34_combout\;
\inst3|ALT_INV_ACC~32_combout\ <= NOT \inst3|ACC~32_combout\;
\inst3|ALT_INV_ACC~30_combout\ <= NOT \inst3|ACC~30_combout\;
\inst3|ALT_INV_ACC~28_combout\ <= NOT \inst3|ACC~28_combout\;
\inst3|ALT_INV_ACC~26_combout\ <= NOT \inst3|ACC~26_combout\;
\inst3|ALT_INV_ACC~24_combout\ <= NOT \inst3|ACC~24_combout\;
\inst3|ALT_INV_ACC~22_combout\ <= NOT \inst3|ACC~22_combout\;
\inst3|ALT_INV_ACC~20_combout\ <= NOT \inst3|ACC~20_combout\;
\inst3|ALT_INV_ACC~18_combout\ <= NOT \inst3|ACC~18_combout\;
\inst3|ALT_INV_ACC~16_combout\ <= NOT \inst3|ACC~16_combout\;
\inst3|ALT_INV_ACC~14_combout\ <= NOT \inst3|ACC~14_combout\;
\inst3|ALT_INV_ACC~12_combout\ <= NOT \inst3|ACC~12_combout\;
\inst3|ALT_INV_ACC~8_combout\ <= NOT \inst3|ACC~8_combout\;
\inst3|ALT_INV_ACC[3]~7_combout\ <= NOT \inst3|ACC[3]~7_combout\;
\inst3|ALT_INV_ACC~6_combout\ <= NOT \inst3|ACC~6_combout\;
\inst3|ALT_INV_ACC~4_combout\ <= NOT \inst3|ACC~4_combout\;
\inst3|ALT_INV_ACC~3_combout\ <= NOT \inst3|ACC~3_combout\;
\inst3|ALT_INV_ACC~2_combout\ <= NOT \inst3|ACC~2_combout\;
\inst3|ALT_INV_ACC~1_combout\ <= NOT \inst3|ACC~1_combout\;
\inst3|ALT_INV_Equal2~0_combout\ <= NOT \inst3|Equal2~0_combout\;
\inst3|ALT_INV_ACC~0_combout\ <= NOT \inst3|ACC~0_combout\;
\inst3|ALT_INV_Equal4~1_combout\ <= NOT \inst3|Equal4~1_combout\;
\inst3|ALT_INV_Equal4~0_combout\ <= NOT \inst3|Equal4~0_combout\;
\inst|ALT_INV_MBR_MAR\(0) <= NOT \inst|MBR_MAR\(0);
\inst|ALT_INV_MBR_MAR\(1) <= NOT \inst|MBR_MAR\(1);
\inst|ALT_INV_MBR_MAR\(2) <= NOT \inst|MBR_MAR\(2);
\inst|ALT_INV_MBR_MAR\(3) <= NOT \inst|MBR_MAR\(3);
\inst|ALT_INV_MBR_MAR\(4) <= NOT \inst|MBR_MAR\(4);
\inst|ALT_INV_MBR_MAR\(5) <= NOT \inst|MBR_MAR\(5);
\inst|ALT_INV_MBR_MAR\(6) <= NOT \inst|MBR_MAR\(6);
\inst|ALT_INV_MBR_MAR\(7) <= NOT \inst|MBR_MAR\(7);
\ALT_INV_clk~inputCLKENA0_outclk\ <= NOT \clk~inputCLKENA0_outclk\;
\ALT_INV_clkMBR~inputCLKENA0_outclk\ <= NOT \clkMBR~inputCLKENA0_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\inst2|ALT_INV_BRout\(0) <= NOT \inst2|BRout\(0);
\inst2|ALT_INV_BRout\(1) <= NOT \inst2|BRout\(1);
\inst2|ALT_INV_BRout\(2) <= NOT \inst2|BRout\(2);
\inst2|ALT_INV_BRout\(3) <= NOT \inst2|BRout\(3);
\inst2|ALT_INV_BRout\(4) <= NOT \inst2|BRout\(4);
\inst2|ALT_INV_BRout\(5) <= NOT \inst2|BRout\(5);
\inst2|ALT_INV_BRout\(6) <= NOT \inst2|BRout\(6);
\inst2|ALT_INV_BRout\(7) <= NOT \inst2|BRout\(7);
\inst2|ALT_INV_BRout\(8) <= NOT \inst2|BRout\(8);
\inst2|ALT_INV_BRout\(9) <= NOT \inst2|BRout\(9);
\inst2|ALT_INV_BRout\(10) <= NOT \inst2|BRout\(10);
\inst2|ALT_INV_BRout\(11) <= NOT \inst2|BRout\(11);
\inst2|ALT_INV_BRout\(12) <= NOT \inst2|BRout\(12);
\inst2|ALT_INV_BRout\(13) <= NOT \inst2|BRout\(13);
\inst2|ALT_INV_BRout\(14) <= NOT \inst2|BRout\(14);
\inst2|ALT_INV_BRout\(15) <= NOT \inst2|BRout\(15);
\inst6|ALT_INV_Equal3~0_combout\ <= NOT \inst6|Equal3~0_combout\;
\inst3|ALT_INV_Equal1~0_combout\ <= NOT \inst3|Equal1~0_combout\;
\inst|ALT_INV_temp\(0) <= NOT \inst|temp\(0);
\inst|ALT_INV_temp\(1) <= NOT \inst|temp\(1);
\inst|ALT_INV_temp\(2) <= NOT \inst|temp\(2);
\inst|ALT_INV_temp\(3) <= NOT \inst|temp\(3);
\inst3|ALT_INV_Add0~61_sumout\ <= NOT \inst3|Add0~61_sumout\;
\inst3|ALT_INV_Add0~57_sumout\ <= NOT \inst3|Add0~57_sumout\;
\inst3|ALT_INV_Add0~53_sumout\ <= NOT \inst3|Add0~53_sumout\;
\inst3|ALT_INV_Add0~49_sumout\ <= NOT \inst3|Add0~49_sumout\;
\inst3|ALT_INV_Add0~45_sumout\ <= NOT \inst3|Add0~45_sumout\;
\inst3|ALT_INV_Add0~41_sumout\ <= NOT \inst3|Add0~41_sumout\;
\inst3|ALT_INV_Add0~37_sumout\ <= NOT \inst3|Add0~37_sumout\;
\inst3|ALT_INV_Add0~33_sumout\ <= NOT \inst3|Add0~33_sumout\;
\inst3|ALT_INV_Add0~29_sumout\ <= NOT \inst3|Add0~29_sumout\;
\inst3|ALT_INV_Add0~25_sumout\ <= NOT \inst3|Add0~25_sumout\;
\inst3|ALT_INV_Add0~21_sumout\ <= NOT \inst3|Add0~21_sumout\;
\inst3|ALT_INV_Add0~17_sumout\ <= NOT \inst3|Add0~17_sumout\;
\inst3|ALT_INV_Add0~13_sumout\ <= NOT \inst3|Add0~13_sumout\;
\inst3|ALT_INV_Add0~9_sumout\ <= NOT \inst3|Add0~9_sumout\;
\inst3|ALT_INV_Add0~5_sumout\ <= NOT \inst3|Add0~5_sumout\;
\inst3|ALT_INV_Mult0~23\ <= NOT \inst3|Mult0~23\;
\inst3|ALT_INV_Mult0~22\ <= NOT \inst3|Mult0~22\;
\inst3|ALT_INV_Mult0~21\ <= NOT \inst3|Mult0~21\;
\inst3|ALT_INV_Mult0~20\ <= NOT \inst3|Mult0~20\;
\inst3|ALT_INV_Mult0~19\ <= NOT \inst3|Mult0~19\;
\inst3|ALT_INV_Mult0~18\ <= NOT \inst3|Mult0~18\;
\inst3|ALT_INV_Mult0~17\ <= NOT \inst3|Mult0~17\;
\inst3|ALT_INV_Mult0~16\ <= NOT \inst3|Mult0~16\;
\inst3|ALT_INV_Mult0~15\ <= NOT \inst3|Mult0~15\;
\inst3|ALT_INV_Mult0~14\ <= NOT \inst3|Mult0~14\;
\inst3|ALT_INV_Mult0~13\ <= NOT \inst3|Mult0~13\;
\inst3|ALT_INV_Mult0~12\ <= NOT \inst3|Mult0~12\;
\inst3|ALT_INV_Mult0~11\ <= NOT \inst3|Mult0~11\;
\inst3|ALT_INV_Mult0~10\ <= NOT \inst3|Mult0~10\;
\inst3|ALT_INV_Mult0~9\ <= NOT \inst3|Mult0~9\;
\inst3|ALT_INV_Mult0~8_resulta\ <= NOT \inst3|Mult0~8_resulta\;
\inst3|ALT_INV_Add0~1_sumout\ <= NOT \inst3|Add0~1_sumout\;
\inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(1) <= NOT \inst9|sram|ram_block|auto_generated|q_a\(1);
\inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(5) <= NOT \inst9|sram|ram_block|auto_generated|q_a\(5);
\inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(8) <= NOT \inst9|sram|ram_block|auto_generated|q_a\(8);
\inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(9) <= NOT \inst9|sram|ram_block|auto_generated|q_a\(9);
\inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(10) <= NOT \inst9|sram|ram_block|auto_generated|q_a\(10);
\inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(11) <= NOT \inst9|sram|ram_block|auto_generated|q_a\(11);
\inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(12) <= NOT \inst9|sram|ram_block|auto_generated|q_a\(12);
\inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(13) <= NOT \inst9|sram|ram_block|auto_generated|q_a\(13);
\inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(14) <= NOT \inst9|sram|ram_block|auto_generated|q_a\(14);
\inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(15) <= NOT \inst9|sram|ram_block|auto_generated|q_a\(15);
\inst4|ALT_INV_PCout\(0) <= NOT \inst4|PCout\(0);
\inst4|ALT_INV_PCout\(1) <= NOT \inst4|PCout\(1);
\inst4|ALT_INV_PCout\(2) <= NOT \inst4|PCout\(2);
\inst4|ALT_INV_PCout\(3) <= NOT \inst4|PCout\(3);
\inst4|ALT_INV_PCout\(4) <= NOT \inst4|PCout\(4);
\inst4|ALT_INV_PCout\(5) <= NOT \inst4|PCout\(5);
\inst4|ALT_INV_PCout\(6) <= NOT \inst4|PCout\(6);
\inst4|ALT_INV_PCout\(7) <= NOT \inst4|PCout\(7);
\inst|ALT_INV_MBR_OP\(0) <= NOT \inst|MBR_OP\(0);
\inst|ALT_INV_MBR_OP\(1) <= NOT \inst|MBR_OP\(1);
\inst|ALT_INV_MBR_OP\(2) <= NOT \inst|MBR_OP\(2);
\inst|ALT_INV_MBR_OP\(3) <= NOT \inst|MBR_OP\(3);
\inst|ALT_INV_MBR_OP\(4) <= NOT \inst|MBR_OP\(4);
\inst|ALT_INV_MBR_OP\(5) <= NOT \inst|MBR_OP\(5);
\inst|ALT_INV_MBR_OP\(6) <= NOT \inst|MBR_OP\(6);
\inst|ALT_INV_MBR_OP\(7) <= NOT \inst|MBR_OP\(7);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(8) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(8);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(9) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(9);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(10) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(10);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(11) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(11);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(12);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(13);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(14);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(15);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(16) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(16);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(17) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(17);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(18);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(19) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(19);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(20);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(21) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(21);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(22);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(23) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(23);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(24) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(24);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(25) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(25);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(26) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(26);
\inst6|ALT_INV_CARout\(0) <= NOT \inst6|CARout\(0);
\inst6|ALT_INV_CARout\(1) <= NOT \inst6|CARout\(1);
\inst6|ALT_INV_CARout\(2) <= NOT \inst6|CARout\(2);
\inst6|ALT_INV_CARout\(3) <= NOT \inst6|CARout\(3);
\inst6|ALT_INV_CARout\(4) <= NOT \inst6|CARout\(4);
\inst6|ALT_INV_CARout\(5) <= NOT \inst6|CARout\(5);
\inst6|ALT_INV_CARout\(6) <= NOT \inst6|CARout\(6);
\inst6|ALT_INV_CARout\(7) <= NOT \inst6|CARout\(7);
\inst|ALT_INV_MBR_BR\(0) <= NOT \inst|MBR_BR\(0);
\inst|ALT_INV_MBR_BR\(1) <= NOT \inst|MBR_BR\(1);
\inst|ALT_INV_MBR_BR\(2) <= NOT \inst|MBR_BR\(2);
\inst|ALT_INV_MBR_BR\(3) <= NOT \inst|MBR_BR\(3);
\inst|ALT_INV_MBR_BR\(4) <= NOT \inst|MBR_BR\(4);
\inst|ALT_INV_MBR_BR\(5) <= NOT \inst|MBR_BR\(5);
\inst|ALT_INV_MBR_BR\(6) <= NOT \inst|MBR_BR\(6);
\inst|ALT_INV_MBR_BR\(7) <= NOT \inst|MBR_BR\(7);
\inst|ALT_INV_MBR_BR\(8) <= NOT \inst|MBR_BR\(8);
\inst|ALT_INV_MBR_BR\(9) <= NOT \inst|MBR_BR\(9);
\inst|ALT_INV_MBR_BR\(10) <= NOT \inst|MBR_BR\(10);
\inst|ALT_INV_MBR_BR\(11) <= NOT \inst|MBR_BR\(11);
\inst|ALT_INV_MBR_BR\(12) <= NOT \inst|MBR_BR\(12);
\inst|ALT_INV_MBR_BR\(13) <= NOT \inst|MBR_BR\(13);
\inst|ALT_INV_MBR_BR\(14) <= NOT \inst|MBR_BR\(14);
\inst|ALT_INV_MBR_BR\(15) <= NOT \inst|MBR_BR\(15);
\inst3|ALT_INV_ACC\(0) <= NOT \inst3|ACC\(0);
\inst3|ALT_INV_ACC\(1) <= NOT \inst3|ACC\(1);
\inst3|ALT_INV_ACC\(2) <= NOT \inst3|ACC\(2);
\inst3|ALT_INV_ACC\(3) <= NOT \inst3|ACC\(3);
\inst3|ALT_INV_ACC\(4) <= NOT \inst3|ACC\(4);
\inst3|ALT_INV_ACC\(5) <= NOT \inst3|ACC\(5);
\inst3|ALT_INV_ACC\(6) <= NOT \inst3|ACC\(6);
\inst3|ALT_INV_ACC\(7) <= NOT \inst3|ACC\(7);
\inst3|ALT_INV_ACC\(8) <= NOT \inst3|ACC\(8);
\inst3|ALT_INV_ACC\(9) <= NOT \inst3|ACC\(9);
\inst3|ALT_INV_ACC\(10) <= NOT \inst3|ACC\(10);
\inst3|ALT_INV_ACC\(11) <= NOT \inst3|ACC\(11);
\inst3|ALT_INV_ACC\(12) <= NOT \inst3|ACC\(12);
\inst3|ALT_INV_ACC\(13) <= NOT \inst3|ACC\(13);
\inst3|ALT_INV_ACC\(14) <= NOT \inst3|ACC\(14);
\inst3|ALT_INV_ACC\(15) <= NOT \inst3|ACC\(15);

-- Location: IOOBUF_X8_Y0_N36
\ACC[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(15),
	devoe => ww_devoe,
	o => ww_ACC(15));

-- Location: IOOBUF_X34_Y0_N76
\ACC[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(14),
	devoe => ww_devoe,
	o => ww_ACC(14));

-- Location: IOOBUF_X32_Y0_N36
\ACC[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(13),
	devoe => ww_devoe,
	o => ww_ACC(13));

-- Location: IOOBUF_X28_Y81_N19
\ACC[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(12),
	devoe => ww_devoe,
	o => ww_ACC(12));

-- Location: IOOBUF_X26_Y0_N59
\ACC[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(11),
	devoe => ww_devoe,
	o => ww_ACC(11));

-- Location: IOOBUF_X28_Y0_N19
\ACC[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(10),
	devoe => ww_devoe,
	o => ww_ACC(10));

-- Location: IOOBUF_X30_Y0_N36
\ACC[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(9),
	devoe => ww_devoe,
	o => ww_ACC(9));

-- Location: IOOBUF_X36_Y0_N53
\ACC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(8),
	devoe => ww_devoe,
	o => ww_ACC(8));

-- Location: IOOBUF_X30_Y0_N19
\ACC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(7),
	devoe => ww_devoe,
	o => ww_ACC(7));

-- Location: IOOBUF_X26_Y0_N93
\ACC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(6),
	devoe => ww_devoe,
	o => ww_ACC(6));

-- Location: IOOBUF_X30_Y0_N2
\ACC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(5),
	devoe => ww_devoe,
	o => ww_ACC(5));

-- Location: IOOBUF_X28_Y0_N2
\ACC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(4),
	devoe => ww_devoe,
	o => ww_ACC(4));

-- Location: IOOBUF_X28_Y0_N36
\ACC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(3),
	devoe => ww_devoe,
	o => ww_ACC(3));

-- Location: IOOBUF_X26_Y0_N42
\ACC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(2),
	devoe => ww_devoe,
	o => ww_ACC(2));

-- Location: IOOBUF_X26_Y0_N76
\ACC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(1),
	devoe => ww_devoe,
	o => ww_ACC(1));

-- Location: IOOBUF_X28_Y0_N53
\ACC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ACC\(0),
	devoe => ww_devoe,
	o => ww_ACC(0));

-- Location: IOOBUF_X89_Y8_N39
\ALUIN[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_ALUIN(3));

-- Location: IOOBUF_X64_Y0_N36
\ALUIN[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_ALUIN(2));

-- Location: IOOBUF_X58_Y0_N42
\ALUIN[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_ALUIN(1));

-- Location: IOOBUF_X70_Y0_N2
\ALUIN[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_ALUIN(0));

-- Location: IOOBUF_X32_Y81_N2
\BRIN[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(15),
	devoe => ww_devoe,
	o => ww_BRIN(15));

-- Location: IOOBUF_X32_Y81_N53
\BRIN[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(14),
	devoe => ww_devoe,
	o => ww_BRIN(14));

-- Location: IOOBUF_X89_Y9_N5
\BRIN[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(13),
	devoe => ww_devoe,
	o => ww_BRIN(13));

-- Location: IOOBUF_X89_Y36_N39
\BRIN[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(12),
	devoe => ww_devoe,
	o => ww_BRIN(12));

-- Location: IOOBUF_X32_Y81_N36
\BRIN[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(11),
	devoe => ww_devoe,
	o => ww_BRIN(11));

-- Location: IOOBUF_X28_Y81_N53
\BRIN[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(10),
	devoe => ww_devoe,
	o => ww_BRIN(10));

-- Location: IOOBUF_X32_Y81_N19
\BRIN[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(9),
	devoe => ww_devoe,
	o => ww_BRIN(9));

-- Location: IOOBUF_X4_Y0_N53
\BRIN[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(8),
	devoe => ww_devoe,
	o => ww_BRIN(8));

-- Location: IOOBUF_X26_Y81_N76
\BRIN[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(7),
	devoe => ww_devoe,
	o => ww_BRIN(7));

-- Location: IOOBUF_X28_Y81_N36
\BRIN[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(6),
	devoe => ww_devoe,
	o => ww_BRIN(6));

-- Location: IOOBUF_X26_Y81_N42
\BRIN[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(5),
	devoe => ww_devoe,
	o => ww_BRIN(5));

-- Location: IOOBUF_X89_Y6_N39
\BRIN[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(4),
	devoe => ww_devoe,
	o => ww_BRIN(4));

-- Location: IOOBUF_X26_Y81_N93
\BRIN[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(3),
	devoe => ww_devoe,
	o => ww_BRIN(3));

-- Location: IOOBUF_X30_Y81_N36
\BRIN[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(2),
	devoe => ww_devoe,
	o => ww_BRIN(2));

-- Location: IOOBUF_X89_Y6_N22
\BRIN[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(1),
	devoe => ww_devoe,
	o => ww_BRIN(1));

-- Location: IOOBUF_X26_Y81_N59
\BRIN[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_BR\(0),
	devoe => ww_devoe,
	o => ww_BRIN(0));

-- Location: IOOBUF_X89_Y38_N22
\BROUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(15),
	devoe => ww_devoe,
	o => ww_BROUT(15));

-- Location: IOOBUF_X89_Y6_N5
\BROUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(14),
	devoe => ww_devoe,
	o => ww_BROUT(14));

-- Location: IOOBUF_X28_Y81_N2
\BROUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(13),
	devoe => ww_devoe,
	o => ww_BROUT(13));

-- Location: IOOBUF_X36_Y0_N2
\BROUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(12),
	devoe => ww_devoe,
	o => ww_BROUT(12));

-- Location: IOOBUF_X38_Y0_N53
\BROUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(11),
	devoe => ww_devoe,
	o => ww_BROUT(11));

-- Location: IOOBUF_X89_Y4_N62
\BROUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(10),
	devoe => ww_devoe,
	o => ww_BROUT(10));

-- Location: IOOBUF_X4_Y0_N36
\BROUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(9),
	devoe => ww_devoe,
	o => ww_BROUT(9));

-- Location: IOOBUF_X4_Y0_N19
\BROUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(8),
	devoe => ww_devoe,
	o => ww_BROUT(8));

-- Location: IOOBUF_X30_Y0_N53
\BROUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(7),
	devoe => ww_devoe,
	o => ww_BROUT(7));

-- Location: IOOBUF_X32_Y0_N19
\BROUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(6),
	devoe => ww_devoe,
	o => ww_BROUT(6));

-- Location: IOOBUF_X89_Y36_N56
\BROUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(5),
	devoe => ww_devoe,
	o => ww_BROUT(5));

-- Location: IOOBUF_X32_Y0_N53
\BROUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(4),
	devoe => ww_devoe,
	o => ww_BROUT(4));

-- Location: IOOBUF_X8_Y0_N53
\BROUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(3),
	devoe => ww_devoe,
	o => ww_BROUT(3));

-- Location: IOOBUF_X34_Y0_N93
\BROUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(2),
	devoe => ww_devoe,
	o => ww_BROUT(2));

-- Location: IOOBUF_X8_Y0_N2
\BROUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(1),
	devoe => ww_devoe,
	o => ww_BROUT(1));

-- Location: IOOBUF_X6_Y0_N19
\BROUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout\(0),
	devoe => ww_devoe,
	o => ww_BROUT(0));

-- Location: IOOBUF_X89_Y37_N5
\CARcIN[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => ww_CARcIN(3));

-- Location: IOOBUF_X72_Y0_N36
\CARcIN[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => ww_CARcIN(2));

-- Location: IOOBUF_X89_Y35_N45
\CARcIN[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => ww_CARcIN(1));

-- Location: IOOBUF_X38_Y81_N53
\CARcIN[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => ww_CARcIN(0));

-- Location: IOOBUF_X66_Y0_N76
\CAROUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|CARout\(7),
	devoe => ww_devoe,
	o => ww_CAROUT(7));

-- Location: IOOBUF_X50_Y0_N59
\CAROUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|CARout\(6),
	devoe => ww_devoe,
	o => ww_CAROUT(6));

-- Location: IOOBUF_X89_Y9_N22
\CAROUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|CARout\(5),
	devoe => ww_devoe,
	o => ww_CAROUT(5));

-- Location: IOOBUF_X50_Y0_N42
\CAROUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|CARout\(4),
	devoe => ww_devoe,
	o => ww_CAROUT(4));

-- Location: IOOBUF_X62_Y0_N36
\CAROUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|CARout\(3),
	devoe => ww_devoe,
	o => ww_CAROUT(3));

-- Location: IOOBUF_X89_Y4_N79
\CAROUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|CARout\(2),
	devoe => ww_devoe,
	o => ww_CAROUT(2));

-- Location: IOOBUF_X60_Y0_N19
\CAROUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|CARout\(1),
	devoe => ww_devoe,
	o => ww_CAROUT(1));

-- Location: IOOBUF_X52_Y0_N53
\CAROUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|CARout\(0),
	devoe => ww_devoe,
	o => ww_CAROUT(0));

-- Location: IOOBUF_X89_Y4_N96
\CONTROLIN[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => ww_CONTROLIN(31));

-- Location: IOOBUF_X89_Y36_N22
\CONTROLIN[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => ww_CONTROLIN(30));

-- Location: IOOBUF_X40_Y81_N2
\CONTROLIN[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => ww_CONTROLIN(29));

-- Location: IOOBUF_X40_Y81_N53
\CONTROLIN[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => ww_CONTROLIN(28));

-- Location: IOOBUF_X40_Y81_N36
\CONTROLIN[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => ww_CONTROLIN(27));

-- Location: IOOBUF_X89_Y37_N56
\CONTROLIN[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => ww_CONTROLIN(26));

-- Location: IOOBUF_X72_Y0_N2
\CONTROLIN[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => ww_CONTROLIN(25));

-- Location: IOOBUF_X89_Y35_N96
\CONTROLIN[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => ww_CONTROLIN(24));

-- Location: IOOBUF_X38_Y81_N36
\CONTROLIN[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => ww_CONTROLIN(23));

-- Location: IOOBUF_X38_Y81_N2
\CONTROLIN[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => ww_CONTROLIN(22));

-- Location: IOOBUF_X64_Y0_N19
\CONTROLIN[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => ww_CONTROLIN(21));

-- Location: IOOBUF_X38_Y0_N19
\CONTROLIN[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => ww_CONTROLIN(20));

-- Location: IOOBUF_X68_Y0_N53
\CONTROLIN[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => ww_CONTROLIN(19));

-- Location: IOOBUF_X89_Y35_N79
\CONTROLIN[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => ww_CONTROLIN(18));

-- Location: IOOBUF_X62_Y0_N53
\CONTROLIN[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => ww_CONTROLIN(17));

-- Location: IOOBUF_X56_Y0_N2
\CONTROLIN[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => ww_CONTROLIN(16));

-- Location: IOOBUF_X89_Y8_N22
\CONTROLIN[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_CONTROLIN(15));

-- Location: IOOBUF_X64_Y0_N53
\CONTROLIN[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_CONTROLIN(14));

-- Location: IOOBUF_X58_Y0_N59
\CONTROLIN[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_CONTROLIN(13));

-- Location: IOOBUF_X70_Y0_N19
\CONTROLIN[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_CONTROLIN(12));

-- Location: IOOBUF_X60_Y0_N2
\CONTROLIN[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_CONTROLIN(11));

-- Location: IOOBUF_X62_Y0_N19
\CONTROLIN[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_CONTROLIN(10));

-- Location: IOOBUF_X56_Y0_N53
\CONTROLIN[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_CONTROLIN(9));

-- Location: IOOBUF_X70_Y0_N36
\CONTROLIN[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_CONTROLIN(8));

-- Location: IOOBUF_X56_Y0_N19
\CONTROLIN[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_CONTROLIN(7));

-- Location: IOOBUF_X54_Y0_N19
\CONTROLIN[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_CONTROLIN(6));

-- Location: IOOBUF_X52_Y0_N36
\CONTROLIN[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_CONTROLIN(5));

-- Location: IOOBUF_X52_Y0_N19
\CONTROLIN[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_CONTROLIN(4));

-- Location: IOOBUF_X60_Y0_N53
\CONTROLIN[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_CONTROLIN(3));

-- Location: IOOBUF_X52_Y0_N2
\CONTROLIN[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_CONTROLIN(2));

-- Location: IOOBUF_X54_Y0_N36
\CONTROLIN[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_CONTROLIN(1));

-- Location: IOOBUF_X64_Y0_N2
\CONTROLIN[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|srom|rom_block|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_CONTROLIN(0));

-- Location: IOOBUF_X50_Y0_N93
\IROUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_OP\(7),
	devoe => ww_devoe,
	o => ww_IROUT(7));

-- Location: IOOBUF_X40_Y0_N53
\IROUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_OP\(6),
	devoe => ww_devoe,
	o => ww_IROUT(6));

-- Location: IOOBUF_X89_Y9_N39
\IROUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_OP\(5),
	devoe => ww_devoe,
	o => ww_IROUT(5));

-- Location: IOOBUF_X50_Y0_N76
\IROUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_OP\(4),
	devoe => ww_devoe,
	o => ww_IROUT(4));

-- Location: IOOBUF_X40_Y0_N2
\IROUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_OP\(3),
	devoe => ww_devoe,
	o => ww_IROUT(3));

-- Location: IOOBUF_X40_Y0_N19
\IROUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_OP\(2),
	devoe => ww_devoe,
	o => ww_IROUT(2));

-- Location: IOOBUF_X40_Y81_N19
\IROUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_OP\(1),
	devoe => ww_devoe,
	o => ww_IROUT(1));

-- Location: IOOBUF_X40_Y0_N36
\IROUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_OP\(0),
	devoe => ww_devoe,
	o => ww_IROUT(0));

-- Location: IOOBUF_X36_Y81_N19
\MAROUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MARout\(7),
	devoe => ww_devoe,
	o => ww_MAROUT(7));

-- Location: IOOBUF_X34_Y0_N42
\MAROUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MARout\(6),
	devoe => ww_devoe,
	o => ww_MAROUT(6));

-- Location: IOOBUF_X89_Y9_N56
\MAROUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MARout\(5),
	devoe => ww_devoe,
	o => ww_MAROUT(5));

-- Location: IOOBUF_X50_Y81_N93
\MAROUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MARout\(4),
	devoe => ww_devoe,
	o => ww_MAROUT(4));

-- Location: IOOBUF_X36_Y81_N2
\MAROUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MARout\(3),
	devoe => ww_devoe,
	o => ww_MAROUT(3));

-- Location: IOOBUF_X68_Y0_N19
\MAROUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MARout\(2),
	devoe => ww_devoe,
	o => ww_MAROUT(2));

-- Location: IOOBUF_X34_Y81_N76
\MAROUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MARout\(1),
	devoe => ww_devoe,
	o => ww_MAROUT(1));

-- Location: IOOBUF_X36_Y0_N19
\MAROUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MARout\(0),
	devoe => ww_devoe,
	o => ww_MAROUT(0));

-- Location: IOOBUF_X34_Y81_N93
\PCOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|PCout\(7),
	devoe => ww_devoe,
	o => ww_PCOUT(7));

-- Location: IOOBUF_X6_Y0_N53
\PCOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|PCout\(6),
	devoe => ww_devoe,
	o => ww_PCOUT(6));

-- Location: IOOBUF_X8_Y0_N19
\PCOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|PCout\(5),
	devoe => ww_devoe,
	o => ww_PCOUT(5));

-- Location: IOOBUF_X30_Y81_N2
\PCOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|PCout\(4),
	devoe => ww_devoe,
	o => ww_PCOUT(4));

-- Location: IOOBUF_X68_Y0_N2
\PCOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|PCout\(3),
	devoe => ww_devoe,
	o => ww_PCOUT(3));

-- Location: IOOBUF_X6_Y0_N2
\PCOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|PCout\(2),
	devoe => ww_devoe,
	o => ww_PCOUT(2));

-- Location: IOOBUF_X4_Y0_N2
\PCOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|PCout\(1),
	devoe => ww_devoe,
	o => ww_PCOUT(1));

-- Location: IOOBUF_X56_Y0_N36
\PCOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|PCout\(0),
	devoe => ww_devoe,
	o => ww_PCOUT(0));

-- Location: IOOBUF_X6_Y0_N36
\RAMIN[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(15),
	devoe => ww_devoe,
	o => ww_RAMIN(15));

-- Location: IOOBUF_X36_Y81_N36
\RAMIN[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(14),
	devoe => ww_devoe,
	o => ww_RAMIN(14));

-- Location: IOOBUF_X89_Y8_N5
\RAMIN[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(13),
	devoe => ww_devoe,
	o => ww_RAMIN(13));

-- Location: IOOBUF_X34_Y81_N42
\RAMIN[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(12),
	devoe => ww_devoe,
	o => ww_RAMIN(12));

-- Location: IOOBUF_X34_Y81_N59
\RAMIN[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(11),
	devoe => ww_devoe,
	o => ww_RAMIN(11));

-- Location: IOOBUF_X89_Y37_N39
\RAMIN[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(10),
	devoe => ww_devoe,
	o => ww_RAMIN(10));

-- Location: IOOBUF_X34_Y0_N59
\RAMIN[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(9),
	devoe => ww_devoe,
	o => ww_RAMIN(9));

-- Location: IOOBUF_X36_Y0_N36
\RAMIN[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(8),
	devoe => ww_devoe,
	o => ww_RAMIN(8));

-- Location: IOOBUF_X58_Y0_N76
\RAMIN[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(7),
	devoe => ww_devoe,
	o => ww_RAMIN(7));

-- Location: IOOBUF_X30_Y81_N19
\RAMIN[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(6),
	devoe => ww_devoe,
	o => ww_RAMIN(6));

-- Location: IOOBUF_X36_Y81_N53
\RAMIN[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(5),
	devoe => ww_devoe,
	o => ww_RAMIN(5));

-- Location: IOOBUF_X68_Y0_N36
\RAMIN[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(4),
	devoe => ww_devoe,
	o => ww_RAMIN(4));

-- Location: IOOBUF_X30_Y81_N53
\RAMIN[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(3),
	devoe => ww_devoe,
	o => ww_RAMIN(3));

-- Location: IOOBUF_X70_Y0_N53
\RAMIN[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(2),
	devoe => ww_devoe,
	o => ww_RAMIN(2));

-- Location: IOOBUF_X72_Y0_N19
\RAMIN[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(1),
	devoe => ww_devoe,
	o => ww_RAMIN(1));

-- Location: IOOBUF_X2_Y0_N42
\RAMIN[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBR_RAM\(0),
	devoe => ww_devoe,
	o => ww_RAMIN(0));

-- Location: IOOBUF_X72_Y0_N53
\RAMOUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_RAMOUT(15));

-- Location: IOOBUF_X89_Y8_N56
\RAMOUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_RAMOUT(14));

-- Location: IOOBUF_X54_Y0_N53
\RAMOUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_RAMOUT(13));

-- Location: IOOBUF_X38_Y0_N2
\RAMOUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_RAMOUT(12));

-- Location: IOOBUF_X66_Y0_N93
\RAMOUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_RAMOUT(11));

-- Location: IOOBUF_X54_Y0_N2
\RAMOUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_RAMOUT(10));

-- Location: IOOBUF_X66_Y0_N59
\RAMOUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_RAMOUT(9));

-- Location: IOOBUF_X66_Y0_N42
\RAMOUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_RAMOUT(8));

-- Location: IOOBUF_X60_Y0_N36
\RAMOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_RAMOUT(7));

-- Location: IOOBUF_X62_Y0_N2
\RAMOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_RAMOUT(6));

-- Location: IOOBUF_X58_Y0_N93
\RAMOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_RAMOUT(5));

-- Location: IOOBUF_X2_Y0_N93
\RAMOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_RAMOUT(4));

-- Location: IOOBUF_X2_Y0_N76
\RAMOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_RAMOUT(3));

-- Location: IOOBUF_X2_Y0_N59
\RAMOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_RAMOUT(2));

-- Location: IOOBUF_X89_Y4_N45
\RAMOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_RAMOUT(1));

-- Location: IOOBUF_X89_Y6_N56
\RAMOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sram|ram_block|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_RAMOUT(0));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y35_N61
\clkMBR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkMBR,
	o => \clkMBR~input_o\);

-- Location: CLKCTRL_G9
\clkMBR~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clkMBR~input_o\,
	outclk => \clkMBR~inputCLKENA0_outclk\);

-- Location: IOIBUF_X38_Y0_N35
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X19_Y2_N35
\inst|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~15_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(0));

-- Location: FF_X22_Y2_N5
\inst|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~14_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(1));

-- Location: FF_X22_Y2_N11
\inst|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~13_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(2));

-- Location: FF_X22_Y2_N53
\inst|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~12_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(3));

-- Location: FF_X25_Y2_N5
\inst|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~11_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(4));

-- Location: MLABCELL_X25_Y2_N45
\inst|temp~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~11_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(4) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(4) & ( \inst|temp\(4) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( 
-- !\inst3|ACC\(4) & ( \inst|temp\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_temp\(4),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst3|ALT_INV_ACC\(4),
	combout => \inst|temp~11_combout\);

-- Location: LABCELL_X24_Y1_N0
\inst|MBR_RAM[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_RAM[15]~0_combout\ = ( \reset~input_o\ & ( \inst8|srom|rom_block|auto_generated|q_a\(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reset~input_o\,
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(17),
	combout => \inst|MBR_RAM[15]~0_combout\);

-- Location: FF_X25_Y2_N43
\inst|MBR_RAM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~11_combout\,
	sload => VCC,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(4));

-- Location: FF_X25_Y2_N29
\inst|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~10_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(5));

-- Location: MLABCELL_X25_Y2_N0
\inst|temp~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~10_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(5) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(5) & ( \inst|temp\(5) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( 
-- !\inst3|ACC\(5) & ( \inst|temp\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_temp\(5),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst3|ALT_INV_ACC\(5),
	combout => \inst|temp~10_combout\);

-- Location: FF_X25_Y2_N17
\inst|MBR_RAM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~10_combout\,
	sload => VCC,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(5));

-- Location: FF_X24_Y2_N11
\inst|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~9_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(6));

-- Location: LABCELL_X24_Y2_N6
\inst|temp~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~9_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(6) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(6) & ( \inst|temp\(6) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( 
-- !\inst3|ACC\(6) & ( \inst|temp\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_temp\(6),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst3|ALT_INV_ACC\(6),
	combout => \inst|temp~9_combout\);

-- Location: FF_X24_Y2_N35
\inst|MBR_RAM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~9_combout\,
	sload => VCC,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(6));

-- Location: FF_X24_Y2_N5
\inst|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~8_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(7));

-- Location: LABCELL_X24_Y2_N36
\inst|temp~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~8_combout\ = ( \inst3|ACC\(7) & ( (\inst8|srom|rom_block|auto_generated|q_a\(20)) # (\inst|temp\(7)) ) ) # ( !\inst3|ACC\(7) & ( (\inst|temp\(7) & !\inst8|srom|rom_block|auto_generated|q_a\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_temp\(7),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst3|ALT_INV_ACC\(7),
	combout => \inst|temp~8_combout\);

-- Location: FF_X24_Y2_N23
\inst|MBR_RAM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~8_combout\,
	sload => VCC,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(7));

-- Location: FF_X25_Y2_N32
\inst|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~7_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(8));

-- Location: MLABCELL_X25_Y2_N51
\inst|temp~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~7_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(8) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(8) & ( \inst|temp\(8) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( 
-- !\inst3|ACC\(8) & ( \inst|temp\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_temp\(8),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst3|ALT_INV_ACC\(8),
	combout => \inst|temp~7_combout\);

-- Location: FF_X25_Y2_N50
\inst|MBR_RAM[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~7_combout\,
	sload => VCC,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(8));

-- Location: FF_X24_Y2_N26
\inst|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~6_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(9));

-- Location: LABCELL_X24_Y2_N39
\inst|temp~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~6_combout\ = ( \inst3|ACC\(9) & ( (\inst8|srom|rom_block|auto_generated|q_a\(20)) # (\inst|temp\(9)) ) ) # ( !\inst3|ACC\(9) & ( (\inst|temp\(9) & !\inst8|srom|rom_block|auto_generated|q_a\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_temp\(9),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst3|ALT_INV_ACC\(9),
	combout => \inst|temp~6_combout\);

-- Location: FF_X24_Y2_N32
\inst|MBR_RAM[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~6_combout\,
	sload => VCC,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(9));

-- Location: FF_X25_Y2_N8
\inst|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~5_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(10));

-- Location: MLABCELL_X25_Y2_N9
\inst|temp~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~5_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(10) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(10) & ( \inst|temp\(10) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( 
-- !\inst3|ACC\(10) & ( \inst|temp\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_temp\(10),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst3|ALT_INV_ACC\(10),
	combout => \inst|temp~5_combout\);

-- Location: FF_X25_Y2_N40
\inst|MBR_RAM[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~5_combout\,
	sload => VCC,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(10));

-- Location: FF_X23_Y2_N53
\inst|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~4_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(11));

-- Location: LABCELL_X23_Y2_N48
\inst|temp~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~4_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(11) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(11) & ( \inst|temp\(11) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( 
-- !\inst3|ACC\(11) & ( \inst|temp\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_temp\(11),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst3|ALT_INV_ACC\(11),
	combout => \inst|temp~4_combout\);

-- Location: LABCELL_X23_Y2_N39
\inst|MBR_RAM[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_RAM[11]~feeder_combout\ = ( \inst|temp~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_temp~4_combout\,
	combout => \inst|MBR_RAM[11]~feeder_combout\);

-- Location: FF_X23_Y2_N40
\inst|MBR_RAM[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst|MBR_RAM[11]~feeder_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(11));

-- Location: FF_X27_Y2_N59
\inst|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~3_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(12));

-- Location: LABCELL_X27_Y2_N51
\inst|temp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~3_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(12) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(12) & ( \inst|temp\(12) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( 
-- !\inst3|ACC\(12) & ( \inst|temp\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_temp\(12),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst3|ALT_INV_ACC\(12),
	combout => \inst|temp~3_combout\);

-- Location: LABCELL_X27_Y2_N27
\inst|MBR_RAM[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_RAM[12]~feeder_combout\ = ( \inst|temp~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_temp~3_combout\,
	combout => \inst|MBR_RAM[12]~feeder_combout\);

-- Location: FF_X27_Y2_N28
\inst|MBR_RAM[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst|MBR_RAM[12]~feeder_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(12));

-- Location: FF_X23_Y2_N47
\inst|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~2_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(13));

-- Location: LABCELL_X23_Y2_N42
\inst|temp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~2_combout\ = ( \inst|temp\(13) & ( \inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(13) ) ) ) # ( !\inst|temp\(13) & ( \inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(13) ) ) ) # ( \inst|temp\(13) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(20) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ACC\(13),
	datae => \inst|ALT_INV_temp\(13),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	combout => \inst|temp~2_combout\);

-- Location: FF_X23_Y2_N11
\inst|MBR_RAM[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~2_combout\,
	sload => VCC,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(13));

-- Location: FF_X19_Y2_N14
\inst|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(15));

-- Location: LABCELL_X19_Y2_N6
\inst|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~0_combout\ = ( \inst3|ACC\(15) & ( (\inst8|srom|rom_block|auto_generated|q_a\(20)) # (\inst|temp\(15)) ) ) # ( !\inst3|ACC\(15) & ( (\inst|temp\(15) & !\inst8|srom|rom_block|auto_generated|q_a\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_temp\(15),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst3|ALT_INV_ACC\(15),
	combout => \inst|temp~0_combout\);

-- Location: FF_X19_Y2_N47
\inst|MBR_RAM[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~0_combout\,
	sload => VCC,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(15));

-- Location: M10K_X26_Y1_N0
\inst9|sram|ram_block|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A00016000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C000012C0032B0022A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_khh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~inputCLKENA0_outclk\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M10K_X41_Y1_N0
\inst8|srom|rom_block|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100004B000000000000040800000000C0B0000000810200000084000000000000000000000000000408000000008050000000840000000000000000000000000004080000000080A20000008400000000000000000000000000040800000008092000000084000000000000000000000000000408000000008082",
	mem_init0 => "000000840000000000000000040800000000C0700000008102000000840000000000000000040800000000C0600000008102000000840000000000000000040800000000C0400000008102000000840000000000000000040800000000C0300000008102000000840000000000000000040800000000C030000000810A0000008400000000000000000000000000040800000000920200000084000000000000000000000000000000000000000000000000000000000100004B0001000046000100003C00010000370001000032000100002D000100002800010000410001000023000100001E0001000019000100001400020000000000A000000000810000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_ROM_test1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom:inst8|altrom:srom|altsyncram:rom_block|altsyncram_j671:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 40,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~inputCLKENA0_outclk\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: MLABCELL_X39_Y1_N51
\inst|MBR_OP[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_OP[5]~0_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(21) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(21) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(21),
	combout => \inst|MBR_OP[5]~0_combout\);

-- Location: FF_X39_Y1_N50
\inst|MBR_OP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(15),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(7));

-- Location: MLABCELL_X39_Y1_N9
\inst|MBR_OP[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_OP[0]~feeder_combout\ = ( \inst9|sram|ram_block|auto_generated|q_a\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(8),
	combout => \inst|MBR_OP[0]~feeder_combout\);

-- Location: FF_X39_Y1_N11
\inst|MBR_OP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst|MBR_OP[0]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(0));

-- Location: LABCELL_X40_Y1_N0
\inst6|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~29_sumout\ = SUM(( \inst6|CARout\(0) ) + ( (\inst|MBR_OP\(0)) # (\inst6|Equal3~0_combout\) ) + ( !VCC ))
-- \inst6|Add0~30\ = CARRY(( \inst6|CARout\(0) ) + ( (\inst|MBR_OP\(0)) # (\inst6|Equal3~0_combout\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_Equal3~0_combout\,
	datac => \inst|ALT_INV_MBR_OP\(0),
	datad => \inst6|ALT_INV_CARout\(0),
	cin => GND,
	sumout => \inst6|Add0~29_sumout\,
	cout => \inst6|Add0~30\);

-- Location: LABCELL_X40_Y1_N3
\inst6|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~25_sumout\ = SUM(( \inst6|CARout\(1) ) + ( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(1)) ) + ( \inst6|Add0~30\ ))
-- \inst6|Add0~26\ = CARRY(( \inst6|CARout\(1) ) + ( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(1)) ) + ( \inst6|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_Equal3~0_combout\,
	datac => \inst|ALT_INV_MBR_OP\(1),
	datad => \inst6|ALT_INV_CARout\(1),
	cin => \inst6|Add0~30\,
	sumout => \inst6|Add0~25_sumout\,
	cout => \inst6|Add0~26\);

-- Location: LABCELL_X40_Y1_N6
\inst6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~21_sumout\ = SUM(( \inst6|CARout\(2) ) + ( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(2)) ) + ( \inst6|Add0~26\ ))
-- \inst6|Add0~22\ = CARRY(( \inst6|CARout\(2) ) + ( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(2)) ) + ( \inst6|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_Equal3~0_combout\,
	datac => \inst|ALT_INV_MBR_OP\(2),
	datad => \inst6|ALT_INV_CARout\(2),
	cin => \inst6|Add0~26\,
	sumout => \inst6|Add0~21_sumout\,
	cout => \inst6|Add0~22\);

-- Location: LABCELL_X40_Y1_N9
\inst6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~17_sumout\ = SUM(( \inst6|CARout\(3) ) + ( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(3)) ) + ( \inst6|Add0~22\ ))
-- \inst6|Add0~18\ = CARRY(( \inst6|CARout\(3) ) + ( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(3)) ) + ( \inst6|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_Equal3~0_combout\,
	datac => \inst|ALT_INV_MBR_OP\(3),
	datad => \inst6|ALT_INV_CARout\(3),
	cin => \inst6|Add0~22\,
	sumout => \inst6|Add0~17_sumout\,
	cout => \inst6|Add0~18\);

-- Location: LABCELL_X40_Y1_N12
\inst6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~13_sumout\ = SUM(( \inst6|CARout\(4) ) + ( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(4)) ) + ( \inst6|Add0~18\ ))
-- \inst6|Add0~14\ = CARRY(( \inst6|CARout\(4) ) + ( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(4)) ) + ( \inst6|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_Equal3~0_combout\,
	datac => \inst|ALT_INV_MBR_OP\(4),
	datad => \inst6|ALT_INV_CARout\(4),
	cin => \inst6|Add0~18\,
	sumout => \inst6|Add0~13_sumout\,
	cout => \inst6|Add0~14\);

-- Location: LABCELL_X40_Y1_N15
\inst6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~9_sumout\ = SUM(( \inst6|CARout\(5) ) + ( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(5)) ) + ( \inst6|Add0~14\ ))
-- \inst6|Add0~10\ = CARRY(( \inst6|CARout\(5) ) + ( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(5)) ) + ( \inst6|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_Equal3~0_combout\,
	datac => \inst|ALT_INV_MBR_OP\(5),
	datad => \inst6|ALT_INV_CARout\(5),
	cin => \inst6|Add0~14\,
	sumout => \inst6|Add0~9_sumout\,
	cout => \inst6|Add0~10\);

-- Location: LABCELL_X40_Y1_N18
\inst6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~5_sumout\ = SUM(( \inst6|CARout\(6) ) + ( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(6)) ) + ( \inst6|Add0~10\ ))
-- \inst6|Add0~6\ = CARRY(( \inst6|CARout\(6) ) + ( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(6)) ) + ( \inst6|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_Equal3~0_combout\,
	datac => \inst|ALT_INV_MBR_OP\(6),
	datad => \inst6|ALT_INV_CARout\(6),
	cin => \inst6|Add0~10\,
	sumout => \inst6|Add0~5_sumout\,
	cout => \inst6|Add0~6\);

-- Location: LABCELL_X40_Y1_N21
\inst6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~1_sumout\ = SUM(( \inst6|CARout\(7) ) + ( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(7)) ) + ( \inst6|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_Equal3~0_combout\,
	datac => \inst|ALT_INV_MBR_OP\(7),
	datad => \inst6|ALT_INV_CARout\(7),
	cin => \inst6|Add0~6\,
	sumout => \inst6|Add0~1_sumout\);

-- Location: LABCELL_X40_Y1_N54
\inst6|CARout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|CARout[0]~0_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(25) & ( \inst8|srom|rom_block|auto_generated|q_a\(23) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(25) & ( \inst8|srom|rom_block|auto_generated|q_a\(23) & ( (!\reset~input_o\) 
-- # ((\inst8|srom|rom_block|auto_generated|q_a\(26)) # (\inst8|srom|rom_block|auto_generated|q_a\(24))) ) ) ) # ( \inst8|srom|rom_block|auto_generated|q_a\(25) & ( !\inst8|srom|rom_block|auto_generated|q_a\(23) & ( (!\reset~input_o\) # 
-- ((\inst8|srom|rom_block|auto_generated|q_a\(26)) # (\inst8|srom|rom_block|auto_generated|q_a\(24))) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(25) & ( !\inst8|srom|rom_block|auto_generated|q_a\(23) & ( (!\reset~input_o\) # 
-- ((!\inst8|srom|rom_block|auto_generated|q_a\(24)) # (\inst8|srom|rom_block|auto_generated|q_a\(26))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111111110011111111111111001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(24),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(26),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(25),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(23),
	combout => \inst6|CARout[0]~0_combout\);

-- Location: LABCELL_X40_Y1_N33
\inst6|CARout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|CARout[0]~1_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(25) & ( \inst8|srom|rom_block|auto_generated|q_a\(23) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(25) & ( \inst8|srom|rom_block|auto_generated|q_a\(23) & ( 
-- (\inst8|srom|rom_block|auto_generated|q_a\(24)) # (\inst8|srom|rom_block|auto_generated|q_a\(26)) ) ) ) # ( \inst8|srom|rom_block|auto_generated|q_a\(25) & ( !\inst8|srom|rom_block|auto_generated|q_a\(23) & ( 
-- (\inst8|srom|rom_block|auto_generated|q_a\(24)) # (\inst8|srom|rom_block|auto_generated|q_a\(26)) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(25) & ( !\inst8|srom|rom_block|auto_generated|q_a\(23) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011111111111100001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(26),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(24),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(25),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(23),
	combout => \inst6|CARout[0]~1_combout\);

-- Location: LABCELL_X40_Y1_N51
\inst6|CARout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|CARout[0]~2_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(24) & ( \inst8|srom|rom_block|auto_generated|q_a\(26) & ( !\reset~input_o\ ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(24) & ( \inst8|srom|rom_block|auto_generated|q_a\(26) 
-- & ( (!\reset~input_o\) # ((!\inst8|srom|rom_block|auto_generated|q_a\(23) & !\inst8|srom|rom_block|auto_generated|q_a\(25))) ) ) ) # ( \inst8|srom|rom_block|auto_generated|q_a\(24) & ( !\inst8|srom|rom_block|auto_generated|q_a\(26) & ( (!\reset~input_o\) 
-- # ((!\inst8|srom|rom_block|auto_generated|q_a\(23) & !\inst8|srom|rom_block|auto_generated|q_a\(25))) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(24) & ( !\inst8|srom|rom_block|auto_generated|q_a\(26) & ( (!\reset~input_o\) # 
-- (!\inst8|srom|rom_block|auto_generated|q_a\(23) $ (!\inst8|srom|rom_block|auto_generated|q_a\(25))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111100111111001100110011111100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(23),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(25),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(24),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(26),
	combout => \inst6|CARout[0]~2_combout\);

-- Location: FF_X40_Y1_N23
\inst6|CARout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|Add0~1_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(7),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(7));

-- Location: LABCELL_X22_Y1_N51
\inst|MBR_BR[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_BR[5]~0_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(16) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(16) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(16),
	combout => \inst|MBR_BR[5]~0_combout\);

-- Location: FF_X21_Y2_N41
\inst|MBR_BR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(0),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(0));

-- Location: MLABCELL_X21_Y2_N24
\inst2|BRout[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(0) = ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(0) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(0) & ( \inst2|BRout\(0) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( 
-- !\inst|MBR_BR\(0) & ( \inst2|BRout\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(0),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	dataf => \inst|ALT_INV_MBR_BR\(0),
	combout => \inst2|BRout\(0));

-- Location: FF_X21_Y2_N20
\inst|MBR_BR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(1),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(1));

-- Location: MLABCELL_X21_Y2_N21
\inst2|BRout[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(1) = ( \inst2|BRout\(1) & ( \inst|MBR_BR\(1) ) ) # ( !\inst2|BRout\(1) & ( \inst|MBR_BR\(1) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) ) ) ) # ( \inst2|BRout\(1) & ( !\inst|MBR_BR\(1) & ( !\inst8|srom|rom_block|auto_generated|q_a\(22) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	datae => \inst2|ALT_INV_BRout\(1),
	dataf => \inst|ALT_INV_MBR_BR\(1),
	combout => \inst2|BRout\(1));

-- Location: FF_X21_Y2_N17
\inst|MBR_BR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(2),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(2));

-- Location: MLABCELL_X21_Y2_N12
\inst2|BRout[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(2) = ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(2) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(2) & ( \inst2|BRout\(2) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( 
-- !\inst|MBR_BR\(2) & ( \inst2|BRout\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(2),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	dataf => \inst|ALT_INV_MBR_BR\(2),
	combout => \inst2|BRout\(2));

-- Location: FF_X21_Y2_N56
\inst|MBR_BR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(3),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(3));

-- Location: MLABCELL_X21_Y2_N33
\inst2|BRout[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(3) = ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(3) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(3) & ( \inst2|BRout\(3) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( 
-- !\inst|MBR_BR\(3) & ( \inst2|BRout\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(3),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	dataf => \inst|ALT_INV_MBR_BR\(3),
	combout => \inst2|BRout\(3));

-- Location: FF_X21_Y2_N29
\inst|MBR_BR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(4),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(4));

-- Location: MLABCELL_X21_Y2_N48
\inst2|BRout[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(4) = ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(4) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(4) & ( \inst2|BRout\(4) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( 
-- !\inst|MBR_BR\(4) & ( \inst2|BRout\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(4),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	dataf => \inst|ALT_INV_MBR_BR\(4),
	combout => \inst2|BRout\(4));

-- Location: FF_X21_Y2_N2
\inst|MBR_BR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(5),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(5));

-- Location: MLABCELL_X21_Y2_N3
\inst2|BRout[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(5) = ( \inst2|BRout\(5) & ( \inst|MBR_BR\(5) ) ) # ( !\inst2|BRout\(5) & ( \inst|MBR_BR\(5) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) ) ) ) # ( \inst2|BRout\(5) & ( !\inst|MBR_BR\(5) & ( !\inst8|srom|rom_block|auto_generated|q_a\(22) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	datae => \inst2|ALT_INV_BRout\(5),
	dataf => \inst|ALT_INV_MBR_BR\(5),
	combout => \inst2|BRout\(5));

-- Location: FF_X21_Y2_N53
\inst|MBR_BR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(6),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(6));

-- Location: MLABCELL_X21_Y2_N42
\inst2|BRout[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(6) = ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(6) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(6) & ( \inst2|BRout\(6) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( 
-- !\inst|MBR_BR\(6) & ( \inst2|BRout\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(6),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	dataf => \inst|ALT_INV_MBR_BR\(6),
	combout => \inst2|BRout\(6));

-- Location: FF_X21_Y2_N8
\inst|MBR_BR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(7),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(7));

-- Location: MLABCELL_X21_Y2_N9
\inst2|BRout[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(7) = ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(7) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(7) & ( \inst2|BRout\(7) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( 
-- !\inst|MBR_BR\(7) & ( \inst2|BRout\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(7),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	dataf => \inst|ALT_INV_MBR_BR\(7),
	combout => \inst2|BRout\(7));

-- Location: DSP_X20_Y2_N0
\inst3|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \inst3|Mult0~8_AX_bus\,
	ay => \inst3|Mult0~8_AY_bus\,
	resulta => \inst3|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X19_Y2_N9
\inst3|ACC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~0_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(12) & ( (!\inst8|srom|rom_block|auto_generated|q_a\(14) & (!\inst8|srom|rom_block|auto_generated|q_a\(15) & \inst8|srom|rom_block|auto_generated|q_a\(13))) ) ) # ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(12) & ( (\inst8|srom|rom_block|auto_generated|q_a\(14) & (!\inst8|srom|rom_block|auto_generated|q_a\(15) & !\inst8|srom|rom_block|auto_generated|q_a\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	combout => \inst3|ACC~0_combout\);

-- Location: LABCELL_X19_Y2_N36
\inst3|ACC~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~1_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(13) & ( (!\inst8|srom|rom_block|auto_generated|q_a\(15) & ((!\inst8|srom|rom_block|auto_generated|q_a\(14) & (!\inst8|srom|rom_block|auto_generated|q_a\(11) & 
-- !\inst8|srom|rom_block|auto_generated|q_a\(12))) # (\inst8|srom|rom_block|auto_generated|q_a\(14) & ((\inst8|srom|rom_block|auto_generated|q_a\(12)))))) # (\inst8|srom|rom_block|auto_generated|q_a\(15) & 
-- (((!\inst8|srom|rom_block|auto_generated|q_a\(11))))) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(13) & ( (!\inst8|srom|rom_block|auto_generated|q_a\(11) & ((!\inst8|srom|rom_block|auto_generated|q_a\(14)) # 
-- ((\inst8|srom|rom_block|auto_generated|q_a\(15)) # (\inst8|srom|rom_block|auto_generated|q_a\(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110011001100100001011100110010001100110011001000010111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(11),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	combout => \inst3|ACC~1_combout\);

-- Location: LABCELL_X19_Y2_N42
\inst3|ACC~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~38_combout\ = ( \inst3|Equal2~0_combout\ & ( \inst3|ACC\(0) & ( (\inst3|ACC~1_combout\) # (\inst2|BRout\(0)) ) ) ) # ( !\inst3|Equal2~0_combout\ & ( \inst3|ACC\(0) & ( \inst3|ACC~1_combout\ ) ) ) # ( \inst3|Equal2~0_combout\ & ( !\inst3|ACC\(0) 
-- & ( (\inst8|srom|rom_block|auto_generated|q_a\(12) & \inst2|BRout\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100001111000011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst2|ALT_INV_BRout\(0),
	datac => \inst3|ALT_INV_ACC~1_combout\,
	datae => \inst3|ALT_INV_Equal2~0_combout\,
	dataf => \inst3|ALT_INV_ACC\(0),
	combout => \inst3|ACC~38_combout\);

-- Location: LABCELL_X40_Y2_N36
\inst3|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = ( !\inst8|srom|rom_block|auto_generated|q_a\(12) & ( \inst8|srom|rom_block|auto_generated|q_a\(14) & ( (!\inst8|srom|rom_block|auto_generated|q_a\(13) & !\inst8|srom|rom_block|auto_generated|q_a\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	combout => \inst3|Equal1~0_combout\);

-- Location: MLABCELL_X28_Y2_N0
\inst3|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~66_cout\ = CARRY(( \inst3|Equal1~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Equal1~0_combout\,
	cin => GND,
	cout => \inst3|Add0~66_cout\);

-- Location: MLABCELL_X28_Y2_N3
\inst3|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~61_sumout\ = SUM(( \inst3|ACC\(0) ) + ( !\inst2|BRout\(0) $ (!\inst3|Equal1~0_combout\) ) + ( \inst3|Add0~66_cout\ ))
-- \inst3|Add0~62\ = CARRY(( \inst3|ACC\(0) ) + ( !\inst2|BRout\(0) $ (!\inst3|Equal1~0_combout\) ) + ( \inst3|Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_BRout\(0),
	datac => \inst3|ALT_INV_Equal1~0_combout\,
	datad => \inst3|ALT_INV_ACC\(0),
	cin => \inst3|Add0~66_cout\,
	sumout => \inst3|Add0~61_sumout\,
	cout => \inst3|Add0~62\);

-- Location: LABCELL_X19_Y2_N30
\inst3|ACC~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~39_combout\ = ( \inst3|Add0~61_sumout\ & ( (!\inst3|Equal4~1_combout\ & (!\inst3|ACC~0_combout\ & ((!\inst3|ACC~38_combout\)))) # (\inst3|Equal4~1_combout\ & (((\inst3|ACC\(0))))) ) ) # ( !\inst3|Add0~61_sumout\ & ( (!\inst3|Equal4~1_combout\ & 
-- ((!\inst3|ACC~38_combout\))) # (\inst3|Equal4~1_combout\ & (\inst3|ACC\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100000101100011010000010110101111000001011000110100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal4~1_combout\,
	datab => \inst3|ALT_INV_ACC~0_combout\,
	datac => \inst3|ALT_INV_ACC\(0),
	datad => \inst3|ALT_INV_ACC~38_combout\,
	datae => \inst3|ALT_INV_Add0~61_sumout\,
	combout => \inst3|ACC~39_combout\);

-- Location: LABCELL_X19_Y2_N48
\inst3|ACC~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~40_combout\ = ( \inst3|Mult0~8_resulta\ & ( \inst3|ACC~39_combout\ & ( (\inst8|srom|rom_block|auto_generated|q_a\(12) & (\inst3|Equal4~0_combout\ & ((\inst8|srom|rom_block|auto_generated|q_a\(13)) # (\inst3|ACC\(1))))) ) ) ) # ( 
-- !\inst3|Mult0~8_resulta\ & ( \inst3|ACC~39_combout\ & ( (\inst8|srom|rom_block|auto_generated|q_a\(12) & (\inst3|ACC\(1) & (\inst3|Equal4~0_combout\ & !\inst8|srom|rom_block|auto_generated|q_a\(13)))) ) ) ) # ( \inst3|Mult0~8_resulta\ & ( 
-- !\inst3|ACC~39_combout\ & ( (!\inst3|Equal4~0_combout\) # ((!\inst8|srom|rom_block|auto_generated|q_a\(12) & ((!\inst8|srom|rom_block|auto_generated|q_a\(13)))) # (\inst8|srom|rom_block|auto_generated|q_a\(12) & 
-- ((\inst8|srom|rom_block|auto_generated|q_a\(13)) # (\inst3|ACC\(1))))) ) ) ) # ( !\inst3|Mult0~8_resulta\ & ( !\inst3|ACC~39_combout\ & ( (!\inst3|Equal4~0_combout\) # ((!\inst8|srom|rom_block|auto_generated|q_a\(13) & 
-- ((!\inst8|srom|rom_block|auto_generated|q_a\(12)) # (\inst3|ACC\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111110000111110111111010100000001000000000000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst3|ALT_INV_ACC\(1),
	datac => \inst3|ALT_INV_Equal4~0_combout\,
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datae => \inst3|ALT_INV_Mult0~8_resulta\,
	dataf => \inst3|ALT_INV_ACC~39_combout\,
	combout => \inst3|ACC~40_combout\);

-- Location: FF_X19_Y2_N50
\inst3|ACC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~40_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(0));

-- Location: FF_X22_Y1_N41
\inst|MBR_BR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(14),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(14));

-- Location: LABCELL_X22_Y1_N57
\inst2|BRout[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(14) = ( \inst2|BRout\(14) & ( \inst|MBR_BR\(14) ) ) # ( !\inst2|BRout\(14) & ( \inst|MBR_BR\(14) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) ) ) ) # ( \inst2|BRout\(14) & ( !\inst|MBR_BR\(14) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	datae => \inst2|ALT_INV_BRout\(14),
	dataf => \inst|ALT_INV_MBR_BR\(14),
	combout => \inst2|BRout\(14));

-- Location: FF_X22_Y1_N44
\inst|MBR_BR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(13),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(13));

-- Location: LABCELL_X22_Y1_N45
\inst2|BRout[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(13) = ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(13) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(13) & ( \inst2|BRout\(13) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( 
-- !\inst|MBR_BR\(13) & ( \inst2|BRout\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(13),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	dataf => \inst|ALT_INV_MBR_BR\(13),
	combout => \inst2|BRout\(13));

-- Location: FF_X22_Y1_N56
\inst|MBR_BR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(12),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(12));

-- Location: LABCELL_X22_Y1_N18
\inst2|BRout[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(12) = ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(12) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(12) & ( \inst2|BRout\(12) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( 
-- !\inst|MBR_BR\(12) & ( \inst2|BRout\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(12),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	dataf => \inst|ALT_INV_MBR_BR\(12),
	combout => \inst2|BRout\(12));

-- Location: FF_X22_Y1_N35
\inst|MBR_BR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(11),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(11));

-- Location: LABCELL_X22_Y1_N36
\inst2|BRout[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(11) = ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(11) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(11) & ( \inst2|BRout\(11) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( 
-- !\inst|MBR_BR\(11) & ( \inst2|BRout\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(11),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	dataf => \inst|ALT_INV_MBR_BR\(11),
	combout => \inst2|BRout\(11));

-- Location: FF_X22_Y1_N14
\inst|MBR_BR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(10),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(10));

-- Location: LABCELL_X22_Y1_N48
\inst2|BRout[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(10) = ( \inst|MBR_BR\(10) & ( (\inst8|srom|rom_block|auto_generated|q_a\(22)) # (\inst2|BRout\(10)) ) ) # ( !\inst|MBR_BR\(10) & ( (\inst2|BRout\(10) & !\inst8|srom|rom_block|auto_generated|q_a\(22)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(10),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	dataf => \inst|ALT_INV_MBR_BR\(10),
	combout => \inst2|BRout\(10));

-- Location: FF_X22_Y1_N26
\inst|MBR_BR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(9),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(9));

-- Location: LABCELL_X22_Y1_N30
\inst2|BRout[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(9) = ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(9) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(9) & ( \inst2|BRout\(9) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( 
-- !\inst|MBR_BR\(9) & ( \inst2|BRout\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(9),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	dataf => \inst|ALT_INV_MBR_BR\(9),
	combout => \inst2|BRout\(9));

-- Location: FF_X22_Y1_N11
\inst|MBR_BR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(8),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(8));

-- Location: LABCELL_X22_Y1_N27
\inst2|BRout[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(8) = ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(8) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(8) & ( \inst2|BRout\(8) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( 
-- !\inst|MBR_BR\(8) & ( \inst2|BRout\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(8),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	dataf => \inst|ALT_INV_MBR_BR\(8),
	combout => \inst2|BRout\(8));

-- Location: MLABCELL_X28_Y2_N6
\inst3|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~57_sumout\ = SUM(( \inst3|ACC\(1) ) + ( !\inst2|BRout\(1) $ (!\inst3|Equal1~0_combout\) ) + ( \inst3|Add0~62\ ))
-- \inst3|Add0~58\ = CARRY(( \inst3|ACC\(1) ) + ( !\inst2|BRout\(1) $ (!\inst3|Equal1~0_combout\) ) + ( \inst3|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(1),
	datac => \inst3|ALT_INV_Equal1~0_combout\,
	datad => \inst3|ALT_INV_ACC\(1),
	cin => \inst3|Add0~62\,
	sumout => \inst3|Add0~57_sumout\,
	cout => \inst3|Add0~58\);

-- Location: MLABCELL_X28_Y2_N9
\inst3|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~53_sumout\ = SUM(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(2)) ) + ( \inst3|ACC\(2) ) + ( \inst3|Add0~58\ ))
-- \inst3|Add0~54\ = CARRY(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(2)) ) + ( \inst3|ACC\(2) ) + ( \inst3|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ACC\(2),
	datac => \inst3|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout\(2),
	cin => \inst3|Add0~58\,
	sumout => \inst3|Add0~53_sumout\,
	cout => \inst3|Add0~54\);

-- Location: MLABCELL_X28_Y2_N12
\inst3|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~49_sumout\ = SUM(( !\inst2|BRout\(3) $ (!\inst3|Equal1~0_combout\) ) + ( \inst3|ACC\(3) ) + ( \inst3|Add0~54\ ))
-- \inst3|Add0~50\ = CARRY(( !\inst2|BRout\(3) $ (!\inst3|Equal1~0_combout\) ) + ( \inst3|ACC\(3) ) + ( \inst3|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(3),
	datab => \inst3|ALT_INV_ACC\(3),
	datac => \inst3|ALT_INV_Equal1~0_combout\,
	cin => \inst3|Add0~54\,
	sumout => \inst3|Add0~49_sumout\,
	cout => \inst3|Add0~50\);

-- Location: MLABCELL_X28_Y2_N15
\inst3|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~45_sumout\ = SUM(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(4)) ) + ( \inst3|ACC\(4) ) + ( \inst3|Add0~50\ ))
-- \inst3|Add0~46\ = CARRY(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(4)) ) + ( \inst3|ACC\(4) ) + ( \inst3|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_ACC\(4),
	cin => \inst3|Add0~50\,
	sumout => \inst3|Add0~45_sumout\,
	cout => \inst3|Add0~46\);

-- Location: MLABCELL_X28_Y2_N18
\inst3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~41_sumout\ = SUM(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(5)) ) + ( \inst3|ACC\(5) ) + ( \inst3|Add0~46\ ))
-- \inst3|Add0~42\ = CARRY(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(5)) ) + ( \inst3|ACC\(5) ) + ( \inst3|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Equal1~0_combout\,
	datac => \inst3|ALT_INV_ACC\(5),
	datad => \inst2|ALT_INV_BRout\(5),
	cin => \inst3|Add0~46\,
	sumout => \inst3|Add0~41_sumout\,
	cout => \inst3|Add0~42\);

-- Location: MLABCELL_X28_Y2_N21
\inst3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~37_sumout\ = SUM(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(6)) ) + ( \inst3|ACC\(6) ) + ( \inst3|Add0~42\ ))
-- \inst3|Add0~38\ = CARRY(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(6)) ) + ( \inst3|ACC\(6) ) + ( \inst3|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Equal1~0_combout\,
	datac => \inst3|ALT_INV_ACC\(6),
	datad => \inst2|ALT_INV_BRout\(6),
	cin => \inst3|Add0~42\,
	sumout => \inst3|Add0~37_sumout\,
	cout => \inst3|Add0~38\);

-- Location: MLABCELL_X28_Y2_N24
\inst3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~33_sumout\ = SUM(( \inst3|ACC\(7) ) + ( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(7)) ) + ( \inst3|Add0~38\ ))
-- \inst3|Add0~34\ = CARRY(( \inst3|ACC\(7) ) + ( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(7)) ) + ( \inst3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ACC\(7),
	datac => \inst3|ALT_INV_Equal1~0_combout\,
	dataf => \inst2|ALT_INV_BRout\(7),
	cin => \inst3|Add0~38\,
	sumout => \inst3|Add0~33_sumout\,
	cout => \inst3|Add0~34\);

-- Location: MLABCELL_X28_Y2_N27
\inst3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~29_sumout\ = SUM(( \inst3|ACC\(8) ) + ( !\inst2|BRout\(8) $ (!\inst3|Equal1~0_combout\) ) + ( \inst3|Add0~34\ ))
-- \inst3|Add0~30\ = CARRY(( \inst3|ACC\(8) ) + ( !\inst2|BRout\(8) $ (!\inst3|Equal1~0_combout\) ) + ( \inst3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(8),
	datac => \inst3|ALT_INV_Equal1~0_combout\,
	datad => \inst3|ALT_INV_ACC\(8),
	cin => \inst3|Add0~34\,
	sumout => \inst3|Add0~29_sumout\,
	cout => \inst3|Add0~30\);

-- Location: MLABCELL_X28_Y2_N30
\inst3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~25_sumout\ = SUM(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(9)) ) + ( \inst3|ACC\(9) ) + ( \inst3|Add0~30\ ))
-- \inst3|Add0~26\ = CARRY(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(9)) ) + ( \inst3|ACC\(9) ) + ( \inst3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_ACC\(9),
	cin => \inst3|Add0~30\,
	sumout => \inst3|Add0~25_sumout\,
	cout => \inst3|Add0~26\);

-- Location: MLABCELL_X28_Y2_N33
\inst3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~21_sumout\ = SUM(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(10)) ) + ( \inst3|ACC\(10) ) + ( \inst3|Add0~26\ ))
-- \inst3|Add0~22\ = CARRY(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(10)) ) + ( \inst3|ACC\(10) ) + ( \inst3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(10),
	datac => \inst3|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout\(10),
	cin => \inst3|Add0~26\,
	sumout => \inst3|Add0~21_sumout\,
	cout => \inst3|Add0~22\);

-- Location: MLABCELL_X28_Y2_N36
\inst3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~17_sumout\ = SUM(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(11)) ) + ( \inst3|ACC\(11) ) + ( \inst3|Add0~22\ ))
-- \inst3|Add0~18\ = CARRY(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(11)) ) + ( \inst3|ACC\(11) ) + ( \inst3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_ACC\(11),
	cin => \inst3|Add0~22\,
	sumout => \inst3|Add0~17_sumout\,
	cout => \inst3|Add0~18\);

-- Location: MLABCELL_X28_Y2_N39
\inst3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~13_sumout\ = SUM(( \inst3|ACC\(12) ) + ( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(12)) ) + ( \inst3|Add0~18\ ))
-- \inst3|Add0~14\ = CARRY(( \inst3|ACC\(12) ) + ( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(12)) ) + ( \inst3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(12),
	datac => \inst3|ALT_INV_Equal1~0_combout\,
	dataf => \inst2|ALT_INV_BRout\(12),
	cin => \inst3|Add0~18\,
	sumout => \inst3|Add0~13_sumout\,
	cout => \inst3|Add0~14\);

-- Location: MLABCELL_X28_Y2_N42
\inst3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~9_sumout\ = SUM(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(13)) ) + ( \inst3|ACC\(13) ) + ( \inst3|Add0~14\ ))
-- \inst3|Add0~10\ = CARRY(( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(13)) ) + ( \inst3|ACC\(13) ) + ( \inst3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_ACC\(13),
	cin => \inst3|Add0~14\,
	sumout => \inst3|Add0~9_sumout\,
	cout => \inst3|Add0~10\);

-- Location: MLABCELL_X28_Y2_N45
\inst3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~5_sumout\ = SUM(( !\inst2|BRout\(14) $ (!\inst3|Equal1~0_combout\) ) + ( \inst3|ACC\(14) ) + ( \inst3|Add0~10\ ))
-- \inst3|Add0~6\ = CARRY(( !\inst2|BRout\(14) $ (!\inst3|Equal1~0_combout\) ) + ( \inst3|ACC\(14) ) + ( \inst3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(14),
	datac => \inst3|ALT_INV_Equal1~0_combout\,
	dataf => \inst3|ALT_INV_ACC\(14),
	cin => \inst3|Add0~10\,
	sumout => \inst3|Add0~5_sumout\,
	cout => \inst3|Add0~6\);

-- Location: LABCELL_X27_Y2_N30
\inst3|ACC~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~6_combout\ = ( \inst3|Equal4~1_combout\ & ( \inst3|Add0~5_sumout\ & ( (!\inst3|Equal2~0_combout\ & ((\inst3|ACC\(14)))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(14) & !\inst3|ACC\(14))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( 
-- \inst3|Add0~5_sumout\ & ( (\inst3|Equal2~0_combout\ & ((!\inst2|BRout\(14) & ((!\inst8|srom|rom_block|auto_generated|q_a\(12)) # (!\inst3|ACC\(14)))) # (\inst2|BRout\(14) & (!\inst8|srom|rom_block|auto_generated|q_a\(12) & !\inst3|ACC\(14))))) ) ) ) # ( 
-- \inst3|Equal4~1_combout\ & ( !\inst3|Add0~5_sumout\ & ( (!\inst3|Equal2~0_combout\ & ((\inst3|ACC\(14)))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(14) & !\inst3|ACC\(14))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( !\inst3|Add0~5_sumout\ & ( 
-- (!\inst3|Equal2~0_combout\) # ((!\inst2|BRout\(14) & ((!\inst8|srom|rom_block|auto_generated|q_a\(12)) # (!\inst3|ACC\(14)))) # (\inst2|BRout\(14) & (!\inst8|srom|rom_block|auto_generated|q_a\(12) & !\inst3|ACC\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101100001000101100110000110010001000000010001011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(14),
	datab => \inst3|ALT_INV_Equal2~0_combout\,
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datad => \inst3|ALT_INV_ACC\(14),
	datae => \inst3|ALT_INV_Equal4~1_combout\,
	dataf => \inst3|ALT_INV_Add0~5_sumout\,
	combout => \inst3|ACC~6_combout\);

-- Location: LABCELL_X23_Y2_N54
\inst3|ACC~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~9_combout\ = ( \inst3|Mult0~22\ & ( \inst3|ACC~6_combout\ & ( (!\inst3|ACC[3]~7_combout\ & (((\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(15))) # (\inst3|ACC~8_combout\ & 
-- ((\inst3|ACC\(13)))))) ) ) ) # ( !\inst3|Mult0~22\ & ( \inst3|ACC~6_combout\ & ( (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(15))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(13)))))) ) ) ) # ( \inst3|Mult0~22\ & ( 
-- !\inst3|ACC~6_combout\ & ( (!\inst3|ACC[3]~7_combout\) # ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(15))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(13))))) ) ) ) # ( !\inst3|Mult0~22\ & ( !\inst3|ACC~6_combout\ & ( (!\inst3|ACC[3]~7_combout\ & 
-- (((!\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(15))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000011111101011111001100000101000000110000010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(15),
	datab => \inst3|ALT_INV_ACC\(13),
	datac => \inst3|ALT_INV_ACC[3]~7_combout\,
	datad => \inst3|ALT_INV_ACC~8_combout\,
	datae => \inst3|ALT_INV_Mult0~22\,
	dataf => \inst3|ALT_INV_ACC~6_combout\,
	combout => \inst3|ACC~9_combout\);

-- Location: LABCELL_X24_Y1_N30
\inst3|ACC[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC[3]~10_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(14) & ( \inst8|srom|rom_block|auto_generated|q_a\(13) & ( (!\reset~input_o\) # (\inst8|srom|rom_block|auto_generated|q_a\(15)) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(14) 
-- & ( \inst8|srom|rom_block|auto_generated|q_a\(13) & ( (!\reset~input_o\) # ((!\inst8|srom|rom_block|auto_generated|q_a\(12) & !\inst8|srom|rom_block|auto_generated|q_a\(15))) ) ) ) # ( \inst8|srom|rom_block|auto_generated|q_a\(14) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(13) & ( (!\reset~input_o\) # ((\inst8|srom|rom_block|auto_generated|q_a\(15)) # (\inst8|srom|rom_block|auto_generated|q_a\(12))) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(14) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(13) & ( (!\reset~input_o\) # (!\inst8|srom|rom_block|auto_generated|q_a\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010101011111111111111111010101010101010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	combout => \inst3|ACC[3]~10_combout\);

-- Location: LABCELL_X24_Y1_N36
\inst3|ACC[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC[3]~11_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(11) & ( \inst8|srom|rom_block|auto_generated|q_a\(13) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(11) & ( \inst8|srom|rom_block|auto_generated|q_a\(13) & ( (!\reset~input_o\) # 
-- ((!\inst8|srom|rom_block|auto_generated|q_a\(14) & ((\inst8|srom|rom_block|auto_generated|q_a\(15)) # (\inst8|srom|rom_block|auto_generated|q_a\(12)))) # (\inst8|srom|rom_block|auto_generated|q_a\(14) & ((!\inst8|srom|rom_block|auto_generated|q_a\(15))))) 
-- ) ) ) # ( \inst8|srom|rom_block|auto_generated|q_a\(11) & ( !\inst8|srom|rom_block|auto_generated|q_a\(13) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(11) & ( !\inst8|srom|rom_block|auto_generated|q_a\(13) & ( (!\reset~input_o\) # 
-- ((!\inst8|srom|rom_block|auto_generated|q_a\(14) & ((\inst8|srom|rom_block|auto_generated|q_a\(15)))) # (\inst8|srom|rom_block|auto_generated|q_a\(14) & (!\inst8|srom|rom_block|auto_generated|q_a\(12) & !\inst8|srom|rom_block|auto_generated|q_a\(15)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101011101110111111111111111110111111111011101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	combout => \inst3|ACC[3]~11_combout\);

-- Location: FF_X23_Y2_N56
\inst3|ACC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~9_combout\,
	sclr => \inst3|ACC[3]~10_combout\,
	ena => \inst3|ACC[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(14));

-- Location: FF_X23_Y2_N23
\inst|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~1_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(14));

-- Location: LABCELL_X23_Y2_N0
\inst|temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~1_combout\ = ( \inst|temp\(14) & ( \inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(14) ) ) ) # ( !\inst|temp\(14) & ( \inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(14) ) ) ) # ( \inst|temp\(14) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(20) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(14),
	datae => \inst|ALT_INV_temp\(14),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	combout => \inst|temp~1_combout\);

-- Location: FF_X23_Y2_N5
\inst|MBR_RAM[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~1_combout\,
	sload => VCC,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(14));

-- Location: MLABCELL_X39_Y1_N33
\inst|MBR_OP[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_OP[6]~feeder_combout\ = ( \inst9|sram|ram_block|auto_generated|q_a\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(14),
	combout => \inst|MBR_OP[6]~feeder_combout\);

-- Location: FF_X39_Y1_N35
\inst|MBR_OP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst|MBR_OP[6]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(6));

-- Location: FF_X40_Y1_N20
\inst6|CARout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|Add0~5_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(6),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(6));

-- Location: LABCELL_X24_Y1_N15
\inst3|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal2~0_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(14) & ( \inst8|srom|rom_block|auto_generated|q_a\(13) & ( !\inst8|srom|rom_block|auto_generated|q_a\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	combout => \inst3|Equal2~0_combout\);

-- Location: LABCELL_X23_Y2_N6
\inst3|ACC~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~12_combout\ = ( \inst3|Equal4~1_combout\ & ( \inst3|Add0~9_sumout\ & ( (!\inst3|Equal2~0_combout\ & ((\inst3|ACC\(13)))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(13) & !\inst3|ACC\(13))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( 
-- \inst3|Add0~9_sumout\ & ( (\inst3|Equal2~0_combout\ & ((!\inst8|srom|rom_block|auto_generated|q_a\(12) & ((!\inst2|BRout\(13)) # (!\inst3|ACC\(13)))) # (\inst8|srom|rom_block|auto_generated|q_a\(12) & (!\inst2|BRout\(13) & !\inst3|ACC\(13))))) ) ) ) # ( 
-- \inst3|Equal4~1_combout\ & ( !\inst3|Add0~9_sumout\ & ( (!\inst3|Equal2~0_combout\ & ((\inst3|ACC\(13)))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(13) & !\inst3|ACC\(13))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( !\inst3|Add0~9_sumout\ & ( 
-- (!\inst3|Equal2~0_combout\) # ((!\inst8|srom|rom_block|auto_generated|q_a\(12) & ((!\inst2|BRout\(13)) # (!\inst3|ACC\(13)))) # (\inst8|srom|rom_block|auto_generated|q_a\(12) & (!\inst2|BRout\(13) & !\inst3|ACC\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101100001100001100110000110010001000000011000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst3|ALT_INV_Equal2~0_combout\,
	datac => \inst2|ALT_INV_BRout\(13),
	datad => \inst3|ALT_INV_ACC\(13),
	datae => \inst3|ALT_INV_Equal4~1_combout\,
	dataf => \inst3|ALT_INV_Add0~9_sumout\,
	combout => \inst3|ACC~12_combout\);

-- Location: LABCELL_X23_Y2_N12
\inst3|ACC~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~13_combout\ = ( \inst3|ACC\(14) & ( \inst3|Mult0~21\ & ( (!\inst3|ACC[3]~7_combout\ & (((!\inst3|ACC~12_combout\)) # (\inst3|ACC~8_combout\))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\) # ((\inst3|ACC\(12))))) ) ) ) # ( 
-- !\inst3|ACC\(14) & ( \inst3|Mult0~21\ & ( (!\inst3|ACC[3]~7_combout\ & (((!\inst3|ACC~12_combout\)) # (\inst3|ACC~8_combout\))) # (\inst3|ACC[3]~7_combout\ & (\inst3|ACC~8_combout\ & (\inst3|ACC\(12)))) ) ) ) # ( \inst3|ACC\(14) & ( !\inst3|Mult0~21\ & ( 
-- (!\inst3|ACC[3]~7_combout\ & (!\inst3|ACC~8_combout\ & ((!\inst3|ACC~12_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\) # ((\inst3|ACC\(12))))) ) ) ) # ( !\inst3|ACC\(14) & ( !\inst3|Mult0~21\ & ( (!\inst3|ACC[3]~7_combout\ & 
-- (!\inst3|ACC~8_combout\ & ((!\inst3|ACC~12_combout\)))) # (\inst3|ACC[3]~7_combout\ & (\inst3|ACC~8_combout\ & (\inst3|ACC\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100100000001110011010100010110101011001000111110111101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC[3]~7_combout\,
	datab => \inst3|ALT_INV_ACC~8_combout\,
	datac => \inst3|ALT_INV_ACC\(12),
	datad => \inst3|ALT_INV_ACC~12_combout\,
	datae => \inst3|ALT_INV_ACC\(14),
	dataf => \inst3|ALT_INV_Mult0~21\,
	combout => \inst3|ACC~13_combout\);

-- Location: FF_X23_Y2_N14
\inst3|ACC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~13_combout\,
	sclr => \inst3|ACC[3]~10_combout\,
	ena => \inst3|ACC[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(13));

-- Location: LABCELL_X27_Y2_N54
\inst3|ACC~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~14_combout\ = ( \inst3|Equal4~1_combout\ & ( \inst3|Add0~13_sumout\ & ( (!\inst3|Equal2~0_combout\ & ((\inst3|ACC\(12)))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(12) & !\inst3|ACC\(12))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( 
-- \inst3|Add0~13_sumout\ & ( (\inst3|Equal2~0_combout\ & ((!\inst2|BRout\(12) & ((!\inst8|srom|rom_block|auto_generated|q_a\(12)) # (!\inst3|ACC\(12)))) # (\inst2|BRout\(12) & (!\inst8|srom|rom_block|auto_generated|q_a\(12) & !\inst3|ACC\(12))))) ) ) ) # ( 
-- \inst3|Equal4~1_combout\ & ( !\inst3|Add0~13_sumout\ & ( (!\inst3|Equal2~0_combout\ & ((\inst3|ACC\(12)))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(12) & !\inst3|ACC\(12))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( !\inst3|Add0~13_sumout\ & ( 
-- (!\inst3|Equal2~0_combout\) # ((!\inst2|BRout\(12) & ((!\inst8|srom|rom_block|auto_generated|q_a\(12)) # (!\inst3|ACC\(12)))) # (\inst2|BRout\(12) & (!\inst8|srom|rom_block|auto_generated|q_a\(12) & !\inst3|ACC\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101100001000101100110000110010001000000010001011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(12),
	datab => \inst3|ALT_INV_Equal2~0_combout\,
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datad => \inst3|ALT_INV_ACC\(12),
	datae => \inst3|ALT_INV_Equal4~1_combout\,
	dataf => \inst3|ALT_INV_Add0~13_sumout\,
	combout => \inst3|ACC~14_combout\);

-- Location: LABCELL_X27_Y2_N42
\inst3|ACC~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~15_combout\ = ( \inst3|ACC~14_combout\ & ( \inst3|Mult0~20\ & ( (!\inst3|ACC[3]~7_combout\ & (((\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(13))) # (\inst3|ACC~8_combout\ & 
-- ((\inst3|ACC\(11)))))) ) ) ) # ( !\inst3|ACC~14_combout\ & ( \inst3|Mult0~20\ & ( (!\inst3|ACC[3]~7_combout\) # ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(13))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(11))))) ) ) ) # ( \inst3|ACC~14_combout\ & ( 
-- !\inst3|Mult0~20\ & ( (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(13))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(11)))))) ) ) ) # ( !\inst3|ACC~14_combout\ & ( !\inst3|Mult0~20\ & ( (!\inst3|ACC[3]~7_combout\ & 
-- (((!\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(13))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100000011000100010000001111011101110011110001000111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(13),
	datab => \inst3|ALT_INV_ACC[3]~7_combout\,
	datac => \inst3|ALT_INV_ACC\(11),
	datad => \inst3|ALT_INV_ACC~8_combout\,
	datae => \inst3|ALT_INV_ACC~14_combout\,
	dataf => \inst3|ALT_INV_Mult0~20\,
	combout => \inst3|ACC~15_combout\);

-- Location: FF_X27_Y2_N44
\inst3|ACC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~15_combout\,
	sclr => \inst3|ACC[3]~10_combout\,
	ena => \inst3|ACC[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(12));

-- Location: LABCELL_X27_Y2_N39
\inst3|ACC~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~16_combout\ = ( \inst3|Equal4~1_combout\ & ( \inst3|Add0~17_sumout\ & ( (!\inst3|ACC\(11) & (!\inst2|BRout\(11) & \inst3|Equal2~0_combout\)) # (\inst3|ACC\(11) & ((!\inst3|Equal2~0_combout\))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( 
-- \inst3|Add0~17_sumout\ & ( (\inst3|Equal2~0_combout\ & ((!\inst3|ACC\(11) & ((!\inst2|BRout\(11)) # (!\inst8|srom|rom_block|auto_generated|q_a\(12)))) # (\inst3|ACC\(11) & (!\inst2|BRout\(11) & !\inst8|srom|rom_block|auto_generated|q_a\(12))))) ) ) ) # ( 
-- \inst3|Equal4~1_combout\ & ( !\inst3|Add0~17_sumout\ & ( (!\inst3|ACC\(11) & (!\inst2|BRout\(11) & \inst3|Equal2~0_combout\)) # (\inst3|ACC\(11) & ((!\inst3|Equal2~0_combout\))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( !\inst3|Add0~17_sumout\ & ( 
-- (!\inst3|Equal2~0_combout\) # ((!\inst3|ACC\(11) & ((!\inst2|BRout\(11)) # (!\inst8|srom|rom_block|auto_generated|q_a\(12)))) # (\inst3|ACC\(11) & (!\inst2|BRout\(11) & !\inst8|srom|rom_block|auto_generated|q_a\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111000010110000101100000001110000010000101100001011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(11),
	datab => \inst2|ALT_INV_BRout\(11),
	datac => \inst3|ALT_INV_Equal2~0_combout\,
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datae => \inst3|ALT_INV_Equal4~1_combout\,
	dataf => \inst3|ALT_INV_Add0~17_sumout\,
	combout => \inst3|ACC~16_combout\);

-- Location: LABCELL_X23_Y2_N24
\inst3|ACC~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~17_combout\ = ( \inst3|Mult0~19\ & ( \inst3|ACC~16_combout\ & ( (!\inst3|ACC~8_combout\ & (((\inst3|ACC[3]~7_combout\ & \inst3|ACC\(12))))) # (\inst3|ACC~8_combout\ & (((!\inst3|ACC[3]~7_combout\)) # (\inst3|ACC\(10)))) ) ) ) # ( 
-- !\inst3|Mult0~19\ & ( \inst3|ACC~16_combout\ & ( (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(12)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(10))))) ) ) ) # ( \inst3|Mult0~19\ & ( !\inst3|ACC~16_combout\ & ( 
-- (!\inst3|ACC[3]~7_combout\) # ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(12)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(10)))) ) ) ) # ( !\inst3|Mult0~19\ & ( !\inst3|ACC~16_combout\ & ( (!\inst3|ACC~8_combout\ & (((!\inst3|ACC[3]~7_combout\) # 
-- (\inst3|ACC\(12))))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(10) & (\inst3|ACC[3]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000110101011111100011111101100000001000010110101000101011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC~8_combout\,
	datab => \inst3|ALT_INV_ACC\(10),
	datac => \inst3|ALT_INV_ACC[3]~7_combout\,
	datad => \inst3|ALT_INV_ACC\(12),
	datae => \inst3|ALT_INV_Mult0~19\,
	dataf => \inst3|ALT_INV_ACC~16_combout\,
	combout => \inst3|ACC~17_combout\);

-- Location: FF_X23_Y2_N26
\inst3|ACC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~17_combout\,
	sclr => \inst3|ACC[3]~10_combout\,
	ena => \inst3|ACC[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(11));

-- Location: MLABCELL_X25_Y2_N36
\inst3|ACC~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~18_combout\ = ( \inst3|Equal4~1_combout\ & ( \inst3|Add0~21_sumout\ & ( (!\inst3|Equal2~0_combout\ & ((\inst3|ACC\(10)))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(10) & !\inst3|ACC\(10))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( 
-- \inst3|Add0~21_sumout\ & ( (\inst3|Equal2~0_combout\ & ((!\inst2|BRout\(10) & ((!\inst3|ACC\(10)) # (!\inst8|srom|rom_block|auto_generated|q_a\(12)))) # (\inst2|BRout\(10) & (!\inst3|ACC\(10) & !\inst8|srom|rom_block|auto_generated|q_a\(12))))) ) ) ) # ( 
-- \inst3|Equal4~1_combout\ & ( !\inst3|Add0~21_sumout\ & ( (!\inst3|Equal2~0_combout\ & ((\inst3|ACC\(10)))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(10) & !\inst3|ACC\(10))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( !\inst3|Add0~21_sumout\ & ( 
-- (!\inst3|Equal2~0_combout\) # ((!\inst2|BRout\(10) & ((!\inst3|ACC\(10)) # (!\inst8|srom|rom_block|auto_generated|q_a\(12)))) # (\inst2|BRout\(10) & (!\inst3|ACC\(10) & !\inst8|srom|rom_block|auto_generated|q_a\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101100001011000010110000110010001000000010110000101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(10),
	datab => \inst3|ALT_INV_Equal2~0_combout\,
	datac => \inst3|ALT_INV_ACC\(10),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datae => \inst3|ALT_INV_Equal4~1_combout\,
	dataf => \inst3|ALT_INV_Add0~21_sumout\,
	combout => \inst3|ACC~18_combout\);

-- Location: MLABCELL_X25_Y2_N54
\inst3|ACC~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~19_combout\ = ( \inst3|ACC~18_combout\ & ( \inst3|Mult0~18\ & ( (!\inst3|ACC[3]~7_combout\ & (((\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(11))) # (\inst3|ACC~8_combout\ & 
-- ((\inst3|ACC\(9)))))) ) ) ) # ( !\inst3|ACC~18_combout\ & ( \inst3|Mult0~18\ & ( (!\inst3|ACC[3]~7_combout\) # ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(11))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(9))))) ) ) ) # ( \inst3|ACC~18_combout\ & ( 
-- !\inst3|Mult0~18\ & ( (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(11))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(9)))))) ) ) ) # ( !\inst3|ACC~18_combout\ & ( !\inst3|Mult0~18\ & ( (!\inst3|ACC[3]~7_combout\ & 
-- (((!\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(11))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110101000100000001010110111010101111110001101000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC[3]~7_combout\,
	datab => \inst3|ALT_INV_ACC\(11),
	datac => \inst3|ALT_INV_ACC~8_combout\,
	datad => \inst3|ALT_INV_ACC\(9),
	datae => \inst3|ALT_INV_ACC~18_combout\,
	dataf => \inst3|ALT_INV_Mult0~18\,
	combout => \inst3|ACC~19_combout\);

-- Location: FF_X25_Y2_N56
\inst3|ACC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~19_combout\,
	sclr => \inst3|ACC[3]~10_combout\,
	ena => \inst3|ACC[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(10));

-- Location: LABCELL_X24_Y2_N27
\inst3|ACC~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~20_combout\ = ( \inst3|Equal4~1_combout\ & ( \inst3|Add0~25_sumout\ & ( (!\inst3|ACC\(9) & (!\inst2|BRout\(9) & \inst3|Equal2~0_combout\)) # (\inst3|ACC\(9) & ((!\inst3|Equal2~0_combout\))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( 
-- \inst3|Add0~25_sumout\ & ( (\inst3|Equal2~0_combout\ & ((!\inst2|BRout\(9) & ((!\inst8|srom|rom_block|auto_generated|q_a\(12)) # (!\inst3|ACC\(9)))) # (\inst2|BRout\(9) & (!\inst8|srom|rom_block|auto_generated|q_a\(12) & !\inst3|ACC\(9))))) ) ) ) # ( 
-- \inst3|Equal4~1_combout\ & ( !\inst3|Add0~25_sumout\ & ( (!\inst3|ACC\(9) & (!\inst2|BRout\(9) & \inst3|Equal2~0_combout\)) # (\inst3|ACC\(9) & ((!\inst3|Equal2~0_combout\))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( !\inst3|Add0~25_sumout\ & ( 
-- (!\inst3|Equal2~0_combout\) # ((!\inst2|BRout\(9) & ((!\inst8|srom|rom_block|auto_generated|q_a\(12)) # (!\inst3|ACC\(9)))) # (\inst2|BRout\(9) & (!\inst8|srom|rom_block|auto_generated|q_a\(12) & !\inst3|ACC\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000000011111010000000000000111010000000111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(9),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datac => \inst3|ALT_INV_ACC\(9),
	datad => \inst3|ALT_INV_Equal2~0_combout\,
	datae => \inst3|ALT_INV_Equal4~1_combout\,
	dataf => \inst3|ALT_INV_Add0~25_sumout\,
	combout => \inst3|ACC~20_combout\);

-- Location: LABCELL_X24_Y2_N42
\inst3|ACC~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~21_combout\ = ( \inst3|Mult0~17\ & ( \inst3|ACC~20_combout\ & ( (!\inst3|ACC[3]~7_combout\ & (((\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(10)))) # (\inst3|ACC~8_combout\ & 
-- (\inst3|ACC\(8))))) ) ) ) # ( !\inst3|Mult0~17\ & ( \inst3|ACC~20_combout\ & ( (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(10)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(8))))) ) ) ) # ( \inst3|Mult0~17\ & ( 
-- !\inst3|ACC~20_combout\ & ( (!\inst3|ACC[3]~7_combout\) # ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(10)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(8)))) ) ) ) # ( !\inst3|Mult0~17\ & ( !\inst3|ACC~20_combout\ & ( (!\inst3|ACC[3]~7_combout\ & 
-- (((!\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(10)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000101111100111111010100000011000001010000001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(8),
	datab => \inst3|ALT_INV_ACC\(10),
	datac => \inst3|ALT_INV_ACC[3]~7_combout\,
	datad => \inst3|ALT_INV_ACC~8_combout\,
	datae => \inst3|ALT_INV_Mult0~17\,
	dataf => \inst3|ALT_INV_ACC~20_combout\,
	combout => \inst3|ACC~21_combout\);

-- Location: FF_X24_Y2_N44
\inst3|ACC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~21_combout\,
	sclr => \inst3|ACC[3]~10_combout\,
	ena => \inst3|ACC[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(9));

-- Location: LABCELL_X24_Y2_N0
\inst3|ACC~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~22_combout\ = ( \inst3|Equal4~1_combout\ & ( \inst3|Add0~29_sumout\ & ( (!\inst3|Equal2~0_combout\ & (\inst3|ACC\(8))) # (\inst3|Equal2~0_combout\ & (!\inst3|ACC\(8) & !\inst2|BRout\(8))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( 
-- \inst3|Add0~29_sumout\ & ( (\inst3|Equal2~0_combout\ & ((!\inst8|srom|rom_block|auto_generated|q_a\(12) & ((!\inst3|ACC\(8)) # (!\inst2|BRout\(8)))) # (\inst8|srom|rom_block|auto_generated|q_a\(12) & (!\inst3|ACC\(8) & !\inst2|BRout\(8))))) ) ) ) # ( 
-- \inst3|Equal4~1_combout\ & ( !\inst3|Add0~29_sumout\ & ( (!\inst3|Equal2~0_combout\ & (\inst3|ACC\(8))) # (\inst3|Equal2~0_combout\ & (!\inst3|ACC\(8) & !\inst2|BRout\(8))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( !\inst3|Add0~29_sumout\ & ( 
-- (!\inst3|Equal2~0_combout\) # ((!\inst8|srom|rom_block|auto_generated|q_a\(12) & ((!\inst3|ACC\(8)) # (!\inst2|BRout\(8)))) # (\inst8|srom|rom_block|auto_generated|q_a\(12) & (!\inst3|ACC\(8) & !\inst2|BRout\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101010010110100000101001010100010000000101101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal2~0_combout\,
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datac => \inst3|ALT_INV_ACC\(8),
	datad => \inst2|ALT_INV_BRout\(8),
	datae => \inst3|ALT_INV_Equal4~1_combout\,
	dataf => \inst3|ALT_INV_Add0~29_sumout\,
	combout => \inst3|ACC~22_combout\);

-- Location: LABCELL_X24_Y2_N48
\inst3|ACC~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~23_combout\ = ( \inst3|ACC~22_combout\ & ( \inst3|Mult0~16\ & ( (!\inst3|ACC[3]~7_combout\ & (((\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(9)))) # (\inst3|ACC~8_combout\ & 
-- (\inst3|ACC\(7))))) ) ) ) # ( !\inst3|ACC~22_combout\ & ( \inst3|Mult0~16\ & ( (!\inst3|ACC[3]~7_combout\) # ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(9)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(7)))) ) ) ) # ( \inst3|ACC~22_combout\ & ( 
-- !\inst3|Mult0~16\ & ( (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(9)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(7))))) ) ) ) # ( !\inst3|ACC~22_combout\ & ( !\inst3|Mult0~16\ & ( (!\inst3|ACC[3]~7_combout\ & 
-- (((!\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(9)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000101000000110000010111110011111101010000001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(7),
	datab => \inst3|ALT_INV_ACC\(9),
	datac => \inst3|ALT_INV_ACC[3]~7_combout\,
	datad => \inst3|ALT_INV_ACC~8_combout\,
	datae => \inst3|ALT_INV_ACC~22_combout\,
	dataf => \inst3|ALT_INV_Mult0~16\,
	combout => \inst3|ACC~23_combout\);

-- Location: FF_X24_Y2_N50
\inst3|ACC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~23_combout\,
	sclr => \inst3|ACC[3]~10_combout\,
	ena => \inst3|ACC[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(8));

-- Location: LABCELL_X24_Y2_N18
\inst3|ACC~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~24_combout\ = ( \inst3|Equal4~1_combout\ & ( \inst3|Add0~33_sumout\ & ( (!\inst3|Equal2~0_combout\ & (\inst3|ACC\(7))) # (\inst3|Equal2~0_combout\ & (!\inst3|ACC\(7) & !\inst2|BRout\(7))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( 
-- \inst3|Add0~33_sumout\ & ( (\inst3|Equal2~0_combout\ & ((!\inst8|srom|rom_block|auto_generated|q_a\(12) & ((!\inst3|ACC\(7)) # (!\inst2|BRout\(7)))) # (\inst8|srom|rom_block|auto_generated|q_a\(12) & (!\inst3|ACC\(7) & !\inst2|BRout\(7))))) ) ) ) # ( 
-- \inst3|Equal4~1_combout\ & ( !\inst3|Add0~33_sumout\ & ( (!\inst3|Equal2~0_combout\ & (\inst3|ACC\(7))) # (\inst3|Equal2~0_combout\ & (!\inst3|ACC\(7) & !\inst2|BRout\(7))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( !\inst3|Add0~33_sumout\ & ( 
-- (!\inst3|Equal2~0_combout\) # ((!\inst8|srom|rom_block|auto_generated|q_a\(12) & ((!\inst3|ACC\(7)) # (!\inst2|BRout\(7)))) # (\inst8|srom|rom_block|auto_generated|q_a\(12) & (!\inst3|ACC\(7) & !\inst2|BRout\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101010010110100000101001010100010000000101101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal2~0_combout\,
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datac => \inst3|ALT_INV_ACC\(7),
	datad => \inst2|ALT_INV_BRout\(7),
	datae => \inst3|ALT_INV_Equal4~1_combout\,
	dataf => \inst3|ALT_INV_Add0~33_sumout\,
	combout => \inst3|ACC~24_combout\);

-- Location: LABCELL_X24_Y2_N54
\inst3|ACC~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~25_combout\ = ( \inst3|Mult0~15\ & ( \inst3|ACC~24_combout\ & ( (!\inst3|ACC[3]~7_combout\ & (((\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(8))) # (\inst3|ACC~8_combout\ & 
-- ((\inst3|ACC\(6)))))) ) ) ) # ( !\inst3|Mult0~15\ & ( \inst3|ACC~24_combout\ & ( (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(8))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(6)))))) ) ) ) # ( \inst3|Mult0~15\ & ( 
-- !\inst3|ACC~24_combout\ & ( (!\inst3|ACC[3]~7_combout\) # ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(8))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(6))))) ) ) ) # ( !\inst3|Mult0~15\ & ( !\inst3|ACC~24_combout\ & ( (!\inst3|ACC[3]~7_combout\ & 
-- (((!\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(8))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000011111101011111001100000101000000110000010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(8),
	datab => \inst3|ALT_INV_ACC\(6),
	datac => \inst3|ALT_INV_ACC[3]~7_combout\,
	datad => \inst3|ALT_INV_ACC~8_combout\,
	datae => \inst3|ALT_INV_Mult0~15\,
	dataf => \inst3|ALT_INV_ACC~24_combout\,
	combout => \inst3|ACC~25_combout\);

-- Location: FF_X24_Y2_N56
\inst3|ACC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~25_combout\,
	sclr => \inst3|ACC[3]~10_combout\,
	ena => \inst3|ACC[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(7));

-- Location: LABCELL_X24_Y2_N33
\inst3|ACC~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~26_combout\ = ( \inst3|Equal4~1_combout\ & ( \inst3|Add0~37_sumout\ & ( (!\inst3|ACC\(6) & (!\inst2|BRout\(6) & \inst3|Equal2~0_combout\)) # (\inst3|ACC\(6) & ((!\inst3|Equal2~0_combout\))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( 
-- \inst3|Add0~37_sumout\ & ( (\inst3|Equal2~0_combout\ & ((!\inst2|BRout\(6) & ((!\inst8|srom|rom_block|auto_generated|q_a\(12)) # (!\inst3|ACC\(6)))) # (\inst2|BRout\(6) & (!\inst8|srom|rom_block|auto_generated|q_a\(12) & !\inst3|ACC\(6))))) ) ) ) # ( 
-- \inst3|Equal4~1_combout\ & ( !\inst3|Add0~37_sumout\ & ( (!\inst3|ACC\(6) & (!\inst2|BRout\(6) & \inst3|Equal2~0_combout\)) # (\inst3|ACC\(6) & ((!\inst3|Equal2~0_combout\))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( !\inst3|Add0~37_sumout\ & ( 
-- (!\inst3|Equal2~0_combout\) # ((!\inst2|BRout\(6) & ((!\inst8|srom|rom_block|auto_generated|q_a\(12)) # (!\inst3|ACC\(6)))) # (\inst2|BRout\(6) & (!\inst8|srom|rom_block|auto_generated|q_a\(12) & !\inst3|ACC\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000000011111010000000000000111010000000111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(6),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datac => \inst3|ALT_INV_ACC\(6),
	datad => \inst3|ALT_INV_Equal2~0_combout\,
	datae => \inst3|ALT_INV_Equal4~1_combout\,
	dataf => \inst3|ALT_INV_Add0~37_sumout\,
	combout => \inst3|ACC~26_combout\);

-- Location: LABCELL_X24_Y2_N12
\inst3|ACC~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~27_combout\ = ( \inst3|ACC\(5) & ( \inst3|Mult0~14\ & ( ((!\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~26_combout\))) # (\inst3|ACC[3]~7_combout\ & (\inst3|ACC\(7)))) # (\inst3|ACC~8_combout\) ) ) ) # ( !\inst3|ACC\(5) & ( \inst3|Mult0~14\ & ( 
-- (!\inst3|ACC~8_combout\ & ((!\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~26_combout\))) # (\inst3|ACC[3]~7_combout\ & (\inst3|ACC\(7))))) # (\inst3|ACC~8_combout\ & (((!\inst3|ACC[3]~7_combout\)))) ) ) ) # ( \inst3|ACC\(5) & ( !\inst3|Mult0~14\ & ( 
-- (!\inst3|ACC~8_combout\ & ((!\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~26_combout\))) # (\inst3|ACC[3]~7_combout\ & (\inst3|ACC\(7))))) # (\inst3|ACC~8_combout\ & (((\inst3|ACC[3]~7_combout\)))) ) ) ) # ( !\inst3|ACC\(5) & ( !\inst3|Mult0~14\ & ( 
-- (!\inst3|ACC~8_combout\ & ((!\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~26_combout\))) # (\inst3|ACC[3]~7_combout\ & (\inst3|ACC\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001000100110000000111011111110011010001001111001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(7),
	datab => \inst3|ALT_INV_ACC~8_combout\,
	datac => \inst3|ALT_INV_ACC~26_combout\,
	datad => \inst3|ALT_INV_ACC[3]~7_combout\,
	datae => \inst3|ALT_INV_ACC\(5),
	dataf => \inst3|ALT_INV_Mult0~14\,
	combout => \inst3|ACC~27_combout\);

-- Location: FF_X24_Y2_N14
\inst3|ACC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~27_combout\,
	sclr => \inst3|ACC[3]~10_combout\,
	ena => \inst3|ACC[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(6));

-- Location: MLABCELL_X28_Y2_N54
\inst3|ACC~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~28_combout\ = ( \inst3|Equal4~1_combout\ & ( \inst3|Add0~41_sumout\ & ( (!\inst3|Equal2~0_combout\ & ((\inst3|ACC\(5)))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(5) & !\inst3|ACC\(5))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( 
-- \inst3|Add0~41_sumout\ & ( (\inst3|Equal2~0_combout\ & ((!\inst2|BRout\(5) & ((!\inst3|ACC\(5)) # (!\inst8|srom|rom_block|auto_generated|q_a\(12)))) # (\inst2|BRout\(5) & (!\inst3|ACC\(5) & !\inst8|srom|rom_block|auto_generated|q_a\(12))))) ) ) ) # ( 
-- \inst3|Equal4~1_combout\ & ( !\inst3|Add0~41_sumout\ & ( (!\inst3|Equal2~0_combout\ & ((\inst3|ACC\(5)))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(5) & !\inst3|ACC\(5))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( !\inst3|Add0~41_sumout\ & ( 
-- (!\inst3|Equal2~0_combout\) # ((!\inst2|BRout\(5) & ((!\inst3|ACC\(5)) # (!\inst8|srom|rom_block|auto_generated|q_a\(12)))) # (\inst2|BRout\(5) & (!\inst3|ACC\(5) & !\inst8|srom|rom_block|auto_generated|q_a\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101100001011000010110000110010001000000010110000101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(5),
	datab => \inst3|ALT_INV_Equal2~0_combout\,
	datac => \inst3|ALT_INV_ACC\(5),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datae => \inst3|ALT_INV_Equal4~1_combout\,
	dataf => \inst3|ALT_INV_Add0~41_sumout\,
	combout => \inst3|ACC~28_combout\);

-- Location: MLABCELL_X25_Y2_N18
\inst3|ACC~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~29_combout\ = ( \inst3|ACC~28_combout\ & ( \inst3|Mult0~13\ & ( (!\inst3|ACC[3]~7_combout\ & (((\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(6)))) # (\inst3|ACC~8_combout\ & 
-- (\inst3|ACC\(4))))) ) ) ) # ( !\inst3|ACC~28_combout\ & ( \inst3|Mult0~13\ & ( (!\inst3|ACC[3]~7_combout\) # ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(6)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(4)))) ) ) ) # ( \inst3|ACC~28_combout\ & ( 
-- !\inst3|Mult0~13\ & ( (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(6)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(4))))) ) ) ) # ( !\inst3|ACC~28_combout\ & ( !\inst3|Mult0~13\ & ( (!\inst3|ACC[3]~7_combout\ & 
-- (((!\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(6)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000101000000110000010111110011111101010000001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(4),
	datab => \inst3|ALT_INV_ACC\(6),
	datac => \inst3|ALT_INV_ACC[3]~7_combout\,
	datad => \inst3|ALT_INV_ACC~8_combout\,
	datae => \inst3|ALT_INV_ACC~28_combout\,
	dataf => \inst3|ALT_INV_Mult0~13\,
	combout => \inst3|ACC~29_combout\);

-- Location: FF_X25_Y2_N20
\inst3|ACC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~29_combout\,
	sclr => \inst3|ACC[3]~10_combout\,
	ena => \inst3|ACC[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(5));

-- Location: LABCELL_X27_Y2_N18
\inst3|ACC~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~30_combout\ = ( \inst3|Equal4~1_combout\ & ( \inst3|Add0~45_sumout\ & ( (!\inst3|Equal2~0_combout\ & ((\inst3|ACC\(4)))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(4) & !\inst3|ACC\(4))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( 
-- \inst3|Add0~45_sumout\ & ( (\inst3|Equal2~0_combout\ & ((!\inst2|BRout\(4) & ((!\inst8|srom|rom_block|auto_generated|q_a\(12)) # (!\inst3|ACC\(4)))) # (\inst2|BRout\(4) & (!\inst8|srom|rom_block|auto_generated|q_a\(12) & !\inst3|ACC\(4))))) ) ) ) # ( 
-- \inst3|Equal4~1_combout\ & ( !\inst3|Add0~45_sumout\ & ( (!\inst3|Equal2~0_combout\ & ((\inst3|ACC\(4)))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(4) & !\inst3|ACC\(4))) ) ) ) # ( !\inst3|Equal4~1_combout\ & ( !\inst3|Add0~45_sumout\ & ( 
-- (!\inst3|Equal2~0_combout\) # ((!\inst2|BRout\(4) & ((!\inst8|srom|rom_block|auto_generated|q_a\(12)) # (!\inst3|ACC\(4)))) # (\inst2|BRout\(4) & (!\inst8|srom|rom_block|auto_generated|q_a\(12) & !\inst3|ACC\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101100001000101100110000110010001000000010001011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(4),
	datab => \inst3|ALT_INV_Equal2~0_combout\,
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datad => \inst3|ALT_INV_ACC\(4),
	datae => \inst3|ALT_INV_Equal4~1_combout\,
	dataf => \inst3|ALT_INV_Add0~45_sumout\,
	combout => \inst3|ACC~30_combout\);

-- Location: LABCELL_X23_Y2_N33
\inst3|ACC~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~31_combout\ = ( \inst3|Mult0~12\ & ( \inst3|ACC~30_combout\ & ( (!\inst3|ACC[3]~7_combout\ & (((\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(5))) # (\inst3|ACC~8_combout\ & 
-- ((\inst3|ACC\(3)))))) ) ) ) # ( !\inst3|Mult0~12\ & ( \inst3|ACC~30_combout\ & ( (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(5))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(3)))))) ) ) ) # ( \inst3|Mult0~12\ & ( 
-- !\inst3|ACC~30_combout\ & ( (!\inst3|ACC[3]~7_combout\) # ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(5))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(3))))) ) ) ) # ( !\inst3|Mult0~12\ & ( !\inst3|ACC~30_combout\ & ( (!\inst3|ACC[3]~7_combout\ & 
-- (((!\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(5))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100000101101110111010111100010001000001010001000110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC[3]~7_combout\,
	datab => \inst3|ALT_INV_ACC\(5),
	datac => \inst3|ALT_INV_ACC\(3),
	datad => \inst3|ALT_INV_ACC~8_combout\,
	datae => \inst3|ALT_INV_Mult0~12\,
	dataf => \inst3|ALT_INV_ACC~30_combout\,
	combout => \inst3|ACC~31_combout\);

-- Location: FF_X23_Y2_N35
\inst3|ACC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~31_combout\,
	sclr => \inst3|ACC[3]~10_combout\,
	ena => \inst3|ACC[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(4));

-- Location: LABCELL_X22_Y2_N12
\inst3|ACC~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~32_combout\ = ( \inst3|Add0~49_sumout\ & ( \inst3|Equal4~1_combout\ & ( (!\inst3|Equal2~0_combout\ & ((\inst3|ACC\(3)))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(3) & !\inst3|ACC\(3))) ) ) ) # ( !\inst3|Add0~49_sumout\ & ( 
-- \inst3|Equal4~1_combout\ & ( (!\inst3|Equal2~0_combout\ & ((\inst3|ACC\(3)))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(3) & !\inst3|ACC\(3))) ) ) ) # ( \inst3|Add0~49_sumout\ & ( !\inst3|Equal4~1_combout\ & ( (\inst3|Equal2~0_combout\ & 
-- ((!\inst2|BRout\(3) & ((!\inst3|ACC\(3)) # (!\inst8|srom|rom_block|auto_generated|q_a\(12)))) # (\inst2|BRout\(3) & (!\inst3|ACC\(3) & !\inst8|srom|rom_block|auto_generated|q_a\(12))))) ) ) ) # ( !\inst3|Add0~49_sumout\ & ( !\inst3|Equal4~1_combout\ & ( 
-- (!\inst3|Equal2~0_combout\) # ((!\inst2|BRout\(3) & ((!\inst3|ACC\(3)) # (!\inst8|srom|rom_block|auto_generated|q_a\(12)))) # (\inst2|BRout\(3) & (!\inst3|ACC\(3) & !\inst8|srom|rom_block|auto_generated|q_a\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101010010101000100000001001010010010100100101001001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal2~0_combout\,
	datab => \inst2|ALT_INV_BRout\(3),
	datac => \inst3|ALT_INV_ACC\(3),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datae => \inst3|ALT_INV_Add0~49_sumout\,
	dataf => \inst3|ALT_INV_Equal4~1_combout\,
	combout => \inst3|ACC~32_combout\);

-- Location: LABCELL_X22_Y2_N54
\inst3|ACC~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~33_combout\ = ( \inst3|Mult0~11\ & ( \inst3|ACC~32_combout\ & ( (!\inst3|ACC[3]~7_combout\ & (((\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(4)))) # (\inst3|ACC~8_combout\ & 
-- (\inst3|ACC\(2))))) ) ) ) # ( !\inst3|Mult0~11\ & ( \inst3|ACC~32_combout\ & ( (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(4)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(2))))) ) ) ) # ( \inst3|Mult0~11\ & ( !\inst3|ACC~32_combout\ 
-- & ( (!\inst3|ACC[3]~7_combout\) # ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(4)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(2)))) ) ) ) # ( !\inst3|Mult0~11\ & ( !\inst3|ACC~32_combout\ & ( (!\inst3|ACC[3]~7_combout\ & (((!\inst3|ACC~8_combout\)))) # 
-- (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & ((\inst3|ACC\(4)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100010001101011111011101100000101000100010000010110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC[3]~7_combout\,
	datab => \inst3|ALT_INV_ACC\(2),
	datac => \inst3|ALT_INV_ACC\(4),
	datad => \inst3|ALT_INV_ACC~8_combout\,
	datae => \inst3|ALT_INV_Mult0~11\,
	dataf => \inst3|ALT_INV_ACC~32_combout\,
	combout => \inst3|ACC~33_combout\);

-- Location: FF_X22_Y2_N56
\inst3|ACC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~33_combout\,
	sclr => \inst3|ACC[3]~10_combout\,
	ena => \inst3|ACC[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(3));

-- Location: LABCELL_X22_Y2_N48
\inst|temp~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~12_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(3) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(3) & ( \inst|temp\(3) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( 
-- !\inst3|ACC\(3) & ( \inst|temp\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_temp\(3),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst3|ALT_INV_ACC\(3),
	combout => \inst|temp~12_combout\);

-- Location: FF_X22_Y2_N17
\inst|MBR_RAM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~12_combout\,
	sload => VCC,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(3));

-- Location: MLABCELL_X39_Y1_N36
\inst|MBR_OP[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_OP[5]~feeder_combout\ = ( \inst9|sram|ram_block|auto_generated|q_a\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(13),
	combout => \inst|MBR_OP[5]~feeder_combout\);

-- Location: FF_X39_Y1_N38
\inst|MBR_OP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst|MBR_OP[5]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(5));

-- Location: FF_X40_Y1_N17
\inst6|CARout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|Add0~9_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(5),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(5));

-- Location: LABCELL_X24_Y1_N18
\inst3|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal4~0_combout\ = ( !\inst8|srom|rom_block|auto_generated|q_a\(14) & ( \inst8|srom|rom_block|auto_generated|q_a\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	combout => \inst3|Equal4~0_combout\);

-- Location: LABCELL_X23_Y1_N54
\inst3|ACC~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~8_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(13) & ( \inst3|Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	dataf => \inst3|ALT_INV_Equal4~0_combout\,
	combout => \inst3|ACC~8_combout\);

-- Location: LABCELL_X22_Y2_N30
\inst3|ACC~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~34_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(12) & ( \inst3|Add0~53_sumout\ & ( (!\inst3|Equal2~0_combout\ & (((\inst3|Equal4~1_combout\ & \inst3|ACC\(2))))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(2) & ((!\inst3|ACC\(2))))) 
-- ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(12) & ( \inst3|Add0~53_sumout\ & ( (!\inst3|Equal4~1_combout\ & (\inst3|Equal2~0_combout\ & ((!\inst2|BRout\(2)) # (!\inst3|ACC\(2))))) # (\inst3|Equal4~1_combout\ & ((!\inst3|Equal2~0_combout\ & 
-- ((\inst3|ACC\(2)))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(2) & !\inst3|ACC\(2))))) ) ) ) # ( \inst8|srom|rom_block|auto_generated|q_a\(12) & ( !\inst3|Add0~53_sumout\ & ( (!\inst3|Equal2~0_combout\ & (((!\inst3|Equal4~1_combout\) # 
-- (\inst3|ACC\(2))))) # (\inst3|Equal2~0_combout\ & (!\inst2|BRout\(2) & ((!\inst3|ACC\(2))))) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(12) & ( !\inst3|Add0~53_sumout\ & ( (!\inst2|BRout\(2) & ((!\inst3|Equal4~1_combout\) # 
-- (!\inst3|Equal2~0_combout\ $ (!\inst3|ACC\(2))))) # (\inst2|BRout\(2) & ((!\inst3|ACC\(2) & (!\inst3|Equal4~1_combout\)) # (\inst3|ACC\(2) & ((!\inst3|Equal2~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111011111000110010101111000000001110001110000000101000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(2),
	datab => \inst3|ALT_INV_Equal4~1_combout\,
	datac => \inst3|ALT_INV_Equal2~0_combout\,
	datad => \inst3|ALT_INV_ACC\(2),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	dataf => \inst3|ALT_INV_Add0~53_sumout\,
	combout => \inst3|ACC~34_combout\);

-- Location: LABCELL_X22_Y2_N42
\inst3|ACC~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~35_combout\ = ( \inst3|ACC\(3) & ( \inst3|Mult0~10\ & ( (!\inst3|ACC~8_combout\ & (((!\inst3|ACC~34_combout\) # (\inst3|ACC[3]~7_combout\)))) # (\inst3|ACC~8_combout\ & (((!\inst3|ACC[3]~7_combout\)) # (\inst3|ACC\(1)))) ) ) ) # ( 
-- !\inst3|ACC\(3) & ( \inst3|Mult0~10\ & ( (!\inst3|ACC~8_combout\ & (((!\inst3|ACC[3]~7_combout\ & !\inst3|ACC~34_combout\)))) # (\inst3|ACC~8_combout\ & (((!\inst3|ACC[3]~7_combout\)) # (\inst3|ACC\(1)))) ) ) ) # ( \inst3|ACC\(3) & ( !\inst3|Mult0~10\ & ( 
-- (!\inst3|ACC~8_combout\ & (((!\inst3|ACC~34_combout\) # (\inst3|ACC[3]~7_combout\)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(1) & (\inst3|ACC[3]~7_combout\))) ) ) ) # ( !\inst3|ACC\(3) & ( !\inst3|Mult0~10\ & ( (!\inst3|ACC~8_combout\ & 
-- (((!\inst3|ACC[3]~7_combout\ & !\inst3|ACC~34_combout\)))) # (\inst3|ACC~8_combout\ & (\inst3|ACC\(1) & (\inst3|ACC[3]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100000001110011010000110111110001001100011111110100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(1),
	datab => \inst3|ALT_INV_ACC~8_combout\,
	datac => \inst3|ALT_INV_ACC[3]~7_combout\,
	datad => \inst3|ALT_INV_ACC~34_combout\,
	datae => \inst3|ALT_INV_ACC\(3),
	dataf => \inst3|ALT_INV_Mult0~10\,
	combout => \inst3|ACC~35_combout\);

-- Location: FF_X22_Y2_N44
\inst3|ACC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~35_combout\,
	sclr => \inst3|ACC[3]~10_combout\,
	ena => \inst3|ACC[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(2));

-- Location: LABCELL_X22_Y2_N6
\inst|temp~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~13_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(2) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(2) & ( \inst|temp\(2) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( 
-- !\inst3|ACC\(2) & ( \inst|temp\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_temp\(2),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst3|ALT_INV_ACC\(2),
	combout => \inst|temp~13_combout\);

-- Location: FF_X22_Y2_N35
\inst|MBR_RAM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~13_combout\,
	sload => VCC,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(2));

-- Location: MLABCELL_X39_Y1_N21
\inst|MBR_OP[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_OP[4]~feeder_combout\ = ( \inst9|sram|ram_block|auto_generated|q_a\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(12),
	combout => \inst|MBR_OP[4]~feeder_combout\);

-- Location: FF_X39_Y1_N23
\inst|MBR_OP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst|MBR_OP[4]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(4));

-- Location: FF_X40_Y1_N14
\inst6|CARout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|Add0~13_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(4),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(4));

-- Location: MLABCELL_X25_Y2_N15
\inst3|ACC[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC[3]~7_combout\ = ( \inst3|Equal4~0_combout\ & ( !\inst8|srom|rom_block|auto_generated|q_a\(13) $ (!\inst8|srom|rom_block|auto_generated|q_a\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	dataf => \inst3|ALT_INV_Equal4~0_combout\,
	combout => \inst3|ACC[3]~7_combout\);

-- Location: LABCELL_X22_Y2_N21
\inst3|ACC~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~36_combout\ = ( \inst3|Equal2~0_combout\ & ( \inst3|Add0~57_sumout\ & ( (!\inst2|BRout\(1) & ((!\inst3|ACC\(1)) # ((!\inst3|Equal4~1_combout\ & !\inst8|srom|rom_block|auto_generated|q_a\(12))))) # (\inst2|BRout\(1) & (!\inst3|Equal4~1_combout\ 
-- & (!\inst8|srom|rom_block|auto_generated|q_a\(12) & !\inst3|ACC\(1)))) ) ) ) # ( !\inst3|Equal2~0_combout\ & ( \inst3|Add0~57_sumout\ & ( (\inst3|Equal4~1_combout\ & \inst3|ACC\(1)) ) ) ) # ( \inst3|Equal2~0_combout\ & ( !\inst3|Add0~57_sumout\ & ( 
-- (!\inst2|BRout\(1) & ((!\inst3|ACC\(1)) # ((!\inst3|Equal4~1_combout\ & !\inst8|srom|rom_block|auto_generated|q_a\(12))))) # (\inst2|BRout\(1) & (!\inst3|Equal4~1_combout\ & (!\inst8|srom|rom_block|auto_generated|q_a\(12) & !\inst3|ACC\(1)))) ) ) ) # ( 
-- !\inst3|Equal2~0_combout\ & ( !\inst3|Add0~57_sumout\ & ( (!\inst3|Equal4~1_combout\) # (\inst3|ACC\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111111010101000000000000000001100111110101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(1),
	datab => \inst3|ALT_INV_Equal4~1_combout\,
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datad => \inst3|ALT_INV_ACC\(1),
	datae => \inst3|ALT_INV_Equal2~0_combout\,
	dataf => \inst3|ALT_INV_Add0~57_sumout\,
	combout => \inst3|ACC~36_combout\);

-- Location: LABCELL_X22_Y2_N36
\inst3|ACC~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~37_combout\ = ( \inst3|ACC~36_combout\ & ( \inst3|Mult0~9\ & ( (!\inst3|ACC[3]~7_combout\ & (((\inst3|ACC~8_combout\)))) # (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(2))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(0)))))) 
-- ) ) ) # ( !\inst3|ACC~36_combout\ & ( \inst3|Mult0~9\ & ( (!\inst3|ACC[3]~7_combout\) # ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(2))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(0))))) ) ) ) # ( \inst3|ACC~36_combout\ & ( !\inst3|Mult0~9\ & ( 
-- (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(2))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(0)))))) ) ) ) # ( !\inst3|ACC~36_combout\ & ( !\inst3|Mult0~9\ & ( (!\inst3|ACC[3]~7_combout\ & (((!\inst3|ACC~8_combout\)))) # 
-- (\inst3|ACC[3]~7_combout\ & ((!\inst3|ACC~8_combout\ & (\inst3|ACC\(2))) # (\inst3|ACC~8_combout\ & ((\inst3|ACC\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100000101000100010000010110111011101011110001000110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC[3]~7_combout\,
	datab => \inst3|ALT_INV_ACC\(2),
	datac => \inst3|ALT_INV_ACC\(0),
	datad => \inst3|ALT_INV_ACC~8_combout\,
	datae => \inst3|ALT_INV_ACC~36_combout\,
	dataf => \inst3|ALT_INV_Mult0~9\,
	combout => \inst3|ACC~37_combout\);

-- Location: FF_X22_Y2_N38
\inst3|ACC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~37_combout\,
	sclr => \inst3|ACC[3]~10_combout\,
	ena => \inst3|ACC[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(1));

-- Location: LABCELL_X22_Y2_N0
\inst|temp~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~14_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(1) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( \inst3|ACC\(1) & ( \inst|temp\(1) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(20) & ( 
-- !\inst3|ACC\(1) & ( \inst|temp\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_temp\(1),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst3|ALT_INV_ACC\(1),
	combout => \inst|temp~14_combout\);

-- Location: FF_X22_Y2_N20
\inst|MBR_RAM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~14_combout\,
	sload => VCC,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(1));

-- Location: FF_X24_Y1_N47
\inst|MBR_MAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(7),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(7));

-- Location: MLABCELL_X25_Y1_N6
\inst7|MARout[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MARout[7]~feeder_combout\ = ( \inst|MBR_MAR\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_MBR_MAR\(7),
	combout => \inst7|MARout[7]~feeder_combout\);

-- Location: LABCELL_X23_Y1_N51
\inst4|PCout[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|PCout[7]~feeder_combout\ = ( \inst|MBR_MAR\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_MBR_MAR\(7),
	combout => \inst4|PCout[7]~feeder_combout\);

-- Location: LABCELL_X23_Y1_N6
\inst4|PCout[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|PCout[6]~feeder_combout\ = \inst|MBR_MAR\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_MBR_MAR\(6),
	combout => \inst4|PCout[6]~feeder_combout\);

-- Location: LABCELL_X23_Y1_N9
\inst4|PCout[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|PCout[5]~feeder_combout\ = \inst|MBR_MAR\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_MBR_MAR\(5),
	combout => \inst4|PCout[5]~feeder_combout\);

-- Location: LABCELL_X23_Y1_N36
\inst4|PCout[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|PCout[4]~feeder_combout\ = \inst|MBR_MAR\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_MBR_MAR\(4),
	combout => \inst4|PCout[4]~feeder_combout\);

-- Location: LABCELL_X23_Y1_N42
\inst4|PCout[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|PCout[3]~feeder_combout\ = \inst|MBR_MAR\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_MBR_MAR\(3),
	combout => \inst4|PCout[3]~feeder_combout\);

-- Location: LABCELL_X23_Y1_N27
\inst4|PCout[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|PCout[2]~feeder_combout\ = \inst|MBR_MAR\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_MBR_MAR\(2),
	combout => \inst4|PCout[2]~feeder_combout\);

-- Location: LABCELL_X23_Y1_N21
\inst4|PCout[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|PCout[1]~feeder_combout\ = \inst|MBR_MAR\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_MBR_MAR\(1),
	combout => \inst4|PCout[1]~feeder_combout\);

-- Location: LABCELL_X23_Y1_N0
\inst4|PCout[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|PCout[0]~feeder_combout\ = \inst|MBR_MAR\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_MBR_MAR\(0),
	combout => \inst4|PCout[0]~feeder_combout\);

-- Location: MLABCELL_X25_Y1_N30
\inst4|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~29_sumout\ = SUM(( \inst4|PCout\(0) ) + ( VCC ) + ( !VCC ))
-- \inst4|Add0~30\ = CARRY(( \inst4|PCout\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_PCout\(0),
	cin => GND,
	sumout => \inst4|Add0~29_sumout\,
	cout => \inst4|Add0~30\);

-- Location: LABCELL_X23_Y1_N45
\inst4|PCout[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|PCout[4]~0_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(10) & ( !\reset~input_o\ ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(10) & ( (!\reset~input_o\) # ((!\inst8|srom|rom_block|auto_generated|q_a\(9) & 
-- \inst8|srom|rom_block|auto_generated|q_a\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111010101010101111101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(9),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(8),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(10),
	combout => \inst4|PCout[4]~0_combout\);

-- Location: LABCELL_X23_Y2_N18
\inst3|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = ( !\inst3|ACC\(1) & ( !\inst3|ACC\(12) & ( (!\inst3|ACC\(5) & (!\inst3|ACC\(13) & (!\inst3|ACC\(14) & !\inst3|ACC\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(5),
	datab => \inst3|ALT_INV_ACC\(13),
	datac => \inst3|ALT_INV_ACC\(14),
	datad => \inst3|ALT_INV_ACC\(2),
	datae => \inst3|ALT_INV_ACC\(1),
	dataf => \inst3|ALT_INV_ACC\(12),
	combout => \inst3|LessThan0~2_combout\);

-- Location: LABCELL_X23_Y1_N12
\inst3|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = ( !\inst3|ACC\(0) & ( !\inst3|ACC\(4) & ( (!\inst3|ACC\(15) & !\inst3|ACC\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(15),
	datac => \inst3|ALT_INV_ACC\(6),
	datae => \inst3|ALT_INV_ACC\(0),
	dataf => \inst3|ALT_INV_ACC\(4),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LABCELL_X24_Y1_N27
\inst3|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = ( !\inst3|ACC\(8) & ( !\inst3|ACC\(7) & ( (!\inst3|ACC\(10) & (!\inst3|ACC\(11) & (!\inst3|ACC\(3) & !\inst3|ACC\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(10),
	datab => \inst3|ALT_INV_ACC\(11),
	datac => \inst3|ALT_INV_ACC\(3),
	datad => \inst3|ALT_INV_ACC\(9),
	datae => \inst3|ALT_INV_ACC\(8),
	dataf => \inst3|ALT_INV_ACC\(7),
	combout => \inst3|LessThan0~1_combout\);

-- Location: LABCELL_X23_Y1_N33
\inst4|PCout[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|PCout[4]~1_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(8) & ( !\inst8|srom|rom_block|auto_generated|q_a\(10) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(8) & ( !\inst8|srom|rom_block|auto_generated|q_a\(10) & ( 
-- ((\inst3|LessThan0~2_combout\ & (\inst3|LessThan0~0_combout\ & \inst3|LessThan0~1_combout\))) # (\inst8|srom|rom_block|auto_generated|q_a\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan0~2_combout\,
	datab => \inst3|ALT_INV_LessThan0~0_combout\,
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(9),
	datad => \inst3|ALT_INV_LessThan0~1_combout\,
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(8),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(10),
	combout => \inst4|PCout[4]~1_combout\);

-- Location: LABCELL_X24_Y1_N57
\inst4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(14) & ( !\inst8|srom|rom_block|auto_generated|q_a\(13) & ( (!\inst8|srom|rom_block|auto_generated|q_a\(15) & \inst8|srom|rom_block|auto_generated|q_a\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	combout => \inst4|Equal0~0_combout\);

-- Location: LABCELL_X23_Y1_N48
\inst4|PCout[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|PCout[4]~2_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(9) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(9) & ( (!\reset~input_o\) # (((\inst8|srom|rom_block|auto_generated|q_a\(8)) # (\inst8|srom|rom_block|auto_generated|q_a\(10))) # 
-- (\inst4|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \inst4|ALT_INV_Equal0~0_combout\,
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(10),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(8),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(9),
	combout => \inst4|PCout[4]~2_combout\);

-- Location: FF_X23_Y1_N2
\inst4|PCout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst4|PCout[0]~feeder_combout\,
	asdata => \inst4|Add0~29_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(0));

-- Location: MLABCELL_X25_Y1_N33
\inst4|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~25_sumout\ = SUM(( \inst4|PCout\(1) ) + ( GND ) + ( \inst4|Add0~30\ ))
-- \inst4|Add0~26\ = CARRY(( \inst4|PCout\(1) ) + ( GND ) + ( \inst4|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_PCout\(1),
	cin => \inst4|Add0~30\,
	sumout => \inst4|Add0~25_sumout\,
	cout => \inst4|Add0~26\);

-- Location: FF_X23_Y1_N23
\inst4|PCout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst4|PCout[1]~feeder_combout\,
	asdata => \inst4|Add0~25_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(1));

-- Location: MLABCELL_X25_Y1_N36
\inst4|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~21_sumout\ = SUM(( \inst4|PCout\(2) ) + ( GND ) + ( \inst4|Add0~26\ ))
-- \inst4|Add0~22\ = CARRY(( \inst4|PCout\(2) ) + ( GND ) + ( \inst4|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_PCout\(2),
	cin => \inst4|Add0~26\,
	sumout => \inst4|Add0~21_sumout\,
	cout => \inst4|Add0~22\);

-- Location: FF_X23_Y1_N29
\inst4|PCout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst4|PCout[2]~feeder_combout\,
	asdata => \inst4|Add0~21_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(2));

-- Location: MLABCELL_X25_Y1_N39
\inst4|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~17_sumout\ = SUM(( \inst4|PCout\(3) ) + ( GND ) + ( \inst4|Add0~22\ ))
-- \inst4|Add0~18\ = CARRY(( \inst4|PCout\(3) ) + ( GND ) + ( \inst4|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_PCout\(3),
	cin => \inst4|Add0~22\,
	sumout => \inst4|Add0~17_sumout\,
	cout => \inst4|Add0~18\);

-- Location: FF_X23_Y1_N44
\inst4|PCout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst4|PCout[3]~feeder_combout\,
	asdata => \inst4|Add0~17_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(3));

-- Location: MLABCELL_X25_Y1_N42
\inst4|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~13_sumout\ = SUM(( \inst4|PCout\(4) ) + ( GND ) + ( \inst4|Add0~18\ ))
-- \inst4|Add0~14\ = CARRY(( \inst4|PCout\(4) ) + ( GND ) + ( \inst4|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_PCout\(4),
	cin => \inst4|Add0~18\,
	sumout => \inst4|Add0~13_sumout\,
	cout => \inst4|Add0~14\);

-- Location: FF_X23_Y1_N38
\inst4|PCout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst4|PCout[4]~feeder_combout\,
	asdata => \inst4|Add0~13_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(4));

-- Location: MLABCELL_X25_Y1_N45
\inst4|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~9_sumout\ = SUM(( \inst4|PCout\(5) ) + ( GND ) + ( \inst4|Add0~14\ ))
-- \inst4|Add0~10\ = CARRY(( \inst4|PCout\(5) ) + ( GND ) + ( \inst4|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_PCout\(5),
	cin => \inst4|Add0~14\,
	sumout => \inst4|Add0~9_sumout\,
	cout => \inst4|Add0~10\);

-- Location: FF_X23_Y1_N11
\inst4|PCout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst4|PCout[5]~feeder_combout\,
	asdata => \inst4|Add0~9_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(5));

-- Location: MLABCELL_X25_Y1_N48
\inst4|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~5_sumout\ = SUM(( \inst4|PCout\(6) ) + ( GND ) + ( \inst4|Add0~10\ ))
-- \inst4|Add0~6\ = CARRY(( \inst4|PCout\(6) ) + ( GND ) + ( \inst4|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_PCout\(6),
	cin => \inst4|Add0~10\,
	sumout => \inst4|Add0~5_sumout\,
	cout => \inst4|Add0~6\);

-- Location: FF_X23_Y1_N8
\inst4|PCout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst4|PCout[6]~feeder_combout\,
	asdata => \inst4|Add0~5_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(6));

-- Location: MLABCELL_X25_Y1_N51
\inst4|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~1_sumout\ = SUM(( \inst4|PCout\(7) ) + ( GND ) + ( \inst4|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_PCout\(7),
	cin => \inst4|Add0~6\,
	sumout => \inst4|Add0~1_sumout\);

-- Location: FF_X23_Y1_N53
\inst4|PCout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst4|PCout[7]~feeder_combout\,
	asdata => \inst4|Add0~1_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(7));

-- Location: MLABCELL_X25_Y1_N9
\inst7|MARout[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MARout[1]~0_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(18) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(18) & ( \inst8|srom|rom_block|auto_generated|q_a\(19) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(19),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	combout => \inst7|MARout[1]~0_combout\);

-- Location: FF_X25_Y1_N8
\inst7|MARout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst7|MARout[7]~feeder_combout\,
	asdata => \inst4|PCout\(7),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(7));

-- Location: FF_X24_Y1_N56
\inst|MBR_MAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(6),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(6));

-- Location: MLABCELL_X25_Y1_N18
\inst7|MARout[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MARout[6]~feeder_combout\ = ( \inst|MBR_MAR\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_MBR_MAR\(6),
	combout => \inst7|MARout[6]~feeder_combout\);

-- Location: FF_X25_Y1_N20
\inst7|MARout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst7|MARout[6]~feeder_combout\,
	asdata => \inst4|PCout\(6),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(6));

-- Location: LABCELL_X24_Y1_N51
\inst|MBR_MAR[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_MAR[5]~feeder_combout\ = ( \inst9|sram|ram_block|auto_generated|q_a\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(5),
	combout => \inst|MBR_MAR[5]~feeder_combout\);

-- Location: FF_X24_Y1_N53
\inst|MBR_MAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst|MBR_MAR[5]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(5));

-- Location: MLABCELL_X25_Y1_N21
\inst7|MARout[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MARout[5]~feeder_combout\ = ( \inst|MBR_MAR\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_MBR_MAR\(5),
	combout => \inst7|MARout[5]~feeder_combout\);

-- Location: FF_X25_Y1_N23
\inst7|MARout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst7|MARout[5]~feeder_combout\,
	asdata => \inst4|PCout\(5),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(5));

-- Location: FF_X24_Y1_N25
\inst|MBR_MAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(4),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(4));

-- Location: MLABCELL_X25_Y1_N12
\inst7|MARout[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MARout[4]~feeder_combout\ = ( \inst|MBR_MAR\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_MBR_MAR\(4),
	combout => \inst7|MARout[4]~feeder_combout\);

-- Location: FF_X25_Y1_N14
\inst7|MARout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst7|MARout[4]~feeder_combout\,
	asdata => \inst4|PCout\(4),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(4));

-- Location: FF_X24_Y1_N34
\inst|MBR_MAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(3),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(3));

-- Location: MLABCELL_X25_Y1_N57
\inst7|MARout[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MARout[3]~feeder_combout\ = ( \inst|MBR_MAR\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_MBR_MAR\(3),
	combout => \inst7|MARout[3]~feeder_combout\);

-- Location: FF_X25_Y1_N59
\inst7|MARout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst7|MARout[3]~feeder_combout\,
	asdata => \inst4|PCout\(3),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(3));

-- Location: FF_X24_Y1_N41
\inst|MBR_MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(2),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(2));

-- Location: MLABCELL_X25_Y1_N0
\inst7|MARout[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MARout[2]~feeder_combout\ = ( \inst|MBR_MAR\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_MBR_MAR\(2),
	combout => \inst7|MARout[2]~feeder_combout\);

-- Location: FF_X25_Y1_N2
\inst7|MARout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst7|MARout[2]~feeder_combout\,
	asdata => \inst4|PCout\(2),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(2));

-- Location: LABCELL_X24_Y1_N9
\inst|MBR_MAR[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_MAR[1]~feeder_combout\ = ( \inst9|sram|ram_block|auto_generated|q_a\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(1),
	combout => \inst|MBR_MAR[1]~feeder_combout\);

-- Location: FF_X24_Y1_N11
\inst|MBR_MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst|MBR_MAR[1]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(1));

-- Location: MLABCELL_X25_Y1_N3
\inst7|MARout[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MARout[1]~feeder_combout\ = ( \inst|MBR_MAR\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_MBR_MAR\(1),
	combout => \inst7|MARout[1]~feeder_combout\);

-- Location: FF_X25_Y1_N5
\inst7|MARout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst7|MARout[1]~feeder_combout\,
	asdata => \inst4|PCout\(1),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(1));

-- Location: FF_X24_Y1_N14
\inst|MBR_MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst9|sram|ram_block|auto_generated|q_a\(0),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(0));

-- Location: MLABCELL_X25_Y1_N24
\inst7|MARout[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MARout[0]~feeder_combout\ = \inst|MBR_MAR\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_MAR\(0),
	combout => \inst7|MARout[0]~feeder_combout\);

-- Location: FF_X25_Y1_N26
\inst7|MARout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst7|MARout[0]~feeder_combout\,
	asdata => \inst4|PCout\(0),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(0));

-- Location: MLABCELL_X39_Y1_N54
\inst|MBR_OP[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_OP[3]~feeder_combout\ = ( \inst9|sram|ram_block|auto_generated|q_a\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(11),
	combout => \inst|MBR_OP[3]~feeder_combout\);

-- Location: FF_X39_Y1_N56
\inst|MBR_OP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst|MBR_OP[3]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(3));

-- Location: FF_X40_Y1_N11
\inst6|CARout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|Add0~17_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(3),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(3));

-- Location: LABCELL_X19_Y2_N27
\inst|temp~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~15_combout\ = ( \inst3|ACC\(0) & ( (\inst8|srom|rom_block|auto_generated|q_a\(20)) # (\inst|temp\(0)) ) ) # ( !\inst3|ACC\(0) & ( (\inst|temp\(0) & !\inst8|srom|rom_block|auto_generated|q_a\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_temp\(0),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst3|ALT_INV_ACC\(0),
	combout => \inst|temp~15_combout\);

-- Location: FF_X19_Y2_N41
\inst|MBR_RAM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst|temp~15_combout\,
	sload => VCC,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(0));

-- Location: MLABCELL_X39_Y1_N27
\inst|MBR_OP[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_OP[2]~feeder_combout\ = ( \inst9|sram|ram_block|auto_generated|q_a\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(10),
	combout => \inst|MBR_OP[2]~feeder_combout\);

-- Location: FF_X39_Y1_N29
\inst|MBR_OP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst|MBR_OP[2]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(2));

-- Location: FF_X40_Y1_N8
\inst6|CARout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|Add0~21_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(2),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(2));

-- Location: MLABCELL_X39_Y1_N42
\inst|MBR_OP[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_OP[1]~feeder_combout\ = ( \inst9|sram|ram_block|auto_generated|q_a\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(9),
	combout => \inst|MBR_OP[1]~feeder_combout\);

-- Location: FF_X39_Y1_N44
\inst|MBR_OP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst|MBR_OP[1]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(1));

-- Location: FF_X40_Y1_N5
\inst6|CARout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|Add0~25_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(1),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(1));

-- Location: LABCELL_X40_Y1_N42
\inst6|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal3~0_combout\ = ( !\inst8|srom|rom_block|auto_generated|q_a\(24) & ( !\inst8|srom|rom_block|auto_generated|q_a\(25) & ( (!\inst8|srom|rom_block|auto_generated|q_a\(26) & \inst8|srom|rom_block|auto_generated|q_a\(23)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(26),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(23),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(24),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(25),
	combout => \inst6|Equal3~0_combout\);

-- Location: FF_X40_Y1_N2
\inst6|CARout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|Add0~29_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(0),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(0));

-- Location: LABCELL_X24_Y1_N42
\inst3|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal4~1_combout\ = ( \inst3|Equal4~0_combout\ & ( (!\inst8|srom|rom_block|auto_generated|q_a\(12) & !\inst8|srom|rom_block|auto_generated|q_a\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	dataf => \inst3|ALT_INV_Equal4~0_combout\,
	combout => \inst3|Equal4~1_combout\);

-- Location: LABCELL_X22_Y1_N0
\inst|MBR_BR[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_BR[15]~feeder_combout\ = ( \inst9|sram|ram_block|auto_generated|q_a\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|sram|ram_block|auto_generated|ALT_INV_q_a\(15),
	combout => \inst|MBR_BR[15]~feeder_combout\);

-- Location: FF_X22_Y1_N2
\inst|MBR_BR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst|MBR_BR[15]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(15));

-- Location: LABCELL_X22_Y1_N6
\inst2|BRout[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(15) = ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(15) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(15) & ( \inst2|BRout\(15) ) ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(22) & ( 
-- !\inst|MBR_BR\(15) & ( \inst2|BRout\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(15),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	dataf => \inst|ALT_INV_MBR_BR\(15),
	combout => \inst2|BRout\(15));

-- Location: LABCELL_X19_Y2_N0
\inst3|ACC~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~2_combout\ = ( !\inst3|Equal4~1_combout\ & ( \inst3|ACC\(15) & ( ((\inst2|BRout\(15) & \inst3|Equal2~0_combout\)) # (\inst3|ACC~1_combout\) ) ) ) # ( \inst3|Equal4~1_combout\ & ( !\inst3|ACC\(15) ) ) # ( !\inst3|Equal4~1_combout\ & ( 
-- !\inst3|ACC\(15) & ( (\inst8|srom|rom_block|auto_generated|q_a\(12) & (\inst2|BRout\(15) & \inst3|Equal2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111111111111111100000011111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst2|ALT_INV_BRout\(15),
	datac => \inst3|ALT_INV_Equal2~0_combout\,
	datad => \inst3|ALT_INV_ACC~1_combout\,
	datae => \inst3|ALT_INV_Equal4~1_combout\,
	dataf => \inst3|ALT_INV_ACC\(15),
	combout => \inst3|ACC~2_combout\);

-- Location: LABCELL_X19_Y2_N15
\inst3|ACC~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~4_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(13) & ( \inst3|Mult0~23\ & ( (\inst3|Equal4~0_combout\ & ((\inst8|srom|rom_block|auto_generated|q_a\(12)) # (\inst3|ACC\(14)))) ) ) ) # ( \inst8|srom|rom_block|auto_generated|q_a\(13) & ( 
-- !\inst3|Mult0~23\ & ( (\inst3|Equal4~0_combout\ & (\inst3|ACC\(14) & !\inst8|srom|rom_block|auto_generated|q_a\(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000000000000000000000000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal4~0_combout\,
	datac => \inst3|ALT_INV_ACC\(14),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	dataf => \inst3|ALT_INV_Mult0~23\,
	combout => \inst3|ACC~4_combout\);

-- Location: LABCELL_X19_Y2_N57
\inst3|ACC~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~3_combout\ = ( \inst8|srom|rom_block|auto_generated|q_a\(13) & ( \inst3|Equal4~0_combout\ ) ) # ( !\inst8|srom|rom_block|auto_generated|q_a\(13) & ( \inst3|Equal4~0_combout\ & ( \inst8|srom|rom_block|auto_generated|q_a\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datae => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	dataf => \inst3|ALT_INV_Equal4~0_combout\,
	combout => \inst3|ACC~3_combout\);

-- Location: MLABCELL_X28_Y2_N48
\inst3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_sumout\ = SUM(( \inst3|ACC\(15) ) + ( !\inst3|Equal1~0_combout\ $ (!\inst2|BRout\(15)) ) + ( \inst3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ACC\(15),
	datac => \inst3|ALT_INV_Equal1~0_combout\,
	dataf => \inst2|ALT_INV_BRout\(15),
	cin => \inst3|Add0~6\,
	sumout => \inst3|Add0~1_sumout\);

-- Location: LABCELL_X19_Y2_N18
\inst3|ACC~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~5_combout\ = ( \inst3|ACC~3_combout\ & ( \inst3|Add0~1_sumout\ & ( \inst3|ACC~4_combout\ ) ) ) # ( !\inst3|ACC~3_combout\ & ( \inst3|Add0~1_sumout\ & ( (((!\inst3|Equal4~1_combout\ & \inst3|ACC~0_combout\)) # (\inst3|ACC~4_combout\)) # 
-- (\inst3|ACC~2_combout\) ) ) ) # ( \inst3|ACC~3_combout\ & ( !\inst3|Add0~1_sumout\ & ( \inst3|ACC~4_combout\ ) ) ) # ( !\inst3|ACC~3_combout\ & ( !\inst3|Add0~1_sumout\ & ( (\inst3|ACC~4_combout\) # (\inst3|ACC~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000000001111111100101111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal4~1_combout\,
	datab => \inst3|ALT_INV_ACC~0_combout\,
	datac => \inst3|ALT_INV_ACC~2_combout\,
	datad => \inst3|ALT_INV_ACC~4_combout\,
	datae => \inst3|ALT_INV_ACC~3_combout\,
	dataf => \inst3|ALT_INV_Add0~1_sumout\,
	combout => \inst3|ACC~5_combout\);

-- Location: FF_X19_Y2_N20
\inst3|ACC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|ACC~5_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(15));

-- Location: LABCELL_X77_Y54_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


