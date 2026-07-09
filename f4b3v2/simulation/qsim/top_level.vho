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

-- DATE "06/10/2026 17:09:19"

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
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
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
SIGNAL \ACC[15]~output_o\ : std_logic;
SIGNAL \ACC[14]~output_o\ : std_logic;
SIGNAL \ACC[13]~output_o\ : std_logic;
SIGNAL \ACC[12]~output_o\ : std_logic;
SIGNAL \ACC[11]~output_o\ : std_logic;
SIGNAL \ACC[10]~output_o\ : std_logic;
SIGNAL \ACC[9]~output_o\ : std_logic;
SIGNAL \ACC[8]~output_o\ : std_logic;
SIGNAL \ACC[7]~output_o\ : std_logic;
SIGNAL \ACC[6]~output_o\ : std_logic;
SIGNAL \ACC[5]~output_o\ : std_logic;
SIGNAL \ACC[4]~output_o\ : std_logic;
SIGNAL \ACC[3]~output_o\ : std_logic;
SIGNAL \ACC[2]~output_o\ : std_logic;
SIGNAL \ACC[1]~output_o\ : std_logic;
SIGNAL \ACC[0]~output_o\ : std_logic;
SIGNAL \ALUIN[3]~output_o\ : std_logic;
SIGNAL \ALUIN[2]~output_o\ : std_logic;
SIGNAL \ALUIN[1]~output_o\ : std_logic;
SIGNAL \ALUIN[0]~output_o\ : std_logic;
SIGNAL \BRIN[15]~output_o\ : std_logic;
SIGNAL \BRIN[14]~output_o\ : std_logic;
SIGNAL \BRIN[13]~output_o\ : std_logic;
SIGNAL \BRIN[12]~output_o\ : std_logic;
SIGNAL \BRIN[11]~output_o\ : std_logic;
SIGNAL \BRIN[10]~output_o\ : std_logic;
SIGNAL \BRIN[9]~output_o\ : std_logic;
SIGNAL \BRIN[8]~output_o\ : std_logic;
SIGNAL \BRIN[7]~output_o\ : std_logic;
SIGNAL \BRIN[6]~output_o\ : std_logic;
SIGNAL \BRIN[5]~output_o\ : std_logic;
SIGNAL \BRIN[4]~output_o\ : std_logic;
SIGNAL \BRIN[3]~output_o\ : std_logic;
SIGNAL \BRIN[2]~output_o\ : std_logic;
SIGNAL \BRIN[1]~output_o\ : std_logic;
SIGNAL \BRIN[0]~output_o\ : std_logic;
SIGNAL \BROUT[15]~output_o\ : std_logic;
SIGNAL \BROUT[14]~output_o\ : std_logic;
SIGNAL \BROUT[13]~output_o\ : std_logic;
SIGNAL \BROUT[12]~output_o\ : std_logic;
SIGNAL \BROUT[11]~output_o\ : std_logic;
SIGNAL \BROUT[10]~output_o\ : std_logic;
SIGNAL \BROUT[9]~output_o\ : std_logic;
SIGNAL \BROUT[8]~output_o\ : std_logic;
SIGNAL \BROUT[7]~output_o\ : std_logic;
SIGNAL \BROUT[6]~output_o\ : std_logic;
SIGNAL \BROUT[5]~output_o\ : std_logic;
SIGNAL \BROUT[4]~output_o\ : std_logic;
SIGNAL \BROUT[3]~output_o\ : std_logic;
SIGNAL \BROUT[2]~output_o\ : std_logic;
SIGNAL \BROUT[1]~output_o\ : std_logic;
SIGNAL \BROUT[0]~output_o\ : std_logic;
SIGNAL \CARcIN[3]~output_o\ : std_logic;
SIGNAL \CARcIN[2]~output_o\ : std_logic;
SIGNAL \CARcIN[1]~output_o\ : std_logic;
SIGNAL \CARcIN[0]~output_o\ : std_logic;
SIGNAL \CAROUT[7]~output_o\ : std_logic;
SIGNAL \CAROUT[6]~output_o\ : std_logic;
SIGNAL \CAROUT[5]~output_o\ : std_logic;
SIGNAL \CAROUT[4]~output_o\ : std_logic;
SIGNAL \CAROUT[3]~output_o\ : std_logic;
SIGNAL \CAROUT[2]~output_o\ : std_logic;
SIGNAL \CAROUT[1]~output_o\ : std_logic;
SIGNAL \CAROUT[0]~output_o\ : std_logic;
SIGNAL \CONTROLIN[31]~output_o\ : std_logic;
SIGNAL \CONTROLIN[30]~output_o\ : std_logic;
SIGNAL \CONTROLIN[29]~output_o\ : std_logic;
SIGNAL \CONTROLIN[28]~output_o\ : std_logic;
SIGNAL \CONTROLIN[27]~output_o\ : std_logic;
SIGNAL \CONTROLIN[26]~output_o\ : std_logic;
SIGNAL \CONTROLIN[25]~output_o\ : std_logic;
SIGNAL \CONTROLIN[24]~output_o\ : std_logic;
SIGNAL \CONTROLIN[23]~output_o\ : std_logic;
SIGNAL \CONTROLIN[22]~output_o\ : std_logic;
SIGNAL \CONTROLIN[21]~output_o\ : std_logic;
SIGNAL \CONTROLIN[20]~output_o\ : std_logic;
SIGNAL \CONTROLIN[19]~output_o\ : std_logic;
SIGNAL \CONTROLIN[18]~output_o\ : std_logic;
SIGNAL \CONTROLIN[17]~output_o\ : std_logic;
SIGNAL \CONTROLIN[16]~output_o\ : std_logic;
SIGNAL \CONTROLIN[15]~output_o\ : std_logic;
SIGNAL \CONTROLIN[14]~output_o\ : std_logic;
SIGNAL \CONTROLIN[13]~output_o\ : std_logic;
SIGNAL \CONTROLIN[12]~output_o\ : std_logic;
SIGNAL \CONTROLIN[11]~output_o\ : std_logic;
SIGNAL \CONTROLIN[10]~output_o\ : std_logic;
SIGNAL \CONTROLIN[9]~output_o\ : std_logic;
SIGNAL \CONTROLIN[8]~output_o\ : std_logic;
SIGNAL \CONTROLIN[7]~output_o\ : std_logic;
SIGNAL \CONTROLIN[6]~output_o\ : std_logic;
SIGNAL \CONTROLIN[5]~output_o\ : std_logic;
SIGNAL \CONTROLIN[4]~output_o\ : std_logic;
SIGNAL \CONTROLIN[3]~output_o\ : std_logic;
SIGNAL \CONTROLIN[2]~output_o\ : std_logic;
SIGNAL \CONTROLIN[1]~output_o\ : std_logic;
SIGNAL \CONTROLIN[0]~output_o\ : std_logic;
SIGNAL \IROUT[7]~output_o\ : std_logic;
SIGNAL \IROUT[6]~output_o\ : std_logic;
SIGNAL \IROUT[5]~output_o\ : std_logic;
SIGNAL \IROUT[4]~output_o\ : std_logic;
SIGNAL \IROUT[3]~output_o\ : std_logic;
SIGNAL \IROUT[2]~output_o\ : std_logic;
SIGNAL \IROUT[1]~output_o\ : std_logic;
SIGNAL \IROUT[0]~output_o\ : std_logic;
SIGNAL \MAROUT[7]~output_o\ : std_logic;
SIGNAL \MAROUT[6]~output_o\ : std_logic;
SIGNAL \MAROUT[5]~output_o\ : std_logic;
SIGNAL \MAROUT[4]~output_o\ : std_logic;
SIGNAL \MAROUT[3]~output_o\ : std_logic;
SIGNAL \MAROUT[2]~output_o\ : std_logic;
SIGNAL \MAROUT[1]~output_o\ : std_logic;
SIGNAL \MAROUT[0]~output_o\ : std_logic;
SIGNAL \PCOUT[7]~output_o\ : std_logic;
SIGNAL \PCOUT[6]~output_o\ : std_logic;
SIGNAL \PCOUT[5]~output_o\ : std_logic;
SIGNAL \PCOUT[4]~output_o\ : std_logic;
SIGNAL \PCOUT[3]~output_o\ : std_logic;
SIGNAL \PCOUT[2]~output_o\ : std_logic;
SIGNAL \PCOUT[1]~output_o\ : std_logic;
SIGNAL \PCOUT[0]~output_o\ : std_logic;
SIGNAL \RAMIN[15]~output_o\ : std_logic;
SIGNAL \RAMIN[14]~output_o\ : std_logic;
SIGNAL \RAMIN[13]~output_o\ : std_logic;
SIGNAL \RAMIN[12]~output_o\ : std_logic;
SIGNAL \RAMIN[11]~output_o\ : std_logic;
SIGNAL \RAMIN[10]~output_o\ : std_logic;
SIGNAL \RAMIN[9]~output_o\ : std_logic;
SIGNAL \RAMIN[8]~output_o\ : std_logic;
SIGNAL \RAMIN[7]~output_o\ : std_logic;
SIGNAL \RAMIN[6]~output_o\ : std_logic;
SIGNAL \RAMIN[5]~output_o\ : std_logic;
SIGNAL \RAMIN[4]~output_o\ : std_logic;
SIGNAL \RAMIN[3]~output_o\ : std_logic;
SIGNAL \RAMIN[2]~output_o\ : std_logic;
SIGNAL \RAMIN[1]~output_o\ : std_logic;
SIGNAL \RAMIN[0]~output_o\ : std_logic;
SIGNAL \RAMOUT[15]~output_o\ : std_logic;
SIGNAL \RAMOUT[14]~output_o\ : std_logic;
SIGNAL \RAMOUT[13]~output_o\ : std_logic;
SIGNAL \RAMOUT[12]~output_o\ : std_logic;
SIGNAL \RAMOUT[11]~output_o\ : std_logic;
SIGNAL \RAMOUT[10]~output_o\ : std_logic;
SIGNAL \RAMOUT[9]~output_o\ : std_logic;
SIGNAL \RAMOUT[8]~output_o\ : std_logic;
SIGNAL \RAMOUT[7]~output_o\ : std_logic;
SIGNAL \RAMOUT[6]~output_o\ : std_logic;
SIGNAL \RAMOUT[5]~output_o\ : std_logic;
SIGNAL \RAMOUT[4]~output_o\ : std_logic;
SIGNAL \RAMOUT[3]~output_o\ : std_logic;
SIGNAL \RAMOUT[2]~output_o\ : std_logic;
SIGNAL \RAMOUT[1]~output_o\ : std_logic;
SIGNAL \RAMOUT[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clkMBR~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst6|Add0~10\ : std_logic;
SIGNAL \inst6|Add0~5_sumout\ : std_logic;
SIGNAL \inst6|Add0~6\ : std_logic;
SIGNAL \inst6|Add0~1_sumout\ : std_logic;
SIGNAL \inst6|CARout[0]~0_combout\ : std_logic;
SIGNAL \inst6|CARout[0]~1_combout\ : std_logic;
SIGNAL \inst6|CARout[0]~2_combout\ : std_logic;
SIGNAL \inst3|Equal9~0_combout\ : std_logic;
SIGNAL \inst3|Equal9~1_combout\ : std_logic;
SIGNAL \inst3|Equal9~2_combout\ : std_logic;
SIGNAL \inst3|Equal9~3_combout\ : std_logic;
SIGNAL \inst3|ACC~0_combout\ : std_logic;
SIGNAL \inst3|Add2~67\ : std_logic;
SIGNAL \inst3|Add2~61_sumout\ : std_logic;
SIGNAL \inst3|Add2~65_sumout\ : std_logic;
SIGNAL \inst3|Add4~70_cout\ : std_logic;
SIGNAL \inst3|Add4~66\ : std_logic;
SIGNAL \inst3|Add4~62\ : std_logic;
SIGNAL \inst3|Add4~57_sumout\ : std_logic;
SIGNAL \inst3|Add4~61_sumout\ : std_logic;
SIGNAL \inst3|Add4~65_sumout\ : std_logic;
SIGNAL \inst3|Add6~70_cout\ : std_logic;
SIGNAL \inst3|Add6~66\ : std_logic;
SIGNAL \inst3|Add6~62\ : std_logic;
SIGNAL \inst3|Add6~58\ : std_logic;
SIGNAL \inst3|Add6~53_sumout\ : std_logic;
SIGNAL \inst3|Add6~57_sumout\ : std_logic;
SIGNAL \inst3|Add6~61_sumout\ : std_logic;
SIGNAL \inst3|Add6~65_sumout\ : std_logic;
SIGNAL \inst3|Add8~70_cout\ : std_logic;
SIGNAL \inst3|Add8~66\ : std_logic;
SIGNAL \inst3|Add8~62\ : std_logic;
SIGNAL \inst3|Add8~58\ : std_logic;
SIGNAL \inst3|Add8~54\ : std_logic;
SIGNAL \inst3|Add8~49_sumout\ : std_logic;
SIGNAL \inst3|Add8~53_sumout\ : std_logic;
SIGNAL \inst3|Add8~57_sumout\ : std_logic;
SIGNAL \inst3|Add8~61_sumout\ : std_logic;
SIGNAL \inst3|Add8~65_sumout\ : std_logic;
SIGNAL \inst3|Add10~70_cout\ : std_logic;
SIGNAL \inst3|Add10~66\ : std_logic;
SIGNAL \inst3|Add10~62\ : std_logic;
SIGNAL \inst3|Add10~58\ : std_logic;
SIGNAL \inst3|Add10~54\ : std_logic;
SIGNAL \inst3|Add10~50\ : std_logic;
SIGNAL \inst3|Add10~45_sumout\ : std_logic;
SIGNAL \inst3|Add10~49_sumout\ : std_logic;
SIGNAL \inst3|Add10~53_sumout\ : std_logic;
SIGNAL \inst3|Add10~57_sumout\ : std_logic;
SIGNAL \inst3|Add10~61_sumout\ : std_logic;
SIGNAL \inst3|Add10~65_sumout\ : std_logic;
SIGNAL \inst3|Add12~70_cout\ : std_logic;
SIGNAL \inst3|Add12~66\ : std_logic;
SIGNAL \inst3|Add12~62\ : std_logic;
SIGNAL \inst3|Add12~58\ : std_logic;
SIGNAL \inst3|Add12~54\ : std_logic;
SIGNAL \inst3|Add12~50\ : std_logic;
SIGNAL \inst3|Add12~46\ : std_logic;
SIGNAL \inst3|Add12~41_sumout\ : std_logic;
SIGNAL \inst3|Add12~45_sumout\ : std_logic;
SIGNAL \inst3|Add12~49_sumout\ : std_logic;
SIGNAL \inst3|Add12~53_sumout\ : std_logic;
SIGNAL \inst3|Add12~57_sumout\ : std_logic;
SIGNAL \inst3|Add12~61_sumout\ : std_logic;
SIGNAL \inst3|Add12~65_sumout\ : std_logic;
SIGNAL \inst3|Add14~70_cout\ : std_logic;
SIGNAL \inst3|Add14~66\ : std_logic;
SIGNAL \inst3|Add14~62\ : std_logic;
SIGNAL \inst3|Add14~58\ : std_logic;
SIGNAL \inst3|Add14~54\ : std_logic;
SIGNAL \inst3|Add14~50\ : std_logic;
SIGNAL \inst3|Add14~46\ : std_logic;
SIGNAL \inst3|Add14~42\ : std_logic;
SIGNAL \inst3|Add14~37_sumout\ : std_logic;
SIGNAL \inst3|Add14~41_sumout\ : std_logic;
SIGNAL \inst3|Add14~45_sumout\ : std_logic;
SIGNAL \inst3|Add14~49_sumout\ : std_logic;
SIGNAL \inst3|Add14~53_sumout\ : std_logic;
SIGNAL \inst3|Add14~57_sumout\ : std_logic;
SIGNAL \inst3|Add14~61_sumout\ : std_logic;
SIGNAL \inst3|Add14~65_sumout\ : std_logic;
SIGNAL \inst3|Add16~70_cout\ : std_logic;
SIGNAL \inst3|Add16~66\ : std_logic;
SIGNAL \inst3|Add16~62\ : std_logic;
SIGNAL \inst3|Add16~58\ : std_logic;
SIGNAL \inst3|Add16~54\ : std_logic;
SIGNAL \inst3|Add16~50\ : std_logic;
SIGNAL \inst3|Add16~46\ : std_logic;
SIGNAL \inst3|Add16~42\ : std_logic;
SIGNAL \inst3|Add16~38\ : std_logic;
SIGNAL \inst3|Add16~33_sumout\ : std_logic;
SIGNAL \inst3|Add16~37_sumout\ : std_logic;
SIGNAL \inst3|Add16~41_sumout\ : std_logic;
SIGNAL \inst3|Add16~45_sumout\ : std_logic;
SIGNAL \inst3|Add16~49_sumout\ : std_logic;
SIGNAL \inst3|Add16~53_sumout\ : std_logic;
SIGNAL \inst3|Add16~57_sumout\ : std_logic;
SIGNAL \inst3|Add16~61_sumout\ : std_logic;
SIGNAL \inst3|Add16~65_sumout\ : std_logic;
SIGNAL \inst3|Add18~70_cout\ : std_logic;
SIGNAL \inst3|Add18~66\ : std_logic;
SIGNAL \inst3|Add18~62\ : std_logic;
SIGNAL \inst3|Add18~58\ : std_logic;
SIGNAL \inst3|Add18~54\ : std_logic;
SIGNAL \inst3|Add18~50\ : std_logic;
SIGNAL \inst3|Add18~46\ : std_logic;
SIGNAL \inst3|Add18~42\ : std_logic;
SIGNAL \inst3|Add18~38\ : std_logic;
SIGNAL \inst3|Add18~34\ : std_logic;
SIGNAL \inst3|Add18~29_sumout\ : std_logic;
SIGNAL \inst3|Add18~33_sumout\ : std_logic;
SIGNAL \inst3|Add18~37_sumout\ : std_logic;
SIGNAL \inst3|Add18~41_sumout\ : std_logic;
SIGNAL \inst3|Add18~45_sumout\ : std_logic;
SIGNAL \inst3|Add18~49_sumout\ : std_logic;
SIGNAL \inst3|Add18~53_sumout\ : std_logic;
SIGNAL \inst3|Add18~57_sumout\ : std_logic;
SIGNAL \inst3|Add18~61_sumout\ : std_logic;
SIGNAL \inst3|Add18~65_sumout\ : std_logic;
SIGNAL \inst3|Add20~70_cout\ : std_logic;
SIGNAL \inst3|Add20~66\ : std_logic;
SIGNAL \inst3|Add20~62\ : std_logic;
SIGNAL \inst3|Add20~58\ : std_logic;
SIGNAL \inst3|Add20~54\ : std_logic;
SIGNAL \inst3|Add20~50\ : std_logic;
SIGNAL \inst3|Add20~46\ : std_logic;
SIGNAL \inst3|Add20~42\ : std_logic;
SIGNAL \inst3|Add20~38\ : std_logic;
SIGNAL \inst3|Add20~34\ : std_logic;
SIGNAL \inst3|Add20~30\ : std_logic;
SIGNAL \inst3|Add20~25_sumout\ : std_logic;
SIGNAL \inst3|Add20~29_sumout\ : std_logic;
SIGNAL \inst3|Add20~33_sumout\ : std_logic;
SIGNAL \inst3|Add20~37_sumout\ : std_logic;
SIGNAL \inst3|Add20~41_sumout\ : std_logic;
SIGNAL \inst3|Add20~45_sumout\ : std_logic;
SIGNAL \inst3|Add20~49_sumout\ : std_logic;
SIGNAL \inst3|Add20~53_sumout\ : std_logic;
SIGNAL \inst3|Add20~57_sumout\ : std_logic;
SIGNAL \inst3|Add20~61_sumout\ : std_logic;
SIGNAL \inst3|Add20~65_sumout\ : std_logic;
SIGNAL \inst3|Add22~70_cout\ : std_logic;
SIGNAL \inst3|Add22~66\ : std_logic;
SIGNAL \inst3|Add22~62\ : std_logic;
SIGNAL \inst3|Add22~58\ : std_logic;
SIGNAL \inst3|Add22~54\ : std_logic;
SIGNAL \inst3|Add22~50\ : std_logic;
SIGNAL \inst3|Add22~46\ : std_logic;
SIGNAL \inst3|Add22~42\ : std_logic;
SIGNAL \inst3|Add22~38\ : std_logic;
SIGNAL \inst3|Add22~34\ : std_logic;
SIGNAL \inst3|Add22~30\ : std_logic;
SIGNAL \inst3|Add22~26\ : std_logic;
SIGNAL \inst3|Add22~21_sumout\ : std_logic;
SIGNAL \inst3|Add22~25_sumout\ : std_logic;
SIGNAL \inst3|Add22~29_sumout\ : std_logic;
SIGNAL \inst3|Add22~33_sumout\ : std_logic;
SIGNAL \inst3|Add22~37_sumout\ : std_logic;
SIGNAL \inst3|Add22~41_sumout\ : std_logic;
SIGNAL \inst3|Add22~45_sumout\ : std_logic;
SIGNAL \inst3|Add22~49_sumout\ : std_logic;
SIGNAL \inst3|Add22~53_sumout\ : std_logic;
SIGNAL \inst3|Add22~57_sumout\ : std_logic;
SIGNAL \inst3|Add22~61_sumout\ : std_logic;
SIGNAL \inst3|Add22~65_sumout\ : std_logic;
SIGNAL \inst3|Add24~70_cout\ : std_logic;
SIGNAL \inst3|Add24~66\ : std_logic;
SIGNAL \inst3|Add24~62\ : std_logic;
SIGNAL \inst3|Add24~58\ : std_logic;
SIGNAL \inst3|Add24~54\ : std_logic;
SIGNAL \inst3|Add24~50\ : std_logic;
SIGNAL \inst3|Add24~46\ : std_logic;
SIGNAL \inst3|Add24~42\ : std_logic;
SIGNAL \inst3|Add24~38\ : std_logic;
SIGNAL \inst3|Add24~34\ : std_logic;
SIGNAL \inst3|Add24~30\ : std_logic;
SIGNAL \inst3|Add24~26\ : std_logic;
SIGNAL \inst3|Add24~22\ : std_logic;
SIGNAL \inst3|Add24~17_sumout\ : std_logic;
SIGNAL \inst3|Add24~21_sumout\ : std_logic;
SIGNAL \inst3|Add24~25_sumout\ : std_logic;
SIGNAL \inst3|Add24~29_sumout\ : std_logic;
SIGNAL \inst3|Add24~33_sumout\ : std_logic;
SIGNAL \inst3|Add24~37_sumout\ : std_logic;
SIGNAL \inst3|Add24~41_sumout\ : std_logic;
SIGNAL \inst3|Add24~45_sumout\ : std_logic;
SIGNAL \inst3|Add24~49_sumout\ : std_logic;
SIGNAL \inst3|Add24~53_sumout\ : std_logic;
SIGNAL \inst3|Add24~57_sumout\ : std_logic;
SIGNAL \inst3|Add24~61_sumout\ : std_logic;
SIGNAL \inst3|Add24~65_sumout\ : std_logic;
SIGNAL \inst3|Add26~70_cout\ : std_logic;
SIGNAL \inst3|Add26~66\ : std_logic;
SIGNAL \inst3|Add26~62\ : std_logic;
SIGNAL \inst3|Add26~58\ : std_logic;
SIGNAL \inst3|Add26~54\ : std_logic;
SIGNAL \inst3|Add26~50\ : std_logic;
SIGNAL \inst3|Add26~46\ : std_logic;
SIGNAL \inst3|Add26~42\ : std_logic;
SIGNAL \inst3|Add26~38\ : std_logic;
SIGNAL \inst3|Add26~34\ : std_logic;
SIGNAL \inst3|Add26~30\ : std_logic;
SIGNAL \inst3|Add26~26\ : std_logic;
SIGNAL \inst3|Add26~22\ : std_logic;
SIGNAL \inst3|Add26~18\ : std_logic;
SIGNAL \inst3|Add26~13_sumout\ : std_logic;
SIGNAL \inst3|Add26~17_sumout\ : std_logic;
SIGNAL \inst3|Add26~21_sumout\ : std_logic;
SIGNAL \inst3|Add26~25_sumout\ : std_logic;
SIGNAL \inst3|Add26~29_sumout\ : std_logic;
SIGNAL \inst3|Add26~33_sumout\ : std_logic;
SIGNAL \inst3|Add26~37_sumout\ : std_logic;
SIGNAL \inst3|Add26~41_sumout\ : std_logic;
SIGNAL \inst3|Add26~45_sumout\ : std_logic;
SIGNAL \inst3|Add26~49_sumout\ : std_logic;
SIGNAL \inst3|Add26~53_sumout\ : std_logic;
SIGNAL \inst3|Add26~57_sumout\ : std_logic;
SIGNAL \inst3|Add26~61_sumout\ : std_logic;
SIGNAL \inst3|Add26~65_sumout\ : std_logic;
SIGNAL \inst3|Add28~70_cout\ : std_logic;
SIGNAL \inst3|Add28~66\ : std_logic;
SIGNAL \inst3|Add28~62\ : std_logic;
SIGNAL \inst3|Add28~58\ : std_logic;
SIGNAL \inst3|Add28~54\ : std_logic;
SIGNAL \inst3|Add28~50\ : std_logic;
SIGNAL \inst3|Add28~46\ : std_logic;
SIGNAL \inst3|Add28~42\ : std_logic;
SIGNAL \inst3|Add28~38\ : std_logic;
SIGNAL \inst3|Add28~34\ : std_logic;
SIGNAL \inst3|Add28~30\ : std_logic;
SIGNAL \inst3|Add28~26\ : std_logic;
SIGNAL \inst3|Add28~22\ : std_logic;
SIGNAL \inst3|Add28~18\ : std_logic;
SIGNAL \inst3|Add28~14\ : std_logic;
SIGNAL \inst3|Add28~9_sumout\ : std_logic;
SIGNAL \inst3|Add28~13_sumout\ : std_logic;
SIGNAL \inst3|Add28~17_sumout\ : std_logic;
SIGNAL \inst3|Add28~21_sumout\ : std_logic;
SIGNAL \inst3|Add28~25_sumout\ : std_logic;
SIGNAL \inst3|Add28~29_sumout\ : std_logic;
SIGNAL \inst3|Add28~33_sumout\ : std_logic;
SIGNAL \inst3|Add28~37_sumout\ : std_logic;
SIGNAL \inst3|Add28~41_sumout\ : std_logic;
SIGNAL \inst3|Add28~45_sumout\ : std_logic;
SIGNAL \inst3|Add28~49_sumout\ : std_logic;
SIGNAL \inst3|Add28~53_sumout\ : std_logic;
SIGNAL \inst3|Add28~57_sumout\ : std_logic;
SIGNAL \inst3|Add28~61_sumout\ : std_logic;
SIGNAL \inst3|Add28~65_sumout\ : std_logic;
SIGNAL \inst3|Add30~70_cout\ : std_logic;
SIGNAL \inst3|Add30~66\ : std_logic;
SIGNAL \inst3|Add30~62\ : std_logic;
SIGNAL \inst3|Add30~58\ : std_logic;
SIGNAL \inst3|Add30~54\ : std_logic;
SIGNAL \inst3|Add30~50\ : std_logic;
SIGNAL \inst3|Add30~46\ : std_logic;
SIGNAL \inst3|Add30~42\ : std_logic;
SIGNAL \inst3|Add30~38\ : std_logic;
SIGNAL \inst3|Add30~34\ : std_logic;
SIGNAL \inst3|Add30~30\ : std_logic;
SIGNAL \inst3|Add30~26\ : std_logic;
SIGNAL \inst3|Add30~22\ : std_logic;
SIGNAL \inst3|Add30~18\ : std_logic;
SIGNAL \inst3|Add30~14\ : std_logic;
SIGNAL \inst3|Add30~10\ : std_logic;
SIGNAL \inst3|Add30~5_sumout\ : std_logic;
SIGNAL \inst3|Add30~9_sumout\ : std_logic;
SIGNAL \inst3|Add30~13_sumout\ : std_logic;
SIGNAL \inst3|Add30~17_sumout\ : std_logic;
SIGNAL \inst3|Add30~21_sumout\ : std_logic;
SIGNAL \inst3|Add30~25_sumout\ : std_logic;
SIGNAL \inst3|Add30~29_sumout\ : std_logic;
SIGNAL \inst3|Add30~33_sumout\ : std_logic;
SIGNAL \inst3|Add30~37_sumout\ : std_logic;
SIGNAL \inst3|Add30~41_sumout\ : std_logic;
SIGNAL \inst3|Add30~45_sumout\ : std_logic;
SIGNAL \inst3|Add30~49_sumout\ : std_logic;
SIGNAL \inst3|Add30~53_sumout\ : std_logic;
SIGNAL \inst3|Add30~57_sumout\ : std_logic;
SIGNAL \inst3|Add30~61_sumout\ : std_logic;
SIGNAL \inst3|Add30~65_sumout\ : std_logic;
SIGNAL \inst3|Add31~66_cout\ : std_logic;
SIGNAL \inst3|Add31~67\ : std_logic;
SIGNAL \inst3|Add31~62_cout\ : std_logic;
SIGNAL \inst3|Add31~63\ : std_logic;
SIGNAL \inst3|Add31~58_cout\ : std_logic;
SIGNAL \inst3|Add31~59\ : std_logic;
SIGNAL \inst3|Add31~54_cout\ : std_logic;
SIGNAL \inst3|Add31~55\ : std_logic;
SIGNAL \inst3|Add31~50_cout\ : std_logic;
SIGNAL \inst3|Add31~51\ : std_logic;
SIGNAL \inst3|Add31~46_cout\ : std_logic;
SIGNAL \inst3|Add31~47\ : std_logic;
SIGNAL \inst3|Add31~42_cout\ : std_logic;
SIGNAL \inst3|Add31~43\ : std_logic;
SIGNAL \inst3|Add31~38_cout\ : std_logic;
SIGNAL \inst3|Add31~39\ : std_logic;
SIGNAL \inst3|Add31~34_cout\ : std_logic;
SIGNAL \inst3|Add31~35\ : std_logic;
SIGNAL \inst3|Add31~30_cout\ : std_logic;
SIGNAL \inst3|Add31~31\ : std_logic;
SIGNAL \inst3|Add31~26_cout\ : std_logic;
SIGNAL \inst3|Add31~27\ : std_logic;
SIGNAL \inst3|Add31~22_cout\ : std_logic;
SIGNAL \inst3|Add31~23\ : std_logic;
SIGNAL \inst3|Add31~18_cout\ : std_logic;
SIGNAL \inst3|Add31~19\ : std_logic;
SIGNAL \inst3|Add31~14_cout\ : std_logic;
SIGNAL \inst3|Add31~15\ : std_logic;
SIGNAL \inst3|Add31~10_cout\ : std_logic;
SIGNAL \inst3|Add31~11\ : std_logic;
SIGNAL \inst3|Add31~6_cout\ : std_logic;
SIGNAL \inst3|Add31~7\ : std_logic;
SIGNAL \inst3|Add31~1_sumout\ : std_logic;
SIGNAL \inst3|Add32~66_cout\ : std_logic;
SIGNAL \inst3|Add32~62_cout\ : std_logic;
SIGNAL \inst3|Add32~58_cout\ : std_logic;
SIGNAL \inst3|Add32~54_cout\ : std_logic;
SIGNAL \inst3|Add32~50_cout\ : std_logic;
SIGNAL \inst3|Add32~46_cout\ : std_logic;
SIGNAL \inst3|Add32~42_cout\ : std_logic;
SIGNAL \inst3|Add32~38_cout\ : std_logic;
SIGNAL \inst3|Add32~34_cout\ : std_logic;
SIGNAL \inst3|Add32~30_cout\ : std_logic;
SIGNAL \inst3|Add32~26_cout\ : std_logic;
SIGNAL \inst3|Add32~22_cout\ : std_logic;
SIGNAL \inst3|Add32~18_cout\ : std_logic;
SIGNAL \inst3|Add32~14_cout\ : std_logic;
SIGNAL \inst3|Add32~10_cout\ : std_logic;
SIGNAL \inst3|Add32~6_cout\ : std_logic;
SIGNAL \inst3|Add32~1_sumout\ : std_logic;
SIGNAL \inst3|Mult0~8_resulta\ : std_logic;
SIGNAL \inst3|ACC[3]~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|ACC[3]~2_combout\ : std_logic;
SIGNAL \inst3|ACC~3_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Add0~66_cout\ : std_logic;
SIGNAL \inst3|Add0~61_sumout\ : std_logic;
SIGNAL \inst3|ACC~4_combout\ : std_logic;
SIGNAL \inst3|ACC~53_combout\ : std_logic;
SIGNAL \inst3|ACC~55_combout\ : std_logic;
SIGNAL \inst3|ACC~56_combout\ : std_logic;
SIGNAL \inst3|ACC~54_combout\ : std_logic;
SIGNAL \inst|temp~15_combout\ : std_logic;
SIGNAL \inst|MBR_RAM[15]~0_combout\ : std_logic;
SIGNAL \inst4|Add0~29_sumout\ : std_logic;
SIGNAL \inst4|PCout[4]~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~3_combout\ : std_logic;
SIGNAL \inst4|PCout[4]~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst4|PCout[4]~2_combout\ : std_logic;
SIGNAL \inst7|MARout[1]~0_combout\ : std_logic;
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
SIGNAL \inst3|Add2~66\ : std_logic;
SIGNAL \inst3|Add2~63\ : std_logic;
SIGNAL \inst3|Add2~57_sumout\ : std_logic;
SIGNAL \inst3|Add4~58\ : std_logic;
SIGNAL \inst3|Add4~53_sumout\ : std_logic;
SIGNAL \inst3|Add6~54\ : std_logic;
SIGNAL \inst3|Add6~49_sumout\ : std_logic;
SIGNAL \inst3|Add8~50\ : std_logic;
SIGNAL \inst3|Add8~45_sumout\ : std_logic;
SIGNAL \inst3|Add10~46\ : std_logic;
SIGNAL \inst3|Add10~41_sumout\ : std_logic;
SIGNAL \inst3|Add12~42\ : std_logic;
SIGNAL \inst3|Add12~37_sumout\ : std_logic;
SIGNAL \inst3|Add14~38\ : std_logic;
SIGNAL \inst3|Add14~33_sumout\ : std_logic;
SIGNAL \inst3|Add16~34\ : std_logic;
SIGNAL \inst3|Add16~29_sumout\ : std_logic;
SIGNAL \inst3|Add18~30\ : std_logic;
SIGNAL \inst3|Add18~25_sumout\ : std_logic;
SIGNAL \inst3|Add20~26\ : std_logic;
SIGNAL \inst3|Add20~21_sumout\ : std_logic;
SIGNAL \inst3|Add22~22\ : std_logic;
SIGNAL \inst3|Add22~17_sumout\ : std_logic;
SIGNAL \inst3|Add24~18\ : std_logic;
SIGNAL \inst3|Add24~13_sumout\ : std_logic;
SIGNAL \inst3|Add26~14\ : std_logic;
SIGNAL \inst3|Add26~9_sumout\ : std_logic;
SIGNAL \inst3|Add28~10\ : std_logic;
SIGNAL \inst3|Add28~5_sumout\ : std_logic;
SIGNAL \inst3|Add30~6\ : std_logic;
SIGNAL \inst3|Add30~1_sumout\ : std_logic;
SIGNAL \inst3|ACC[3]~8_combout\ : std_logic;
SIGNAL \inst3|Add0~62\ : std_logic;
SIGNAL \inst3|Add0~57_sumout\ : std_logic;
SIGNAL \inst3|ACC~50_combout\ : std_logic;
SIGNAL \inst3|Mult0~9\ : std_logic;
SIGNAL \inst3|ACC[3]~6_combout\ : std_logic;
SIGNAL \inst3|ACC~51_combout\ : std_logic;
SIGNAL \inst3|ACC~52_combout\ : std_logic;
SIGNAL \inst3|ACC[3]~57_combout\ : std_logic;
SIGNAL \inst3|ACC[3]~12_combout\ : std_logic;
SIGNAL \inst3|ACC[3]~13_combout\ : std_logic;
SIGNAL \inst|temp~14_combout\ : std_logic;
SIGNAL \inst3|Add2~62\ : std_logic;
SIGNAL \inst3|Add2~59\ : std_logic;
SIGNAL \inst3|Add2~53_sumout\ : std_logic;
SIGNAL \inst3|Add4~54\ : std_logic;
SIGNAL \inst3|Add4~49_sumout\ : std_logic;
SIGNAL \inst3|Add6~50\ : std_logic;
SIGNAL \inst3|Add6~45_sumout\ : std_logic;
SIGNAL \inst3|Add8~46\ : std_logic;
SIGNAL \inst3|Add8~41_sumout\ : std_logic;
SIGNAL \inst3|Add10~42\ : std_logic;
SIGNAL \inst3|Add10~37_sumout\ : std_logic;
SIGNAL \inst3|Add12~38\ : std_logic;
SIGNAL \inst3|Add12~33_sumout\ : std_logic;
SIGNAL \inst3|Add14~34\ : std_logic;
SIGNAL \inst3|Add14~29_sumout\ : std_logic;
SIGNAL \inst3|Add16~30\ : std_logic;
SIGNAL \inst3|Add16~25_sumout\ : std_logic;
SIGNAL \inst3|Add18~26\ : std_logic;
SIGNAL \inst3|Add18~21_sumout\ : std_logic;
SIGNAL \inst3|Add20~22\ : std_logic;
SIGNAL \inst3|Add20~17_sumout\ : std_logic;
SIGNAL \inst3|Add22~18\ : std_logic;
SIGNAL \inst3|Add22~13_sumout\ : std_logic;
SIGNAL \inst3|Add24~14\ : std_logic;
SIGNAL \inst3|Add24~9_sumout\ : std_logic;
SIGNAL \inst3|Add26~10\ : std_logic;
SIGNAL \inst3|Add26~5_sumout\ : std_logic;
SIGNAL \inst3|Add28~6\ : std_logic;
SIGNAL \inst3|Add28~1_sumout\ : std_logic;
SIGNAL \inst3|Add0~58\ : std_logic;
SIGNAL \inst3|Add0~53_sumout\ : std_logic;
SIGNAL \inst3|ACC~47_combout\ : std_logic;
SIGNAL \inst3|Mult0~10\ : std_logic;
SIGNAL \inst3|ACC~48_combout\ : std_logic;
SIGNAL \inst3|ACC~49_combout\ : std_logic;
SIGNAL \inst|temp~13_combout\ : std_logic;
SIGNAL \inst3|Add2~58\ : std_logic;
SIGNAL \inst3|Add2~55\ : std_logic;
SIGNAL \inst3|Add2~49_sumout\ : std_logic;
SIGNAL \inst3|Add4~50\ : std_logic;
SIGNAL \inst3|Add4~45_sumout\ : std_logic;
SIGNAL \inst3|Add6~46\ : std_logic;
SIGNAL \inst3|Add6~41_sumout\ : std_logic;
SIGNAL \inst3|Add8~42\ : std_logic;
SIGNAL \inst3|Add8~37_sumout\ : std_logic;
SIGNAL \inst3|Add10~38\ : std_logic;
SIGNAL \inst3|Add10~33_sumout\ : std_logic;
SIGNAL \inst3|Add12~34\ : std_logic;
SIGNAL \inst3|Add12~29_sumout\ : std_logic;
SIGNAL \inst3|Add14~30\ : std_logic;
SIGNAL \inst3|Add14~25_sumout\ : std_logic;
SIGNAL \inst3|Add16~26\ : std_logic;
SIGNAL \inst3|Add16~21_sumout\ : std_logic;
SIGNAL \inst3|Add18~22\ : std_logic;
SIGNAL \inst3|Add18~17_sumout\ : std_logic;
SIGNAL \inst3|Add20~18\ : std_logic;
SIGNAL \inst3|Add20~13_sumout\ : std_logic;
SIGNAL \inst3|Add22~14\ : std_logic;
SIGNAL \inst3|Add22~9_sumout\ : std_logic;
SIGNAL \inst3|Add24~10\ : std_logic;
SIGNAL \inst3|Add24~5_sumout\ : std_logic;
SIGNAL \inst3|Add26~6\ : std_logic;
SIGNAL \inst3|Add26~1_sumout\ : std_logic;
SIGNAL \inst3|Add0~54\ : std_logic;
SIGNAL \inst3|Add0~49_sumout\ : std_logic;
SIGNAL \inst3|ACC~44_combout\ : std_logic;
SIGNAL \inst3|Mult0~11\ : std_logic;
SIGNAL \inst3|ACC~45_combout\ : std_logic;
SIGNAL \inst3|ACC~46_combout\ : std_logic;
SIGNAL \inst|temp~12_combout\ : std_logic;
SIGNAL \inst3|Add2~54\ : std_logic;
SIGNAL \inst3|Add2~51\ : std_logic;
SIGNAL \inst3|Add2~45_sumout\ : std_logic;
SIGNAL \inst3|Add4~46\ : std_logic;
SIGNAL \inst3|Add4~41_sumout\ : std_logic;
SIGNAL \inst3|Add6~42\ : std_logic;
SIGNAL \inst3|Add6~37_sumout\ : std_logic;
SIGNAL \inst3|Add8~38\ : std_logic;
SIGNAL \inst3|Add8~33_sumout\ : std_logic;
SIGNAL \inst3|Add10~34\ : std_logic;
SIGNAL \inst3|Add10~29_sumout\ : std_logic;
SIGNAL \inst3|Add12~30\ : std_logic;
SIGNAL \inst3|Add12~25_sumout\ : std_logic;
SIGNAL \inst3|Add14~26\ : std_logic;
SIGNAL \inst3|Add14~21_sumout\ : std_logic;
SIGNAL \inst3|Add16~22\ : std_logic;
SIGNAL \inst3|Add16~17_sumout\ : std_logic;
SIGNAL \inst3|Add18~18\ : std_logic;
SIGNAL \inst3|Add18~13_sumout\ : std_logic;
SIGNAL \inst3|Add20~14\ : std_logic;
SIGNAL \inst3|Add20~9_sumout\ : std_logic;
SIGNAL \inst3|Add22~10\ : std_logic;
SIGNAL \inst3|Add22~5_sumout\ : std_logic;
SIGNAL \inst3|Add24~6\ : std_logic;
SIGNAL \inst3|Add24~1_sumout\ : std_logic;
SIGNAL \inst3|Add0~50\ : std_logic;
SIGNAL \inst3|Add0~45_sumout\ : std_logic;
SIGNAL \inst3|ACC~41_combout\ : std_logic;
SIGNAL \inst3|Mult0~12\ : std_logic;
SIGNAL \inst3|ACC~42_combout\ : std_logic;
SIGNAL \inst3|ACC~43_combout\ : std_logic;
SIGNAL \inst|temp~11_combout\ : std_logic;
SIGNAL \inst3|Add2~50\ : std_logic;
SIGNAL \inst3|Add2~47\ : std_logic;
SIGNAL \inst3|Add2~41_sumout\ : std_logic;
SIGNAL \inst3|Add4~42\ : std_logic;
SIGNAL \inst3|Add4~37_sumout\ : std_logic;
SIGNAL \inst3|Add6~38\ : std_logic;
SIGNAL \inst3|Add6~33_sumout\ : std_logic;
SIGNAL \inst3|Add8~34\ : std_logic;
SIGNAL \inst3|Add8~29_sumout\ : std_logic;
SIGNAL \inst3|Add10~30\ : std_logic;
SIGNAL \inst3|Add10~25_sumout\ : std_logic;
SIGNAL \inst3|Add12~26\ : std_logic;
SIGNAL \inst3|Add12~21_sumout\ : std_logic;
SIGNAL \inst3|Add14~22\ : std_logic;
SIGNAL \inst3|Add14~17_sumout\ : std_logic;
SIGNAL \inst3|Add16~18\ : std_logic;
SIGNAL \inst3|Add16~13_sumout\ : std_logic;
SIGNAL \inst3|Add18~14\ : std_logic;
SIGNAL \inst3|Add18~9_sumout\ : std_logic;
SIGNAL \inst3|Add20~10\ : std_logic;
SIGNAL \inst3|Add20~5_sumout\ : std_logic;
SIGNAL \inst3|Add22~6\ : std_logic;
SIGNAL \inst3|Add22~1_sumout\ : std_logic;
SIGNAL \inst3|Add0~46\ : std_logic;
SIGNAL \inst3|Add0~41_sumout\ : std_logic;
SIGNAL \inst3|ACC~38_combout\ : std_logic;
SIGNAL \inst3|Mult0~13\ : std_logic;
SIGNAL \inst3|ACC~39_combout\ : std_logic;
SIGNAL \inst3|ACC~40_combout\ : std_logic;
SIGNAL \inst|temp~10_combout\ : std_logic;
SIGNAL \inst3|Add2~46\ : std_logic;
SIGNAL \inst3|Add2~43\ : std_logic;
SIGNAL \inst3|Add2~37_sumout\ : std_logic;
SIGNAL \inst3|Add4~38\ : std_logic;
SIGNAL \inst3|Add4~33_sumout\ : std_logic;
SIGNAL \inst3|Add6~34\ : std_logic;
SIGNAL \inst3|Add6~29_sumout\ : std_logic;
SIGNAL \inst3|Add8~30\ : std_logic;
SIGNAL \inst3|Add8~25_sumout\ : std_logic;
SIGNAL \inst3|Add10~26\ : std_logic;
SIGNAL \inst3|Add10~21_sumout\ : std_logic;
SIGNAL \inst3|Add12~22\ : std_logic;
SIGNAL \inst3|Add12~17_sumout\ : std_logic;
SIGNAL \inst3|Add14~18\ : std_logic;
SIGNAL \inst3|Add14~13_sumout\ : std_logic;
SIGNAL \inst3|Add16~14\ : std_logic;
SIGNAL \inst3|Add16~9_sumout\ : std_logic;
SIGNAL \inst3|Add18~10\ : std_logic;
SIGNAL \inst3|Add18~5_sumout\ : std_logic;
SIGNAL \inst3|Add20~6\ : std_logic;
SIGNAL \inst3|Add20~1_sumout\ : std_logic;
SIGNAL \inst3|Add0~42\ : std_logic;
SIGNAL \inst3|Add0~37_sumout\ : std_logic;
SIGNAL \inst3|ACC~35_combout\ : std_logic;
SIGNAL \inst3|Mult0~14\ : std_logic;
SIGNAL \inst3|ACC~36_combout\ : std_logic;
SIGNAL \inst3|ACC~37_combout\ : std_logic;
SIGNAL \inst|temp~9_combout\ : std_logic;
SIGNAL \inst3|Add2~42\ : std_logic;
SIGNAL \inst3|Add2~39\ : std_logic;
SIGNAL \inst3|Add2~33_sumout\ : std_logic;
SIGNAL \inst3|Add4~34\ : std_logic;
SIGNAL \inst3|Add4~29_sumout\ : std_logic;
SIGNAL \inst3|Add6~30\ : std_logic;
SIGNAL \inst3|Add6~25_sumout\ : std_logic;
SIGNAL \inst3|Add8~26\ : std_logic;
SIGNAL \inst3|Add8~21_sumout\ : std_logic;
SIGNAL \inst3|Add10~22\ : std_logic;
SIGNAL \inst3|Add10~17_sumout\ : std_logic;
SIGNAL \inst3|Add12~18\ : std_logic;
SIGNAL \inst3|Add12~13_sumout\ : std_logic;
SIGNAL \inst3|Add14~14\ : std_logic;
SIGNAL \inst3|Add14~9_sumout\ : std_logic;
SIGNAL \inst3|Add16~10\ : std_logic;
SIGNAL \inst3|Add16~5_sumout\ : std_logic;
SIGNAL \inst3|Add18~6\ : std_logic;
SIGNAL \inst3|Add18~1_sumout\ : std_logic;
SIGNAL \inst3|Add0~38\ : std_logic;
SIGNAL \inst3|Add0~33_sumout\ : std_logic;
SIGNAL \inst3|ACC~32_combout\ : std_logic;
SIGNAL \inst3|Mult0~15\ : std_logic;
SIGNAL \inst3|ACC~33_combout\ : std_logic;
SIGNAL \inst3|ACC~34_combout\ : std_logic;
SIGNAL \inst|temp~8_combout\ : std_logic;
SIGNAL \inst3|Add2~38\ : std_logic;
SIGNAL \inst3|Add2~34\ : std_logic;
SIGNAL \inst3|Add2~35\ : std_logic;
SIGNAL \inst3|Add2~30\ : std_logic;
SIGNAL \inst3|Add2~31\ : std_logic;
SIGNAL \inst3|Add2~26\ : std_logic;
SIGNAL \inst3|Add2~27\ : std_logic;
SIGNAL \inst3|Add2~21_sumout\ : std_logic;
SIGNAL \inst3|Add2~25_sumout\ : std_logic;
SIGNAL \inst3|Add2~29_sumout\ : std_logic;
SIGNAL \inst3|Add4~30\ : std_logic;
SIGNAL \inst3|Add4~26\ : std_logic;
SIGNAL \inst3|Add4~22\ : std_logic;
SIGNAL \inst3|Add4~17_sumout\ : std_logic;
SIGNAL \inst3|Add4~21_sumout\ : std_logic;
SIGNAL \inst3|Add4~25_sumout\ : std_logic;
SIGNAL \inst3|Add6~26\ : std_logic;
SIGNAL \inst3|Add6~22\ : std_logic;
SIGNAL \inst3|Add6~18\ : std_logic;
SIGNAL \inst3|Add6~13_sumout\ : std_logic;
SIGNAL \inst3|Add6~17_sumout\ : std_logic;
SIGNAL \inst3|Add6~21_sumout\ : std_logic;
SIGNAL \inst3|Add8~22\ : std_logic;
SIGNAL \inst3|Add8~18\ : std_logic;
SIGNAL \inst3|Add8~14\ : std_logic;
SIGNAL \inst3|Add8~9_sumout\ : std_logic;
SIGNAL \inst3|Add8~13_sumout\ : std_logic;
SIGNAL \inst3|Add8~17_sumout\ : std_logic;
SIGNAL \inst3|Add10~18\ : std_logic;
SIGNAL \inst3|Add10~14\ : std_logic;
SIGNAL \inst3|Add10~10\ : std_logic;
SIGNAL \inst3|Add10~5_sumout\ : std_logic;
SIGNAL \inst3|Add10~9_sumout\ : std_logic;
SIGNAL \inst3|Add10~13_sumout\ : std_logic;
SIGNAL \inst3|Add12~14\ : std_logic;
SIGNAL \inst3|Add12~10\ : std_logic;
SIGNAL \inst3|Add12~5_sumout\ : std_logic;
SIGNAL \inst3|Add12~9_sumout\ : std_logic;
SIGNAL \inst3|Add14~10\ : std_logic;
SIGNAL \inst3|Add14~5_sumout\ : std_logic;
SIGNAL \inst3|Add16~6\ : std_logic;
SIGNAL \inst3|Add16~1_sumout\ : std_logic;
SIGNAL \inst3|Add0~34\ : std_logic;
SIGNAL \inst3|Add0~29_sumout\ : std_logic;
SIGNAL \inst3|ACC~29_combout\ : std_logic;
SIGNAL \inst3|Mult0~16\ : std_logic;
SIGNAL \inst3|ACC~30_combout\ : std_logic;
SIGNAL \inst3|ACC~31_combout\ : std_logic;
SIGNAL \inst|temp~7_combout\ : std_logic;
SIGNAL \inst6|Add0~30\ : std_logic;
SIGNAL \inst6|Add0~26\ : std_logic;
SIGNAL \inst6|Add0~22\ : std_logic;
SIGNAL \inst6|Add0~18\ : std_logic;
SIGNAL \inst6|Add0~14\ : std_logic;
SIGNAL \inst6|Add0~9_sumout\ : std_logic;
SIGNAL \inst|MBR_OP[5]~0_combout\ : std_logic;
SIGNAL \inst6|Add0~13_sumout\ : std_logic;
SIGNAL \inst|MBR_BR[5]~0_combout\ : std_logic;
SIGNAL \inst3|Add2~22\ : std_logic;
SIGNAL \inst3|Add2~23\ : std_logic;
SIGNAL \inst3|Add2~17_sumout\ : std_logic;
SIGNAL \inst3|Add4~18\ : std_logic;
SIGNAL \inst3|Add4~13_sumout\ : std_logic;
SIGNAL \inst3|Add6~14\ : std_logic;
SIGNAL \inst3|Add6~9_sumout\ : std_logic;
SIGNAL \inst3|Add8~10\ : std_logic;
SIGNAL \inst3|Add8~6\ : std_logic;
SIGNAL \inst3|Add8~1_sumout\ : std_logic;
SIGNAL \inst3|Add0~30\ : std_logic;
SIGNAL \inst3|Add0~26\ : std_logic;
SIGNAL \inst3|Add0~22\ : std_logic;
SIGNAL \inst3|Add0~18\ : std_logic;
SIGNAL \inst3|Add0~13_sumout\ : std_logic;
SIGNAL \inst3|ACC~17_combout\ : std_logic;
SIGNAL \inst3|Mult0~20\ : std_logic;
SIGNAL \inst3|ACC~18_combout\ : std_logic;
SIGNAL \inst3|ACC~19_combout\ : std_logic;
SIGNAL \inst|temp~3_combout\ : std_logic;
SIGNAL \inst3|Add2~18\ : std_logic;
SIGNAL \inst3|Add2~19\ : std_logic;
SIGNAL \inst3|Add2~13_sumout\ : std_logic;
SIGNAL \inst3|Add4~14\ : std_logic;
SIGNAL \inst3|Add4~9_sumout\ : std_logic;
SIGNAL \inst3|Add6~10\ : std_logic;
SIGNAL \inst3|Add6~6\ : std_logic;
SIGNAL \inst3|Add6~1_sumout\ : std_logic;
SIGNAL \inst3|Add0~14\ : std_logic;
SIGNAL \inst3|Add0~9_sumout\ : std_logic;
SIGNAL \inst3|ACC~14_combout\ : std_logic;
SIGNAL \inst3|Mult0~21\ : std_logic;
SIGNAL \inst3|ACC~15_combout\ : std_logic;
SIGNAL \inst3|ACC~16_combout\ : std_logic;
SIGNAL \inst|temp~2_combout\ : std_logic;
SIGNAL \inst3|Add2~14\ : std_logic;
SIGNAL \inst3|Add2~15\ : std_logic;
SIGNAL \inst3|Add2~9_sumout\ : std_logic;
SIGNAL \inst3|Add4~10\ : std_logic;
SIGNAL \inst3|Add4~6\ : std_logic;
SIGNAL \inst3|Add4~1_sumout\ : std_logic;
SIGNAL \inst3|Add0~10\ : std_logic;
SIGNAL \inst3|Add0~5_sumout\ : std_logic;
SIGNAL \inst3|ACC~9_combout\ : std_logic;
SIGNAL \inst3|Mult0~22\ : std_logic;
SIGNAL \inst3|ACC~10_combout\ : std_logic;
SIGNAL \inst3|ACC~11_combout\ : std_logic;
SIGNAL \inst|temp~1_combout\ : std_logic;
SIGNAL \inst3|Add2~10\ : std_logic;
SIGNAL \inst3|Add2~11\ : std_logic;
SIGNAL \inst3|Add2~5_sumout\ : std_logic;
SIGNAL \inst3|Add4~5_sumout\ : std_logic;
SIGNAL \inst3|Add6~5_sumout\ : std_logic;
SIGNAL \inst3|Add8~5_sumout\ : std_logic;
SIGNAL \inst3|Add10~6\ : std_logic;
SIGNAL \inst3|Add10~1_sumout\ : std_logic;
SIGNAL \inst3|Add0~17_sumout\ : std_logic;
SIGNAL \inst3|ACC~20_combout\ : std_logic;
SIGNAL \inst3|Mult0~19\ : std_logic;
SIGNAL \inst3|ACC~21_combout\ : std_logic;
SIGNAL \inst3|ACC~22_combout\ : std_logic;
SIGNAL \inst|temp~4_combout\ : std_logic;
SIGNAL \inst6|Add0~17_sumout\ : std_logic;
SIGNAL \inst3|ACC[3]~7_combout\ : std_logic;
SIGNAL \inst3|Add12~6\ : std_logic;
SIGNAL \inst3|Add12~1_sumout\ : std_logic;
SIGNAL \inst3|Add0~21_sumout\ : std_logic;
SIGNAL \inst3|ACC~23_combout\ : std_logic;
SIGNAL \inst3|Mult0~18\ : std_logic;
SIGNAL \inst3|ACC~24_combout\ : std_logic;
SIGNAL \inst3|ACC~25_combout\ : std_logic;
SIGNAL \inst|temp~5_combout\ : std_logic;
SIGNAL \inst6|Add0~21_sumout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Add14~6\ : std_logic;
SIGNAL \inst3|Add14~1_sumout\ : std_logic;
SIGNAL \inst3|Add0~25_sumout\ : std_logic;
SIGNAL \inst3|ACC~26_combout\ : std_logic;
SIGNAL \inst3|Mult0~17\ : std_logic;
SIGNAL \inst3|ACC~27_combout\ : std_logic;
SIGNAL \inst3|ACC~28_combout\ : std_logic;
SIGNAL \inst|temp~6_combout\ : std_logic;
SIGNAL \inst6|Add0~25_sumout\ : std_logic;
SIGNAL \inst6|Equal3~0_combout\ : std_logic;
SIGNAL \inst6|Add0~29_sumout\ : std_logic;
SIGNAL \inst|temp~0_combout\ : std_logic;
SIGNAL \inst3|Add2~6\ : std_logic;
SIGNAL \inst3|Add2~7\ : std_logic;
SIGNAL \inst3|Add2~1_sumout\ : std_logic;
SIGNAL \inst3|Mult0~23\ : std_logic;
SIGNAL \inst3|Add0~6\ : std_logic;
SIGNAL \inst3|Add0~1_sumout\ : std_logic;
SIGNAL \inst3|ACC~62_combout\ : std_logic;
SIGNAL \inst3|ACC~58_combout\ : std_logic;
SIGNAL \inst3|ACC~5_combout\ : std_logic;
SIGNAL \inst|MBR_OP\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|ACC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|MBR_BR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|srom|rom_block|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst7|MARout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|CARout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|PCout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|sram|ram_block|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|MBR_MAR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|MBR_RAM\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|BRout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_clkMBR~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|ALT_INV_ACC~56_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~55_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~53_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~51_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~50_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~48_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~47_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~45_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~44_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~42_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~41_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~39_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~38_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~36_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~35_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~33_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~32_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~30_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~29_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~27_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~26_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~24_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~23_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~21_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~20_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~18_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~17_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~15_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~14_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC[3]~12_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~10_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~9_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC[3]~8_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC[3]~7_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC[3]~6_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC[3]~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC[3]~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal9~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal9~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal9~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~62_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ACC~58_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~65_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~65_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~65_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~65_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~65_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~65_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~65_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~65_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~65_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~65_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~65_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~65_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~65_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~65_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~65_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add32~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add31~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add30~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add28~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add26~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add24~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add22~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add20~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add18~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add16~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add14~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add12~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add10~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~1_sumout\ : std_logic;
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
SIGNAL \inst3|ALT_INV_Add2~1_sumout\ : std_logic;
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

\inst8|srom|rom_block|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(15) <= \inst8|srom|rom_block|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(14) <= \inst8|srom|rom_block|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(13) <= \inst8|srom|rom_block|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(12) <= \inst8|srom|rom_block|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(26) <= \inst8|srom|rom_block|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(25) <= \inst8|srom|rom_block|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(24) <= \inst8|srom|rom_block|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(23) <= \inst8|srom|rom_block|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(31) <= \inst8|srom|rom_block|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(30) <= \inst8|srom|rom_block|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(29) <= \inst8|srom|rom_block|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(28) <= \inst8|srom|rom_block|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(27) <= \inst8|srom|rom_block|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(22) <= \inst8|srom|rom_block|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(21) <= \inst8|srom|rom_block|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(20) <= \inst8|srom|rom_block|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(19) <= \inst8|srom|rom_block|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(18) <= \inst8|srom|rom_block|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(17) <= \inst8|srom|rom_block|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(16) <= \inst8|srom|rom_block|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(11) <= \inst8|srom|rom_block|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(10) <= \inst8|srom|rom_block|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(9) <= \inst8|srom|rom_block|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(8) <= \inst8|srom|rom_block|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(7) <= \inst8|srom|rom_block|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(6) <= \inst8|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(5) <= \inst8|srom|rom_block|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(4) <= \inst8|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(3) <= \inst8|srom|rom_block|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(2) <= \inst8|srom|rom_block|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(1) <= \inst8|srom|rom_block|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\inst8|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst6|CARout\(7) & \inst6|CARout\(6) & \inst6|CARout\(5) & \inst6|CARout\(4) & \inst6|CARout\(3) & \inst6|CARout\(2) & \inst6|CARout\(1) & \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|q_a\(0) <= \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(15);

\inst9|sram|ram_block|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(15) <= \inst9|sram|ram_block|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(14);

\inst9|sram|ram_block|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(14) <= \inst9|sram|ram_block|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(13);

\inst9|sram|ram_block|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(13) <= \inst9|sram|ram_block|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(12);

\inst9|sram|ram_block|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(12) <= \inst9|sram|ram_block|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(11);

\inst9|sram|ram_block|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(11) <= \inst9|sram|ram_block|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(10);

\inst9|sram|ram_block|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(10) <= \inst9|sram|ram_block|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(9);

\inst9|sram|ram_block|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(9) <= \inst9|sram|ram_block|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(8);

\inst9|sram|ram_block|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(8) <= \inst9|sram|ram_block|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(7);

\inst9|sram|ram_block|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(7) <= \inst9|sram|ram_block|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(6);

\inst9|sram|ram_block|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(6) <= \inst9|sram|ram_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(5);

\inst9|sram|ram_block|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(5) <= \inst9|sram|ram_block|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(4);

\inst9|sram|ram_block|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(4) <= \inst9|sram|ram_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(3);

\inst9|sram|ram_block|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(3) <= \inst9|sram|ram_block|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(2);

\inst9|sram|ram_block|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(2) <= \inst9|sram|ram_block|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(1);

\inst9|sram|ram_block|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(1) <= \inst9|sram|ram_block|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \inst|MBR_RAM\(0);

\inst9|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst7|MARout\(7) & \inst7|MARout\(6) & \inst7|MARout\(5) & \inst7|MARout\(4) & \inst7|MARout\(3) & \inst7|MARout\(2) & \inst7|MARout\(1) & \inst7|MARout\(0));

\inst9|sram|ram_block|auto_generated|q_a\(0) <= \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

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
\ALT_INV_clkMBR~input_o\ <= NOT \clkMBR~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
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
\inst3|ALT_INV_ACC~56_combout\ <= NOT \inst3|ACC~56_combout\;
\inst3|ALT_INV_ACC~55_combout\ <= NOT \inst3|ACC~55_combout\;
\inst6|ALT_INV_Equal3~0_combout\ <= NOT \inst6|Equal3~0_combout\;
\inst3|ALT_INV_Equal0~3_combout\ <= NOT \inst3|Equal0~3_combout\;
\inst|ALT_INV_temp\(0) <= NOT \inst|temp\(0);
\inst|ALT_INV_temp\(1) <= NOT \inst|temp\(1);
\inst|ALT_INV_temp\(2) <= NOT \inst|temp\(2);
\inst|ALT_INV_temp\(3) <= NOT \inst|temp\(3);
\inst|ALT_INV_temp\(4) <= NOT \inst|temp\(4);
\inst|ALT_INV_temp\(5) <= NOT \inst|temp\(5);
\inst|ALT_INV_temp\(6) <= NOT \inst|temp\(6);
\inst|ALT_INV_temp\(7) <= NOT \inst|temp\(7);
\inst|ALT_INV_temp\(8) <= NOT \inst|temp\(8);
\inst|ALT_INV_temp\(9) <= NOT \inst|temp\(9);
\inst|ALT_INV_temp\(10) <= NOT \inst|temp\(10);
\inst|ALT_INV_temp\(11) <= NOT \inst|temp\(11);
\inst|ALT_INV_temp\(12) <= NOT \inst|temp\(12);
\inst|ALT_INV_temp\(13) <= NOT \inst|temp\(13);
\inst|ALT_INV_temp\(14) <= NOT \inst|temp\(14);
\inst|ALT_INV_temp\(15) <= NOT \inst|temp\(15);
\inst3|ALT_INV_Equal0~2_combout\ <= NOT \inst3|Equal0~2_combout\;
\inst3|ALT_INV_LessThan0~3_combout\ <= NOT \inst3|LessThan0~3_combout\;
\inst3|ALT_INV_LessThan0~2_combout\ <= NOT \inst3|LessThan0~2_combout\;
\inst3|ALT_INV_LessThan0~1_combout\ <= NOT \inst3|LessThan0~1_combout\;
\inst3|ALT_INV_LessThan0~0_combout\ <= NOT \inst3|LessThan0~0_combout\;
\inst3|ALT_INV_ACC~53_combout\ <= NOT \inst3|ACC~53_combout\;
\inst3|ALT_INV_ACC~51_combout\ <= NOT \inst3|ACC~51_combout\;
\inst3|ALT_INV_ACC~50_combout\ <= NOT \inst3|ACC~50_combout\;
\inst3|ALT_INV_ACC~48_combout\ <= NOT \inst3|ACC~48_combout\;
\inst3|ALT_INV_ACC~47_combout\ <= NOT \inst3|ACC~47_combout\;
\inst3|ALT_INV_ACC~45_combout\ <= NOT \inst3|ACC~45_combout\;
\inst3|ALT_INV_ACC~44_combout\ <= NOT \inst3|ACC~44_combout\;
\inst3|ALT_INV_ACC~42_combout\ <= NOT \inst3|ACC~42_combout\;
\inst3|ALT_INV_ACC~41_combout\ <= NOT \inst3|ACC~41_combout\;
\inst3|ALT_INV_ACC~39_combout\ <= NOT \inst3|ACC~39_combout\;
\inst3|ALT_INV_ACC~38_combout\ <= NOT \inst3|ACC~38_combout\;
\inst3|ALT_INV_ACC~36_combout\ <= NOT \inst3|ACC~36_combout\;
\inst3|ALT_INV_ACC~35_combout\ <= NOT \inst3|ACC~35_combout\;
\inst3|ALT_INV_ACC~33_combout\ <= NOT \inst3|ACC~33_combout\;
\inst3|ALT_INV_ACC~32_combout\ <= NOT \inst3|ACC~32_combout\;
\inst3|ALT_INV_ACC~30_combout\ <= NOT \inst3|ACC~30_combout\;
\inst3|ALT_INV_ACC~29_combout\ <= NOT \inst3|ACC~29_combout\;
\inst3|ALT_INV_ACC~27_combout\ <= NOT \inst3|ACC~27_combout\;
\inst3|ALT_INV_ACC~26_combout\ <= NOT \inst3|ACC~26_combout\;
\inst3|ALT_INV_ACC~24_combout\ <= NOT \inst3|ACC~24_combout\;
\inst3|ALT_INV_ACC~23_combout\ <= NOT \inst3|ACC~23_combout\;
\inst3|ALT_INV_ACC~21_combout\ <= NOT \inst3|ACC~21_combout\;
\inst3|ALT_INV_ACC~20_combout\ <= NOT \inst3|ACC~20_combout\;
\inst3|ALT_INV_ACC~18_combout\ <= NOT \inst3|ACC~18_combout\;
\inst3|ALT_INV_ACC~17_combout\ <= NOT \inst3|ACC~17_combout\;
\inst3|ALT_INV_ACC~15_combout\ <= NOT \inst3|ACC~15_combout\;
\inst3|ALT_INV_ACC~14_combout\ <= NOT \inst3|ACC~14_combout\;
\inst3|ALT_INV_ACC[3]~12_combout\ <= NOT \inst3|ACC[3]~12_combout\;
\inst3|ALT_INV_ACC~10_combout\ <= NOT \inst3|ACC~10_combout\;
\inst3|ALT_INV_ACC~9_combout\ <= NOT \inst3|ACC~9_combout\;
\inst3|ALT_INV_ACC[3]~8_combout\ <= NOT \inst3|ACC[3]~8_combout\;
\inst3|ALT_INV_ACC[3]~7_combout\ <= NOT \inst3|ACC[3]~7_combout\;
\inst3|ALT_INV_ACC[3]~6_combout\ <= NOT \inst3|ACC[3]~6_combout\;
\inst3|ALT_INV_ACC~4_combout\ <= NOT \inst3|ACC~4_combout\;
\inst3|ALT_INV_ACC~3_combout\ <= NOT \inst3|ACC~3_combout\;
\inst3|ALT_INV_ACC[3]~2_combout\ <= NOT \inst3|ACC[3]~2_combout\;
\inst3|ALT_INV_Equal0~1_combout\ <= NOT \inst3|Equal0~1_combout\;
\inst3|ALT_INV_ACC[3]~1_combout\ <= NOT \inst3|ACC[3]~1_combout\;
\inst3|ALT_INV_ACC~0_combout\ <= NOT \inst3|ACC~0_combout\;
\inst3|ALT_INV_Equal9~3_combout\ <= NOT \inst3|Equal9~3_combout\;
\inst3|ALT_INV_Equal9~2_combout\ <= NOT \inst3|Equal9~2_combout\;
\inst3|ALT_INV_Equal9~1_combout\ <= NOT \inst3|Equal9~1_combout\;
\inst3|ALT_INV_Equal9~0_combout\ <= NOT \inst3|Equal9~0_combout\;
\inst3|ALT_INV_Equal0~0_combout\ <= NOT \inst3|Equal0~0_combout\;
\inst3|ALT_INV_ACC~62_combout\ <= NOT \inst3|ACC~62_combout\;
\inst3|ALT_INV_ACC~58_combout\ <= NOT \inst3|ACC~58_combout\;
\inst3|ALT_INV_Add30~65_sumout\ <= NOT \inst3|Add30~65_sumout\;
\inst3|ALT_INV_Add28~65_sumout\ <= NOT \inst3|Add28~65_sumout\;
\inst3|ALT_INV_Add26~65_sumout\ <= NOT \inst3|Add26~65_sumout\;
\inst3|ALT_INV_Add24~65_sumout\ <= NOT \inst3|Add24~65_sumout\;
\inst3|ALT_INV_Add22~65_sumout\ <= NOT \inst3|Add22~65_sumout\;
\inst3|ALT_INV_Add20~65_sumout\ <= NOT \inst3|Add20~65_sumout\;
\inst3|ALT_INV_Add18~65_sumout\ <= NOT \inst3|Add18~65_sumout\;
\inst3|ALT_INV_Add16~65_sumout\ <= NOT \inst3|Add16~65_sumout\;
\inst3|ALT_INV_Add14~65_sumout\ <= NOT \inst3|Add14~65_sumout\;
\inst3|ALT_INV_Add12~65_sumout\ <= NOT \inst3|Add12~65_sumout\;
\inst3|ALT_INV_Add10~65_sumout\ <= NOT \inst3|Add10~65_sumout\;
\inst3|ALT_INV_Add8~65_sumout\ <= NOT \inst3|Add8~65_sumout\;
\inst3|ALT_INV_Add6~65_sumout\ <= NOT \inst3|Add6~65_sumout\;
\inst3|ALT_INV_Add4~65_sumout\ <= NOT \inst3|Add4~65_sumout\;
\inst3|ALT_INV_Add2~65_sumout\ <= NOT \inst3|Add2~65_sumout\;
\inst3|ALT_INV_Add30~61_sumout\ <= NOT \inst3|Add30~61_sumout\;
\inst3|ALT_INV_Add28~61_sumout\ <= NOT \inst3|Add28~61_sumout\;
\inst3|ALT_INV_Add26~61_sumout\ <= NOT \inst3|Add26~61_sumout\;
\inst3|ALT_INV_Add24~61_sumout\ <= NOT \inst3|Add24~61_sumout\;
\inst3|ALT_INV_Add22~61_sumout\ <= NOT \inst3|Add22~61_sumout\;
\inst3|ALT_INV_Add20~61_sumout\ <= NOT \inst3|Add20~61_sumout\;
\inst3|ALT_INV_Add18~61_sumout\ <= NOT \inst3|Add18~61_sumout\;
\inst3|ALT_INV_Add16~61_sumout\ <= NOT \inst3|Add16~61_sumout\;
\inst3|ALT_INV_Add14~61_sumout\ <= NOT \inst3|Add14~61_sumout\;
\inst3|ALT_INV_Add12~61_sumout\ <= NOT \inst3|Add12~61_sumout\;
\inst3|ALT_INV_Add10~61_sumout\ <= NOT \inst3|Add10~61_sumout\;
\inst3|ALT_INV_Add8~61_sumout\ <= NOT \inst3|Add8~61_sumout\;
\inst3|ALT_INV_Add6~61_sumout\ <= NOT \inst3|Add6~61_sumout\;
\inst3|ALT_INV_Add4~61_sumout\ <= NOT \inst3|Add4~61_sumout\;
\inst3|ALT_INV_Add2~61_sumout\ <= NOT \inst3|Add2~61_sumout\;
\inst3|ALT_INV_Add2~57_sumout\ <= NOT \inst3|Add2~57_sumout\;
\inst3|ALT_INV_Add30~57_sumout\ <= NOT \inst3|Add30~57_sumout\;
\inst3|ALT_INV_Add28~57_sumout\ <= NOT \inst3|Add28~57_sumout\;
\inst3|ALT_INV_Add26~57_sumout\ <= NOT \inst3|Add26~57_sumout\;
\inst3|ALT_INV_Add24~57_sumout\ <= NOT \inst3|Add24~57_sumout\;
\inst3|ALT_INV_Add22~57_sumout\ <= NOT \inst3|Add22~57_sumout\;
\inst3|ALT_INV_Add20~57_sumout\ <= NOT \inst3|Add20~57_sumout\;
\inst3|ALT_INV_Add18~57_sumout\ <= NOT \inst3|Add18~57_sumout\;
\inst3|ALT_INV_Add16~57_sumout\ <= NOT \inst3|Add16~57_sumout\;
\inst3|ALT_INV_Add14~57_sumout\ <= NOT \inst3|Add14~57_sumout\;
\inst3|ALT_INV_Add12~57_sumout\ <= NOT \inst3|Add12~57_sumout\;
\inst3|ALT_INV_Add10~57_sumout\ <= NOT \inst3|Add10~57_sumout\;
\inst3|ALT_INV_Add8~57_sumout\ <= NOT \inst3|Add8~57_sumout\;
\inst3|ALT_INV_Add6~57_sumout\ <= NOT \inst3|Add6~57_sumout\;
\inst3|ALT_INV_Add4~57_sumout\ <= NOT \inst3|Add4~57_sumout\;
\inst3|ALT_INV_Add4~53_sumout\ <= NOT \inst3|Add4~53_sumout\;
\inst3|ALT_INV_Add2~53_sumout\ <= NOT \inst3|Add2~53_sumout\;
\inst3|ALT_INV_Add30~53_sumout\ <= NOT \inst3|Add30~53_sumout\;
\inst3|ALT_INV_Add28~53_sumout\ <= NOT \inst3|Add28~53_sumout\;
\inst3|ALT_INV_Add26~53_sumout\ <= NOT \inst3|Add26~53_sumout\;
\inst3|ALT_INV_Add24~53_sumout\ <= NOT \inst3|Add24~53_sumout\;
\inst3|ALT_INV_Add22~53_sumout\ <= NOT \inst3|Add22~53_sumout\;
\inst3|ALT_INV_Add20~53_sumout\ <= NOT \inst3|Add20~53_sumout\;
\inst3|ALT_INV_Add18~53_sumout\ <= NOT \inst3|Add18~53_sumout\;
\inst3|ALT_INV_Add16~53_sumout\ <= NOT \inst3|Add16~53_sumout\;
\inst3|ALT_INV_Add14~53_sumout\ <= NOT \inst3|Add14~53_sumout\;
\inst3|ALT_INV_Add12~53_sumout\ <= NOT \inst3|Add12~53_sumout\;
\inst3|ALT_INV_Add10~53_sumout\ <= NOT \inst3|Add10~53_sumout\;
\inst3|ALT_INV_Add8~53_sumout\ <= NOT \inst3|Add8~53_sumout\;
\inst3|ALT_INV_Add6~53_sumout\ <= NOT \inst3|Add6~53_sumout\;
\inst3|ALT_INV_Add6~49_sumout\ <= NOT \inst3|Add6~49_sumout\;
\inst3|ALT_INV_Add4~49_sumout\ <= NOT \inst3|Add4~49_sumout\;
\inst3|ALT_INV_Add2~49_sumout\ <= NOT \inst3|Add2~49_sumout\;
\inst3|ALT_INV_Add30~49_sumout\ <= NOT \inst3|Add30~49_sumout\;
\inst3|ALT_INV_Add28~49_sumout\ <= NOT \inst3|Add28~49_sumout\;
\inst3|ALT_INV_Add26~49_sumout\ <= NOT \inst3|Add26~49_sumout\;
\inst3|ALT_INV_Add24~49_sumout\ <= NOT \inst3|Add24~49_sumout\;
\inst3|ALT_INV_Add22~49_sumout\ <= NOT \inst3|Add22~49_sumout\;
\inst3|ALT_INV_Add20~49_sumout\ <= NOT \inst3|Add20~49_sumout\;
\inst3|ALT_INV_Add18~49_sumout\ <= NOT \inst3|Add18~49_sumout\;
\inst3|ALT_INV_Add16~49_sumout\ <= NOT \inst3|Add16~49_sumout\;
\inst3|ALT_INV_Add14~49_sumout\ <= NOT \inst3|Add14~49_sumout\;
\inst3|ALT_INV_Add12~49_sumout\ <= NOT \inst3|Add12~49_sumout\;
\inst3|ALT_INV_Add10~49_sumout\ <= NOT \inst3|Add10~49_sumout\;
\inst3|ALT_INV_Add8~49_sumout\ <= NOT \inst3|Add8~49_sumout\;
\inst3|ALT_INV_Add8~45_sumout\ <= NOT \inst3|Add8~45_sumout\;
\inst3|ALT_INV_Add6~45_sumout\ <= NOT \inst3|Add6~45_sumout\;
\inst3|ALT_INV_Add4~45_sumout\ <= NOT \inst3|Add4~45_sumout\;
\inst3|ALT_INV_Add2~45_sumout\ <= NOT \inst3|Add2~45_sumout\;
\inst3|ALT_INV_Add30~45_sumout\ <= NOT \inst3|Add30~45_sumout\;
\inst3|ALT_INV_Add28~45_sumout\ <= NOT \inst3|Add28~45_sumout\;
\inst3|ALT_INV_Add26~45_sumout\ <= NOT \inst3|Add26~45_sumout\;
\inst3|ALT_INV_Add24~45_sumout\ <= NOT \inst3|Add24~45_sumout\;
\inst3|ALT_INV_Add22~45_sumout\ <= NOT \inst3|Add22~45_sumout\;
\inst3|ALT_INV_Add20~45_sumout\ <= NOT \inst3|Add20~45_sumout\;
\inst3|ALT_INV_Add18~45_sumout\ <= NOT \inst3|Add18~45_sumout\;
\inst3|ALT_INV_Add16~45_sumout\ <= NOT \inst3|Add16~45_sumout\;
\inst3|ALT_INV_Add14~45_sumout\ <= NOT \inst3|Add14~45_sumout\;
\inst3|ALT_INV_Add12~45_sumout\ <= NOT \inst3|Add12~45_sumout\;
\inst3|ALT_INV_Add10~45_sumout\ <= NOT \inst3|Add10~45_sumout\;
\inst3|ALT_INV_Add10~41_sumout\ <= NOT \inst3|Add10~41_sumout\;
\inst3|ALT_INV_Add8~41_sumout\ <= NOT \inst3|Add8~41_sumout\;
\inst3|ALT_INV_Add6~41_sumout\ <= NOT \inst3|Add6~41_sumout\;
\inst3|ALT_INV_Add4~41_sumout\ <= NOT \inst3|Add4~41_sumout\;
\inst3|ALT_INV_Add2~41_sumout\ <= NOT \inst3|Add2~41_sumout\;
\inst3|ALT_INV_Add30~41_sumout\ <= NOT \inst3|Add30~41_sumout\;
\inst3|ALT_INV_Add28~41_sumout\ <= NOT \inst3|Add28~41_sumout\;
\inst3|ALT_INV_Add26~41_sumout\ <= NOT \inst3|Add26~41_sumout\;
\inst3|ALT_INV_Add24~41_sumout\ <= NOT \inst3|Add24~41_sumout\;
\inst3|ALT_INV_Add22~41_sumout\ <= NOT \inst3|Add22~41_sumout\;
\inst3|ALT_INV_Add20~41_sumout\ <= NOT \inst3|Add20~41_sumout\;
\inst3|ALT_INV_Add18~41_sumout\ <= NOT \inst3|Add18~41_sumout\;
\inst3|ALT_INV_Add16~41_sumout\ <= NOT \inst3|Add16~41_sumout\;
\inst3|ALT_INV_Add14~41_sumout\ <= NOT \inst3|Add14~41_sumout\;
\inst3|ALT_INV_Add12~41_sumout\ <= NOT \inst3|Add12~41_sumout\;
\inst3|ALT_INV_Add12~37_sumout\ <= NOT \inst3|Add12~37_sumout\;
\inst3|ALT_INV_Add10~37_sumout\ <= NOT \inst3|Add10~37_sumout\;
\inst3|ALT_INV_Add8~37_sumout\ <= NOT \inst3|Add8~37_sumout\;
\inst3|ALT_INV_Add6~37_sumout\ <= NOT \inst3|Add6~37_sumout\;
\inst3|ALT_INV_Add4~37_sumout\ <= NOT \inst3|Add4~37_sumout\;
\inst3|ALT_INV_Add2~37_sumout\ <= NOT \inst3|Add2~37_sumout\;
\inst3|ALT_INV_Add30~37_sumout\ <= NOT \inst3|Add30~37_sumout\;
\inst3|ALT_INV_Add28~37_sumout\ <= NOT \inst3|Add28~37_sumout\;
\inst3|ALT_INV_Add26~37_sumout\ <= NOT \inst3|Add26~37_sumout\;
\inst3|ALT_INV_Add24~37_sumout\ <= NOT \inst3|Add24~37_sumout\;
\inst3|ALT_INV_Add22~37_sumout\ <= NOT \inst3|Add22~37_sumout\;
\inst3|ALT_INV_Add20~37_sumout\ <= NOT \inst3|Add20~37_sumout\;
\inst3|ALT_INV_Add18~37_sumout\ <= NOT \inst3|Add18~37_sumout\;
\inst3|ALT_INV_Add16~37_sumout\ <= NOT \inst3|Add16~37_sumout\;
\inst3|ALT_INV_Add14~37_sumout\ <= NOT \inst3|Add14~37_sumout\;
\inst3|ALT_INV_Add14~33_sumout\ <= NOT \inst3|Add14~33_sumout\;
\inst3|ALT_INV_Add12~33_sumout\ <= NOT \inst3|Add12~33_sumout\;
\inst3|ALT_INV_Add10~33_sumout\ <= NOT \inst3|Add10~33_sumout\;
\inst3|ALT_INV_Add8~33_sumout\ <= NOT \inst3|Add8~33_sumout\;
\inst3|ALT_INV_Add6~33_sumout\ <= NOT \inst3|Add6~33_sumout\;
\inst3|ALT_INV_Add4~33_sumout\ <= NOT \inst3|Add4~33_sumout\;
\inst3|ALT_INV_Add2~33_sumout\ <= NOT \inst3|Add2~33_sumout\;
\inst3|ALT_INV_Add30~33_sumout\ <= NOT \inst3|Add30~33_sumout\;
\inst3|ALT_INV_Add28~33_sumout\ <= NOT \inst3|Add28~33_sumout\;
\inst3|ALT_INV_Add26~33_sumout\ <= NOT \inst3|Add26~33_sumout\;
\inst3|ALT_INV_Add24~33_sumout\ <= NOT \inst3|Add24~33_sumout\;
\inst3|ALT_INV_Add22~33_sumout\ <= NOT \inst3|Add22~33_sumout\;
\inst3|ALT_INV_Add20~33_sumout\ <= NOT \inst3|Add20~33_sumout\;
\inst3|ALT_INV_Add18~33_sumout\ <= NOT \inst3|Add18~33_sumout\;
\inst3|ALT_INV_Add16~33_sumout\ <= NOT \inst3|Add16~33_sumout\;
\inst3|ALT_INV_Add16~29_sumout\ <= NOT \inst3|Add16~29_sumout\;
\inst3|ALT_INV_Add14~29_sumout\ <= NOT \inst3|Add14~29_sumout\;
\inst3|ALT_INV_Add12~29_sumout\ <= NOT \inst3|Add12~29_sumout\;
\inst3|ALT_INV_Add10~29_sumout\ <= NOT \inst3|Add10~29_sumout\;
\inst3|ALT_INV_Add8~29_sumout\ <= NOT \inst3|Add8~29_sumout\;
\inst3|ALT_INV_Add6~29_sumout\ <= NOT \inst3|Add6~29_sumout\;
\inst3|ALT_INV_Add4~29_sumout\ <= NOT \inst3|Add4~29_sumout\;
\inst3|ALT_INV_Add2~29_sumout\ <= NOT \inst3|Add2~29_sumout\;
\inst3|ALT_INV_Add30~29_sumout\ <= NOT \inst3|Add30~29_sumout\;
\inst3|ALT_INV_Add28~29_sumout\ <= NOT \inst3|Add28~29_sumout\;
\inst3|ALT_INV_Add26~29_sumout\ <= NOT \inst3|Add26~29_sumout\;
\inst3|ALT_INV_Add24~29_sumout\ <= NOT \inst3|Add24~29_sumout\;
\inst3|ALT_INV_Add22~29_sumout\ <= NOT \inst3|Add22~29_sumout\;
\inst3|ALT_INV_Add20~29_sumout\ <= NOT \inst3|Add20~29_sumout\;
\inst3|ALT_INV_Add18~29_sumout\ <= NOT \inst3|Add18~29_sumout\;
\inst3|ALT_INV_Add18~25_sumout\ <= NOT \inst3|Add18~25_sumout\;
\inst3|ALT_INV_Add16~25_sumout\ <= NOT \inst3|Add16~25_sumout\;
\inst3|ALT_INV_Add14~25_sumout\ <= NOT \inst3|Add14~25_sumout\;
\inst3|ALT_INV_Add12~25_sumout\ <= NOT \inst3|Add12~25_sumout\;
\inst3|ALT_INV_Add10~25_sumout\ <= NOT \inst3|Add10~25_sumout\;
\inst3|ALT_INV_Add8~25_sumout\ <= NOT \inst3|Add8~25_sumout\;
\inst3|ALT_INV_Add6~25_sumout\ <= NOT \inst3|Add6~25_sumout\;
\inst3|ALT_INV_Add4~25_sumout\ <= NOT \inst3|Add4~25_sumout\;
\inst3|ALT_INV_Add2~25_sumout\ <= NOT \inst3|Add2~25_sumout\;
\inst3|ALT_INV_Add30~25_sumout\ <= NOT \inst3|Add30~25_sumout\;
\inst3|ALT_INV_Add28~25_sumout\ <= NOT \inst3|Add28~25_sumout\;
\inst3|ALT_INV_Add26~25_sumout\ <= NOT \inst3|Add26~25_sumout\;
\inst3|ALT_INV_Add24~25_sumout\ <= NOT \inst3|Add24~25_sumout\;
\inst3|ALT_INV_Add22~25_sumout\ <= NOT \inst3|Add22~25_sumout\;
\inst3|ALT_INV_Add20~25_sumout\ <= NOT \inst3|Add20~25_sumout\;
\inst3|ALT_INV_Add20~21_sumout\ <= NOT \inst3|Add20~21_sumout\;
\inst3|ALT_INV_Add18~21_sumout\ <= NOT \inst3|Add18~21_sumout\;
\inst3|ALT_INV_Add16~21_sumout\ <= NOT \inst3|Add16~21_sumout\;
\inst3|ALT_INV_Add14~21_sumout\ <= NOT \inst3|Add14~21_sumout\;
\inst3|ALT_INV_Add12~21_sumout\ <= NOT \inst3|Add12~21_sumout\;
\inst3|ALT_INV_Add10~21_sumout\ <= NOT \inst3|Add10~21_sumout\;
\inst3|ALT_INV_Add8~21_sumout\ <= NOT \inst3|Add8~21_sumout\;
\inst3|ALT_INV_Add6~21_sumout\ <= NOT \inst3|Add6~21_sumout\;
\inst3|ALT_INV_Add4~21_sumout\ <= NOT \inst3|Add4~21_sumout\;
\inst3|ALT_INV_Add2~21_sumout\ <= NOT \inst3|Add2~21_sumout\;
\inst3|ALT_INV_Add30~21_sumout\ <= NOT \inst3|Add30~21_sumout\;
\inst3|ALT_INV_Add28~21_sumout\ <= NOT \inst3|Add28~21_sumout\;
\inst3|ALT_INV_Add26~21_sumout\ <= NOT \inst3|Add26~21_sumout\;
\inst3|ALT_INV_Add24~21_sumout\ <= NOT \inst3|Add24~21_sumout\;
\inst3|ALT_INV_Add22~21_sumout\ <= NOT \inst3|Add22~21_sumout\;
\inst3|ALT_INV_Add22~17_sumout\ <= NOT \inst3|Add22~17_sumout\;
\inst3|ALT_INV_Add20~17_sumout\ <= NOT \inst3|Add20~17_sumout\;
\inst3|ALT_INV_Add18~17_sumout\ <= NOT \inst3|Add18~17_sumout\;
\inst3|ALT_INV_Add16~17_sumout\ <= NOT \inst3|Add16~17_sumout\;
\inst3|ALT_INV_Add14~17_sumout\ <= NOT \inst3|Add14~17_sumout\;
\inst3|ALT_INV_Add12~17_sumout\ <= NOT \inst3|Add12~17_sumout\;
\inst3|ALT_INV_Add10~17_sumout\ <= NOT \inst3|Add10~17_sumout\;
\inst3|ALT_INV_Add8~17_sumout\ <= NOT \inst3|Add8~17_sumout\;
\inst3|ALT_INV_Add6~17_sumout\ <= NOT \inst3|Add6~17_sumout\;
\inst3|ALT_INV_Add4~17_sumout\ <= NOT \inst3|Add4~17_sumout\;
\inst3|ALT_INV_Add2~17_sumout\ <= NOT \inst3|Add2~17_sumout\;
\inst3|ALT_INV_Add30~17_sumout\ <= NOT \inst3|Add30~17_sumout\;
\inst3|ALT_INV_Add28~17_sumout\ <= NOT \inst3|Add28~17_sumout\;
\inst3|ALT_INV_Add26~17_sumout\ <= NOT \inst3|Add26~17_sumout\;
\inst3|ALT_INV_Add24~17_sumout\ <= NOT \inst3|Add24~17_sumout\;
\inst3|ALT_INV_Add24~13_sumout\ <= NOT \inst3|Add24~13_sumout\;
\inst3|ALT_INV_Add22~13_sumout\ <= NOT \inst3|Add22~13_sumout\;
\inst3|ALT_INV_Add20~13_sumout\ <= NOT \inst3|Add20~13_sumout\;
\inst3|ALT_INV_Add18~13_sumout\ <= NOT \inst3|Add18~13_sumout\;
\inst3|ALT_INV_Add16~13_sumout\ <= NOT \inst3|Add16~13_sumout\;
\inst3|ALT_INV_Add14~13_sumout\ <= NOT \inst3|Add14~13_sumout\;
\inst3|ALT_INV_Add12~13_sumout\ <= NOT \inst3|Add12~13_sumout\;
\inst3|ALT_INV_Add10~13_sumout\ <= NOT \inst3|Add10~13_sumout\;
\inst3|ALT_INV_Add8~13_sumout\ <= NOT \inst3|Add8~13_sumout\;
\inst3|ALT_INV_Add6~13_sumout\ <= NOT \inst3|Add6~13_sumout\;
\inst3|ALT_INV_Add4~13_sumout\ <= NOT \inst3|Add4~13_sumout\;
\inst3|ALT_INV_Add2~13_sumout\ <= NOT \inst3|Add2~13_sumout\;
\inst3|ALT_INV_Add30~13_sumout\ <= NOT \inst3|Add30~13_sumout\;
\inst3|ALT_INV_Add28~13_sumout\ <= NOT \inst3|Add28~13_sumout\;
\inst3|ALT_INV_Add26~13_sumout\ <= NOT \inst3|Add26~13_sumout\;
\inst3|ALT_INV_Add26~9_sumout\ <= NOT \inst3|Add26~9_sumout\;
\inst3|ALT_INV_Add24~9_sumout\ <= NOT \inst3|Add24~9_sumout\;
\inst3|ALT_INV_Add22~9_sumout\ <= NOT \inst3|Add22~9_sumout\;
\inst3|ALT_INV_Add20~9_sumout\ <= NOT \inst3|Add20~9_sumout\;
\inst3|ALT_INV_Add18~9_sumout\ <= NOT \inst3|Add18~9_sumout\;
\inst3|ALT_INV_Add16~9_sumout\ <= NOT \inst3|Add16~9_sumout\;
\inst3|ALT_INV_Add14~9_sumout\ <= NOT \inst3|Add14~9_sumout\;
\inst3|ALT_INV_Add12~9_sumout\ <= NOT \inst3|Add12~9_sumout\;
\inst3|ALT_INV_Add10~9_sumout\ <= NOT \inst3|Add10~9_sumout\;
\inst3|ALT_INV_Add8~9_sumout\ <= NOT \inst3|Add8~9_sumout\;
\inst3|ALT_INV_Add6~9_sumout\ <= NOT \inst3|Add6~9_sumout\;
\inst3|ALT_INV_Add4~9_sumout\ <= NOT \inst3|Add4~9_sumout\;
\inst3|ALT_INV_Add2~9_sumout\ <= NOT \inst3|Add2~9_sumout\;
\inst3|ALT_INV_Add30~9_sumout\ <= NOT \inst3|Add30~9_sumout\;
\inst3|ALT_INV_Add28~9_sumout\ <= NOT \inst3|Add28~9_sumout\;
\inst3|ALT_INV_Add28~5_sumout\ <= NOT \inst3|Add28~5_sumout\;
\inst3|ALT_INV_Add26~5_sumout\ <= NOT \inst3|Add26~5_sumout\;
\inst3|ALT_INV_Add24~5_sumout\ <= NOT \inst3|Add24~5_sumout\;
\inst3|ALT_INV_Add22~5_sumout\ <= NOT \inst3|Add22~5_sumout\;
\inst3|ALT_INV_Add20~5_sumout\ <= NOT \inst3|Add20~5_sumout\;
\inst3|ALT_INV_Add18~5_sumout\ <= NOT \inst3|Add18~5_sumout\;
\inst3|ALT_INV_Add16~5_sumout\ <= NOT \inst3|Add16~5_sumout\;
\inst3|ALT_INV_Add14~5_sumout\ <= NOT \inst3|Add14~5_sumout\;
\inst3|ALT_INV_Add12~5_sumout\ <= NOT \inst3|Add12~5_sumout\;
\inst3|ALT_INV_Add10~5_sumout\ <= NOT \inst3|Add10~5_sumout\;
\inst3|ALT_INV_Add8~5_sumout\ <= NOT \inst3|Add8~5_sumout\;
\inst3|ALT_INV_Add6~5_sumout\ <= NOT \inst3|Add6~5_sumout\;
\inst3|ALT_INV_Add4~5_sumout\ <= NOT \inst3|Add4~5_sumout\;
\inst3|ALT_INV_Add2~5_sumout\ <= NOT \inst3|Add2~5_sumout\;
\inst3|ALT_INV_Add0~61_sumout\ <= NOT \inst3|Add0~61_sumout\;
\inst3|ALT_INV_Add32~1_sumout\ <= NOT \inst3|Add32~1_sumout\;
\inst3|ALT_INV_Add31~1_sumout\ <= NOT \inst3|Add31~1_sumout\;
\inst3|ALT_INV_Add30~5_sumout\ <= NOT \inst3|Add30~5_sumout\;
\inst3|ALT_INV_Add0~57_sumout\ <= NOT \inst3|Add0~57_sumout\;
\inst3|ALT_INV_Add30~1_sumout\ <= NOT \inst3|Add30~1_sumout\;
\inst3|ALT_INV_Add0~53_sumout\ <= NOT \inst3|Add0~53_sumout\;
\inst3|ALT_INV_Add28~1_sumout\ <= NOT \inst3|Add28~1_sumout\;
\inst3|ALT_INV_Add0~49_sumout\ <= NOT \inst3|Add0~49_sumout\;
\inst3|ALT_INV_Add26~1_sumout\ <= NOT \inst3|Add26~1_sumout\;
\inst3|ALT_INV_Add0~45_sumout\ <= NOT \inst3|Add0~45_sumout\;
\inst3|ALT_INV_Add24~1_sumout\ <= NOT \inst3|Add24~1_sumout\;
\inst3|ALT_INV_Add0~41_sumout\ <= NOT \inst3|Add0~41_sumout\;
\inst3|ALT_INV_Add22~1_sumout\ <= NOT \inst3|Add22~1_sumout\;
\inst3|ALT_INV_Add0~37_sumout\ <= NOT \inst3|Add0~37_sumout\;
\inst3|ALT_INV_Add20~1_sumout\ <= NOT \inst3|Add20~1_sumout\;
\inst3|ALT_INV_Add0~33_sumout\ <= NOT \inst3|Add0~33_sumout\;
\inst3|ALT_INV_Add18~1_sumout\ <= NOT \inst3|Add18~1_sumout\;
\inst3|ALT_INV_Add0~29_sumout\ <= NOT \inst3|Add0~29_sumout\;
\inst3|ALT_INV_Add16~1_sumout\ <= NOT \inst3|Add16~1_sumout\;
\inst3|ALT_INV_Add0~25_sumout\ <= NOT \inst3|Add0~25_sumout\;
\inst3|ALT_INV_Add14~1_sumout\ <= NOT \inst3|Add14~1_sumout\;
\inst3|ALT_INV_Add0~21_sumout\ <= NOT \inst3|Add0~21_sumout\;
\inst3|ALT_INV_Add12~1_sumout\ <= NOT \inst3|Add12~1_sumout\;
\inst3|ALT_INV_Add0~17_sumout\ <= NOT \inst3|Add0~17_sumout\;
\inst3|ALT_INV_Add10~1_sumout\ <= NOT \inst3|Add10~1_sumout\;
\inst3|ALT_INV_Add0~13_sumout\ <= NOT \inst3|Add0~13_sumout\;
\inst3|ALT_INV_Add8~1_sumout\ <= NOT \inst3|Add8~1_sumout\;
\inst3|ALT_INV_Add0~9_sumout\ <= NOT \inst3|Add0~9_sumout\;
\inst3|ALT_INV_Add6~1_sumout\ <= NOT \inst3|Add6~1_sumout\;
\inst3|ALT_INV_Add0~5_sumout\ <= NOT \inst3|Add0~5_sumout\;
\inst3|ALT_INV_Add4~1_sumout\ <= NOT \inst3|Add4~1_sumout\;
\inst3|ALT_INV_Add0~1_sumout\ <= NOT \inst3|Add0~1_sumout\;
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
\inst3|ALT_INV_Add2~1_sumout\ <= NOT \inst3|Add2~1_sumout\;
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
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(16) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(16);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(17) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(17);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(18);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(19) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(19);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(20);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(21) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(21);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(22);
\inst6|ALT_INV_CARout\(0) <= NOT \inst6|CARout\(0);
\inst6|ALT_INV_CARout\(1) <= NOT \inst6|CARout\(1);
\inst6|ALT_INV_CARout\(2) <= NOT \inst6|CARout\(2);
\inst6|ALT_INV_CARout\(3) <= NOT \inst6|CARout\(3);
\inst6|ALT_INV_CARout\(4) <= NOT \inst6|CARout\(4);
\inst6|ALT_INV_CARout\(5) <= NOT \inst6|CARout\(5);
\inst6|ALT_INV_CARout\(6) <= NOT \inst6|CARout\(6);
\inst6|ALT_INV_CARout\(7) <= NOT \inst6|CARout\(7);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(23) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(23);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(24) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(24);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(25) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(25);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(26) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(26);
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
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(12);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(13);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(14);
\inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15) <= NOT \inst8|srom|rom_block|auto_generated|q_a\(15);
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
	o => \ACC[15]~output_o\);

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
	o => \ACC[14]~output_o\);

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
	o => \ACC[13]~output_o\);

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
	o => \ACC[12]~output_o\);

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
	o => \ACC[11]~output_o\);

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
	o => \ACC[10]~output_o\);

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
	o => \ACC[9]~output_o\);

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
	o => \ACC[8]~output_o\);

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
	o => \ACC[7]~output_o\);

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
	o => \ACC[6]~output_o\);

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
	o => \ACC[5]~output_o\);

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
	o => \ACC[4]~output_o\);

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
	o => \ACC[3]~output_o\);

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
	o => \ACC[2]~output_o\);

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
	o => \ACC[1]~output_o\);

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
	o => \ACC[0]~output_o\);

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
	o => \ALUIN[3]~output_o\);

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
	o => \ALUIN[2]~output_o\);

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
	o => \ALUIN[1]~output_o\);

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
	o => \ALUIN[0]~output_o\);

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
	o => \BRIN[15]~output_o\);

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
	o => \BRIN[14]~output_o\);

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
	o => \BRIN[13]~output_o\);

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
	o => \BRIN[12]~output_o\);

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
	o => \BRIN[11]~output_o\);

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
	o => \BRIN[10]~output_o\);

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
	o => \BRIN[9]~output_o\);

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
	o => \BRIN[8]~output_o\);

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
	o => \BRIN[7]~output_o\);

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
	o => \BRIN[6]~output_o\);

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
	o => \BRIN[5]~output_o\);

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
	o => \BRIN[4]~output_o\);

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
	o => \BRIN[3]~output_o\);

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
	o => \BRIN[2]~output_o\);

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
	o => \BRIN[1]~output_o\);

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
	o => \BRIN[0]~output_o\);

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
	o => \BROUT[15]~output_o\);

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
	o => \BROUT[14]~output_o\);

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
	o => \BROUT[13]~output_o\);

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
	o => \BROUT[12]~output_o\);

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
	o => \BROUT[11]~output_o\);

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
	o => \BROUT[10]~output_o\);

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
	o => \BROUT[9]~output_o\);

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
	o => \BROUT[8]~output_o\);

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
	o => \BROUT[7]~output_o\);

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
	o => \BROUT[6]~output_o\);

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
	o => \BROUT[5]~output_o\);

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
	o => \BROUT[4]~output_o\);

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
	o => \BROUT[3]~output_o\);

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
	o => \BROUT[2]~output_o\);

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
	o => \BROUT[1]~output_o\);

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
	o => \BROUT[0]~output_o\);

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
	o => \CARcIN[3]~output_o\);

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
	o => \CARcIN[2]~output_o\);

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
	o => \CARcIN[1]~output_o\);

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
	o => \CARcIN[0]~output_o\);

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
	o => \CAROUT[7]~output_o\);

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
	o => \CAROUT[6]~output_o\);

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
	o => \CAROUT[5]~output_o\);

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
	o => \CAROUT[4]~output_o\);

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
	o => \CAROUT[3]~output_o\);

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
	o => \CAROUT[2]~output_o\);

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
	o => \CAROUT[1]~output_o\);

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
	o => \CAROUT[0]~output_o\);

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
	o => \CONTROLIN[31]~output_o\);

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
	o => \CONTROLIN[30]~output_o\);

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
	o => \CONTROLIN[29]~output_o\);

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
	o => \CONTROLIN[28]~output_o\);

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
	o => \CONTROLIN[27]~output_o\);

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
	o => \CONTROLIN[26]~output_o\);

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
	o => \CONTROLIN[25]~output_o\);

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
	o => \CONTROLIN[24]~output_o\);

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
	o => \CONTROLIN[23]~output_o\);

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
	o => \CONTROLIN[22]~output_o\);

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
	o => \CONTROLIN[21]~output_o\);

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
	o => \CONTROLIN[20]~output_o\);

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
	o => \CONTROLIN[19]~output_o\);

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
	o => \CONTROLIN[18]~output_o\);

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
	o => \CONTROLIN[17]~output_o\);

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
	o => \CONTROLIN[16]~output_o\);

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
	o => \CONTROLIN[15]~output_o\);

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
	o => \CONTROLIN[14]~output_o\);

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
	o => \CONTROLIN[13]~output_o\);

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
	o => \CONTROLIN[12]~output_o\);

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
	o => \CONTROLIN[11]~output_o\);

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
	o => \CONTROLIN[10]~output_o\);

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
	o => \CONTROLIN[9]~output_o\);

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
	o => \CONTROLIN[8]~output_o\);

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
	o => \CONTROLIN[7]~output_o\);

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
	o => \CONTROLIN[6]~output_o\);

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
	o => \CONTROLIN[5]~output_o\);

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
	o => \CONTROLIN[4]~output_o\);

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
	o => \CONTROLIN[3]~output_o\);

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
	o => \CONTROLIN[2]~output_o\);

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
	o => \CONTROLIN[1]~output_o\);

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
	o => \CONTROLIN[0]~output_o\);

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
	o => \IROUT[7]~output_o\);

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
	o => \IROUT[6]~output_o\);

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
	o => \IROUT[5]~output_o\);

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
	o => \IROUT[4]~output_o\);

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
	o => \IROUT[3]~output_o\);

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
	o => \IROUT[2]~output_o\);

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
	o => \IROUT[1]~output_o\);

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
	o => \IROUT[0]~output_o\);

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
	o => \MAROUT[7]~output_o\);

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
	o => \MAROUT[6]~output_o\);

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
	o => \MAROUT[5]~output_o\);

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
	o => \MAROUT[4]~output_o\);

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
	o => \MAROUT[3]~output_o\);

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
	o => \MAROUT[2]~output_o\);

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
	o => \MAROUT[1]~output_o\);

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
	o => \MAROUT[0]~output_o\);

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
	o => \PCOUT[7]~output_o\);

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
	o => \PCOUT[6]~output_o\);

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
	o => \PCOUT[5]~output_o\);

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
	o => \PCOUT[4]~output_o\);

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
	o => \PCOUT[3]~output_o\);

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
	o => \PCOUT[2]~output_o\);

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
	o => \PCOUT[1]~output_o\);

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
	o => \PCOUT[0]~output_o\);

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
	o => \RAMIN[15]~output_o\);

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
	o => \RAMIN[14]~output_o\);

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
	o => \RAMIN[13]~output_o\);

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
	o => \RAMIN[12]~output_o\);

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
	o => \RAMIN[11]~output_o\);

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
	o => \RAMIN[10]~output_o\);

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
	o => \RAMIN[9]~output_o\);

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
	o => \RAMIN[8]~output_o\);

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
	o => \RAMIN[7]~output_o\);

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
	o => \RAMIN[6]~output_o\);

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
	o => \RAMIN[5]~output_o\);

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
	o => \RAMIN[4]~output_o\);

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
	o => \RAMIN[3]~output_o\);

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
	o => \RAMIN[2]~output_o\);

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
	o => \RAMIN[1]~output_o\);

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
	o => \RAMIN[0]~output_o\);

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
	o => \RAMOUT[15]~output_o\);

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
	o => \RAMOUT[14]~output_o\);

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
	o => \RAMOUT[13]~output_o\);

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
	o => \RAMOUT[12]~output_o\);

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
	o => \RAMOUT[11]~output_o\);

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
	o => \RAMOUT[10]~output_o\);

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
	o => \RAMOUT[9]~output_o\);

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
	o => \RAMOUT[8]~output_o\);

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
	o => \RAMOUT[7]~output_o\);

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
	o => \RAMOUT[6]~output_o\);

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
	o => \RAMOUT[5]~output_o\);

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
	o => \RAMOUT[4]~output_o\);

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
	o => \RAMOUT[3]~output_o\);

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
	o => \RAMOUT[2]~output_o\);

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
	o => \RAMOUT[1]~output_o\);

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
	o => \RAMOUT[0]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\clkMBR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkMBR,
	o => \clkMBR~input_o\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\inst|MBR_OP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(13),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(5));

\inst|MBR_BR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(10),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(10));

\inst|MBR_OP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(14),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(6));

\inst6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~9_sumout\ = SUM(( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(5)) ) + ( \inst6|CARout\(5) ) + ( \inst6|Add0~14\ ))
-- \inst6|Add0~10\ = CARRY(( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(5)) ) + ( \inst6|CARout\(5) ) + ( \inst6|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal3~0_combout\,
	datad => \inst|ALT_INV_MBR_OP\(5),
	dataf => \inst6|ALT_INV_CARout\(5),
	cin => \inst6|Add0~14\,
	sumout => \inst6|Add0~9_sumout\,
	cout => \inst6|Add0~10\);

\inst6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~5_sumout\ = SUM(( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(6)) ) + ( \inst6|CARout\(6) ) + ( \inst6|Add0~10\ ))
-- \inst6|Add0~6\ = CARRY(( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(6)) ) + ( \inst6|CARout\(6) ) + ( \inst6|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal3~0_combout\,
	datad => \inst|ALT_INV_MBR_OP\(6),
	dataf => \inst6|ALT_INV_CARout\(6),
	cin => \inst6|Add0~10\,
	sumout => \inst6|Add0~5_sumout\,
	cout => \inst6|Add0~6\);

\inst|MBR_OP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(15),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(7));

\inst6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~1_sumout\ = SUM(( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(7)) ) + ( \inst6|CARout\(7) ) + ( \inst6|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal3~0_combout\,
	datad => \inst|ALT_INV_MBR_OP\(7),
	dataf => \inst6|ALT_INV_CARout\(7),
	cin => \inst6|Add0~6\,
	sumout => \inst6|Add0~1_sumout\);

\inst8|srom|rom_block|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\inst8|srom|rom_block|auto_generated|ram_block1a25\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000004",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

\inst8|srom|rom_block|auto_generated|ram_block1a24\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000000000000000000000000000000000000000000000800000000000000FFF8",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

\inst8|srom|rom_block|auto_generated|ram_block1a23\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000701C6308CE739CE300003",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

\inst6|CARout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|CARout[0]~0_combout\ = ( \reset~input_o\ & ( ((!\inst8|srom|rom_block|auto_generated|q_a\(25) & (!\inst8|srom|rom_block|auto_generated|q_a\(24) $ (\inst8|srom|rom_block|auto_generated|q_a\(23)))) # (\inst8|srom|rom_block|auto_generated|q_a\(25) & 
-- ((\inst8|srom|rom_block|auto_generated|q_a\(23)) # (\inst8|srom|rom_block|auto_generated|q_a\(24))))) # (\inst8|srom|rom_block|auto_generated|q_a\(26)) ) ) # ( !\reset~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110101110111111111111111111111111101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(26),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(25),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(24),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(23),
	datae => \ALT_INV_reset~input_o\,
	combout => \inst6|CARout[0]~0_combout\);

\inst6|CARout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|CARout[0]~1_combout\ = ((!\inst8|srom|rom_block|auto_generated|q_a\(25) $ (\inst8|srom|rom_block|auto_generated|q_a\(23))) # (\inst8|srom|rom_block|auto_generated|q_a\(24))) # (\inst8|srom|rom_block|auto_generated|q_a\(26))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111101111111110111110111111111011111011111111101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(26),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(25),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(24),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(23),
	combout => \inst6|CARout[0]~1_combout\);

\inst6|CARout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|CARout[0]~2_combout\ = ( \reset~input_o\ & ( (!\inst8|srom|rom_block|auto_generated|q_a\(26) & ((!\inst8|srom|rom_block|auto_generated|q_a\(25) & (!\inst8|srom|rom_block|auto_generated|q_a\(24) $ (!\inst8|srom|rom_block|auto_generated|q_a\(23)))) # 
-- (\inst8|srom|rom_block|auto_generated|q_a\(25) & (!\inst8|srom|rom_block|auto_generated|q_a\(24) & !\inst8|srom|rom_block|auto_generated|q_a\(23))))) # (\inst8|srom|rom_block|auto_generated|q_a\(26) & (!\inst8|srom|rom_block|auto_generated|q_a\(25) & 
-- (!\inst8|srom|rom_block|auto_generated|q_a\(24) & !\inst8|srom|rom_block|auto_generated|q_a\(23)))) ) ) # ( !\reset~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011010001000000011111111111111110110100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(26),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(25),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(24),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(23),
	datae => \ALT_INV_reset~input_o\,
	combout => \inst6|CARout[0]~2_combout\);

\inst6|CARout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add0~1_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(7),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(7));

\inst8|srom|rom_block|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000000000000000000000000000000000000000000000800000000000000E080",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\inst6|CARout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add0~5_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(6),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(6));

\inst8|srom|rom_block|auto_generated|ram_block1a22\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000401000000842108000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

\inst2|BRout[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(10) = ( \inst2|BRout\(10) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(10) ) ) ) # ( !\inst2|BRout\(10) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(10) ) ) ) # ( \inst2|BRout\(10) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(10),
	datae => \inst2|ALT_INV_BRout\(10),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(10));

\inst|MBR_BR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(9),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(9));

\inst2|BRout[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(9) = ( \inst2|BRout\(9) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(9) ) ) ) # ( !\inst2|BRout\(9) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(9) ) ) ) # ( \inst2|BRout\(9) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(9),
	datae => \inst2|ALT_INV_BRout\(9),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(9));

\inst|MBR_BR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(8),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(8));

\inst2|BRout[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(8) = ( \inst2|BRout\(8) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(8) ) ) ) # ( !\inst2|BRout\(8) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(8) ) ) ) # ( \inst2|BRout\(8) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(8),
	datae => \inst2|ALT_INV_BRout\(8),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(8));

\inst3|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal9~0_combout\ = (!\inst2|BRout\(15) & (!\inst2|BRout\(14) & (!\inst2|BRout\(13) & !\inst2|BRout\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(15),
	datab => \inst2|ALT_INV_BRout\(14),
	datac => \inst2|ALT_INV_BRout\(13),
	datad => \inst2|ALT_INV_BRout\(0),
	combout => \inst3|Equal9~0_combout\);

\inst3|Equal9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal9~1_combout\ = ( !\inst2|BRout\(1) & ( (!\inst2|BRout\(5) & (!\inst2|BRout\(4) & (!\inst2|BRout\(3) & !\inst2|BRout\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(5),
	datab => \inst2|ALT_INV_BRout\(4),
	datac => \inst2|ALT_INV_BRout\(3),
	datad => \inst2|ALT_INV_BRout\(2),
	datae => \inst2|ALT_INV_BRout\(1),
	combout => \inst3|Equal9~1_combout\);

\inst3|Equal9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal9~2_combout\ = ( !\inst2|BRout\(7) & ( (!\inst2|BRout\(11) & (!\inst2|BRout\(10) & (!\inst2|BRout\(9) & !\inst2|BRout\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(11),
	datab => \inst2|ALT_INV_BRout\(10),
	datac => \inst2|ALT_INV_BRout\(9),
	datad => \inst2|ALT_INV_BRout\(8),
	datae => \inst2|ALT_INV_BRout\(7),
	combout => \inst3|Equal9~2_combout\);

\inst3|Equal9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal9~3_combout\ = ( \inst3|Equal9~2_combout\ & ( (!\inst2|BRout\(12) & (!\inst2|BRout\(6) & (\inst3|Equal9~0_combout\ & \inst3|Equal9~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(12),
	datab => \inst2|ALT_INV_BRout\(6),
	datac => \inst3|ALT_INV_Equal9~0_combout\,
	datad => \inst3|ALT_INV_Equal9~1_combout\,
	datae => \inst3|ALT_INV_Equal9~2_combout\,
	combout => \inst3|Equal9~3_combout\);

\inst3|ACC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~0_combout\ = (\inst3|Equal0~0_combout\ & !\inst3|Equal9~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~0_combout\,
	datab => \inst3|ALT_INV_Equal9~3_combout\,
	combout => \inst3|ACC~0_combout\);

\inst3|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~65_sumout\ = SUM(( !\inst2|BRout\(0) $ (!\inst3|ACC\(15)) ) + ( !VCC ) + ( !VCC ))
-- \inst3|Add2~66\ = CARRY(( !\inst2|BRout\(0) $ (!\inst3|ACC\(15)) ) + ( !VCC ) + ( !VCC ))
-- \inst3|Add2~67\ = SHARE((!\inst2|BRout\(0)) # (\inst3|ACC\(15)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_ACC\(15),
	cin => GND,
	sharein => GND,
	sumout => \inst3|Add2~65_sumout\,
	cout => \inst3|Add2~66\,
	shareout => \inst3|Add2~67\);

\inst3|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~61_sumout\ = SUM(( !\inst2|BRout\(1) ) + ( \inst3|Add2~67\ ) + ( \inst3|Add2~66\ ))
-- \inst3|Add2~62\ = CARRY(( !\inst2|BRout\(1) ) + ( \inst3|Add2~67\ ) + ( \inst3|Add2~66\ ))
-- \inst3|Add2~63\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(1),
	cin => \inst3|Add2~66\,
	sharein => \inst3|Add2~67\,
	sumout => \inst3|Add2~61_sumout\,
	cout => \inst3|Add2~62\,
	shareout => \inst3|Add2~63\);

\inst3|Add4~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~70_cout\ = CARRY(( !\inst3|Add2~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add2~5_sumout\,
	cin => GND,
	cout => \inst3|Add4~70_cout\);

\inst3|Add4~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~65_sumout\ = SUM(( !\inst2|BRout\(0) $ (\inst3|Add2~5_sumout\) ) + ( \inst3|ACC\(14) ) + ( \inst3|Add4~70_cout\ ))
-- \inst3|Add4~66\ = CARRY(( !\inst2|BRout\(0) $ (\inst3|Add2~5_sumout\) ) + ( \inst3|ACC\(14) ) + ( \inst3|Add4~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_Add2~5_sumout\,
	dataf => \inst3|ALT_INV_ACC\(14),
	cin => \inst3|Add4~70_cout\,
	sumout => \inst3|Add4~65_sumout\,
	cout => \inst3|Add4~66\);

\inst3|Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~61_sumout\ = SUM(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add2~65_sumout\ ) + ( \inst3|Add4~66\ ))
-- \inst3|Add4~62\ = CARRY(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add2~65_sumout\ ) + ( \inst3|Add4~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(1),
	dataf => \inst3|ALT_INV_Add2~65_sumout\,
	cin => \inst3|Add4~66\,
	sumout => \inst3|Add4~61_sumout\,
	cout => \inst3|Add4~62\);

\inst3|Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~57_sumout\ = SUM(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add2~61_sumout\ ) + ( \inst3|Add4~62\ ))
-- \inst3|Add4~58\ = CARRY(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add2~61_sumout\ ) + ( \inst3|Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(2),
	dataf => \inst3|ALT_INV_Add2~61_sumout\,
	cin => \inst3|Add4~62\,
	sumout => \inst3|Add4~57_sumout\,
	cout => \inst3|Add4~58\);

\inst3|Add6~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~70_cout\ = CARRY(( !\inst3|Add4~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add4~5_sumout\,
	cin => GND,
	cout => \inst3|Add6~70_cout\);

\inst3|Add6~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~65_sumout\ = SUM(( !\inst2|BRout\(0) $ (\inst3|Add4~5_sumout\) ) + ( \inst3|ACC\(13) ) + ( \inst3|Add6~70_cout\ ))
-- \inst3|Add6~66\ = CARRY(( !\inst2|BRout\(0) $ (\inst3|Add4~5_sumout\) ) + ( \inst3|ACC\(13) ) + ( \inst3|Add6~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_Add4~5_sumout\,
	dataf => \inst3|ALT_INV_ACC\(13),
	cin => \inst3|Add6~70_cout\,
	sumout => \inst3|Add6~65_sumout\,
	cout => \inst3|Add6~66\);

\inst3|Add6~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~61_sumout\ = SUM(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add4~65_sumout\ ) + ( \inst3|Add6~66\ ))
-- \inst3|Add6~62\ = CARRY(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add4~65_sumout\ ) + ( \inst3|Add6~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(1),
	dataf => \inst3|ALT_INV_Add4~65_sumout\,
	cin => \inst3|Add6~66\,
	sumout => \inst3|Add6~61_sumout\,
	cout => \inst3|Add6~62\);

\inst3|Add6~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~57_sumout\ = SUM(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add4~61_sumout\ ) + ( \inst3|Add6~62\ ))
-- \inst3|Add6~58\ = CARRY(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add4~61_sumout\ ) + ( \inst3|Add6~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(2),
	dataf => \inst3|ALT_INV_Add4~61_sumout\,
	cin => \inst3|Add6~62\,
	sumout => \inst3|Add6~57_sumout\,
	cout => \inst3|Add6~58\);

\inst3|Add6~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~53_sumout\ = SUM(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add4~57_sumout\ ) + ( \inst3|Add6~58\ ))
-- \inst3|Add6~54\ = CARRY(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add4~57_sumout\ ) + ( \inst3|Add6~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(3),
	dataf => \inst3|ALT_INV_Add4~57_sumout\,
	cin => \inst3|Add6~58\,
	sumout => \inst3|Add6~53_sumout\,
	cout => \inst3|Add6~54\);

\inst3|Add8~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~70_cout\ = CARRY(( !\inst3|Add6~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add6~5_sumout\,
	cin => GND,
	cout => \inst3|Add8~70_cout\);

\inst3|Add8~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~65_sumout\ = SUM(( !\inst2|BRout\(0) $ (\inst3|Add6~5_sumout\) ) + ( \inst3|ACC\(12) ) + ( \inst3|Add8~70_cout\ ))
-- \inst3|Add8~66\ = CARRY(( !\inst2|BRout\(0) $ (\inst3|Add6~5_sumout\) ) + ( \inst3|ACC\(12) ) + ( \inst3|Add8~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_Add6~5_sumout\,
	dataf => \inst3|ALT_INV_ACC\(12),
	cin => \inst3|Add8~70_cout\,
	sumout => \inst3|Add8~65_sumout\,
	cout => \inst3|Add8~66\);

\inst3|Add8~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~61_sumout\ = SUM(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add6~65_sumout\ ) + ( \inst3|Add8~66\ ))
-- \inst3|Add8~62\ = CARRY(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add6~65_sumout\ ) + ( \inst3|Add8~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(1),
	dataf => \inst3|ALT_INV_Add6~65_sumout\,
	cin => \inst3|Add8~66\,
	sumout => \inst3|Add8~61_sumout\,
	cout => \inst3|Add8~62\);

\inst3|Add8~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~57_sumout\ = SUM(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add6~61_sumout\ ) + ( \inst3|Add8~62\ ))
-- \inst3|Add8~58\ = CARRY(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add6~61_sumout\ ) + ( \inst3|Add8~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(2),
	dataf => \inst3|ALT_INV_Add6~61_sumout\,
	cin => \inst3|Add8~62\,
	sumout => \inst3|Add8~57_sumout\,
	cout => \inst3|Add8~58\);

\inst3|Add8~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~53_sumout\ = SUM(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add6~57_sumout\ ) + ( \inst3|Add8~58\ ))
-- \inst3|Add8~54\ = CARRY(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add6~57_sumout\ ) + ( \inst3|Add8~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(3),
	dataf => \inst3|ALT_INV_Add6~57_sumout\,
	cin => \inst3|Add8~58\,
	sumout => \inst3|Add8~53_sumout\,
	cout => \inst3|Add8~54\);

\inst3|Add8~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~49_sumout\ = SUM(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add6~53_sumout\ ) + ( \inst3|Add8~54\ ))
-- \inst3|Add8~50\ = CARRY(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add6~53_sumout\ ) + ( \inst3|Add8~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_Add6~53_sumout\,
	cin => \inst3|Add8~54\,
	sumout => \inst3|Add8~49_sumout\,
	cout => \inst3|Add8~50\);

\inst3|Add10~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~70_cout\ = CARRY(( !\inst3|Add8~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add8~5_sumout\,
	cin => GND,
	cout => \inst3|Add10~70_cout\);

\inst3|Add10~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~65_sumout\ = SUM(( !\inst2|BRout\(0) $ (\inst3|Add8~5_sumout\) ) + ( \inst3|ACC\(11) ) + ( \inst3|Add10~70_cout\ ))
-- \inst3|Add10~66\ = CARRY(( !\inst2|BRout\(0) $ (\inst3|Add8~5_sumout\) ) + ( \inst3|ACC\(11) ) + ( \inst3|Add10~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_Add8~5_sumout\,
	dataf => \inst3|ALT_INV_ACC\(11),
	cin => \inst3|Add10~70_cout\,
	sumout => \inst3|Add10~65_sumout\,
	cout => \inst3|Add10~66\);

\inst3|Add10~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~61_sumout\ = SUM(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add8~65_sumout\ ) + ( \inst3|Add10~66\ ))
-- \inst3|Add10~62\ = CARRY(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add8~65_sumout\ ) + ( \inst3|Add10~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(1),
	dataf => \inst3|ALT_INV_Add8~65_sumout\,
	cin => \inst3|Add10~66\,
	sumout => \inst3|Add10~61_sumout\,
	cout => \inst3|Add10~62\);

\inst3|Add10~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~57_sumout\ = SUM(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add8~61_sumout\ ) + ( \inst3|Add10~62\ ))
-- \inst3|Add10~58\ = CARRY(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add8~61_sumout\ ) + ( \inst3|Add10~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(2),
	dataf => \inst3|ALT_INV_Add8~61_sumout\,
	cin => \inst3|Add10~62\,
	sumout => \inst3|Add10~57_sumout\,
	cout => \inst3|Add10~58\);

\inst3|Add10~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~53_sumout\ = SUM(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add8~57_sumout\ ) + ( \inst3|Add10~58\ ))
-- \inst3|Add10~54\ = CARRY(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add8~57_sumout\ ) + ( \inst3|Add10~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(3),
	dataf => \inst3|ALT_INV_Add8~57_sumout\,
	cin => \inst3|Add10~58\,
	sumout => \inst3|Add10~53_sumout\,
	cout => \inst3|Add10~54\);

\inst3|Add10~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~49_sumout\ = SUM(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add8~53_sumout\ ) + ( \inst3|Add10~54\ ))
-- \inst3|Add10~50\ = CARRY(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add8~53_sumout\ ) + ( \inst3|Add10~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_Add8~53_sumout\,
	cin => \inst3|Add10~54\,
	sumout => \inst3|Add10~49_sumout\,
	cout => \inst3|Add10~50\);

\inst3|Add10~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~45_sumout\ = SUM(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add8~49_sumout\ ) + ( \inst3|Add10~50\ ))
-- \inst3|Add10~46\ = CARRY(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add8~49_sumout\ ) + ( \inst3|Add10~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(5),
	dataf => \inst3|ALT_INV_Add8~49_sumout\,
	cin => \inst3|Add10~50\,
	sumout => \inst3|Add10~45_sumout\,
	cout => \inst3|Add10~46\);

\inst3|Add12~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~70_cout\ = CARRY(( !\inst3|Add10~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add10~5_sumout\,
	cin => GND,
	cout => \inst3|Add12~70_cout\);

\inst3|Add12~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~65_sumout\ = SUM(( !\inst2|BRout\(0) $ (\inst3|Add10~5_sumout\) ) + ( \inst3|ACC\(10) ) + ( \inst3|Add12~70_cout\ ))
-- \inst3|Add12~66\ = CARRY(( !\inst2|BRout\(0) $ (\inst3|Add10~5_sumout\) ) + ( \inst3|ACC\(10) ) + ( \inst3|Add12~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_Add10~5_sumout\,
	dataf => \inst3|ALT_INV_ACC\(10),
	cin => \inst3|Add12~70_cout\,
	sumout => \inst3|Add12~65_sumout\,
	cout => \inst3|Add12~66\);

\inst3|Add12~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~61_sumout\ = SUM(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add10~65_sumout\ ) + ( \inst3|Add12~66\ ))
-- \inst3|Add12~62\ = CARRY(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add10~65_sumout\ ) + ( \inst3|Add12~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(1),
	dataf => \inst3|ALT_INV_Add10~65_sumout\,
	cin => \inst3|Add12~66\,
	sumout => \inst3|Add12~61_sumout\,
	cout => \inst3|Add12~62\);

\inst3|Add12~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~57_sumout\ = SUM(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add10~61_sumout\ ) + ( \inst3|Add12~62\ ))
-- \inst3|Add12~58\ = CARRY(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add10~61_sumout\ ) + ( \inst3|Add12~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(2),
	dataf => \inst3|ALT_INV_Add10~61_sumout\,
	cin => \inst3|Add12~62\,
	sumout => \inst3|Add12~57_sumout\,
	cout => \inst3|Add12~58\);

\inst3|Add12~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~53_sumout\ = SUM(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add10~57_sumout\ ) + ( \inst3|Add12~58\ ))
-- \inst3|Add12~54\ = CARRY(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add10~57_sumout\ ) + ( \inst3|Add12~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(3),
	dataf => \inst3|ALT_INV_Add10~57_sumout\,
	cin => \inst3|Add12~58\,
	sumout => \inst3|Add12~53_sumout\,
	cout => \inst3|Add12~54\);

\inst3|Add12~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~49_sumout\ = SUM(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add10~53_sumout\ ) + ( \inst3|Add12~54\ ))
-- \inst3|Add12~50\ = CARRY(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add10~53_sumout\ ) + ( \inst3|Add12~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_Add10~53_sumout\,
	cin => \inst3|Add12~54\,
	sumout => \inst3|Add12~49_sumout\,
	cout => \inst3|Add12~50\);

\inst3|Add12~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~45_sumout\ = SUM(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add10~49_sumout\ ) + ( \inst3|Add12~50\ ))
-- \inst3|Add12~46\ = CARRY(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add10~49_sumout\ ) + ( \inst3|Add12~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(5),
	dataf => \inst3|ALT_INV_Add10~49_sumout\,
	cin => \inst3|Add12~50\,
	sumout => \inst3|Add12~45_sumout\,
	cout => \inst3|Add12~46\);

\inst3|Add12~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~41_sumout\ = SUM(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add10~45_sumout\ ) + ( \inst3|Add12~46\ ))
-- \inst3|Add12~42\ = CARRY(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add10~45_sumout\ ) + ( \inst3|Add12~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(6),
	dataf => \inst3|ALT_INV_Add10~45_sumout\,
	cin => \inst3|Add12~46\,
	sumout => \inst3|Add12~41_sumout\,
	cout => \inst3|Add12~42\);

\inst3|Add14~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~70_cout\ = CARRY(( !\inst3|Add12~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add12~5_sumout\,
	cin => GND,
	cout => \inst3|Add14~70_cout\);

\inst3|Add14~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~65_sumout\ = SUM(( !\inst2|BRout\(0) $ (\inst3|Add12~5_sumout\) ) + ( \inst3|ACC\(9) ) + ( \inst3|Add14~70_cout\ ))
-- \inst3|Add14~66\ = CARRY(( !\inst2|BRout\(0) $ (\inst3|Add12~5_sumout\) ) + ( \inst3|ACC\(9) ) + ( \inst3|Add14~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_Add12~5_sumout\,
	dataf => \inst3|ALT_INV_ACC\(9),
	cin => \inst3|Add14~70_cout\,
	sumout => \inst3|Add14~65_sumout\,
	cout => \inst3|Add14~66\);

\inst3|Add14~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~61_sumout\ = SUM(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add12~65_sumout\ ) + ( \inst3|Add14~66\ ))
-- \inst3|Add14~62\ = CARRY(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add12~65_sumout\ ) + ( \inst3|Add14~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(1),
	dataf => \inst3|ALT_INV_Add12~65_sumout\,
	cin => \inst3|Add14~66\,
	sumout => \inst3|Add14~61_sumout\,
	cout => \inst3|Add14~62\);

\inst3|Add14~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~57_sumout\ = SUM(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add12~61_sumout\ ) + ( \inst3|Add14~62\ ))
-- \inst3|Add14~58\ = CARRY(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add12~61_sumout\ ) + ( \inst3|Add14~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(2),
	dataf => \inst3|ALT_INV_Add12~61_sumout\,
	cin => \inst3|Add14~62\,
	sumout => \inst3|Add14~57_sumout\,
	cout => \inst3|Add14~58\);

\inst3|Add14~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~53_sumout\ = SUM(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add12~57_sumout\ ) + ( \inst3|Add14~58\ ))
-- \inst3|Add14~54\ = CARRY(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add12~57_sumout\ ) + ( \inst3|Add14~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(3),
	dataf => \inst3|ALT_INV_Add12~57_sumout\,
	cin => \inst3|Add14~58\,
	sumout => \inst3|Add14~53_sumout\,
	cout => \inst3|Add14~54\);

\inst3|Add14~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~49_sumout\ = SUM(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add12~53_sumout\ ) + ( \inst3|Add14~54\ ))
-- \inst3|Add14~50\ = CARRY(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add12~53_sumout\ ) + ( \inst3|Add14~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_Add12~53_sumout\,
	cin => \inst3|Add14~54\,
	sumout => \inst3|Add14~49_sumout\,
	cout => \inst3|Add14~50\);

\inst3|Add14~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~45_sumout\ = SUM(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add12~49_sumout\ ) + ( \inst3|Add14~50\ ))
-- \inst3|Add14~46\ = CARRY(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add12~49_sumout\ ) + ( \inst3|Add14~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(5),
	dataf => \inst3|ALT_INV_Add12~49_sumout\,
	cin => \inst3|Add14~50\,
	sumout => \inst3|Add14~45_sumout\,
	cout => \inst3|Add14~46\);

\inst3|Add14~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~41_sumout\ = SUM(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add12~45_sumout\ ) + ( \inst3|Add14~46\ ))
-- \inst3|Add14~42\ = CARRY(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add12~45_sumout\ ) + ( \inst3|Add14~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(6),
	dataf => \inst3|ALT_INV_Add12~45_sumout\,
	cin => \inst3|Add14~46\,
	sumout => \inst3|Add14~41_sumout\,
	cout => \inst3|Add14~42\);

\inst3|Add14~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~37_sumout\ = SUM(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add12~41_sumout\ ) + ( \inst3|Add14~42\ ))
-- \inst3|Add14~38\ = CARRY(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add12~41_sumout\ ) + ( \inst3|Add14~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(7),
	dataf => \inst3|ALT_INV_Add12~41_sumout\,
	cin => \inst3|Add14~42\,
	sumout => \inst3|Add14~37_sumout\,
	cout => \inst3|Add14~38\);

\inst3|Add16~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~70_cout\ = CARRY(( !\inst3|Add14~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add14~5_sumout\,
	cin => GND,
	cout => \inst3|Add16~70_cout\);

\inst3|Add16~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~65_sumout\ = SUM(( !\inst2|BRout\(0) $ (\inst3|Add14~5_sumout\) ) + ( \inst3|ACC\(8) ) + ( \inst3|Add16~70_cout\ ))
-- \inst3|Add16~66\ = CARRY(( !\inst2|BRout\(0) $ (\inst3|Add14~5_sumout\) ) + ( \inst3|ACC\(8) ) + ( \inst3|Add16~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_Add14~5_sumout\,
	dataf => \inst3|ALT_INV_ACC\(8),
	cin => \inst3|Add16~70_cout\,
	sumout => \inst3|Add16~65_sumout\,
	cout => \inst3|Add16~66\);

\inst3|Add16~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~61_sumout\ = SUM(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add14~65_sumout\ ) + ( \inst3|Add16~66\ ))
-- \inst3|Add16~62\ = CARRY(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add14~65_sumout\ ) + ( \inst3|Add16~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(1),
	dataf => \inst3|ALT_INV_Add14~65_sumout\,
	cin => \inst3|Add16~66\,
	sumout => \inst3|Add16~61_sumout\,
	cout => \inst3|Add16~62\);

\inst3|Add16~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~57_sumout\ = SUM(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add14~61_sumout\ ) + ( \inst3|Add16~62\ ))
-- \inst3|Add16~58\ = CARRY(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add14~61_sumout\ ) + ( \inst3|Add16~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(2),
	dataf => \inst3|ALT_INV_Add14~61_sumout\,
	cin => \inst3|Add16~62\,
	sumout => \inst3|Add16~57_sumout\,
	cout => \inst3|Add16~58\);

\inst3|Add16~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~53_sumout\ = SUM(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add14~57_sumout\ ) + ( \inst3|Add16~58\ ))
-- \inst3|Add16~54\ = CARRY(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add14~57_sumout\ ) + ( \inst3|Add16~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(3),
	dataf => \inst3|ALT_INV_Add14~57_sumout\,
	cin => \inst3|Add16~58\,
	sumout => \inst3|Add16~53_sumout\,
	cout => \inst3|Add16~54\);

\inst3|Add16~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~49_sumout\ = SUM(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add14~53_sumout\ ) + ( \inst3|Add16~54\ ))
-- \inst3|Add16~50\ = CARRY(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add14~53_sumout\ ) + ( \inst3|Add16~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_Add14~53_sumout\,
	cin => \inst3|Add16~54\,
	sumout => \inst3|Add16~49_sumout\,
	cout => \inst3|Add16~50\);

\inst3|Add16~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~45_sumout\ = SUM(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add14~49_sumout\ ) + ( \inst3|Add16~50\ ))
-- \inst3|Add16~46\ = CARRY(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add14~49_sumout\ ) + ( \inst3|Add16~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(5),
	dataf => \inst3|ALT_INV_Add14~49_sumout\,
	cin => \inst3|Add16~50\,
	sumout => \inst3|Add16~45_sumout\,
	cout => \inst3|Add16~46\);

\inst3|Add16~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~41_sumout\ = SUM(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add14~45_sumout\ ) + ( \inst3|Add16~46\ ))
-- \inst3|Add16~42\ = CARRY(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add14~45_sumout\ ) + ( \inst3|Add16~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(6),
	dataf => \inst3|ALT_INV_Add14~45_sumout\,
	cin => \inst3|Add16~46\,
	sumout => \inst3|Add16~41_sumout\,
	cout => \inst3|Add16~42\);

\inst3|Add16~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~37_sumout\ = SUM(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add14~41_sumout\ ) + ( \inst3|Add16~42\ ))
-- \inst3|Add16~38\ = CARRY(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add14~41_sumout\ ) + ( \inst3|Add16~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(7),
	dataf => \inst3|ALT_INV_Add14~41_sumout\,
	cin => \inst3|Add16~42\,
	sumout => \inst3|Add16~37_sumout\,
	cout => \inst3|Add16~38\);

\inst3|Add16~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~33_sumout\ = SUM(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add14~37_sumout\ ) + ( \inst3|Add16~38\ ))
-- \inst3|Add16~34\ = CARRY(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add14~37_sumout\ ) + ( \inst3|Add16~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(8),
	dataf => \inst3|ALT_INV_Add14~37_sumout\,
	cin => \inst3|Add16~38\,
	sumout => \inst3|Add16~33_sumout\,
	cout => \inst3|Add16~34\);

\inst3|Add18~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~70_cout\ = CARRY(( !\inst3|Add16~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add16~5_sumout\,
	cin => GND,
	cout => \inst3|Add18~70_cout\);

\inst3|Add18~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~65_sumout\ = SUM(( !\inst2|BRout\(0) $ (\inst3|Add16~5_sumout\) ) + ( \inst3|ACC\(7) ) + ( \inst3|Add18~70_cout\ ))
-- \inst3|Add18~66\ = CARRY(( !\inst2|BRout\(0) $ (\inst3|Add16~5_sumout\) ) + ( \inst3|ACC\(7) ) + ( \inst3|Add18~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_Add16~5_sumout\,
	dataf => \inst3|ALT_INV_ACC\(7),
	cin => \inst3|Add18~70_cout\,
	sumout => \inst3|Add18~65_sumout\,
	cout => \inst3|Add18~66\);

\inst3|Add18~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~61_sumout\ = SUM(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add16~65_sumout\ ) + ( \inst3|Add18~66\ ))
-- \inst3|Add18~62\ = CARRY(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add16~65_sumout\ ) + ( \inst3|Add18~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(1),
	dataf => \inst3|ALT_INV_Add16~65_sumout\,
	cin => \inst3|Add18~66\,
	sumout => \inst3|Add18~61_sumout\,
	cout => \inst3|Add18~62\);

\inst3|Add18~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~57_sumout\ = SUM(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add16~61_sumout\ ) + ( \inst3|Add18~62\ ))
-- \inst3|Add18~58\ = CARRY(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add16~61_sumout\ ) + ( \inst3|Add18~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(2),
	dataf => \inst3|ALT_INV_Add16~61_sumout\,
	cin => \inst3|Add18~62\,
	sumout => \inst3|Add18~57_sumout\,
	cout => \inst3|Add18~58\);

\inst3|Add18~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~53_sumout\ = SUM(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add16~57_sumout\ ) + ( \inst3|Add18~58\ ))
-- \inst3|Add18~54\ = CARRY(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add16~57_sumout\ ) + ( \inst3|Add18~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(3),
	dataf => \inst3|ALT_INV_Add16~57_sumout\,
	cin => \inst3|Add18~58\,
	sumout => \inst3|Add18~53_sumout\,
	cout => \inst3|Add18~54\);

\inst3|Add18~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~49_sumout\ = SUM(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add16~53_sumout\ ) + ( \inst3|Add18~54\ ))
-- \inst3|Add18~50\ = CARRY(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add16~53_sumout\ ) + ( \inst3|Add18~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_Add16~53_sumout\,
	cin => \inst3|Add18~54\,
	sumout => \inst3|Add18~49_sumout\,
	cout => \inst3|Add18~50\);

\inst3|Add18~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~45_sumout\ = SUM(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add16~49_sumout\ ) + ( \inst3|Add18~50\ ))
-- \inst3|Add18~46\ = CARRY(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add16~49_sumout\ ) + ( \inst3|Add18~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(5),
	dataf => \inst3|ALT_INV_Add16~49_sumout\,
	cin => \inst3|Add18~50\,
	sumout => \inst3|Add18~45_sumout\,
	cout => \inst3|Add18~46\);

\inst3|Add18~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~41_sumout\ = SUM(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add16~45_sumout\ ) + ( \inst3|Add18~46\ ))
-- \inst3|Add18~42\ = CARRY(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add16~45_sumout\ ) + ( \inst3|Add18~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(6),
	dataf => \inst3|ALT_INV_Add16~45_sumout\,
	cin => \inst3|Add18~46\,
	sumout => \inst3|Add18~41_sumout\,
	cout => \inst3|Add18~42\);

\inst3|Add18~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~37_sumout\ = SUM(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add16~41_sumout\ ) + ( \inst3|Add18~42\ ))
-- \inst3|Add18~38\ = CARRY(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add16~41_sumout\ ) + ( \inst3|Add18~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(7),
	dataf => \inst3|ALT_INV_Add16~41_sumout\,
	cin => \inst3|Add18~42\,
	sumout => \inst3|Add18~37_sumout\,
	cout => \inst3|Add18~38\);

\inst3|Add18~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~33_sumout\ = SUM(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add16~37_sumout\ ) + ( \inst3|Add18~38\ ))
-- \inst3|Add18~34\ = CARRY(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add16~37_sumout\ ) + ( \inst3|Add18~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(8),
	dataf => \inst3|ALT_INV_Add16~37_sumout\,
	cin => \inst3|Add18~38\,
	sumout => \inst3|Add18~33_sumout\,
	cout => \inst3|Add18~34\);

\inst3|Add18~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~29_sumout\ = SUM(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add16~33_sumout\ ) + ( \inst3|Add18~34\ ))
-- \inst3|Add18~30\ = CARRY(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add16~33_sumout\ ) + ( \inst3|Add18~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_Add16~33_sumout\,
	cin => \inst3|Add18~34\,
	sumout => \inst3|Add18~29_sumout\,
	cout => \inst3|Add18~30\);

\inst3|Add20~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~70_cout\ = CARRY(( !\inst3|Add18~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add18~5_sumout\,
	cin => GND,
	cout => \inst3|Add20~70_cout\);

\inst3|Add20~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~65_sumout\ = SUM(( !\inst2|BRout\(0) $ (\inst3|Add18~5_sumout\) ) + ( \inst3|ACC\(6) ) + ( \inst3|Add20~70_cout\ ))
-- \inst3|Add20~66\ = CARRY(( !\inst2|BRout\(0) $ (\inst3|Add18~5_sumout\) ) + ( \inst3|ACC\(6) ) + ( \inst3|Add20~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_Add18~5_sumout\,
	dataf => \inst3|ALT_INV_ACC\(6),
	cin => \inst3|Add20~70_cout\,
	sumout => \inst3|Add20~65_sumout\,
	cout => \inst3|Add20~66\);

\inst3|Add20~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~61_sumout\ = SUM(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add18~65_sumout\ ) + ( \inst3|Add20~66\ ))
-- \inst3|Add20~62\ = CARRY(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add18~65_sumout\ ) + ( \inst3|Add20~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(1),
	dataf => \inst3|ALT_INV_Add18~65_sumout\,
	cin => \inst3|Add20~66\,
	sumout => \inst3|Add20~61_sumout\,
	cout => \inst3|Add20~62\);

\inst3|Add20~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~57_sumout\ = SUM(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add18~61_sumout\ ) + ( \inst3|Add20~62\ ))
-- \inst3|Add20~58\ = CARRY(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add18~61_sumout\ ) + ( \inst3|Add20~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(2),
	dataf => \inst3|ALT_INV_Add18~61_sumout\,
	cin => \inst3|Add20~62\,
	sumout => \inst3|Add20~57_sumout\,
	cout => \inst3|Add20~58\);

\inst3|Add20~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~53_sumout\ = SUM(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add18~57_sumout\ ) + ( \inst3|Add20~58\ ))
-- \inst3|Add20~54\ = CARRY(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add18~57_sumout\ ) + ( \inst3|Add20~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(3),
	dataf => \inst3|ALT_INV_Add18~57_sumout\,
	cin => \inst3|Add20~58\,
	sumout => \inst3|Add20~53_sumout\,
	cout => \inst3|Add20~54\);

\inst3|Add20~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~49_sumout\ = SUM(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add18~53_sumout\ ) + ( \inst3|Add20~54\ ))
-- \inst3|Add20~50\ = CARRY(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add18~53_sumout\ ) + ( \inst3|Add20~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_Add18~53_sumout\,
	cin => \inst3|Add20~54\,
	sumout => \inst3|Add20~49_sumout\,
	cout => \inst3|Add20~50\);

\inst3|Add20~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~45_sumout\ = SUM(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add18~49_sumout\ ) + ( \inst3|Add20~50\ ))
-- \inst3|Add20~46\ = CARRY(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add18~49_sumout\ ) + ( \inst3|Add20~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(5),
	dataf => \inst3|ALT_INV_Add18~49_sumout\,
	cin => \inst3|Add20~50\,
	sumout => \inst3|Add20~45_sumout\,
	cout => \inst3|Add20~46\);

\inst3|Add20~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~41_sumout\ = SUM(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add18~45_sumout\ ) + ( \inst3|Add20~46\ ))
-- \inst3|Add20~42\ = CARRY(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add18~45_sumout\ ) + ( \inst3|Add20~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(6),
	dataf => \inst3|ALT_INV_Add18~45_sumout\,
	cin => \inst3|Add20~46\,
	sumout => \inst3|Add20~41_sumout\,
	cout => \inst3|Add20~42\);

\inst3|Add20~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~37_sumout\ = SUM(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add18~41_sumout\ ) + ( \inst3|Add20~42\ ))
-- \inst3|Add20~38\ = CARRY(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add18~41_sumout\ ) + ( \inst3|Add20~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(7),
	dataf => \inst3|ALT_INV_Add18~41_sumout\,
	cin => \inst3|Add20~42\,
	sumout => \inst3|Add20~37_sumout\,
	cout => \inst3|Add20~38\);

\inst3|Add20~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~33_sumout\ = SUM(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add18~37_sumout\ ) + ( \inst3|Add20~38\ ))
-- \inst3|Add20~34\ = CARRY(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add18~37_sumout\ ) + ( \inst3|Add20~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(8),
	dataf => \inst3|ALT_INV_Add18~37_sumout\,
	cin => \inst3|Add20~38\,
	sumout => \inst3|Add20~33_sumout\,
	cout => \inst3|Add20~34\);

\inst3|Add20~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~29_sumout\ = SUM(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add18~33_sumout\ ) + ( \inst3|Add20~34\ ))
-- \inst3|Add20~30\ = CARRY(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add18~33_sumout\ ) + ( \inst3|Add20~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_Add18~33_sumout\,
	cin => \inst3|Add20~34\,
	sumout => \inst3|Add20~29_sumout\,
	cout => \inst3|Add20~30\);

\inst3|Add20~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~25_sumout\ = SUM(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add18~29_sumout\ ) + ( \inst3|Add20~30\ ))
-- \inst3|Add20~26\ = CARRY(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add18~29_sumout\ ) + ( \inst3|Add20~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(10),
	dataf => \inst3|ALT_INV_Add18~29_sumout\,
	cin => \inst3|Add20~30\,
	sumout => \inst3|Add20~25_sumout\,
	cout => \inst3|Add20~26\);

\inst3|Add22~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~70_cout\ = CARRY(( !\inst3|Add20~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add20~5_sumout\,
	cin => GND,
	cout => \inst3|Add22~70_cout\);

\inst3|Add22~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~65_sumout\ = SUM(( !\inst2|BRout\(0) $ (\inst3|Add20~5_sumout\) ) + ( \inst3|ACC\(5) ) + ( \inst3|Add22~70_cout\ ))
-- \inst3|Add22~66\ = CARRY(( !\inst2|BRout\(0) $ (\inst3|Add20~5_sumout\) ) + ( \inst3|ACC\(5) ) + ( \inst3|Add22~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_Add20~5_sumout\,
	dataf => \inst3|ALT_INV_ACC\(5),
	cin => \inst3|Add22~70_cout\,
	sumout => \inst3|Add22~65_sumout\,
	cout => \inst3|Add22~66\);

\inst3|Add22~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~61_sumout\ = SUM(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add20~65_sumout\ ) + ( \inst3|Add22~66\ ))
-- \inst3|Add22~62\ = CARRY(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add20~65_sumout\ ) + ( \inst3|Add22~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(1),
	dataf => \inst3|ALT_INV_Add20~65_sumout\,
	cin => \inst3|Add22~66\,
	sumout => \inst3|Add22~61_sumout\,
	cout => \inst3|Add22~62\);

\inst3|Add22~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~57_sumout\ = SUM(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add20~61_sumout\ ) + ( \inst3|Add22~62\ ))
-- \inst3|Add22~58\ = CARRY(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add20~61_sumout\ ) + ( \inst3|Add22~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(2),
	dataf => \inst3|ALT_INV_Add20~61_sumout\,
	cin => \inst3|Add22~62\,
	sumout => \inst3|Add22~57_sumout\,
	cout => \inst3|Add22~58\);

\inst3|Add22~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~53_sumout\ = SUM(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add20~57_sumout\ ) + ( \inst3|Add22~58\ ))
-- \inst3|Add22~54\ = CARRY(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add20~57_sumout\ ) + ( \inst3|Add22~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(3),
	dataf => \inst3|ALT_INV_Add20~57_sumout\,
	cin => \inst3|Add22~58\,
	sumout => \inst3|Add22~53_sumout\,
	cout => \inst3|Add22~54\);

\inst3|Add22~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~49_sumout\ = SUM(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add20~53_sumout\ ) + ( \inst3|Add22~54\ ))
-- \inst3|Add22~50\ = CARRY(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add20~53_sumout\ ) + ( \inst3|Add22~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_Add20~53_sumout\,
	cin => \inst3|Add22~54\,
	sumout => \inst3|Add22~49_sumout\,
	cout => \inst3|Add22~50\);

\inst3|Add22~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~45_sumout\ = SUM(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add20~49_sumout\ ) + ( \inst3|Add22~50\ ))
-- \inst3|Add22~46\ = CARRY(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add20~49_sumout\ ) + ( \inst3|Add22~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(5),
	dataf => \inst3|ALT_INV_Add20~49_sumout\,
	cin => \inst3|Add22~50\,
	sumout => \inst3|Add22~45_sumout\,
	cout => \inst3|Add22~46\);

\inst3|Add22~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~41_sumout\ = SUM(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add20~45_sumout\ ) + ( \inst3|Add22~46\ ))
-- \inst3|Add22~42\ = CARRY(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add20~45_sumout\ ) + ( \inst3|Add22~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(6),
	dataf => \inst3|ALT_INV_Add20~45_sumout\,
	cin => \inst3|Add22~46\,
	sumout => \inst3|Add22~41_sumout\,
	cout => \inst3|Add22~42\);

\inst3|Add22~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~37_sumout\ = SUM(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add20~41_sumout\ ) + ( \inst3|Add22~42\ ))
-- \inst3|Add22~38\ = CARRY(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add20~41_sumout\ ) + ( \inst3|Add22~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(7),
	dataf => \inst3|ALT_INV_Add20~41_sumout\,
	cin => \inst3|Add22~42\,
	sumout => \inst3|Add22~37_sumout\,
	cout => \inst3|Add22~38\);

\inst3|Add22~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~33_sumout\ = SUM(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add20~37_sumout\ ) + ( \inst3|Add22~38\ ))
-- \inst3|Add22~34\ = CARRY(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add20~37_sumout\ ) + ( \inst3|Add22~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(8),
	dataf => \inst3|ALT_INV_Add20~37_sumout\,
	cin => \inst3|Add22~38\,
	sumout => \inst3|Add22~33_sumout\,
	cout => \inst3|Add22~34\);

\inst3|Add22~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~29_sumout\ = SUM(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add20~33_sumout\ ) + ( \inst3|Add22~34\ ))
-- \inst3|Add22~30\ = CARRY(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add20~33_sumout\ ) + ( \inst3|Add22~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_Add20~33_sumout\,
	cin => \inst3|Add22~34\,
	sumout => \inst3|Add22~29_sumout\,
	cout => \inst3|Add22~30\);

\inst3|Add22~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~25_sumout\ = SUM(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add20~29_sumout\ ) + ( \inst3|Add22~30\ ))
-- \inst3|Add22~26\ = CARRY(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add20~29_sumout\ ) + ( \inst3|Add22~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(10),
	dataf => \inst3|ALT_INV_Add20~29_sumout\,
	cin => \inst3|Add22~30\,
	sumout => \inst3|Add22~25_sumout\,
	cout => \inst3|Add22~26\);

\inst3|Add22~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~21_sumout\ = SUM(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add20~25_sumout\ ) + ( \inst3|Add22~26\ ))
-- \inst3|Add22~22\ = CARRY(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add20~25_sumout\ ) + ( \inst3|Add22~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_Add20~25_sumout\,
	cin => \inst3|Add22~26\,
	sumout => \inst3|Add22~21_sumout\,
	cout => \inst3|Add22~22\);

\inst3|Add24~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~70_cout\ = CARRY(( !\inst3|Add22~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add22~5_sumout\,
	cin => GND,
	cout => \inst3|Add24~70_cout\);

\inst3|Add24~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~65_sumout\ = SUM(( !\inst2|BRout\(0) $ (\inst3|Add22~5_sumout\) ) + ( \inst3|ACC\(4) ) + ( \inst3|Add24~70_cout\ ))
-- \inst3|Add24~66\ = CARRY(( !\inst2|BRout\(0) $ (\inst3|Add22~5_sumout\) ) + ( \inst3|ACC\(4) ) + ( \inst3|Add24~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_Add22~5_sumout\,
	dataf => \inst3|ALT_INV_ACC\(4),
	cin => \inst3|Add24~70_cout\,
	sumout => \inst3|Add24~65_sumout\,
	cout => \inst3|Add24~66\);

\inst3|Add24~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~61_sumout\ = SUM(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add22~65_sumout\ ) + ( \inst3|Add24~66\ ))
-- \inst3|Add24~62\ = CARRY(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add22~65_sumout\ ) + ( \inst3|Add24~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(1),
	dataf => \inst3|ALT_INV_Add22~65_sumout\,
	cin => \inst3|Add24~66\,
	sumout => \inst3|Add24~61_sumout\,
	cout => \inst3|Add24~62\);

\inst3|Add24~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~57_sumout\ = SUM(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add22~61_sumout\ ) + ( \inst3|Add24~62\ ))
-- \inst3|Add24~58\ = CARRY(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add22~61_sumout\ ) + ( \inst3|Add24~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(2),
	dataf => \inst3|ALT_INV_Add22~61_sumout\,
	cin => \inst3|Add24~62\,
	sumout => \inst3|Add24~57_sumout\,
	cout => \inst3|Add24~58\);

\inst3|Add24~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~53_sumout\ = SUM(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add22~57_sumout\ ) + ( \inst3|Add24~58\ ))
-- \inst3|Add24~54\ = CARRY(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add22~57_sumout\ ) + ( \inst3|Add24~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(3),
	dataf => \inst3|ALT_INV_Add22~57_sumout\,
	cin => \inst3|Add24~58\,
	sumout => \inst3|Add24~53_sumout\,
	cout => \inst3|Add24~54\);

\inst3|Add24~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~49_sumout\ = SUM(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add22~53_sumout\ ) + ( \inst3|Add24~54\ ))
-- \inst3|Add24~50\ = CARRY(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add22~53_sumout\ ) + ( \inst3|Add24~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_Add22~53_sumout\,
	cin => \inst3|Add24~54\,
	sumout => \inst3|Add24~49_sumout\,
	cout => \inst3|Add24~50\);

\inst3|Add24~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~45_sumout\ = SUM(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add22~49_sumout\ ) + ( \inst3|Add24~50\ ))
-- \inst3|Add24~46\ = CARRY(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add22~49_sumout\ ) + ( \inst3|Add24~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(5),
	dataf => \inst3|ALT_INV_Add22~49_sumout\,
	cin => \inst3|Add24~50\,
	sumout => \inst3|Add24~45_sumout\,
	cout => \inst3|Add24~46\);

\inst3|Add24~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~41_sumout\ = SUM(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add22~45_sumout\ ) + ( \inst3|Add24~46\ ))
-- \inst3|Add24~42\ = CARRY(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add22~45_sumout\ ) + ( \inst3|Add24~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(6),
	dataf => \inst3|ALT_INV_Add22~45_sumout\,
	cin => \inst3|Add24~46\,
	sumout => \inst3|Add24~41_sumout\,
	cout => \inst3|Add24~42\);

\inst3|Add24~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~37_sumout\ = SUM(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add22~41_sumout\ ) + ( \inst3|Add24~42\ ))
-- \inst3|Add24~38\ = CARRY(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add22~41_sumout\ ) + ( \inst3|Add24~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(7),
	dataf => \inst3|ALT_INV_Add22~41_sumout\,
	cin => \inst3|Add24~42\,
	sumout => \inst3|Add24~37_sumout\,
	cout => \inst3|Add24~38\);

\inst3|Add24~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~33_sumout\ = SUM(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add22~37_sumout\ ) + ( \inst3|Add24~38\ ))
-- \inst3|Add24~34\ = CARRY(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add22~37_sumout\ ) + ( \inst3|Add24~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(8),
	dataf => \inst3|ALT_INV_Add22~37_sumout\,
	cin => \inst3|Add24~38\,
	sumout => \inst3|Add24~33_sumout\,
	cout => \inst3|Add24~34\);

\inst3|Add24~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~29_sumout\ = SUM(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add22~33_sumout\ ) + ( \inst3|Add24~34\ ))
-- \inst3|Add24~30\ = CARRY(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add22~33_sumout\ ) + ( \inst3|Add24~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_Add22~33_sumout\,
	cin => \inst3|Add24~34\,
	sumout => \inst3|Add24~29_sumout\,
	cout => \inst3|Add24~30\);

\inst3|Add24~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~25_sumout\ = SUM(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add22~29_sumout\ ) + ( \inst3|Add24~30\ ))
-- \inst3|Add24~26\ = CARRY(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add22~29_sumout\ ) + ( \inst3|Add24~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(10),
	dataf => \inst3|ALT_INV_Add22~29_sumout\,
	cin => \inst3|Add24~30\,
	sumout => \inst3|Add24~25_sumout\,
	cout => \inst3|Add24~26\);

\inst3|Add24~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~21_sumout\ = SUM(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add22~25_sumout\ ) + ( \inst3|Add24~26\ ))
-- \inst3|Add24~22\ = CARRY(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add22~25_sumout\ ) + ( \inst3|Add24~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_Add22~25_sumout\,
	cin => \inst3|Add24~26\,
	sumout => \inst3|Add24~21_sumout\,
	cout => \inst3|Add24~22\);

\inst3|Add24~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~17_sumout\ = SUM(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add22~21_sumout\ ) + ( \inst3|Add24~22\ ))
-- \inst3|Add24~18\ = CARRY(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add22~21_sumout\ ) + ( \inst3|Add24~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(12),
	dataf => \inst3|ALT_INV_Add22~21_sumout\,
	cin => \inst3|Add24~22\,
	sumout => \inst3|Add24~17_sumout\,
	cout => \inst3|Add24~18\);

\inst3|Add26~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~70_cout\ = CARRY(( !\inst3|Add24~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add24~5_sumout\,
	cin => GND,
	cout => \inst3|Add26~70_cout\);

\inst3|Add26~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~65_sumout\ = SUM(( !\inst2|BRout\(0) $ (\inst3|Add24~5_sumout\) ) + ( \inst3|ACC\(3) ) + ( \inst3|Add26~70_cout\ ))
-- \inst3|Add26~66\ = CARRY(( !\inst2|BRout\(0) $ (\inst3|Add24~5_sumout\) ) + ( \inst3|ACC\(3) ) + ( \inst3|Add26~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_Add24~5_sumout\,
	dataf => \inst3|ALT_INV_ACC\(3),
	cin => \inst3|Add26~70_cout\,
	sumout => \inst3|Add26~65_sumout\,
	cout => \inst3|Add26~66\);

\inst3|Add26~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~61_sumout\ = SUM(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add24~65_sumout\ ) + ( \inst3|Add26~66\ ))
-- \inst3|Add26~62\ = CARRY(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add24~65_sumout\ ) + ( \inst3|Add26~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(1),
	dataf => \inst3|ALT_INV_Add24~65_sumout\,
	cin => \inst3|Add26~66\,
	sumout => \inst3|Add26~61_sumout\,
	cout => \inst3|Add26~62\);

\inst3|Add26~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~57_sumout\ = SUM(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add24~61_sumout\ ) + ( \inst3|Add26~62\ ))
-- \inst3|Add26~58\ = CARRY(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add24~61_sumout\ ) + ( \inst3|Add26~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(2),
	dataf => \inst3|ALT_INV_Add24~61_sumout\,
	cin => \inst3|Add26~62\,
	sumout => \inst3|Add26~57_sumout\,
	cout => \inst3|Add26~58\);

\inst3|Add26~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~53_sumout\ = SUM(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add24~57_sumout\ ) + ( \inst3|Add26~58\ ))
-- \inst3|Add26~54\ = CARRY(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add24~57_sumout\ ) + ( \inst3|Add26~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(3),
	dataf => \inst3|ALT_INV_Add24~57_sumout\,
	cin => \inst3|Add26~58\,
	sumout => \inst3|Add26~53_sumout\,
	cout => \inst3|Add26~54\);

\inst3|Add26~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~49_sumout\ = SUM(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add24~53_sumout\ ) + ( \inst3|Add26~54\ ))
-- \inst3|Add26~50\ = CARRY(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add24~53_sumout\ ) + ( \inst3|Add26~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_Add24~53_sumout\,
	cin => \inst3|Add26~54\,
	sumout => \inst3|Add26~49_sumout\,
	cout => \inst3|Add26~50\);

\inst3|Add26~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~45_sumout\ = SUM(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add24~49_sumout\ ) + ( \inst3|Add26~50\ ))
-- \inst3|Add26~46\ = CARRY(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add24~49_sumout\ ) + ( \inst3|Add26~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(5),
	dataf => \inst3|ALT_INV_Add24~49_sumout\,
	cin => \inst3|Add26~50\,
	sumout => \inst3|Add26~45_sumout\,
	cout => \inst3|Add26~46\);

\inst3|Add26~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~41_sumout\ = SUM(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add24~45_sumout\ ) + ( \inst3|Add26~46\ ))
-- \inst3|Add26~42\ = CARRY(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add24~45_sumout\ ) + ( \inst3|Add26~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(6),
	dataf => \inst3|ALT_INV_Add24~45_sumout\,
	cin => \inst3|Add26~46\,
	sumout => \inst3|Add26~41_sumout\,
	cout => \inst3|Add26~42\);

\inst3|Add26~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~37_sumout\ = SUM(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add24~41_sumout\ ) + ( \inst3|Add26~42\ ))
-- \inst3|Add26~38\ = CARRY(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add24~41_sumout\ ) + ( \inst3|Add26~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(7),
	dataf => \inst3|ALT_INV_Add24~41_sumout\,
	cin => \inst3|Add26~42\,
	sumout => \inst3|Add26~37_sumout\,
	cout => \inst3|Add26~38\);

\inst3|Add26~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~33_sumout\ = SUM(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add24~37_sumout\ ) + ( \inst3|Add26~38\ ))
-- \inst3|Add26~34\ = CARRY(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add24~37_sumout\ ) + ( \inst3|Add26~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(8),
	dataf => \inst3|ALT_INV_Add24~37_sumout\,
	cin => \inst3|Add26~38\,
	sumout => \inst3|Add26~33_sumout\,
	cout => \inst3|Add26~34\);

\inst3|Add26~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~29_sumout\ = SUM(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add24~33_sumout\ ) + ( \inst3|Add26~34\ ))
-- \inst3|Add26~30\ = CARRY(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add24~33_sumout\ ) + ( \inst3|Add26~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_Add24~33_sumout\,
	cin => \inst3|Add26~34\,
	sumout => \inst3|Add26~29_sumout\,
	cout => \inst3|Add26~30\);

\inst3|Add26~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~25_sumout\ = SUM(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add24~29_sumout\ ) + ( \inst3|Add26~30\ ))
-- \inst3|Add26~26\ = CARRY(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add24~29_sumout\ ) + ( \inst3|Add26~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(10),
	dataf => \inst3|ALT_INV_Add24~29_sumout\,
	cin => \inst3|Add26~30\,
	sumout => \inst3|Add26~25_sumout\,
	cout => \inst3|Add26~26\);

\inst3|Add26~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~21_sumout\ = SUM(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add24~25_sumout\ ) + ( \inst3|Add26~26\ ))
-- \inst3|Add26~22\ = CARRY(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add24~25_sumout\ ) + ( \inst3|Add26~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_Add24~25_sumout\,
	cin => \inst3|Add26~26\,
	sumout => \inst3|Add26~21_sumout\,
	cout => \inst3|Add26~22\);

\inst3|Add26~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~17_sumout\ = SUM(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add24~21_sumout\ ) + ( \inst3|Add26~22\ ))
-- \inst3|Add26~18\ = CARRY(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add24~21_sumout\ ) + ( \inst3|Add26~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(12),
	dataf => \inst3|ALT_INV_Add24~21_sumout\,
	cin => \inst3|Add26~22\,
	sumout => \inst3|Add26~17_sumout\,
	cout => \inst3|Add26~18\);

\inst3|Add26~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~13_sumout\ = SUM(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add24~17_sumout\ ) + ( \inst3|Add26~18\ ))
-- \inst3|Add26~14\ = CARRY(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add24~17_sumout\ ) + ( \inst3|Add26~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_Add24~17_sumout\,
	cin => \inst3|Add26~18\,
	sumout => \inst3|Add26~13_sumout\,
	cout => \inst3|Add26~14\);

\inst3|Add28~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~70_cout\ = CARRY(( !\inst3|Add26~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add26~5_sumout\,
	cin => GND,
	cout => \inst3|Add28~70_cout\);

\inst3|Add28~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~65_sumout\ = SUM(( !\inst2|BRout\(0) $ (\inst3|Add26~5_sumout\) ) + ( \inst3|ACC\(2) ) + ( \inst3|Add28~70_cout\ ))
-- \inst3|Add28~66\ = CARRY(( !\inst2|BRout\(0) $ (\inst3|Add26~5_sumout\) ) + ( \inst3|ACC\(2) ) + ( \inst3|Add28~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_Add26~5_sumout\,
	dataf => \inst3|ALT_INV_ACC\(2),
	cin => \inst3|Add28~70_cout\,
	sumout => \inst3|Add28~65_sumout\,
	cout => \inst3|Add28~66\);

\inst3|Add28~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~61_sumout\ = SUM(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add26~65_sumout\ ) + ( \inst3|Add28~66\ ))
-- \inst3|Add28~62\ = CARRY(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add26~65_sumout\ ) + ( \inst3|Add28~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(1),
	dataf => \inst3|ALT_INV_Add26~65_sumout\,
	cin => \inst3|Add28~66\,
	sumout => \inst3|Add28~61_sumout\,
	cout => \inst3|Add28~62\);

\inst3|Add28~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~57_sumout\ = SUM(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add26~61_sumout\ ) + ( \inst3|Add28~62\ ))
-- \inst3|Add28~58\ = CARRY(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add26~61_sumout\ ) + ( \inst3|Add28~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(2),
	dataf => \inst3|ALT_INV_Add26~61_sumout\,
	cin => \inst3|Add28~62\,
	sumout => \inst3|Add28~57_sumout\,
	cout => \inst3|Add28~58\);

\inst3|Add28~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~53_sumout\ = SUM(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add26~57_sumout\ ) + ( \inst3|Add28~58\ ))
-- \inst3|Add28~54\ = CARRY(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add26~57_sumout\ ) + ( \inst3|Add28~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(3),
	dataf => \inst3|ALT_INV_Add26~57_sumout\,
	cin => \inst3|Add28~58\,
	sumout => \inst3|Add28~53_sumout\,
	cout => \inst3|Add28~54\);

\inst3|Add28~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~49_sumout\ = SUM(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add26~53_sumout\ ) + ( \inst3|Add28~54\ ))
-- \inst3|Add28~50\ = CARRY(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add26~53_sumout\ ) + ( \inst3|Add28~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_Add26~53_sumout\,
	cin => \inst3|Add28~54\,
	sumout => \inst3|Add28~49_sumout\,
	cout => \inst3|Add28~50\);

\inst3|Add28~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~45_sumout\ = SUM(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add26~49_sumout\ ) + ( \inst3|Add28~50\ ))
-- \inst3|Add28~46\ = CARRY(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add26~49_sumout\ ) + ( \inst3|Add28~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(5),
	dataf => \inst3|ALT_INV_Add26~49_sumout\,
	cin => \inst3|Add28~50\,
	sumout => \inst3|Add28~45_sumout\,
	cout => \inst3|Add28~46\);

\inst3|Add28~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~41_sumout\ = SUM(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add26~45_sumout\ ) + ( \inst3|Add28~46\ ))
-- \inst3|Add28~42\ = CARRY(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add26~45_sumout\ ) + ( \inst3|Add28~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(6),
	dataf => \inst3|ALT_INV_Add26~45_sumout\,
	cin => \inst3|Add28~46\,
	sumout => \inst3|Add28~41_sumout\,
	cout => \inst3|Add28~42\);

\inst3|Add28~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~37_sumout\ = SUM(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add26~41_sumout\ ) + ( \inst3|Add28~42\ ))
-- \inst3|Add28~38\ = CARRY(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add26~41_sumout\ ) + ( \inst3|Add28~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(7),
	dataf => \inst3|ALT_INV_Add26~41_sumout\,
	cin => \inst3|Add28~42\,
	sumout => \inst3|Add28~37_sumout\,
	cout => \inst3|Add28~38\);

\inst3|Add28~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~33_sumout\ = SUM(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add26~37_sumout\ ) + ( \inst3|Add28~38\ ))
-- \inst3|Add28~34\ = CARRY(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add26~37_sumout\ ) + ( \inst3|Add28~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(8),
	dataf => \inst3|ALT_INV_Add26~37_sumout\,
	cin => \inst3|Add28~38\,
	sumout => \inst3|Add28~33_sumout\,
	cout => \inst3|Add28~34\);

\inst3|Add28~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~29_sumout\ = SUM(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add26~33_sumout\ ) + ( \inst3|Add28~34\ ))
-- \inst3|Add28~30\ = CARRY(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add26~33_sumout\ ) + ( \inst3|Add28~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_Add26~33_sumout\,
	cin => \inst3|Add28~34\,
	sumout => \inst3|Add28~29_sumout\,
	cout => \inst3|Add28~30\);

\inst3|Add28~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~25_sumout\ = SUM(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add26~29_sumout\ ) + ( \inst3|Add28~30\ ))
-- \inst3|Add28~26\ = CARRY(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add26~29_sumout\ ) + ( \inst3|Add28~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(10),
	dataf => \inst3|ALT_INV_Add26~29_sumout\,
	cin => \inst3|Add28~30\,
	sumout => \inst3|Add28~25_sumout\,
	cout => \inst3|Add28~26\);

\inst3|Add28~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~21_sumout\ = SUM(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add26~25_sumout\ ) + ( \inst3|Add28~26\ ))
-- \inst3|Add28~22\ = CARRY(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add26~25_sumout\ ) + ( \inst3|Add28~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_Add26~25_sumout\,
	cin => \inst3|Add28~26\,
	sumout => \inst3|Add28~21_sumout\,
	cout => \inst3|Add28~22\);

\inst3|Add28~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~17_sumout\ = SUM(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add26~21_sumout\ ) + ( \inst3|Add28~22\ ))
-- \inst3|Add28~18\ = CARRY(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add26~21_sumout\ ) + ( \inst3|Add28~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(12),
	dataf => \inst3|ALT_INV_Add26~21_sumout\,
	cin => \inst3|Add28~22\,
	sumout => \inst3|Add28~17_sumout\,
	cout => \inst3|Add28~18\);

\inst3|Add28~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~13_sumout\ = SUM(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add26~17_sumout\ ) + ( \inst3|Add28~18\ ))
-- \inst3|Add28~14\ = CARRY(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add26~17_sumout\ ) + ( \inst3|Add28~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_Add26~17_sumout\,
	cin => \inst3|Add28~18\,
	sumout => \inst3|Add28~13_sumout\,
	cout => \inst3|Add28~14\);

\inst3|Add28~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~9_sumout\ = SUM(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add26~13_sumout\ ) + ( \inst3|Add28~14\ ))
-- \inst3|Add28~10\ = CARRY(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add26~13_sumout\ ) + ( \inst3|Add28~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(14),
	dataf => \inst3|ALT_INV_Add26~13_sumout\,
	cin => \inst3|Add28~14\,
	sumout => \inst3|Add28~9_sumout\,
	cout => \inst3|Add28~10\);

\inst3|Add30~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~70_cout\ = CARRY(( !\inst3|Add28~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add28~5_sumout\,
	cin => GND,
	cout => \inst3|Add30~70_cout\);

\inst3|Add30~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~65_sumout\ = SUM(( !\inst2|BRout\(0) $ (\inst3|Add28~5_sumout\) ) + ( \inst3|ACC\(1) ) + ( \inst3|Add30~70_cout\ ))
-- \inst3|Add30~66\ = CARRY(( !\inst2|BRout\(0) $ (\inst3|Add28~5_sumout\) ) + ( \inst3|ACC\(1) ) + ( \inst3|Add30~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_Add28~5_sumout\,
	dataf => \inst3|ALT_INV_ACC\(1),
	cin => \inst3|Add30~70_cout\,
	sumout => \inst3|Add30~65_sumout\,
	cout => \inst3|Add30~66\);

\inst3|Add30~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~61_sumout\ = SUM(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add28~65_sumout\ ) + ( \inst3|Add30~66\ ))
-- \inst3|Add30~62\ = CARRY(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(1)) ) + ( \inst3|Add28~65_sumout\ ) + ( \inst3|Add30~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(1),
	dataf => \inst3|ALT_INV_Add28~65_sumout\,
	cin => \inst3|Add30~66\,
	sumout => \inst3|Add30~61_sumout\,
	cout => \inst3|Add30~62\);

\inst3|Add30~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~57_sumout\ = SUM(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add28~61_sumout\ ) + ( \inst3|Add30~62\ ))
-- \inst3|Add30~58\ = CARRY(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(2)) ) + ( \inst3|Add28~61_sumout\ ) + ( \inst3|Add30~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(2),
	dataf => \inst3|ALT_INV_Add28~61_sumout\,
	cin => \inst3|Add30~62\,
	sumout => \inst3|Add30~57_sumout\,
	cout => \inst3|Add30~58\);

\inst3|Add30~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~53_sumout\ = SUM(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add28~57_sumout\ ) + ( \inst3|Add30~58\ ))
-- \inst3|Add30~54\ = CARRY(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add28~57_sumout\ ) + ( \inst3|Add30~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(3),
	dataf => \inst3|ALT_INV_Add28~57_sumout\,
	cin => \inst3|Add30~58\,
	sumout => \inst3|Add30~53_sumout\,
	cout => \inst3|Add30~54\);

\inst3|Add30~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~49_sumout\ = SUM(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add28~53_sumout\ ) + ( \inst3|Add30~54\ ))
-- \inst3|Add30~50\ = CARRY(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add28~53_sumout\ ) + ( \inst3|Add30~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_Add28~53_sumout\,
	cin => \inst3|Add30~54\,
	sumout => \inst3|Add30~49_sumout\,
	cout => \inst3|Add30~50\);

\inst3|Add30~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~45_sumout\ = SUM(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add28~49_sumout\ ) + ( \inst3|Add30~50\ ))
-- \inst3|Add30~46\ = CARRY(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add28~49_sumout\ ) + ( \inst3|Add30~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(5),
	dataf => \inst3|ALT_INV_Add28~49_sumout\,
	cin => \inst3|Add30~50\,
	sumout => \inst3|Add30~45_sumout\,
	cout => \inst3|Add30~46\);

\inst3|Add30~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~41_sumout\ = SUM(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add28~45_sumout\ ) + ( \inst3|Add30~46\ ))
-- \inst3|Add30~42\ = CARRY(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add28~45_sumout\ ) + ( \inst3|Add30~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(6),
	dataf => \inst3|ALT_INV_Add28~45_sumout\,
	cin => \inst3|Add30~46\,
	sumout => \inst3|Add30~41_sumout\,
	cout => \inst3|Add30~42\);

\inst3|Add30~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~37_sumout\ = SUM(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add28~41_sumout\ ) + ( \inst3|Add30~42\ ))
-- \inst3|Add30~38\ = CARRY(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add28~41_sumout\ ) + ( \inst3|Add30~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(7),
	dataf => \inst3|ALT_INV_Add28~41_sumout\,
	cin => \inst3|Add30~42\,
	sumout => \inst3|Add30~37_sumout\,
	cout => \inst3|Add30~38\);

\inst3|Add30~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~33_sumout\ = SUM(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add28~37_sumout\ ) + ( \inst3|Add30~38\ ))
-- \inst3|Add30~34\ = CARRY(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add28~37_sumout\ ) + ( \inst3|Add30~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(8),
	dataf => \inst3|ALT_INV_Add28~37_sumout\,
	cin => \inst3|Add30~38\,
	sumout => \inst3|Add30~33_sumout\,
	cout => \inst3|Add30~34\);

\inst3|Add30~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~29_sumout\ = SUM(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add28~33_sumout\ ) + ( \inst3|Add30~34\ ))
-- \inst3|Add30~30\ = CARRY(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add28~33_sumout\ ) + ( \inst3|Add30~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_Add28~33_sumout\,
	cin => \inst3|Add30~34\,
	sumout => \inst3|Add30~29_sumout\,
	cout => \inst3|Add30~30\);

\inst3|Add30~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~25_sumout\ = SUM(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add28~29_sumout\ ) + ( \inst3|Add30~30\ ))
-- \inst3|Add30~26\ = CARRY(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add28~29_sumout\ ) + ( \inst3|Add30~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(10),
	dataf => \inst3|ALT_INV_Add28~29_sumout\,
	cin => \inst3|Add30~30\,
	sumout => \inst3|Add30~25_sumout\,
	cout => \inst3|Add30~26\);

\inst3|Add30~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~21_sumout\ = SUM(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add28~25_sumout\ ) + ( \inst3|Add30~26\ ))
-- \inst3|Add30~22\ = CARRY(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add28~25_sumout\ ) + ( \inst3|Add30~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_Add28~25_sumout\,
	cin => \inst3|Add30~26\,
	sumout => \inst3|Add30~21_sumout\,
	cout => \inst3|Add30~22\);

\inst3|Add30~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~17_sumout\ = SUM(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add28~21_sumout\ ) + ( \inst3|Add30~22\ ))
-- \inst3|Add30~18\ = CARRY(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add28~21_sumout\ ) + ( \inst3|Add30~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(12),
	dataf => \inst3|ALT_INV_Add28~21_sumout\,
	cin => \inst3|Add30~22\,
	sumout => \inst3|Add30~17_sumout\,
	cout => \inst3|Add30~18\);

\inst3|Add30~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~13_sumout\ = SUM(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add28~17_sumout\ ) + ( \inst3|Add30~18\ ))
-- \inst3|Add30~14\ = CARRY(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add28~17_sumout\ ) + ( \inst3|Add30~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_Add28~17_sumout\,
	cin => \inst3|Add30~18\,
	sumout => \inst3|Add30~13_sumout\,
	cout => \inst3|Add30~14\);

\inst3|Add30~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~9_sumout\ = SUM(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add28~13_sumout\ ) + ( \inst3|Add30~14\ ))
-- \inst3|Add30~10\ = CARRY(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add28~13_sumout\ ) + ( \inst3|Add30~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(14),
	dataf => \inst3|ALT_INV_Add28~13_sumout\,
	cin => \inst3|Add30~14\,
	sumout => \inst3|Add30~9_sumout\,
	cout => \inst3|Add30~10\);

\inst3|Add30~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~5_sumout\ = SUM(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add28~9_sumout\ ) + ( \inst3|Add30~10\ ))
-- \inst3|Add30~6\ = CARRY(( !\inst3|Add28~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add28~9_sumout\ ) + ( \inst3|Add30~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(15),
	dataf => \inst3|ALT_INV_Add28~9_sumout\,
	cin => \inst3|Add30~10\,
	sumout => \inst3|Add30~5_sumout\,
	cout => \inst3|Add30~6\);

\inst3|Add31~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~66_cout\ = CARRY(( !\inst2|BRout\(0) $ (!\inst3|ACC\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst3|Add31~67\ = SHARE((!\inst2|BRout\(0)) # (\inst3|ACC\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_ACC\(0),
	cin => GND,
	sharein => GND,
	cout => \inst3|Add31~66_cout\,
	shareout => \inst3|Add31~67\);

\inst3|Add31~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~62_cout\ = CARRY(( !\inst2|BRout\(1) $ (\inst3|Add30~65_sumout\) ) + ( \inst3|Add31~67\ ) + ( \inst3|Add31~66_cout\ ))
-- \inst3|Add31~63\ = SHARE((!\inst2|BRout\(1) & \inst3|Add30~65_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(1),
	datad => \inst3|ALT_INV_Add30~65_sumout\,
	cin => \inst3|Add31~66_cout\,
	sharein => \inst3|Add31~67\,
	cout => \inst3|Add31~62_cout\,
	shareout => \inst3|Add31~63\);

\inst3|Add31~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~58_cout\ = CARRY(( !\inst2|BRout\(2) $ (\inst3|Add30~61_sumout\) ) + ( \inst3|Add31~63\ ) + ( \inst3|Add31~62_cout\ ))
-- \inst3|Add31~59\ = SHARE((!\inst2|BRout\(2) & \inst3|Add30~61_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(2),
	datad => \inst3|ALT_INV_Add30~61_sumout\,
	cin => \inst3|Add31~62_cout\,
	sharein => \inst3|Add31~63\,
	cout => \inst3|Add31~58_cout\,
	shareout => \inst3|Add31~59\);

\inst3|Add31~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~54_cout\ = CARRY(( !\inst2|BRout\(3) $ (\inst3|Add30~57_sumout\) ) + ( \inst3|Add31~59\ ) + ( \inst3|Add31~58_cout\ ))
-- \inst3|Add31~55\ = SHARE((!\inst2|BRout\(3) & \inst3|Add30~57_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(3),
	datad => \inst3|ALT_INV_Add30~57_sumout\,
	cin => \inst3|Add31~58_cout\,
	sharein => \inst3|Add31~59\,
	cout => \inst3|Add31~54_cout\,
	shareout => \inst3|Add31~55\);

\inst3|Add31~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~50_cout\ = CARRY(( !\inst2|BRout\(4) $ (\inst3|Add30~53_sumout\) ) + ( \inst3|Add31~55\ ) + ( \inst3|Add31~54_cout\ ))
-- \inst3|Add31~51\ = SHARE((!\inst2|BRout\(4) & \inst3|Add30~53_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(4),
	datad => \inst3|ALT_INV_Add30~53_sumout\,
	cin => \inst3|Add31~54_cout\,
	sharein => \inst3|Add31~55\,
	cout => \inst3|Add31~50_cout\,
	shareout => \inst3|Add31~51\);

\inst3|Add31~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~46_cout\ = CARRY(( !\inst2|BRout\(5) $ (\inst3|Add30~49_sumout\) ) + ( \inst3|Add31~51\ ) + ( \inst3|Add31~50_cout\ ))
-- \inst3|Add31~47\ = SHARE((!\inst2|BRout\(5) & \inst3|Add30~49_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(5),
	datad => \inst3|ALT_INV_Add30~49_sumout\,
	cin => \inst3|Add31~50_cout\,
	sharein => \inst3|Add31~51\,
	cout => \inst3|Add31~46_cout\,
	shareout => \inst3|Add31~47\);

\inst3|Add31~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~42_cout\ = CARRY(( !\inst2|BRout\(6) $ (\inst3|Add30~45_sumout\) ) + ( \inst3|Add31~47\ ) + ( \inst3|Add31~46_cout\ ))
-- \inst3|Add31~43\ = SHARE((!\inst2|BRout\(6) & \inst3|Add30~45_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(6),
	datad => \inst3|ALT_INV_Add30~45_sumout\,
	cin => \inst3|Add31~46_cout\,
	sharein => \inst3|Add31~47\,
	cout => \inst3|Add31~42_cout\,
	shareout => \inst3|Add31~43\);

\inst3|Add31~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~38_cout\ = CARRY(( !\inst2|BRout\(7) $ (\inst3|Add30~41_sumout\) ) + ( \inst3|Add31~43\ ) + ( \inst3|Add31~42_cout\ ))
-- \inst3|Add31~39\ = SHARE((!\inst2|BRout\(7) & \inst3|Add30~41_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(7),
	datad => \inst3|ALT_INV_Add30~41_sumout\,
	cin => \inst3|Add31~42_cout\,
	sharein => \inst3|Add31~43\,
	cout => \inst3|Add31~38_cout\,
	shareout => \inst3|Add31~39\);

\inst3|Add31~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~34_cout\ = CARRY(( !\inst2|BRout\(8) $ (\inst3|Add30~37_sumout\) ) + ( \inst3|Add31~39\ ) + ( \inst3|Add31~38_cout\ ))
-- \inst3|Add31~35\ = SHARE((!\inst2|BRout\(8) & \inst3|Add30~37_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(8),
	datad => \inst3|ALT_INV_Add30~37_sumout\,
	cin => \inst3|Add31~38_cout\,
	sharein => \inst3|Add31~39\,
	cout => \inst3|Add31~34_cout\,
	shareout => \inst3|Add31~35\);

\inst3|Add31~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~30_cout\ = CARRY(( !\inst2|BRout\(9) $ (\inst3|Add30~33_sumout\) ) + ( \inst3|Add31~35\ ) + ( \inst3|Add31~34_cout\ ))
-- \inst3|Add31~31\ = SHARE((!\inst2|BRout\(9) & \inst3|Add30~33_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(9),
	datad => \inst3|ALT_INV_Add30~33_sumout\,
	cin => \inst3|Add31~34_cout\,
	sharein => \inst3|Add31~35\,
	cout => \inst3|Add31~30_cout\,
	shareout => \inst3|Add31~31\);

\inst3|Add31~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~26_cout\ = CARRY(( !\inst2|BRout\(10) $ (\inst3|Add30~29_sumout\) ) + ( \inst3|Add31~31\ ) + ( \inst3|Add31~30_cout\ ))
-- \inst3|Add31~27\ = SHARE((!\inst2|BRout\(10) & \inst3|Add30~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(10),
	datad => \inst3|ALT_INV_Add30~29_sumout\,
	cin => \inst3|Add31~30_cout\,
	sharein => \inst3|Add31~31\,
	cout => \inst3|Add31~26_cout\,
	shareout => \inst3|Add31~27\);

\inst3|Add31~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~22_cout\ = CARRY(( !\inst2|BRout\(11) $ (\inst3|Add30~25_sumout\) ) + ( \inst3|Add31~27\ ) + ( \inst3|Add31~26_cout\ ))
-- \inst3|Add31~23\ = SHARE((!\inst2|BRout\(11) & \inst3|Add30~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(11),
	datad => \inst3|ALT_INV_Add30~25_sumout\,
	cin => \inst3|Add31~26_cout\,
	sharein => \inst3|Add31~27\,
	cout => \inst3|Add31~22_cout\,
	shareout => \inst3|Add31~23\);

\inst3|Add31~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~18_cout\ = CARRY(( !\inst2|BRout\(12) $ (\inst3|Add30~21_sumout\) ) + ( \inst3|Add31~23\ ) + ( \inst3|Add31~22_cout\ ))
-- \inst3|Add31~19\ = SHARE((!\inst2|BRout\(12) & \inst3|Add30~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(12),
	datad => \inst3|ALT_INV_Add30~21_sumout\,
	cin => \inst3|Add31~22_cout\,
	sharein => \inst3|Add31~23\,
	cout => \inst3|Add31~18_cout\,
	shareout => \inst3|Add31~19\);

\inst3|Add31~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~14_cout\ = CARRY(( !\inst2|BRout\(13) $ (\inst3|Add30~17_sumout\) ) + ( \inst3|Add31~19\ ) + ( \inst3|Add31~18_cout\ ))
-- \inst3|Add31~15\ = SHARE((!\inst2|BRout\(13) & \inst3|Add30~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(13),
	datad => \inst3|ALT_INV_Add30~17_sumout\,
	cin => \inst3|Add31~18_cout\,
	sharein => \inst3|Add31~19\,
	cout => \inst3|Add31~14_cout\,
	shareout => \inst3|Add31~15\);

\inst3|Add31~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~10_cout\ = CARRY(( !\inst2|BRout\(14) $ (\inst3|Add30~13_sumout\) ) + ( \inst3|Add31~15\ ) + ( \inst3|Add31~14_cout\ ))
-- \inst3|Add31~11\ = SHARE((!\inst2|BRout\(14) & \inst3|Add30~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(14),
	datad => \inst3|ALT_INV_Add30~13_sumout\,
	cin => \inst3|Add31~14_cout\,
	sharein => \inst3|Add31~15\,
	cout => \inst3|Add31~10_cout\,
	shareout => \inst3|Add31~11\);

\inst3|Add31~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~6_cout\ = CARRY(( !\inst2|BRout\(15) $ (\inst3|Add30~9_sumout\) ) + ( \inst3|Add31~11\ ) + ( \inst3|Add31~10_cout\ ))
-- \inst3|Add31~7\ = SHARE((!\inst2|BRout\(15) & \inst3|Add30~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_BRout\(15),
	datad => \inst3|ALT_INV_Add30~9_sumout\,
	cin => \inst3|Add31~10_cout\,
	sharein => \inst3|Add31~11\,
	cout => \inst3|Add31~6_cout\,
	shareout => \inst3|Add31~7\);

\inst3|Add31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add31~1_sumout\ = SUM(( !\inst3|Add30~5_sumout\ ) + ( \inst3|Add31~7\ ) + ( \inst3|Add31~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~5_sumout\,
	cin => \inst3|Add31~6_cout\,
	sharein => \inst3|Add31~7\,
	sumout => \inst3|Add31~1_sumout\);

\inst3|Add32~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~66_cout\ = CARRY(( \inst3|ACC\(0) ) + ( \inst2|BRout\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_ACC\(0),
	dataf => \inst2|ALT_INV_BRout\(0),
	cin => GND,
	cout => \inst3|Add32~66_cout\);

\inst3|Add32~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~62_cout\ = CARRY(( \inst3|Add30~65_sumout\ ) + ( \inst2|BRout\(1) ) + ( \inst3|Add32~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~65_sumout\,
	dataf => \inst2|ALT_INV_BRout\(1),
	cin => \inst3|Add32~66_cout\,
	cout => \inst3|Add32~62_cout\);

\inst3|Add32~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~58_cout\ = CARRY(( \inst3|Add30~61_sumout\ ) + ( \inst2|BRout\(2) ) + ( \inst3|Add32~62_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~61_sumout\,
	dataf => \inst2|ALT_INV_BRout\(2),
	cin => \inst3|Add32~62_cout\,
	cout => \inst3|Add32~58_cout\);

\inst3|Add32~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~54_cout\ = CARRY(( \inst3|Add30~57_sumout\ ) + ( \inst2|BRout\(3) ) + ( \inst3|Add32~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~57_sumout\,
	dataf => \inst2|ALT_INV_BRout\(3),
	cin => \inst3|Add32~58_cout\,
	cout => \inst3|Add32~54_cout\);

\inst3|Add32~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~50_cout\ = CARRY(( \inst3|Add30~53_sumout\ ) + ( \inst2|BRout\(4) ) + ( \inst3|Add32~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~53_sumout\,
	dataf => \inst2|ALT_INV_BRout\(4),
	cin => \inst3|Add32~54_cout\,
	cout => \inst3|Add32~50_cout\);

\inst3|Add32~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~46_cout\ = CARRY(( \inst3|Add30~49_sumout\ ) + ( \inst2|BRout\(5) ) + ( \inst3|Add32~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~49_sumout\,
	dataf => \inst2|ALT_INV_BRout\(5),
	cin => \inst3|Add32~50_cout\,
	cout => \inst3|Add32~46_cout\);

\inst3|Add32~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~42_cout\ = CARRY(( \inst3|Add30~45_sumout\ ) + ( \inst2|BRout\(6) ) + ( \inst3|Add32~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~45_sumout\,
	dataf => \inst2|ALT_INV_BRout\(6),
	cin => \inst3|Add32~46_cout\,
	cout => \inst3|Add32~42_cout\);

\inst3|Add32~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~38_cout\ = CARRY(( \inst3|Add30~41_sumout\ ) + ( \inst2|BRout\(7) ) + ( \inst3|Add32~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~41_sumout\,
	dataf => \inst2|ALT_INV_BRout\(7),
	cin => \inst3|Add32~42_cout\,
	cout => \inst3|Add32~38_cout\);

\inst3|Add32~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~34_cout\ = CARRY(( \inst3|Add30~37_sumout\ ) + ( \inst2|BRout\(8) ) + ( \inst3|Add32~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~37_sumout\,
	dataf => \inst2|ALT_INV_BRout\(8),
	cin => \inst3|Add32~38_cout\,
	cout => \inst3|Add32~34_cout\);

\inst3|Add32~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~30_cout\ = CARRY(( \inst3|Add30~33_sumout\ ) + ( \inst2|BRout\(9) ) + ( \inst3|Add32~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~33_sumout\,
	dataf => \inst2|ALT_INV_BRout\(9),
	cin => \inst3|Add32~34_cout\,
	cout => \inst3|Add32~30_cout\);

\inst3|Add32~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~26_cout\ = CARRY(( \inst3|Add30~29_sumout\ ) + ( \inst2|BRout\(10) ) + ( \inst3|Add32~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~29_sumout\,
	dataf => \inst2|ALT_INV_BRout\(10),
	cin => \inst3|Add32~30_cout\,
	cout => \inst3|Add32~26_cout\);

\inst3|Add32~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~22_cout\ = CARRY(( \inst3|Add30~25_sumout\ ) + ( \inst2|BRout\(11) ) + ( \inst3|Add32~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~25_sumout\,
	dataf => \inst2|ALT_INV_BRout\(11),
	cin => \inst3|Add32~26_cout\,
	cout => \inst3|Add32~22_cout\);

\inst3|Add32~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~18_cout\ = CARRY(( \inst3|Add30~21_sumout\ ) + ( \inst2|BRout\(12) ) + ( \inst3|Add32~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~21_sumout\,
	dataf => \inst2|ALT_INV_BRout\(12),
	cin => \inst3|Add32~22_cout\,
	cout => \inst3|Add32~18_cout\);

\inst3|Add32~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~14_cout\ = CARRY(( \inst3|Add30~17_sumout\ ) + ( \inst2|BRout\(13) ) + ( \inst3|Add32~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~17_sumout\,
	dataf => \inst2|ALT_INV_BRout\(13),
	cin => \inst3|Add32~18_cout\,
	cout => \inst3|Add32~14_cout\);

\inst3|Add32~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~10_cout\ = CARRY(( \inst3|Add30~13_sumout\ ) + ( \inst2|BRout\(14) ) + ( \inst3|Add32~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~13_sumout\,
	dataf => \inst2|ALT_INV_BRout\(14),
	cin => \inst3|Add32~14_cout\,
	cout => \inst3|Add32~10_cout\);

\inst3|Add32~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~6_cout\ = CARRY(( \inst3|Add30~9_sumout\ ) + ( \inst2|BRout\(15) ) + ( \inst3|Add32~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~9_sumout\,
	dataf => \inst2|ALT_INV_BRout\(15),
	cin => \inst3|Add32~10_cout\,
	cout => \inst3|Add32~6_cout\);

\inst3|Add32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add32~1_sumout\ = SUM(( \inst3|Add30~5_sumout\ ) + ( GND ) + ( \inst3|Add32~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add30~5_sumout\,
	cin => \inst3|Add32~6_cout\,
	sumout => \inst3|Add32~1_sumout\);

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

\inst8|srom|rom_block|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000400040000842000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

\inst8|srom|rom_block|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000001002000840108000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

\inst3|ACC[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC[3]~1_combout\ = (\inst8|srom|rom_block|auto_generated|q_a\(15) & (!\inst8|srom|rom_block|auto_generated|q_a\(14) & \inst8|srom|rom_block|auto_generated|q_a\(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	combout => \inst3|ACC[3]~1_combout\);

\inst3|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (\inst8|srom|rom_block|auto_generated|q_a\(15) & (!\inst8|srom|rom_block|auto_generated|q_a\(14) & !\inst8|srom|rom_block|auto_generated|q_a\(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	combout => \inst3|Equal0~1_combout\);

\inst3|ACC[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC[3]~2_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(15) & (\inst8|srom|rom_block|auto_generated|q_a\(14) & \inst8|srom|rom_block|auto_generated|q_a\(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	combout => \inst3|ACC[3]~2_combout\);

\inst3|ACC~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~3_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(15) & ((!\inst8|srom|rom_block|auto_generated|q_a\(12) & (!\inst8|srom|rom_block|auto_generated|q_a\(13) & \inst8|srom|rom_block|auto_generated|q_a\(14))) # 
-- (\inst8|srom|rom_block|auto_generated|q_a\(12) & (\inst8|srom|rom_block|auto_generated|q_a\(13) & !\inst8|srom|rom_block|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000000000000110000000000000011000000000000001100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	combout => \inst3|ACC~3_combout\);

\inst3|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(15) & (\inst8|srom|rom_block|auto_generated|q_a\(14) & (!\inst8|srom|rom_block|auto_generated|q_a\(13) & !\inst8|srom|rom_block|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	combout => \inst3|Equal0~3_combout\);

\inst3|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~66_cout\ = CARRY(( \inst3|Equal0~3_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Equal0~3_combout\,
	cin => GND,
	cout => \inst3|Add0~66_cout\);

\inst3|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~61_sumout\ = SUM(( !\inst2|BRout\(0) $ (!\inst3|Equal0~3_combout\) ) + ( \inst3|ACC\(0) ) + ( \inst3|Add0~66_cout\ ))
-- \inst3|Add0~62\ = CARRY(( !\inst2|BRout\(0) $ (!\inst3|Equal0~3_combout\) ) + ( \inst3|ACC\(0) ) + ( \inst3|Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_Equal0~3_combout\,
	dataf => \inst3|ALT_INV_ACC\(0),
	cin => \inst3|Add0~66_cout\,
	sumout => \inst3|Add0~61_sumout\,
	cout => \inst3|Add0~62\);

\inst8|srom|rom_block|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000004000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

\inst3|ACC~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~4_combout\ = (!\inst3|ACC[3]~2_combout\ & (((!\inst8|srom|rom_block|auto_generated|q_a\(11) & !\inst3|ACC~3_combout\)))) # (\inst3|ACC[3]~2_combout\ & (\inst8|srom|rom_block|auto_generated|q_a\(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010100000101110001010000010111000101000001011100010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(11),
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC~3_combout\,
	combout => \inst3|ACC~4_combout\);

\inst3|ACC~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~53_combout\ = ( \inst3|ACC~4_combout\ & ( ((\inst8|srom|rom_block|auto_generated|q_a\(12) & (\inst2|BRout\(0) & \inst3|ACC[3]~2_combout\))) # (\inst3|ACC\(0)) ) ) # ( !\inst3|ACC~4_combout\ & ( (\inst2|BRout\(0) & (\inst3|ACC[3]~2_combout\ & 
-- ((\inst8|srom|rom_block|auto_generated|q_a\(12)) # (\inst3|ACC\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111010101010101011100000000000001110101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(0),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|ALT_INV_BRout\(0),
	datad => \inst3|ALT_INV_ACC[3]~2_combout\,
	datae => \inst3|ALT_INV_ACC~4_combout\,
	combout => \inst3|ACC~53_combout\);

\inst3|ACC~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~55_combout\ = ( \inst3|Add0~61_sumout\ & ( \inst3|ACC~53_combout\ & ( (!\inst3|ACC\(1) & \inst3|Equal0~1_combout\) ) ) ) # ( !\inst3|Add0~61_sumout\ & ( \inst3|ACC~53_combout\ & ( (!\inst3|ACC\(1) & \inst3|Equal0~1_combout\) ) ) ) # ( 
-- \inst3|Add0~61_sumout\ & ( !\inst3|ACC~53_combout\ & ( (!\inst3|Equal0~1_combout\ & (((!\inst3|ACC~3_combout\) # (\inst3|ACC[3]~2_combout\)))) # (\inst3|Equal0~1_combout\ & (!\inst3|ACC\(1))) ) ) ) # ( !\inst3|Add0~61_sumout\ & ( !\inst3|ACC~53_combout\ & 
-- ( (!\inst3|ACC\(1)) # (!\inst3|Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011100010111000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(1),
	datab => \inst3|ALT_INV_Equal0~1_combout\,
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC~3_combout\,
	datae => \inst3|ALT_INV_Add0~61_sumout\,
	dataf => \inst3|ALT_INV_ACC~53_combout\,
	combout => \inst3|ACC~55_combout\);

\inst3|ACC~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~56_combout\ = ( \inst3|Equal0~1_combout\ & ( \inst3|ACC~55_combout\ & ( (!\inst8|srom|rom_block|auto_generated|q_a\(12) & (((!\inst3|ACC[3]~1_combout\ & !\inst3|ACC\(0))))) # (\inst8|srom|rom_block|auto_generated|q_a\(12) & 
-- (\inst3|Mult0~8_resulta\ & (\inst3|ACC[3]~1_combout\))) ) ) ) # ( !\inst3|Equal0~1_combout\ & ( \inst3|ACC~55_combout\ & ( (\inst8|srom|rom_block|auto_generated|q_a\(12) & (\inst3|Mult0~8_resulta\ & \inst3|ACC[3]~1_combout\)) ) ) ) # ( 
-- \inst3|Equal0~1_combout\ & ( !\inst3|ACC~55_combout\ & ( (!\inst8|srom|rom_block|auto_generated|q_a\(12) & (((!\inst3|ACC[3]~1_combout\ & !\inst3|ACC\(0))))) # (\inst8|srom|rom_block|auto_generated|q_a\(12) & (((!\inst3|ACC[3]~1_combout\)) # 
-- (\inst3|Mult0~8_resulta\))) ) ) ) # ( !\inst3|Equal0~1_combout\ & ( !\inst3|ACC~55_combout\ & ( (!\inst3|ACC[3]~1_combout\) # ((\inst8|srom|rom_block|auto_generated|q_a\(12) & \inst3|Mult0~8_resulta\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110001111100010101000100000001000000011010000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst3|ALT_INV_Mult0~8_resulta\,
	datac => \inst3|ALT_INV_ACC[3]~1_combout\,
	datad => \inst3|ALT_INV_ACC\(0),
	datae => \inst3|ALT_INV_Equal0~1_combout\,
	dataf => \inst3|ALT_INV_ACC~55_combout\,
	combout => \inst3|ACC~56_combout\);

\inst3|ACC~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~54_combout\ = ( \inst3|Equal0~0_combout\ & ( \inst3|ACC~56_combout\ & ( (\inst3|ACC~0_combout\ & ((!\inst3|Add30~5_sumout\ & (!\inst3|Add31~1_sumout\)) # (\inst3|Add30~5_sumout\ & ((!\inst3|Add32~1_sumout\))))) ) ) ) # ( 
-- !\inst3|Equal0~0_combout\ & ( \inst3|ACC~56_combout\ ) ) # ( \inst3|Equal0~0_combout\ & ( !\inst3|ACC~56_combout\ & ( (\inst3|ACC~0_combout\ & ((!\inst3|Add30~5_sumout\ & (!\inst3|Add31~1_sumout\)) # (\inst3|Add30~5_sumout\ & 
-- ((!\inst3|Add32~1_sumout\))))) ) ) ) # ( !\inst3|Equal0~0_combout\ & ( !\inst3|ACC~56_combout\ & ( (\inst3|ACC~0_combout\ & ((!\inst3|Add30~5_sumout\ & (!\inst3|Add31~1_sumout\)) # (\inst3|Add30~5_sumout\ & ((!\inst3|Add32~1_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101000000010100010100000011111111111111110101000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC~0_combout\,
	datab => \inst3|ALT_INV_Add30~5_sumout\,
	datac => \inst3|ALT_INV_Add31~1_sumout\,
	datad => \inst3|ALT_INV_Add32~1_sumout\,
	datae => \inst3|ALT_INV_Equal0~0_combout\,
	dataf => \inst3|ALT_INV_ACC~56_combout\,
	combout => \inst3|ACC~54_combout\);

\inst3|ACC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~54_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(0));

\inst8|srom|rom_block|auto_generated|ram_block1a20\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000200000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

\inst|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~15_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(0));

\inst|temp~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~15_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(0)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(0),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(0),
	combout => \inst|temp~15_combout\);

\inst|MBR_RAM[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_RAM[15]~0_combout\ = (\inst8|srom|rom_block|auto_generated|q_a\(17) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(17),
	datab => \ALT_INV_reset~input_o\,
	combout => \inst|MBR_RAM[15]~0_combout\);

\inst|MBR_RAM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~15_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(0));

\inst|MBR_MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(0),
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(0));

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

\inst8|srom|rom_block|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

\inst8|srom|rom_block|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000200802108421084200000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

\inst8|srom|rom_block|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

\inst4|PCout[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|PCout[4]~0_combout\ = (!\reset~input_o\) # ((!\inst8|srom|rom_block|auto_generated|q_a\(10) & (!\inst8|srom|rom_block|auto_generated|q_a\(9) & \inst8|srom|rom_block|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001000111111110000100011111111000010001111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(10),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(9),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(8),
	datad => \ALT_INV_reset~input_o\,
	combout => \inst4|PCout[4]~0_combout\);

\inst3|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (!\inst3|ACC\(15) & (!\inst3|ACC\(6) & (!\inst3|ACC\(4) & !\inst3|ACC\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(15),
	datab => \inst3|ALT_INV_ACC\(6),
	datac => \inst3|ALT_INV_ACC\(4),
	datad => \inst3|ALT_INV_ACC\(0),
	combout => \inst3|LessThan0~0_combout\);

\inst3|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = ( !\inst3|ACC\(3) & ( (!\inst3|ACC\(10) & (!\inst3|ACC\(9) & (!\inst3|ACC\(8) & !\inst3|ACC\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(10),
	datab => \inst3|ALT_INV_ACC\(9),
	datac => \inst3|ALT_INV_ACC\(8),
	datad => \inst3|ALT_INV_ACC\(7),
	datae => \inst3|ALT_INV_ACC\(3),
	combout => \inst3|LessThan0~1_combout\);

\inst3|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = (!\inst3|ACC\(13) & (!\inst3|ACC\(12) & (!\inst3|ACC\(5) & !\inst3|ACC\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(13),
	datab => \inst3|ALT_INV_ACC\(12),
	datac => \inst3|ALT_INV_ACC\(5),
	datad => \inst3|ALT_INV_ACC\(1),
	combout => \inst3|LessThan0~2_combout\);

\inst3|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_combout\ = ( \inst3|LessThan0~2_combout\ & ( (!\inst3|ACC\(14) & (!\inst3|ACC\(11) & (!\inst3|ACC\(2) & \inst3|LessThan0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(14),
	datab => \inst3|ALT_INV_ACC\(11),
	datac => \inst3|ALT_INV_ACC\(2),
	datad => \inst3|ALT_INV_LessThan0~1_combout\,
	datae => \inst3|ALT_INV_LessThan0~2_combout\,
	combout => \inst3|LessThan0~3_combout\);

\inst4|PCout[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|PCout[4]~1_combout\ = ( \inst3|LessThan0~3_combout\ & ( (!\inst8|srom|rom_block|auto_generated|q_a\(10) & (((\inst3|LessThan0~0_combout\) # (\inst8|srom|rom_block|auto_generated|q_a\(8))) # (\inst8|srom|rom_block|auto_generated|q_a\(9)))) ) ) # ( 
-- !\inst3|LessThan0~3_combout\ & ( (!\inst8|srom|rom_block|auto_generated|q_a\(10) & ((\inst8|srom|rom_block|auto_generated|q_a\(8)) # (\inst8|srom|rom_block|auto_generated|q_a\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010101010101000101010001010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(10),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(9),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(8),
	datad => \inst3|ALT_INV_LessThan0~0_combout\,
	datae => \inst3|ALT_INV_LessThan0~3_combout\,
	combout => \inst4|PCout[4]~1_combout\);

\inst3|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(15) & (\inst8|srom|rom_block|auto_generated|q_a\(14) & (!\inst8|srom|rom_block|auto_generated|q_a\(13) & \inst8|srom|rom_block|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	combout => \inst3|Equal0~2_combout\);

\inst4|PCout[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|PCout[4]~2_combout\ = ( \inst3|Equal0~2_combout\ ) # ( !\inst3|Equal0~2_combout\ & ( (((!\reset~input_o\) # (\inst8|srom|rom_block|auto_generated|q_a\(8))) # (\inst8|srom|rom_block|auto_generated|q_a\(9))) # 
-- (\inst8|srom|rom_block|auto_generated|q_a\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111111111111111111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(10),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(9),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(8),
	datad => \ALT_INV_reset~input_o\,
	datae => \inst3|ALT_INV_Equal0~2_combout\,
	combout => \inst4|PCout[4]~2_combout\);

\inst4|PCout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|MBR_MAR\(0),
	asdata => \inst4|Add0~29_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(0));

\inst8|srom|rom_block|auto_generated|ram_block1a18\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000100421084210842100000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

\inst8|srom|rom_block|auto_generated|ram_block1a19\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000802084211084210400000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

\inst7|MARout[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MARout[1]~0_combout\ = (\inst8|srom|rom_block|auto_generated|q_a\(18)) # (\inst8|srom|rom_block|auto_generated|q_a\(19))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(19),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	combout => \inst7|MARout[1]~0_combout\);

\inst7|MARout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|MBR_MAR\(0),
	asdata => \inst4|PCout\(0),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(0));

\inst|MBR_MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(1),
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(1));

\inst4|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~25_sumout\ = SUM(( \inst4|PCout\(1) ) + ( GND ) + ( \inst4|Add0~30\ ))
-- \inst4|Add0~26\ = CARRY(( \inst4|PCout\(1) ) + ( GND ) + ( \inst4|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_PCout\(1),
	cin => \inst4|Add0~30\,
	sumout => \inst4|Add0~25_sumout\,
	cout => \inst4|Add0~26\);

\inst4|PCout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|MBR_MAR\(1),
	asdata => \inst4|Add0~25_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(1));

\inst7|MARout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|MBR_MAR\(1),
	asdata => \inst4|PCout\(1),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(1));

\inst|MBR_MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(2),
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(2));

\inst4|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~21_sumout\ = SUM(( \inst4|PCout\(2) ) + ( GND ) + ( \inst4|Add0~26\ ))
-- \inst4|Add0~22\ = CARRY(( \inst4|PCout\(2) ) + ( GND ) + ( \inst4|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_PCout\(2),
	cin => \inst4|Add0~26\,
	sumout => \inst4|Add0~21_sumout\,
	cout => \inst4|Add0~22\);

\inst4|PCout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|MBR_MAR\(2),
	asdata => \inst4|Add0~21_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(2));

\inst7|MARout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|MBR_MAR\(2),
	asdata => \inst4|PCout\(2),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(2));

\inst|MBR_MAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(3),
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(3));

\inst4|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~17_sumout\ = SUM(( \inst4|PCout\(3) ) + ( GND ) + ( \inst4|Add0~22\ ))
-- \inst4|Add0~18\ = CARRY(( \inst4|PCout\(3) ) + ( GND ) + ( \inst4|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_PCout\(3),
	cin => \inst4|Add0~22\,
	sumout => \inst4|Add0~17_sumout\,
	cout => \inst4|Add0~18\);

\inst4|PCout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|MBR_MAR\(3),
	asdata => \inst4|Add0~17_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(3));

\inst7|MARout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|MBR_MAR\(3),
	asdata => \inst4|PCout\(3),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(3));

\inst|MBR_MAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(4),
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(4));

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

\inst4|PCout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|MBR_MAR\(4),
	asdata => \inst4|Add0~13_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(4));

\inst7|MARout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|MBR_MAR\(4),
	asdata => \inst4|PCout\(4),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(4));

\inst|MBR_MAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(5),
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(5));

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

\inst4|PCout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|MBR_MAR\(5),
	asdata => \inst4|Add0~9_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(5));

\inst7|MARout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|MBR_MAR\(5),
	asdata => \inst4|PCout\(5),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(5));

\inst|MBR_MAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(6),
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(6));

\inst4|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~5_sumout\ = SUM(( \inst4|PCout\(6) ) + ( GND ) + ( \inst4|Add0~10\ ))
-- \inst4|Add0~6\ = CARRY(( \inst4|PCout\(6) ) + ( GND ) + ( \inst4|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_PCout\(6),
	cin => \inst4|Add0~10\,
	sumout => \inst4|Add0~5_sumout\,
	cout => \inst4|Add0~6\);

\inst4|PCout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|MBR_MAR\(6),
	asdata => \inst4|Add0~5_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(6));

\inst7|MARout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|MBR_MAR\(6),
	asdata => \inst4|PCout\(6),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(6));

\inst|MBR_MAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(7),
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_MAR\(7));

\inst4|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~1_sumout\ = SUM(( \inst4|PCout\(7) ) + ( GND ) + ( \inst4|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_PCout\(7),
	cin => \inst4|Add0~6\,
	sumout => \inst4|Add0~1_sumout\);

\inst4|PCout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|MBR_MAR\(7),
	asdata => \inst4|Add0~1_sumout\,
	sclr => \inst4|PCout[4]~0_combout\,
	sload => \inst4|PCout[4]~1_combout\,
	ena => \inst4|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PCout\(7));

\inst7|MARout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|MBR_MAR\(7),
	asdata => \inst4|PCout\(7),
	sload => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst7|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MARout\(7));

\inst9|sram|ram_block|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000002",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\inst|MBR_BR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(0),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(0));

\inst2|BRout[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(0) = ( \inst2|BRout\(0) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(0) ) ) ) # ( !\inst2|BRout\(0) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(0) ) ) ) # ( \inst2|BRout\(0) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(0),
	datae => \inst2|ALT_INV_BRout\(0),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(0));

\inst3|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~57_sumout\ = SUM(( !\inst2|BRout\(2) ) + ( \inst3|Add2~63\ ) + ( \inst3|Add2~62\ ))
-- \inst3|Add2~58\ = CARRY(( !\inst2|BRout\(2) ) + ( \inst3|Add2~63\ ) + ( \inst3|Add2~62\ ))
-- \inst3|Add2~59\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(2),
	cin => \inst3|Add2~62\,
	sharein => \inst3|Add2~63\,
	sumout => \inst3|Add2~57_sumout\,
	cout => \inst3|Add2~58\,
	shareout => \inst3|Add2~59\);

\inst3|Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~53_sumout\ = SUM(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add2~57_sumout\ ) + ( \inst3|Add4~58\ ))
-- \inst3|Add4~54\ = CARRY(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(3)) ) + ( \inst3|Add2~57_sumout\ ) + ( \inst3|Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(3),
	dataf => \inst3|ALT_INV_Add2~57_sumout\,
	cin => \inst3|Add4~58\,
	sumout => \inst3|Add4~53_sumout\,
	cout => \inst3|Add4~54\);

\inst3|Add6~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~49_sumout\ = SUM(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add4~53_sumout\ ) + ( \inst3|Add6~54\ ))
-- \inst3|Add6~50\ = CARRY(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add4~53_sumout\ ) + ( \inst3|Add6~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_Add4~53_sumout\,
	cin => \inst3|Add6~54\,
	sumout => \inst3|Add6~49_sumout\,
	cout => \inst3|Add6~50\);

\inst3|Add8~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~45_sumout\ = SUM(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add6~49_sumout\ ) + ( \inst3|Add8~50\ ))
-- \inst3|Add8~46\ = CARRY(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add6~49_sumout\ ) + ( \inst3|Add8~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(5),
	dataf => \inst3|ALT_INV_Add6~49_sumout\,
	cin => \inst3|Add8~50\,
	sumout => \inst3|Add8~45_sumout\,
	cout => \inst3|Add8~46\);

\inst3|Add10~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~41_sumout\ = SUM(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add8~45_sumout\ ) + ( \inst3|Add10~46\ ))
-- \inst3|Add10~42\ = CARRY(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add8~45_sumout\ ) + ( \inst3|Add10~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(6),
	dataf => \inst3|ALT_INV_Add8~45_sumout\,
	cin => \inst3|Add10~46\,
	sumout => \inst3|Add10~41_sumout\,
	cout => \inst3|Add10~42\);

\inst3|Add12~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~37_sumout\ = SUM(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add10~41_sumout\ ) + ( \inst3|Add12~42\ ))
-- \inst3|Add12~38\ = CARRY(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add10~41_sumout\ ) + ( \inst3|Add12~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(7),
	dataf => \inst3|ALT_INV_Add10~41_sumout\,
	cin => \inst3|Add12~42\,
	sumout => \inst3|Add12~37_sumout\,
	cout => \inst3|Add12~38\);

\inst3|Add14~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~33_sumout\ = SUM(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add12~37_sumout\ ) + ( \inst3|Add14~38\ ))
-- \inst3|Add14~34\ = CARRY(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add12~37_sumout\ ) + ( \inst3|Add14~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(8),
	dataf => \inst3|ALT_INV_Add12~37_sumout\,
	cin => \inst3|Add14~38\,
	sumout => \inst3|Add14~33_sumout\,
	cout => \inst3|Add14~34\);

\inst3|Add16~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~29_sumout\ = SUM(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add14~33_sumout\ ) + ( \inst3|Add16~34\ ))
-- \inst3|Add16~30\ = CARRY(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add14~33_sumout\ ) + ( \inst3|Add16~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_Add14~33_sumout\,
	cin => \inst3|Add16~34\,
	sumout => \inst3|Add16~29_sumout\,
	cout => \inst3|Add16~30\);

\inst3|Add18~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~25_sumout\ = SUM(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add16~29_sumout\ ) + ( \inst3|Add18~30\ ))
-- \inst3|Add18~26\ = CARRY(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add16~29_sumout\ ) + ( \inst3|Add18~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(10),
	dataf => \inst3|ALT_INV_Add16~29_sumout\,
	cin => \inst3|Add18~30\,
	sumout => \inst3|Add18~25_sumout\,
	cout => \inst3|Add18~26\);

\inst3|Add20~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~21_sumout\ = SUM(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add18~25_sumout\ ) + ( \inst3|Add20~26\ ))
-- \inst3|Add20~22\ = CARRY(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add18~25_sumout\ ) + ( \inst3|Add20~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_Add18~25_sumout\,
	cin => \inst3|Add20~26\,
	sumout => \inst3|Add20~21_sumout\,
	cout => \inst3|Add20~22\);

\inst3|Add22~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~17_sumout\ = SUM(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add20~21_sumout\ ) + ( \inst3|Add22~22\ ))
-- \inst3|Add22~18\ = CARRY(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add20~21_sumout\ ) + ( \inst3|Add22~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(12),
	dataf => \inst3|ALT_INV_Add20~21_sumout\,
	cin => \inst3|Add22~22\,
	sumout => \inst3|Add22~17_sumout\,
	cout => \inst3|Add22~18\);

\inst3|Add24~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~13_sumout\ = SUM(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add22~17_sumout\ ) + ( \inst3|Add24~18\ ))
-- \inst3|Add24~14\ = CARRY(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add22~17_sumout\ ) + ( \inst3|Add24~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_Add22~17_sumout\,
	cin => \inst3|Add24~18\,
	sumout => \inst3|Add24~13_sumout\,
	cout => \inst3|Add24~14\);

\inst3|Add26~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~9_sumout\ = SUM(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add24~13_sumout\ ) + ( \inst3|Add26~14\ ))
-- \inst3|Add26~10\ = CARRY(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add24~13_sumout\ ) + ( \inst3|Add26~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(14),
	dataf => \inst3|ALT_INV_Add24~13_sumout\,
	cin => \inst3|Add26~14\,
	sumout => \inst3|Add26~9_sumout\,
	cout => \inst3|Add26~10\);

\inst3|Add28~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~5_sumout\ = SUM(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add26~9_sumout\ ) + ( \inst3|Add28~10\ ))
-- \inst3|Add28~6\ = CARRY(( !\inst3|Add26~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add26~9_sumout\ ) + ( \inst3|Add28~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(15),
	dataf => \inst3|ALT_INV_Add26~9_sumout\,
	cin => \inst3|Add28~10\,
	sumout => \inst3|Add28~5_sumout\,
	cout => \inst3|Add28~6\);

\inst3|Add30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add30~1_sumout\ = SUM(( \inst3|Add28~5_sumout\ ) + ( !\inst3|Add28~5_sumout\ ) + ( \inst3|Add30~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add28~5_sumout\,
	cin => \inst3|Add30~6\,
	sumout => \inst3|Add30~1_sumout\);

\inst3|ACC[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC[3]~8_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(12) & (!\inst8|srom|rom_block|auto_generated|q_a\(13) & (!\inst8|srom|rom_block|auto_generated|q_a\(14) & \inst8|srom|rom_block|auto_generated|q_a\(15)))) # 
-- (\inst8|srom|rom_block|auto_generated|q_a\(12) & (\inst8|srom|rom_block|auto_generated|q_a\(13) & (\inst8|srom|rom_block|auto_generated|q_a\(14) & !\inst8|srom|rom_block|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110000000000000011000000000000001100000000000000110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	combout => \inst3|ACC[3]~8_combout\);

\inst3|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~57_sumout\ = SUM(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(1)) ) + ( \inst3|ACC\(1) ) + ( \inst3|Add0~62\ ))
-- \inst3|Add0~58\ = CARRY(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(1)) ) + ( \inst3|ACC\(1) ) + ( \inst3|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_BRout\(1),
	dataf => \inst3|ALT_INV_ACC\(1),
	cin => \inst3|Add0~62\,
	sumout => \inst3|Add0~57_sumout\,
	cout => \inst3|Add0~58\);

\inst3|ACC~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~50_combout\ = ( \inst3|Add0~57_sumout\ & ( (!\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\) # ((\inst2|BRout\(1) & \inst3|ACC\(1))))) # (\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\ & ((!\inst3|ACC\(1)))) # 
-- (\inst3|ACC[3]~2_combout\ & ((\inst3|ACC\(1)) # (\inst2|BRout\(1)))))) ) ) # ( !\inst3|Add0~57_sumout\ & ( (!\inst2|BRout\(1) & (\inst3|ACC[3]~8_combout\ & (!\inst3|ACC[3]~2_combout\ $ (\inst3|ACC\(1))))) # (\inst2|BRout\(1) & ((!\inst3|ACC\(1) & 
-- (\inst3|ACC[3]~8_combout\)) # (\inst3|ACC\(1) & ((\inst3|ACC[3]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000111111100011100011100110001000001111111000111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(1),
	datab => \inst3|ALT_INV_ACC[3]~8_combout\,
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC\(1),
	datae => \inst3|ALT_INV_Add0~57_sumout\,
	combout => \inst3|ACC~50_combout\);

\inst3|ACC[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC[3]~6_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(14) & (\inst8|srom|rom_block|auto_generated|q_a\(15) & (!\inst8|srom|rom_block|auto_generated|q_a\(12) $ (!\inst8|srom|rom_block|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000000000000110000000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	combout => \inst3|ACC[3]~6_combout\);

\inst3|ACC~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~51_combout\ = ( \inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(2))) # (\inst3|ACC[3]~1_combout\ & ((\inst3|ACC\(0)))) ) ) # ( !\inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(2))) # 
-- (\inst3|ACC[3]~1_combout\ & ((\inst3|Mult0~9\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010011001101010101000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(2),
	datab => \inst3|ALT_INV_ACC\(0),
	datac => \inst3|ALT_INV_Mult0~9\,
	datad => \inst3|ALT_INV_ACC[3]~1_combout\,
	datae => \inst3|ALT_INV_ACC[3]~6_combout\,
	combout => \inst3|ACC~51_combout\);

\inst3|ACC~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~52_combout\ = ( \inst3|ACC~51_combout\ & ( (!\inst3|Equal0~0_combout\ & ((!\inst3|ACC[3]~7_combout\) # ((\inst3|ACC~50_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add30~1_sumout\)))) ) ) # ( !\inst3|ACC~51_combout\ & ( 
-- (!\inst3|Equal0~0_combout\ & (\inst3|ACC[3]~7_combout\ & ((\inst3|ACC~50_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add30~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110010110110001111101001010000011100101101100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~0_combout\,
	datab => \inst3|ALT_INV_ACC[3]~7_combout\,
	datac => \inst3|ALT_INV_Add30~1_sumout\,
	datad => \inst3|ALT_INV_ACC~50_combout\,
	datae => \inst3|ALT_INV_ACC~51_combout\,
	combout => \inst3|ACC~52_combout\);

\inst3|ACC[3]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC[3]~57_combout\ = ( \reset~input_o\ & ( \inst3|Equal9~3_combout\ & ( (!\inst8|srom|rom_block|auto_generated|q_a\(15) & ((!\inst8|srom|rom_block|auto_generated|q_a\(12) & ((!\inst8|srom|rom_block|auto_generated|q_a\(14)))) # 
-- (\inst8|srom|rom_block|auto_generated|q_a\(12) & (!\inst8|srom|rom_block|auto_generated|q_a\(13))))) # (\inst8|srom|rom_block|auto_generated|q_a\(15) & (((\inst8|srom|rom_block|auto_generated|q_a\(14))))) ) ) ) # ( !\reset~input_o\ & ( 
-- \inst3|Equal9~3_combout\ ) ) # ( \reset~input_o\ & ( !\inst3|Equal9~3_combout\ & ( (!\inst8|srom|rom_block|auto_generated|q_a\(14) & (!\inst8|srom|rom_block|auto_generated|q_a\(15) & ((!\inst8|srom|rom_block|auto_generated|q_a\(12)) # 
-- (!\inst8|srom|rom_block|auto_generated|q_a\(13))))) # (\inst8|srom|rom_block|auto_generated|q_a\(14) & ((!\inst8|srom|rom_block|auto_generated|q_a\(13) & (\inst8|srom|rom_block|auto_generated|q_a\(12))) # (\inst8|srom|rom_block|auto_generated|q_a\(13) & 
-- ((\inst8|srom|rom_block|auto_generated|q_a\(15)))))) ) ) ) # ( !\reset~input_o\ & ( !\inst3|Equal9~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111001000000011111111111111111111110010000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datae => \ALT_INV_reset~input_o\,
	dataf => \inst3|ALT_INV_Equal9~3_combout\,
	combout => \inst3|ACC[3]~57_combout\);

\inst3|ACC[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC[3]~12_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(15) & (\inst8|srom|rom_block|auto_generated|q_a\(14) & (\inst8|srom|rom_block|auto_generated|q_a\(13) & \inst8|srom|rom_block|auto_generated|q_a\(12)))) # 
-- (\inst8|srom|rom_block|auto_generated|q_a\(15) & ((!\inst8|srom|rom_block|auto_generated|q_a\(14)) # ((!\inst8|srom|rom_block|auto_generated|q_a\(13) & !\inst8|srom|rom_block|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000110010101000100011001010100010001100101010001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	combout => \inst3|ACC[3]~12_combout\);

\inst3|ACC[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC[3]~13_combout\ = ( \reset~input_o\ & ( \inst3|ACC[3]~12_combout\ ) ) # ( !\reset~input_o\ & ( \inst3|ACC[3]~12_combout\ ) ) # ( \reset~input_o\ & ( !\inst3|ACC[3]~12_combout\ & ( (((!\inst8|srom|rom_block|auto_generated|q_a\(12) & 
-- \inst3|ACC[3]~2_combout\)) # (\inst3|ACC~3_combout\)) # (\inst8|srom|rom_block|auto_generated|q_a\(11)) ) ) ) # ( !\reset~input_o\ & ( !\inst3|ACC[3]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001110111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(11),
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC~3_combout\,
	datae => \ALT_INV_reset~input_o\,
	dataf => \inst3|ALT_INV_ACC[3]~12_combout\,
	combout => \inst3|ACC[3]~13_combout\);

\inst3|ACC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~52_combout\,
	sclr => \inst3|ACC[3]~57_combout\,
	ena => \inst3|ACC[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(1));

\inst|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~14_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(1));

\inst|temp~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~14_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(1)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(1),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(1),
	combout => \inst|temp~14_combout\);

\inst|MBR_RAM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~14_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(1));

\inst9|sram|ram_block|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000004",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\inst|MBR_BR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(1),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(1));

\inst2|BRout[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(1) = ( \inst2|BRout\(1) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(1) ) ) ) # ( !\inst2|BRout\(1) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(1) ) ) ) # ( \inst2|BRout\(1) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(1),
	datae => \inst2|ALT_INV_BRout\(1),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(1));

\inst3|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~53_sumout\ = SUM(( !\inst2|BRout\(3) ) + ( \inst3|Add2~59\ ) + ( \inst3|Add2~58\ ))
-- \inst3|Add2~54\ = CARRY(( !\inst2|BRout\(3) ) + ( \inst3|Add2~59\ ) + ( \inst3|Add2~58\ ))
-- \inst3|Add2~55\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(3),
	cin => \inst3|Add2~58\,
	sharein => \inst3|Add2~59\,
	sumout => \inst3|Add2~53_sumout\,
	cout => \inst3|Add2~54\,
	shareout => \inst3|Add2~55\);

\inst3|Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~49_sumout\ = SUM(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add2~53_sumout\ ) + ( \inst3|Add4~54\ ))
-- \inst3|Add4~50\ = CARRY(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(4)) ) + ( \inst3|Add2~53_sumout\ ) + ( \inst3|Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_Add2~53_sumout\,
	cin => \inst3|Add4~54\,
	sumout => \inst3|Add4~49_sumout\,
	cout => \inst3|Add4~50\);

\inst3|Add6~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~45_sumout\ = SUM(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add4~49_sumout\ ) + ( \inst3|Add6~50\ ))
-- \inst3|Add6~46\ = CARRY(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add4~49_sumout\ ) + ( \inst3|Add6~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(5),
	dataf => \inst3|ALT_INV_Add4~49_sumout\,
	cin => \inst3|Add6~50\,
	sumout => \inst3|Add6~45_sumout\,
	cout => \inst3|Add6~46\);

\inst3|Add8~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~41_sumout\ = SUM(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add6~45_sumout\ ) + ( \inst3|Add8~46\ ))
-- \inst3|Add8~42\ = CARRY(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add6~45_sumout\ ) + ( \inst3|Add8~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(6),
	dataf => \inst3|ALT_INV_Add6~45_sumout\,
	cin => \inst3|Add8~46\,
	sumout => \inst3|Add8~41_sumout\,
	cout => \inst3|Add8~42\);

\inst3|Add10~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~37_sumout\ = SUM(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add8~41_sumout\ ) + ( \inst3|Add10~42\ ))
-- \inst3|Add10~38\ = CARRY(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add8~41_sumout\ ) + ( \inst3|Add10~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(7),
	dataf => \inst3|ALT_INV_Add8~41_sumout\,
	cin => \inst3|Add10~42\,
	sumout => \inst3|Add10~37_sumout\,
	cout => \inst3|Add10~38\);

\inst3|Add12~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~33_sumout\ = SUM(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add10~37_sumout\ ) + ( \inst3|Add12~38\ ))
-- \inst3|Add12~34\ = CARRY(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add10~37_sumout\ ) + ( \inst3|Add12~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(8),
	dataf => \inst3|ALT_INV_Add10~37_sumout\,
	cin => \inst3|Add12~38\,
	sumout => \inst3|Add12~33_sumout\,
	cout => \inst3|Add12~34\);

\inst3|Add14~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~29_sumout\ = SUM(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add12~33_sumout\ ) + ( \inst3|Add14~34\ ))
-- \inst3|Add14~30\ = CARRY(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add12~33_sumout\ ) + ( \inst3|Add14~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_Add12~33_sumout\,
	cin => \inst3|Add14~34\,
	sumout => \inst3|Add14~29_sumout\,
	cout => \inst3|Add14~30\);

\inst3|Add16~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~25_sumout\ = SUM(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add14~29_sumout\ ) + ( \inst3|Add16~30\ ))
-- \inst3|Add16~26\ = CARRY(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add14~29_sumout\ ) + ( \inst3|Add16~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(10),
	dataf => \inst3|ALT_INV_Add14~29_sumout\,
	cin => \inst3|Add16~30\,
	sumout => \inst3|Add16~25_sumout\,
	cout => \inst3|Add16~26\);

\inst3|Add18~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~21_sumout\ = SUM(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add16~25_sumout\ ) + ( \inst3|Add18~26\ ))
-- \inst3|Add18~22\ = CARRY(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add16~25_sumout\ ) + ( \inst3|Add18~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_Add16~25_sumout\,
	cin => \inst3|Add18~26\,
	sumout => \inst3|Add18~21_sumout\,
	cout => \inst3|Add18~22\);

\inst3|Add20~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~17_sumout\ = SUM(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add18~21_sumout\ ) + ( \inst3|Add20~22\ ))
-- \inst3|Add20~18\ = CARRY(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add18~21_sumout\ ) + ( \inst3|Add20~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(12),
	dataf => \inst3|ALT_INV_Add18~21_sumout\,
	cin => \inst3|Add20~22\,
	sumout => \inst3|Add20~17_sumout\,
	cout => \inst3|Add20~18\);

\inst3|Add22~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~13_sumout\ = SUM(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add20~17_sumout\ ) + ( \inst3|Add22~18\ ))
-- \inst3|Add22~14\ = CARRY(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add20~17_sumout\ ) + ( \inst3|Add22~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_Add20~17_sumout\,
	cin => \inst3|Add22~18\,
	sumout => \inst3|Add22~13_sumout\,
	cout => \inst3|Add22~14\);

\inst3|Add24~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~9_sumout\ = SUM(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add22~13_sumout\ ) + ( \inst3|Add24~14\ ))
-- \inst3|Add24~10\ = CARRY(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add22~13_sumout\ ) + ( \inst3|Add24~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(14),
	dataf => \inst3|ALT_INV_Add22~13_sumout\,
	cin => \inst3|Add24~14\,
	sumout => \inst3|Add24~9_sumout\,
	cout => \inst3|Add24~10\);

\inst3|Add26~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~5_sumout\ = SUM(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add24~9_sumout\ ) + ( \inst3|Add26~10\ ))
-- \inst3|Add26~6\ = CARRY(( !\inst3|Add24~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add24~9_sumout\ ) + ( \inst3|Add26~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(15),
	dataf => \inst3|ALT_INV_Add24~9_sumout\,
	cin => \inst3|Add26~10\,
	sumout => \inst3|Add26~5_sumout\,
	cout => \inst3|Add26~6\);

\inst3|Add28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add28~1_sumout\ = SUM(( \inst3|Add26~5_sumout\ ) + ( !\inst3|Add26~5_sumout\ ) + ( \inst3|Add28~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add26~5_sumout\,
	cin => \inst3|Add28~6\,
	sumout => \inst3|Add28~1_sumout\);

\inst3|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~53_sumout\ = SUM(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(2)) ) + ( \inst3|ACC\(2) ) + ( \inst3|Add0~58\ ))
-- \inst3|Add0~54\ = CARRY(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(2)) ) + ( \inst3|ACC\(2) ) + ( \inst3|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_BRout\(2),
	dataf => \inst3|ALT_INV_ACC\(2),
	cin => \inst3|Add0~58\,
	sumout => \inst3|Add0~53_sumout\,
	cout => \inst3|Add0~54\);

\inst3|ACC~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~47_combout\ = ( \inst3|Add0~53_sumout\ & ( (!\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\) # ((\inst2|BRout\(2) & \inst3|ACC\(2))))) # (\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\ & ((!\inst3|ACC\(2)))) # 
-- (\inst3|ACC[3]~2_combout\ & ((\inst3|ACC\(2)) # (\inst2|BRout\(2)))))) ) ) # ( !\inst3|Add0~53_sumout\ & ( (!\inst2|BRout\(2) & (\inst3|ACC[3]~8_combout\ & (!\inst3|ACC[3]~2_combout\ $ (\inst3|ACC\(2))))) # (\inst2|BRout\(2) & ((!\inst3|ACC\(2) & 
-- (\inst3|ACC[3]~8_combout\)) # (\inst3|ACC\(2) & ((\inst3|ACC[3]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000111111100011100011100110001000001111111000111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(2),
	datab => \inst3|ALT_INV_ACC[3]~8_combout\,
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC\(2),
	datae => \inst3|ALT_INV_Add0~53_sumout\,
	combout => \inst3|ACC~47_combout\);

\inst3|ACC~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~48_combout\ = ( \inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(3))) # (\inst3|ACC[3]~1_combout\ & ((\inst3|ACC\(1)))) ) ) # ( !\inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(3))) # 
-- (\inst3|ACC[3]~1_combout\ & ((\inst3|Mult0~10\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010011001101010101000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(3),
	datab => \inst3|ALT_INV_ACC\(1),
	datac => \inst3|ALT_INV_Mult0~10\,
	datad => \inst3|ALT_INV_ACC[3]~1_combout\,
	datae => \inst3|ALT_INV_ACC[3]~6_combout\,
	combout => \inst3|ACC~48_combout\);

\inst3|ACC~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~49_combout\ = ( \inst3|ACC~48_combout\ & ( (!\inst3|Equal0~0_combout\ & ((!\inst3|ACC[3]~7_combout\) # ((\inst3|ACC~47_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add28~1_sumout\)))) ) ) # ( !\inst3|ACC~48_combout\ & ( 
-- (!\inst3|Equal0~0_combout\ & (\inst3|ACC[3]~7_combout\ & ((\inst3|ACC~47_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add28~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110010110110001111101001010000011100101101100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~0_combout\,
	datab => \inst3|ALT_INV_ACC[3]~7_combout\,
	datac => \inst3|ALT_INV_Add28~1_sumout\,
	datad => \inst3|ALT_INV_ACC~47_combout\,
	datae => \inst3|ALT_INV_ACC~48_combout\,
	combout => \inst3|ACC~49_combout\);

\inst3|ACC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~49_combout\,
	sclr => \inst3|ACC[3]~57_combout\,
	ena => \inst3|ACC[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(2));

\inst|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~13_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(2));

\inst|temp~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~13_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(2)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(2),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(2),
	combout => \inst|temp~13_combout\);

\inst|MBR_RAM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~13_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(2));

\inst9|sram|ram_block|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000020000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\inst|MBR_BR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(2),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(2));

\inst2|BRout[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(2) = ( \inst2|BRout\(2) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(2) ) ) ) # ( !\inst2|BRout\(2) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(2) ) ) ) # ( \inst2|BRout\(2) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(2),
	datae => \inst2|ALT_INV_BRout\(2),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(2));

\inst3|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~49_sumout\ = SUM(( !\inst2|BRout\(4) ) + ( \inst3|Add2~55\ ) + ( \inst3|Add2~54\ ))
-- \inst3|Add2~50\ = CARRY(( !\inst2|BRout\(4) ) + ( \inst3|Add2~55\ ) + ( \inst3|Add2~54\ ))
-- \inst3|Add2~51\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(4),
	cin => \inst3|Add2~54\,
	sharein => \inst3|Add2~55\,
	sumout => \inst3|Add2~49_sumout\,
	cout => \inst3|Add2~50\,
	shareout => \inst3|Add2~51\);

\inst3|Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~45_sumout\ = SUM(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add2~49_sumout\ ) + ( \inst3|Add4~50\ ))
-- \inst3|Add4~46\ = CARRY(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(5)) ) + ( \inst3|Add2~49_sumout\ ) + ( \inst3|Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(5),
	dataf => \inst3|ALT_INV_Add2~49_sumout\,
	cin => \inst3|Add4~50\,
	sumout => \inst3|Add4~45_sumout\,
	cout => \inst3|Add4~46\);

\inst3|Add6~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~41_sumout\ = SUM(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add4~45_sumout\ ) + ( \inst3|Add6~46\ ))
-- \inst3|Add6~42\ = CARRY(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add4~45_sumout\ ) + ( \inst3|Add6~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(6),
	dataf => \inst3|ALT_INV_Add4~45_sumout\,
	cin => \inst3|Add6~46\,
	sumout => \inst3|Add6~41_sumout\,
	cout => \inst3|Add6~42\);

\inst3|Add8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~37_sumout\ = SUM(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add6~41_sumout\ ) + ( \inst3|Add8~42\ ))
-- \inst3|Add8~38\ = CARRY(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add6~41_sumout\ ) + ( \inst3|Add8~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(7),
	dataf => \inst3|ALT_INV_Add6~41_sumout\,
	cin => \inst3|Add8~42\,
	sumout => \inst3|Add8~37_sumout\,
	cout => \inst3|Add8~38\);

\inst3|Add10~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~33_sumout\ = SUM(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add8~37_sumout\ ) + ( \inst3|Add10~38\ ))
-- \inst3|Add10~34\ = CARRY(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add8~37_sumout\ ) + ( \inst3|Add10~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(8),
	dataf => \inst3|ALT_INV_Add8~37_sumout\,
	cin => \inst3|Add10~38\,
	sumout => \inst3|Add10~33_sumout\,
	cout => \inst3|Add10~34\);

\inst3|Add12~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~29_sumout\ = SUM(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add10~33_sumout\ ) + ( \inst3|Add12~34\ ))
-- \inst3|Add12~30\ = CARRY(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add10~33_sumout\ ) + ( \inst3|Add12~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_Add10~33_sumout\,
	cin => \inst3|Add12~34\,
	sumout => \inst3|Add12~29_sumout\,
	cout => \inst3|Add12~30\);

\inst3|Add14~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~25_sumout\ = SUM(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add12~29_sumout\ ) + ( \inst3|Add14~30\ ))
-- \inst3|Add14~26\ = CARRY(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add12~29_sumout\ ) + ( \inst3|Add14~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(10),
	dataf => \inst3|ALT_INV_Add12~29_sumout\,
	cin => \inst3|Add14~30\,
	sumout => \inst3|Add14~25_sumout\,
	cout => \inst3|Add14~26\);

\inst3|Add16~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~21_sumout\ = SUM(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add14~25_sumout\ ) + ( \inst3|Add16~26\ ))
-- \inst3|Add16~22\ = CARRY(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add14~25_sumout\ ) + ( \inst3|Add16~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_Add14~25_sumout\,
	cin => \inst3|Add16~26\,
	sumout => \inst3|Add16~21_sumout\,
	cout => \inst3|Add16~22\);

\inst3|Add18~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~17_sumout\ = SUM(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add16~21_sumout\ ) + ( \inst3|Add18~22\ ))
-- \inst3|Add18~18\ = CARRY(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add16~21_sumout\ ) + ( \inst3|Add18~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(12),
	dataf => \inst3|ALT_INV_Add16~21_sumout\,
	cin => \inst3|Add18~22\,
	sumout => \inst3|Add18~17_sumout\,
	cout => \inst3|Add18~18\);

\inst3|Add20~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~13_sumout\ = SUM(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add18~17_sumout\ ) + ( \inst3|Add20~18\ ))
-- \inst3|Add20~14\ = CARRY(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add18~17_sumout\ ) + ( \inst3|Add20~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_Add18~17_sumout\,
	cin => \inst3|Add20~18\,
	sumout => \inst3|Add20~13_sumout\,
	cout => \inst3|Add20~14\);

\inst3|Add22~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~9_sumout\ = SUM(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add20~13_sumout\ ) + ( \inst3|Add22~14\ ))
-- \inst3|Add22~10\ = CARRY(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add20~13_sumout\ ) + ( \inst3|Add22~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(14),
	dataf => \inst3|ALT_INV_Add20~13_sumout\,
	cin => \inst3|Add22~14\,
	sumout => \inst3|Add22~9_sumout\,
	cout => \inst3|Add22~10\);

\inst3|Add24~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~5_sumout\ = SUM(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add22~9_sumout\ ) + ( \inst3|Add24~10\ ))
-- \inst3|Add24~6\ = CARRY(( !\inst3|Add22~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add22~9_sumout\ ) + ( \inst3|Add24~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(15),
	dataf => \inst3|ALT_INV_Add22~9_sumout\,
	cin => \inst3|Add24~10\,
	sumout => \inst3|Add24~5_sumout\,
	cout => \inst3|Add24~6\);

\inst3|Add26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add26~1_sumout\ = SUM(( \inst3|Add24~5_sumout\ ) + ( !\inst3|Add24~5_sumout\ ) + ( \inst3|Add26~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add24~5_sumout\,
	cin => \inst3|Add26~6\,
	sumout => \inst3|Add26~1_sumout\);

\inst3|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~49_sumout\ = SUM(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(3)) ) + ( \inst3|ACC\(3) ) + ( \inst3|Add0~54\ ))
-- \inst3|Add0~50\ = CARRY(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(3)) ) + ( \inst3|ACC\(3) ) + ( \inst3|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_BRout\(3),
	dataf => \inst3|ALT_INV_ACC\(3),
	cin => \inst3|Add0~54\,
	sumout => \inst3|Add0~49_sumout\,
	cout => \inst3|Add0~50\);

\inst3|ACC~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~44_combout\ = ( \inst3|Add0~49_sumout\ & ( (!\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\) # ((\inst2|BRout\(3) & \inst3|ACC\(3))))) # (\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\ & ((!\inst3|ACC\(3)))) # 
-- (\inst3|ACC[3]~2_combout\ & ((\inst3|ACC\(3)) # (\inst2|BRout\(3)))))) ) ) # ( !\inst3|Add0~49_sumout\ & ( (!\inst2|BRout\(3) & (\inst3|ACC[3]~8_combout\ & (!\inst3|ACC[3]~2_combout\ $ (\inst3|ACC\(3))))) # (\inst2|BRout\(3) & ((!\inst3|ACC\(3) & 
-- (\inst3|ACC[3]~8_combout\)) # (\inst3|ACC\(3) & ((\inst3|ACC[3]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000111111100011100011100110001000001111111000111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(3),
	datab => \inst3|ALT_INV_ACC[3]~8_combout\,
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC\(3),
	datae => \inst3|ALT_INV_Add0~49_sumout\,
	combout => \inst3|ACC~44_combout\);

\inst3|ACC~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~45_combout\ = ( \inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(4))) # (\inst3|ACC[3]~1_combout\ & ((\inst3|ACC\(2)))) ) ) # ( !\inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(4))) # 
-- (\inst3|ACC[3]~1_combout\ & ((\inst3|Mult0~11\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010011001101010101000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(4),
	datab => \inst3|ALT_INV_ACC\(2),
	datac => \inst3|ALT_INV_Mult0~11\,
	datad => \inst3|ALT_INV_ACC[3]~1_combout\,
	datae => \inst3|ALT_INV_ACC[3]~6_combout\,
	combout => \inst3|ACC~45_combout\);

\inst3|ACC~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~46_combout\ = ( \inst3|ACC~45_combout\ & ( (!\inst3|Equal0~0_combout\ & ((!\inst3|ACC[3]~7_combout\) # ((\inst3|ACC~44_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add26~1_sumout\)))) ) ) # ( !\inst3|ACC~45_combout\ & ( 
-- (!\inst3|Equal0~0_combout\ & (\inst3|ACC[3]~7_combout\ & ((\inst3|ACC~44_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add26~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110010110110001111101001010000011100101101100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~0_combout\,
	datab => \inst3|ALT_INV_ACC[3]~7_combout\,
	datac => \inst3|ALT_INV_Add26~1_sumout\,
	datad => \inst3|ALT_INV_ACC~44_combout\,
	datae => \inst3|ALT_INV_ACC~45_combout\,
	combout => \inst3|ACC~46_combout\);

\inst3|ACC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~46_combout\,
	sclr => \inst3|ACC[3]~57_combout\,
	ena => \inst3|ACC[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(3));

\inst|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~12_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(3));

\inst|temp~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~12_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(3)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(3),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(3),
	combout => \inst|temp~12_combout\);

\inst|MBR_RAM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~12_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(3));

\inst9|sram|ram_block|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000010000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\inst|MBR_BR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(3),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(3));

\inst2|BRout[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(3) = ( \inst2|BRout\(3) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(3) ) ) ) # ( !\inst2|BRout\(3) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(3) ) ) ) # ( \inst2|BRout\(3) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(3),
	datae => \inst2|ALT_INV_BRout\(3),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(3));

\inst3|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~45_sumout\ = SUM(( !\inst2|BRout\(5) ) + ( \inst3|Add2~51\ ) + ( \inst3|Add2~50\ ))
-- \inst3|Add2~46\ = CARRY(( !\inst2|BRout\(5) ) + ( \inst3|Add2~51\ ) + ( \inst3|Add2~50\ ))
-- \inst3|Add2~47\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(5),
	cin => \inst3|Add2~50\,
	sharein => \inst3|Add2~51\,
	sumout => \inst3|Add2~45_sumout\,
	cout => \inst3|Add2~46\,
	shareout => \inst3|Add2~47\);

\inst3|Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~41_sumout\ = SUM(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add2~45_sumout\ ) + ( \inst3|Add4~46\ ))
-- \inst3|Add4~42\ = CARRY(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(6)) ) + ( \inst3|Add2~45_sumout\ ) + ( \inst3|Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(6),
	dataf => \inst3|ALT_INV_Add2~45_sumout\,
	cin => \inst3|Add4~46\,
	sumout => \inst3|Add4~41_sumout\,
	cout => \inst3|Add4~42\);

\inst3|Add6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~37_sumout\ = SUM(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add4~41_sumout\ ) + ( \inst3|Add6~42\ ))
-- \inst3|Add6~38\ = CARRY(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add4~41_sumout\ ) + ( \inst3|Add6~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(7),
	dataf => \inst3|ALT_INV_Add4~41_sumout\,
	cin => \inst3|Add6~42\,
	sumout => \inst3|Add6~37_sumout\,
	cout => \inst3|Add6~38\);

\inst3|Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~33_sumout\ = SUM(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add6~37_sumout\ ) + ( \inst3|Add8~38\ ))
-- \inst3|Add8~34\ = CARRY(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add6~37_sumout\ ) + ( \inst3|Add8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(8),
	dataf => \inst3|ALT_INV_Add6~37_sumout\,
	cin => \inst3|Add8~38\,
	sumout => \inst3|Add8~33_sumout\,
	cout => \inst3|Add8~34\);

\inst3|Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~29_sumout\ = SUM(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add8~33_sumout\ ) + ( \inst3|Add10~34\ ))
-- \inst3|Add10~30\ = CARRY(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add8~33_sumout\ ) + ( \inst3|Add10~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_Add8~33_sumout\,
	cin => \inst3|Add10~34\,
	sumout => \inst3|Add10~29_sumout\,
	cout => \inst3|Add10~30\);

\inst3|Add12~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~25_sumout\ = SUM(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add10~29_sumout\ ) + ( \inst3|Add12~30\ ))
-- \inst3|Add12~26\ = CARRY(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add10~29_sumout\ ) + ( \inst3|Add12~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(10),
	dataf => \inst3|ALT_INV_Add10~29_sumout\,
	cin => \inst3|Add12~30\,
	sumout => \inst3|Add12~25_sumout\,
	cout => \inst3|Add12~26\);

\inst3|Add14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~21_sumout\ = SUM(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add12~25_sumout\ ) + ( \inst3|Add14~26\ ))
-- \inst3|Add14~22\ = CARRY(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add12~25_sumout\ ) + ( \inst3|Add14~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_Add12~25_sumout\,
	cin => \inst3|Add14~26\,
	sumout => \inst3|Add14~21_sumout\,
	cout => \inst3|Add14~22\);

\inst3|Add16~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~17_sumout\ = SUM(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add14~21_sumout\ ) + ( \inst3|Add16~22\ ))
-- \inst3|Add16~18\ = CARRY(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add14~21_sumout\ ) + ( \inst3|Add16~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(12),
	dataf => \inst3|ALT_INV_Add14~21_sumout\,
	cin => \inst3|Add16~22\,
	sumout => \inst3|Add16~17_sumout\,
	cout => \inst3|Add16~18\);

\inst3|Add18~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~13_sumout\ = SUM(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add16~17_sumout\ ) + ( \inst3|Add18~18\ ))
-- \inst3|Add18~14\ = CARRY(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add16~17_sumout\ ) + ( \inst3|Add18~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_Add16~17_sumout\,
	cin => \inst3|Add18~18\,
	sumout => \inst3|Add18~13_sumout\,
	cout => \inst3|Add18~14\);

\inst3|Add20~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~9_sumout\ = SUM(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add18~13_sumout\ ) + ( \inst3|Add20~14\ ))
-- \inst3|Add20~10\ = CARRY(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add18~13_sumout\ ) + ( \inst3|Add20~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(14),
	dataf => \inst3|ALT_INV_Add18~13_sumout\,
	cin => \inst3|Add20~14\,
	sumout => \inst3|Add20~9_sumout\,
	cout => \inst3|Add20~10\);

\inst3|Add22~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~5_sumout\ = SUM(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add20~9_sumout\ ) + ( \inst3|Add22~10\ ))
-- \inst3|Add22~6\ = CARRY(( !\inst3|Add20~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add20~9_sumout\ ) + ( \inst3|Add22~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(15),
	dataf => \inst3|ALT_INV_Add20~9_sumout\,
	cin => \inst3|Add22~10\,
	sumout => \inst3|Add22~5_sumout\,
	cout => \inst3|Add22~6\);

\inst3|Add24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add24~1_sumout\ = SUM(( \inst3|Add22~5_sumout\ ) + ( !\inst3|Add22~5_sumout\ ) + ( \inst3|Add24~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add22~5_sumout\,
	cin => \inst3|Add24~6\,
	sumout => \inst3|Add24~1_sumout\);

\inst3|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~45_sumout\ = SUM(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(4)) ) + ( \inst3|ACC\(4) ) + ( \inst3|Add0~50\ ))
-- \inst3|Add0~46\ = CARRY(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(4)) ) + ( \inst3|ACC\(4) ) + ( \inst3|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_BRout\(4),
	dataf => \inst3|ALT_INV_ACC\(4),
	cin => \inst3|Add0~50\,
	sumout => \inst3|Add0~45_sumout\,
	cout => \inst3|Add0~46\);

\inst3|ACC~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~41_combout\ = ( \inst3|Add0~45_sumout\ & ( (!\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\) # ((\inst2|BRout\(4) & \inst3|ACC\(4))))) # (\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\ & ((!\inst3|ACC\(4)))) # 
-- (\inst3|ACC[3]~2_combout\ & ((\inst3|ACC\(4)) # (\inst2|BRout\(4)))))) ) ) # ( !\inst3|Add0~45_sumout\ & ( (!\inst2|BRout\(4) & (\inst3|ACC[3]~8_combout\ & (!\inst3|ACC[3]~2_combout\ $ (\inst3|ACC\(4))))) # (\inst2|BRout\(4) & ((!\inst3|ACC\(4) & 
-- (\inst3|ACC[3]~8_combout\)) # (\inst3|ACC\(4) & ((\inst3|ACC[3]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000111111100011100011100110001000001111111000111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(4),
	datab => \inst3|ALT_INV_ACC[3]~8_combout\,
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC\(4),
	datae => \inst3|ALT_INV_Add0~45_sumout\,
	combout => \inst3|ACC~41_combout\);

\inst3|ACC~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~42_combout\ = ( \inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(5))) # (\inst3|ACC[3]~1_combout\ & ((\inst3|ACC\(3)))) ) ) # ( !\inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(5))) # 
-- (\inst3|ACC[3]~1_combout\ & ((\inst3|Mult0~12\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010011001101010101000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(5),
	datab => \inst3|ALT_INV_ACC\(3),
	datac => \inst3|ALT_INV_Mult0~12\,
	datad => \inst3|ALT_INV_ACC[3]~1_combout\,
	datae => \inst3|ALT_INV_ACC[3]~6_combout\,
	combout => \inst3|ACC~42_combout\);

\inst3|ACC~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~43_combout\ = ( \inst3|ACC~42_combout\ & ( (!\inst3|Equal0~0_combout\ & ((!\inst3|ACC[3]~7_combout\) # ((\inst3|ACC~41_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add24~1_sumout\)))) ) ) # ( !\inst3|ACC~42_combout\ & ( 
-- (!\inst3|Equal0~0_combout\ & (\inst3|ACC[3]~7_combout\ & ((\inst3|ACC~41_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add24~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110010110110001111101001010000011100101101100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~0_combout\,
	datab => \inst3|ALT_INV_ACC[3]~7_combout\,
	datac => \inst3|ALT_INV_Add24~1_sumout\,
	datad => \inst3|ALT_INV_ACC~41_combout\,
	datae => \inst3|ALT_INV_ACC~42_combout\,
	combout => \inst3|ACC~43_combout\);

\inst3|ACC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~43_combout\,
	sclr => \inst3|ACC[3]~57_combout\,
	ena => \inst3|ACC[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(4));

\inst|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~11_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(4));

\inst|temp~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~11_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(4)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(4),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(4),
	combout => \inst|temp~11_combout\);

\inst|MBR_RAM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~11_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(4));

\inst9|sram|ram_block|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000020000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\inst|MBR_BR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(4),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(4));

\inst2|BRout[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(4) = ( \inst2|BRout\(4) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(4) ) ) ) # ( !\inst2|BRout\(4) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(4) ) ) ) # ( \inst2|BRout\(4) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(4),
	datae => \inst2|ALT_INV_BRout\(4),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(4));

\inst3|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~41_sumout\ = SUM(( !\inst2|BRout\(6) ) + ( \inst3|Add2~47\ ) + ( \inst3|Add2~46\ ))
-- \inst3|Add2~42\ = CARRY(( !\inst2|BRout\(6) ) + ( \inst3|Add2~47\ ) + ( \inst3|Add2~46\ ))
-- \inst3|Add2~43\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(6),
	cin => \inst3|Add2~46\,
	sharein => \inst3|Add2~47\,
	sumout => \inst3|Add2~41_sumout\,
	cout => \inst3|Add2~42\,
	shareout => \inst3|Add2~43\);

\inst3|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~37_sumout\ = SUM(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add2~41_sumout\ ) + ( \inst3|Add4~42\ ))
-- \inst3|Add4~38\ = CARRY(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(7)) ) + ( \inst3|Add2~41_sumout\ ) + ( \inst3|Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(7),
	dataf => \inst3|ALT_INV_Add2~41_sumout\,
	cin => \inst3|Add4~42\,
	sumout => \inst3|Add4~37_sumout\,
	cout => \inst3|Add4~38\);

\inst3|Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~33_sumout\ = SUM(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add4~37_sumout\ ) + ( \inst3|Add6~38\ ))
-- \inst3|Add6~34\ = CARRY(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add4~37_sumout\ ) + ( \inst3|Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(8),
	dataf => \inst3|ALT_INV_Add4~37_sumout\,
	cin => \inst3|Add6~38\,
	sumout => \inst3|Add6~33_sumout\,
	cout => \inst3|Add6~34\);

\inst3|Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~29_sumout\ = SUM(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add6~33_sumout\ ) + ( \inst3|Add8~34\ ))
-- \inst3|Add8~30\ = CARRY(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add6~33_sumout\ ) + ( \inst3|Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_Add6~33_sumout\,
	cin => \inst3|Add8~34\,
	sumout => \inst3|Add8~29_sumout\,
	cout => \inst3|Add8~30\);

\inst3|Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~25_sumout\ = SUM(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add8~29_sumout\ ) + ( \inst3|Add10~30\ ))
-- \inst3|Add10~26\ = CARRY(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add8~29_sumout\ ) + ( \inst3|Add10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(10),
	dataf => \inst3|ALT_INV_Add8~29_sumout\,
	cin => \inst3|Add10~30\,
	sumout => \inst3|Add10~25_sumout\,
	cout => \inst3|Add10~26\);

\inst3|Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~21_sumout\ = SUM(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add10~25_sumout\ ) + ( \inst3|Add12~26\ ))
-- \inst3|Add12~22\ = CARRY(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add10~25_sumout\ ) + ( \inst3|Add12~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_Add10~25_sumout\,
	cin => \inst3|Add12~26\,
	sumout => \inst3|Add12~21_sumout\,
	cout => \inst3|Add12~22\);

\inst3|Add14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~17_sumout\ = SUM(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add12~21_sumout\ ) + ( \inst3|Add14~22\ ))
-- \inst3|Add14~18\ = CARRY(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add12~21_sumout\ ) + ( \inst3|Add14~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(12),
	dataf => \inst3|ALT_INV_Add12~21_sumout\,
	cin => \inst3|Add14~22\,
	sumout => \inst3|Add14~17_sumout\,
	cout => \inst3|Add14~18\);

\inst3|Add16~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~13_sumout\ = SUM(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add14~17_sumout\ ) + ( \inst3|Add16~18\ ))
-- \inst3|Add16~14\ = CARRY(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add14~17_sumout\ ) + ( \inst3|Add16~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_Add14~17_sumout\,
	cin => \inst3|Add16~18\,
	sumout => \inst3|Add16~13_sumout\,
	cout => \inst3|Add16~14\);

\inst3|Add18~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~9_sumout\ = SUM(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add16~13_sumout\ ) + ( \inst3|Add18~14\ ))
-- \inst3|Add18~10\ = CARRY(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add16~13_sumout\ ) + ( \inst3|Add18~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(14),
	dataf => \inst3|ALT_INV_Add16~13_sumout\,
	cin => \inst3|Add18~14\,
	sumout => \inst3|Add18~9_sumout\,
	cout => \inst3|Add18~10\);

\inst3|Add20~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~5_sumout\ = SUM(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add18~9_sumout\ ) + ( \inst3|Add20~10\ ))
-- \inst3|Add20~6\ = CARRY(( !\inst3|Add18~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add18~9_sumout\ ) + ( \inst3|Add20~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(15),
	dataf => \inst3|ALT_INV_Add18~9_sumout\,
	cin => \inst3|Add20~10\,
	sumout => \inst3|Add20~5_sumout\,
	cout => \inst3|Add20~6\);

\inst3|Add22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add22~1_sumout\ = SUM(( \inst3|Add20~5_sumout\ ) + ( !\inst3|Add20~5_sumout\ ) + ( \inst3|Add22~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add20~5_sumout\,
	cin => \inst3|Add22~6\,
	sumout => \inst3|Add22~1_sumout\);

\inst3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~41_sumout\ = SUM(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(5)) ) + ( \inst3|ACC\(5) ) + ( \inst3|Add0~46\ ))
-- \inst3|Add0~42\ = CARRY(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(5)) ) + ( \inst3|ACC\(5) ) + ( \inst3|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_BRout\(5),
	dataf => \inst3|ALT_INV_ACC\(5),
	cin => \inst3|Add0~46\,
	sumout => \inst3|Add0~41_sumout\,
	cout => \inst3|Add0~42\);

\inst3|ACC~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~38_combout\ = ( \inst3|Add0~41_sumout\ & ( (!\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\) # ((\inst2|BRout\(5) & \inst3|ACC\(5))))) # (\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\ & ((!\inst3|ACC\(5)))) # 
-- (\inst3|ACC[3]~2_combout\ & ((\inst3|ACC\(5)) # (\inst2|BRout\(5)))))) ) ) # ( !\inst3|Add0~41_sumout\ & ( (!\inst2|BRout\(5) & (\inst3|ACC[3]~8_combout\ & (!\inst3|ACC[3]~2_combout\ $ (\inst3|ACC\(5))))) # (\inst2|BRout\(5) & ((!\inst3|ACC\(5) & 
-- (\inst3|ACC[3]~8_combout\)) # (\inst3|ACC\(5) & ((\inst3|ACC[3]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000111111100011100011100110001000001111111000111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(5),
	datab => \inst3|ALT_INV_ACC[3]~8_combout\,
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC\(5),
	datae => \inst3|ALT_INV_Add0~41_sumout\,
	combout => \inst3|ACC~38_combout\);

\inst3|ACC~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~39_combout\ = ( \inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(6))) # (\inst3|ACC[3]~1_combout\ & ((\inst3|ACC\(4)))) ) ) # ( !\inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(6))) # 
-- (\inst3|ACC[3]~1_combout\ & ((\inst3|Mult0~13\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010011001101010101000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(6),
	datab => \inst3|ALT_INV_ACC\(4),
	datac => \inst3|ALT_INV_Mult0~13\,
	datad => \inst3|ALT_INV_ACC[3]~1_combout\,
	datae => \inst3|ALT_INV_ACC[3]~6_combout\,
	combout => \inst3|ACC~39_combout\);

\inst3|ACC~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~40_combout\ = ( \inst3|ACC~39_combout\ & ( (!\inst3|Equal0~0_combout\ & ((!\inst3|ACC[3]~7_combout\) # ((\inst3|ACC~38_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add22~1_sumout\)))) ) ) # ( !\inst3|ACC~39_combout\ & ( 
-- (!\inst3|Equal0~0_combout\ & (\inst3|ACC[3]~7_combout\ & ((\inst3|ACC~38_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add22~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110010110110001111101001010000011100101101100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~0_combout\,
	datab => \inst3|ALT_INV_ACC[3]~7_combout\,
	datac => \inst3|ALT_INV_Add22~1_sumout\,
	datad => \inst3|ALT_INV_ACC~38_combout\,
	datae => \inst3|ALT_INV_ACC~39_combout\,
	combout => \inst3|ACC~40_combout\);

\inst3|ACC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~40_combout\,
	sclr => \inst3|ACC[3]~57_combout\,
	ena => \inst3|ACC[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(5));

\inst|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~10_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(5));

\inst|temp~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~10_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(5)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(5),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(5),
	combout => \inst|temp~10_combout\);

\inst|MBR_RAM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~10_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(5));

\inst9|sram|ram_block|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000030000000000000000000000000000000000000007",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\inst|MBR_BR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(5),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(5));

\inst2|BRout[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(5) = ( \inst2|BRout\(5) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(5) ) ) ) # ( !\inst2|BRout\(5) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(5) ) ) ) # ( \inst2|BRout\(5) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(5),
	datae => \inst2|ALT_INV_BRout\(5),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(5));

\inst3|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~37_sumout\ = SUM(( !\inst2|BRout\(7) ) + ( \inst3|Add2~43\ ) + ( \inst3|Add2~42\ ))
-- \inst3|Add2~38\ = CARRY(( !\inst2|BRout\(7) ) + ( \inst3|Add2~43\ ) + ( \inst3|Add2~42\ ))
-- \inst3|Add2~39\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(7),
	cin => \inst3|Add2~42\,
	sharein => \inst3|Add2~43\,
	sumout => \inst3|Add2~37_sumout\,
	cout => \inst3|Add2~38\,
	shareout => \inst3|Add2~39\);

\inst3|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~33_sumout\ = SUM(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add2~37_sumout\ ) + ( \inst3|Add4~38\ ))
-- \inst3|Add4~34\ = CARRY(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(8)) ) + ( \inst3|Add2~37_sumout\ ) + ( \inst3|Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(8),
	dataf => \inst3|ALT_INV_Add2~37_sumout\,
	cin => \inst3|Add4~38\,
	sumout => \inst3|Add4~33_sumout\,
	cout => \inst3|Add4~34\);

\inst3|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~29_sumout\ = SUM(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add4~33_sumout\ ) + ( \inst3|Add6~34\ ))
-- \inst3|Add6~30\ = CARRY(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add4~33_sumout\ ) + ( \inst3|Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_Add4~33_sumout\,
	cin => \inst3|Add6~34\,
	sumout => \inst3|Add6~29_sumout\,
	cout => \inst3|Add6~30\);

\inst3|Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~25_sumout\ = SUM(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add6~29_sumout\ ) + ( \inst3|Add8~30\ ))
-- \inst3|Add8~26\ = CARRY(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add6~29_sumout\ ) + ( \inst3|Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(10),
	dataf => \inst3|ALT_INV_Add6~29_sumout\,
	cin => \inst3|Add8~30\,
	sumout => \inst3|Add8~25_sumout\,
	cout => \inst3|Add8~26\);

\inst3|Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~21_sumout\ = SUM(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add8~25_sumout\ ) + ( \inst3|Add10~26\ ))
-- \inst3|Add10~22\ = CARRY(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add8~25_sumout\ ) + ( \inst3|Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_Add8~25_sumout\,
	cin => \inst3|Add10~26\,
	sumout => \inst3|Add10~21_sumout\,
	cout => \inst3|Add10~22\);

\inst3|Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~17_sumout\ = SUM(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add10~21_sumout\ ) + ( \inst3|Add12~22\ ))
-- \inst3|Add12~18\ = CARRY(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add10~21_sumout\ ) + ( \inst3|Add12~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(12),
	dataf => \inst3|ALT_INV_Add10~21_sumout\,
	cin => \inst3|Add12~22\,
	sumout => \inst3|Add12~17_sumout\,
	cout => \inst3|Add12~18\);

\inst3|Add14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~13_sumout\ = SUM(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add12~17_sumout\ ) + ( \inst3|Add14~18\ ))
-- \inst3|Add14~14\ = CARRY(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add12~17_sumout\ ) + ( \inst3|Add14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_Add12~17_sumout\,
	cin => \inst3|Add14~18\,
	sumout => \inst3|Add14~13_sumout\,
	cout => \inst3|Add14~14\);

\inst3|Add16~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~9_sumout\ = SUM(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add14~13_sumout\ ) + ( \inst3|Add16~14\ ))
-- \inst3|Add16~10\ = CARRY(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add14~13_sumout\ ) + ( \inst3|Add16~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(14),
	dataf => \inst3|ALT_INV_Add14~13_sumout\,
	cin => \inst3|Add16~14\,
	sumout => \inst3|Add16~9_sumout\,
	cout => \inst3|Add16~10\);

\inst3|Add18~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~5_sumout\ = SUM(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add16~9_sumout\ ) + ( \inst3|Add18~10\ ))
-- \inst3|Add18~6\ = CARRY(( !\inst3|Add16~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add16~9_sumout\ ) + ( \inst3|Add18~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(15),
	dataf => \inst3|ALT_INV_Add16~9_sumout\,
	cin => \inst3|Add18~10\,
	sumout => \inst3|Add18~5_sumout\,
	cout => \inst3|Add18~6\);

\inst3|Add20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add20~1_sumout\ = SUM(( \inst3|Add18~5_sumout\ ) + ( !\inst3|Add18~5_sumout\ ) + ( \inst3|Add20~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add18~5_sumout\,
	cin => \inst3|Add20~6\,
	sumout => \inst3|Add20~1_sumout\);

\inst3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~37_sumout\ = SUM(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(6)) ) + ( \inst3|ACC\(6) ) + ( \inst3|Add0~42\ ))
-- \inst3|Add0~38\ = CARRY(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(6)) ) + ( \inst3|ACC\(6) ) + ( \inst3|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_BRout\(6),
	dataf => \inst3|ALT_INV_ACC\(6),
	cin => \inst3|Add0~42\,
	sumout => \inst3|Add0~37_sumout\,
	cout => \inst3|Add0~38\);

\inst3|ACC~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~35_combout\ = ( \inst3|Add0~37_sumout\ & ( (!\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\) # ((\inst2|BRout\(6) & \inst3|ACC\(6))))) # (\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\ & ((!\inst3|ACC\(6)))) # 
-- (\inst3|ACC[3]~2_combout\ & ((\inst3|ACC\(6)) # (\inst2|BRout\(6)))))) ) ) # ( !\inst3|Add0~37_sumout\ & ( (!\inst2|BRout\(6) & (\inst3|ACC[3]~8_combout\ & (!\inst3|ACC[3]~2_combout\ $ (\inst3|ACC\(6))))) # (\inst2|BRout\(6) & ((!\inst3|ACC\(6) & 
-- (\inst3|ACC[3]~8_combout\)) # (\inst3|ACC\(6) & ((\inst3|ACC[3]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000111111100011100011100110001000001111111000111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(6),
	datab => \inst3|ALT_INV_ACC[3]~8_combout\,
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC\(6),
	datae => \inst3|ALT_INV_Add0~37_sumout\,
	combout => \inst3|ACC~35_combout\);

\inst3|ACC~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~36_combout\ = ( \inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(7))) # (\inst3|ACC[3]~1_combout\ & ((\inst3|ACC\(5)))) ) ) # ( !\inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(7))) # 
-- (\inst3|ACC[3]~1_combout\ & ((\inst3|Mult0~14\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010011001101010101000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(7),
	datab => \inst3|ALT_INV_ACC\(5),
	datac => \inst3|ALT_INV_Mult0~14\,
	datad => \inst3|ALT_INV_ACC[3]~1_combout\,
	datae => \inst3|ALT_INV_ACC[3]~6_combout\,
	combout => \inst3|ACC~36_combout\);

\inst3|ACC~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~37_combout\ = ( \inst3|ACC~36_combout\ & ( (!\inst3|Equal0~0_combout\ & ((!\inst3|ACC[3]~7_combout\) # ((\inst3|ACC~35_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add20~1_sumout\)))) ) ) # ( !\inst3|ACC~36_combout\ & ( 
-- (!\inst3|Equal0~0_combout\ & (\inst3|ACC[3]~7_combout\ & ((\inst3|ACC~35_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add20~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110010110110001111101001010000011100101101100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~0_combout\,
	datab => \inst3|ALT_INV_ACC[3]~7_combout\,
	datac => \inst3|ALT_INV_Add20~1_sumout\,
	datad => \inst3|ALT_INV_ACC~35_combout\,
	datae => \inst3|ALT_INV_ACC~36_combout\,
	combout => \inst3|ACC~37_combout\);

\inst3|ACC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~37_combout\,
	sclr => \inst3|ACC[3]~57_combout\,
	ena => \inst3|ACC[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(6));

\inst|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~9_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(6));

\inst|temp~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~9_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(6)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(6),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(6),
	combout => \inst|temp~9_combout\);

\inst|MBR_RAM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~9_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(6));

\inst9|sram|ram_block|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000030000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\inst|MBR_BR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(6),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(6));

\inst2|BRout[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(6) = ( \inst2|BRout\(6) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(6) ) ) ) # ( !\inst2|BRout\(6) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(6) ) ) ) # ( \inst2|BRout\(6) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(6),
	datae => \inst2|ALT_INV_BRout\(6),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(6));

\inst3|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~33_sumout\ = SUM(( !\inst2|BRout\(8) ) + ( \inst3|Add2~39\ ) + ( \inst3|Add2~38\ ))
-- \inst3|Add2~34\ = CARRY(( !\inst2|BRout\(8) ) + ( \inst3|Add2~39\ ) + ( \inst3|Add2~38\ ))
-- \inst3|Add2~35\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(8),
	cin => \inst3|Add2~38\,
	sharein => \inst3|Add2~39\,
	sumout => \inst3|Add2~33_sumout\,
	cout => \inst3|Add2~34\,
	shareout => \inst3|Add2~35\);

\inst3|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~29_sumout\ = SUM(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add2~33_sumout\ ) + ( \inst3|Add4~34\ ))
-- \inst3|Add4~30\ = CARRY(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(9)) ) + ( \inst3|Add2~33_sumout\ ) + ( \inst3|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_Add2~33_sumout\,
	cin => \inst3|Add4~34\,
	sumout => \inst3|Add4~29_sumout\,
	cout => \inst3|Add4~30\);

\inst3|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~25_sumout\ = SUM(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add4~29_sumout\ ) + ( \inst3|Add6~30\ ))
-- \inst3|Add6~26\ = CARRY(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add4~29_sumout\ ) + ( \inst3|Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(10),
	dataf => \inst3|ALT_INV_Add4~29_sumout\,
	cin => \inst3|Add6~30\,
	sumout => \inst3|Add6~25_sumout\,
	cout => \inst3|Add6~26\);

\inst3|Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~21_sumout\ = SUM(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add6~25_sumout\ ) + ( \inst3|Add8~26\ ))
-- \inst3|Add8~22\ = CARRY(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add6~25_sumout\ ) + ( \inst3|Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_Add6~25_sumout\,
	cin => \inst3|Add8~26\,
	sumout => \inst3|Add8~21_sumout\,
	cout => \inst3|Add8~22\);

\inst3|Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~17_sumout\ = SUM(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add8~21_sumout\ ) + ( \inst3|Add10~22\ ))
-- \inst3|Add10~18\ = CARRY(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add8~21_sumout\ ) + ( \inst3|Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(12),
	dataf => \inst3|ALT_INV_Add8~21_sumout\,
	cin => \inst3|Add10~22\,
	sumout => \inst3|Add10~17_sumout\,
	cout => \inst3|Add10~18\);

\inst3|Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~13_sumout\ = SUM(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add10~17_sumout\ ) + ( \inst3|Add12~18\ ))
-- \inst3|Add12~14\ = CARRY(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add10~17_sumout\ ) + ( \inst3|Add12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_Add10~17_sumout\,
	cin => \inst3|Add12~18\,
	sumout => \inst3|Add12~13_sumout\,
	cout => \inst3|Add12~14\);

\inst3|Add14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~9_sumout\ = SUM(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add12~13_sumout\ ) + ( \inst3|Add14~14\ ))
-- \inst3|Add14~10\ = CARRY(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add12~13_sumout\ ) + ( \inst3|Add14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(14),
	dataf => \inst3|ALT_INV_Add12~13_sumout\,
	cin => \inst3|Add14~14\,
	sumout => \inst3|Add14~9_sumout\,
	cout => \inst3|Add14~10\);

\inst3|Add16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~5_sumout\ = SUM(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add14~9_sumout\ ) + ( \inst3|Add16~10\ ))
-- \inst3|Add16~6\ = CARRY(( !\inst3|Add14~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add14~9_sumout\ ) + ( \inst3|Add16~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(15),
	dataf => \inst3|ALT_INV_Add14~9_sumout\,
	cin => \inst3|Add16~10\,
	sumout => \inst3|Add16~5_sumout\,
	cout => \inst3|Add16~6\);

\inst3|Add18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add18~1_sumout\ = SUM(( \inst3|Add16~5_sumout\ ) + ( !\inst3|Add16~5_sumout\ ) + ( \inst3|Add18~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add16~5_sumout\,
	cin => \inst3|Add18~6\,
	sumout => \inst3|Add18~1_sumout\);

\inst3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~33_sumout\ = SUM(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(7)) ) + ( \inst3|ACC\(7) ) + ( \inst3|Add0~38\ ))
-- \inst3|Add0~34\ = CARRY(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(7)) ) + ( \inst3|ACC\(7) ) + ( \inst3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_BRout\(7),
	dataf => \inst3|ALT_INV_ACC\(7),
	cin => \inst3|Add0~38\,
	sumout => \inst3|Add0~33_sumout\,
	cout => \inst3|Add0~34\);

\inst3|ACC~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~32_combout\ = ( \inst3|Add0~33_sumout\ & ( (!\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\) # ((\inst2|BRout\(7) & \inst3|ACC\(7))))) # (\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\ & ((!\inst3|ACC\(7)))) # 
-- (\inst3|ACC[3]~2_combout\ & ((\inst3|ACC\(7)) # (\inst2|BRout\(7)))))) ) ) # ( !\inst3|Add0~33_sumout\ & ( (!\inst2|BRout\(7) & (\inst3|ACC[3]~8_combout\ & (!\inst3|ACC[3]~2_combout\ $ (\inst3|ACC\(7))))) # (\inst2|BRout\(7) & ((!\inst3|ACC\(7) & 
-- (\inst3|ACC[3]~8_combout\)) # (\inst3|ACC\(7) & ((\inst3|ACC[3]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000111111100011100011100110001000001111111000111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(7),
	datab => \inst3|ALT_INV_ACC[3]~8_combout\,
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC\(7),
	datae => \inst3|ALT_INV_Add0~33_sumout\,
	combout => \inst3|ACC~32_combout\);

\inst3|ACC~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~33_combout\ = ( \inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(8))) # (\inst3|ACC[3]~1_combout\ & ((\inst3|ACC\(6)))) ) ) # ( !\inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(8))) # 
-- (\inst3|ACC[3]~1_combout\ & ((\inst3|Mult0~15\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010011001101010101000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(8),
	datab => \inst3|ALT_INV_ACC\(6),
	datac => \inst3|ALT_INV_Mult0~15\,
	datad => \inst3|ALT_INV_ACC[3]~1_combout\,
	datae => \inst3|ALT_INV_ACC[3]~6_combout\,
	combout => \inst3|ACC~33_combout\);

\inst3|ACC~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~34_combout\ = ( \inst3|ACC~33_combout\ & ( (!\inst3|Equal0~0_combout\ & ((!\inst3|ACC[3]~7_combout\) # ((\inst3|ACC~32_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add18~1_sumout\)))) ) ) # ( !\inst3|ACC~33_combout\ & ( 
-- (!\inst3|Equal0~0_combout\ & (\inst3|ACC[3]~7_combout\ & ((\inst3|ACC~32_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add18~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110010110110001111101001010000011100101101100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~0_combout\,
	datab => \inst3|ALT_INV_ACC[3]~7_combout\,
	datac => \inst3|ALT_INV_Add18~1_sumout\,
	datad => \inst3|ALT_INV_ACC~32_combout\,
	datae => \inst3|ALT_INV_ACC~33_combout\,
	combout => \inst3|ACC~34_combout\);

\inst3|ACC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~34_combout\,
	sclr => \inst3|ACC[3]~57_combout\,
	ena => \inst3|ACC[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(7));

\inst|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~8_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(7));

\inst|temp~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~8_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(7)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(7),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(7),
	combout => \inst|temp~8_combout\);

\inst|MBR_RAM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~8_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(7));

\inst9|sram|ram_block|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000030000000000000000000000000000000000000007",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\inst|MBR_BR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(7),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(7));

\inst2|BRout[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(7) = ( \inst2|BRout\(7) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(7) ) ) ) # ( !\inst2|BRout\(7) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(7) ) ) ) # ( \inst2|BRout\(7) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(7),
	datae => \inst2|ALT_INV_BRout\(7),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(7));

\inst3|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~29_sumout\ = SUM(( !\inst2|BRout\(9) ) + ( \inst3|Add2~35\ ) + ( \inst3|Add2~34\ ))
-- \inst3|Add2~30\ = CARRY(( !\inst2|BRout\(9) ) + ( \inst3|Add2~35\ ) + ( \inst3|Add2~34\ ))
-- \inst3|Add2~31\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(9),
	cin => \inst3|Add2~34\,
	sharein => \inst3|Add2~35\,
	sumout => \inst3|Add2~29_sumout\,
	cout => \inst3|Add2~30\,
	shareout => \inst3|Add2~31\);

\inst3|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~25_sumout\ = SUM(( !\inst2|BRout\(10) ) + ( \inst3|Add2~31\ ) + ( \inst3|Add2~30\ ))
-- \inst3|Add2~26\ = CARRY(( !\inst2|BRout\(10) ) + ( \inst3|Add2~31\ ) + ( \inst3|Add2~30\ ))
-- \inst3|Add2~27\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(10),
	cin => \inst3|Add2~30\,
	sharein => \inst3|Add2~31\,
	sumout => \inst3|Add2~25_sumout\,
	cout => \inst3|Add2~26\,
	shareout => \inst3|Add2~27\);

\inst3|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~21_sumout\ = SUM(( !\inst2|BRout\(11) ) + ( \inst3|Add2~27\ ) + ( \inst3|Add2~26\ ))
-- \inst3|Add2~22\ = CARRY(( !\inst2|BRout\(11) ) + ( \inst3|Add2~27\ ) + ( \inst3|Add2~26\ ))
-- \inst3|Add2~23\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(11),
	cin => \inst3|Add2~26\,
	sharein => \inst3|Add2~27\,
	sumout => \inst3|Add2~21_sumout\,
	cout => \inst3|Add2~22\,
	shareout => \inst3|Add2~23\);

\inst3|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~25_sumout\ = SUM(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add2~29_sumout\ ) + ( \inst3|Add4~30\ ))
-- \inst3|Add4~26\ = CARRY(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(10)) ) + ( \inst3|Add2~29_sumout\ ) + ( \inst3|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(10),
	dataf => \inst3|ALT_INV_Add2~29_sumout\,
	cin => \inst3|Add4~30\,
	sumout => \inst3|Add4~25_sumout\,
	cout => \inst3|Add4~26\);

\inst3|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~21_sumout\ = SUM(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add2~25_sumout\ ) + ( \inst3|Add4~26\ ))
-- \inst3|Add4~22\ = CARRY(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add2~25_sumout\ ) + ( \inst3|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_Add2~25_sumout\,
	cin => \inst3|Add4~26\,
	sumout => \inst3|Add4~21_sumout\,
	cout => \inst3|Add4~22\);

\inst3|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~17_sumout\ = SUM(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add2~21_sumout\ ) + ( \inst3|Add4~22\ ))
-- \inst3|Add4~18\ = CARRY(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add2~21_sumout\ ) + ( \inst3|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(12),
	dataf => \inst3|ALT_INV_Add2~21_sumout\,
	cin => \inst3|Add4~22\,
	sumout => \inst3|Add4~17_sumout\,
	cout => \inst3|Add4~18\);

\inst3|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~21_sumout\ = SUM(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add4~25_sumout\ ) + ( \inst3|Add6~26\ ))
-- \inst3|Add6~22\ = CARRY(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(11)) ) + ( \inst3|Add4~25_sumout\ ) + ( \inst3|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_Add4~25_sumout\,
	cin => \inst3|Add6~26\,
	sumout => \inst3|Add6~21_sumout\,
	cout => \inst3|Add6~22\);

\inst3|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~17_sumout\ = SUM(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add4~21_sumout\ ) + ( \inst3|Add6~22\ ))
-- \inst3|Add6~18\ = CARRY(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add4~21_sumout\ ) + ( \inst3|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(12),
	dataf => \inst3|ALT_INV_Add4~21_sumout\,
	cin => \inst3|Add6~22\,
	sumout => \inst3|Add6~17_sumout\,
	cout => \inst3|Add6~18\);

\inst3|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~13_sumout\ = SUM(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add4~17_sumout\ ) + ( \inst3|Add6~18\ ))
-- \inst3|Add6~14\ = CARRY(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add4~17_sumout\ ) + ( \inst3|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_Add4~17_sumout\,
	cin => \inst3|Add6~18\,
	sumout => \inst3|Add6~13_sumout\,
	cout => \inst3|Add6~14\);

\inst3|Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~17_sumout\ = SUM(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add6~21_sumout\ ) + ( \inst3|Add8~22\ ))
-- \inst3|Add8~18\ = CARRY(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(12)) ) + ( \inst3|Add6~21_sumout\ ) + ( \inst3|Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(12),
	dataf => \inst3|ALT_INV_Add6~21_sumout\,
	cin => \inst3|Add8~22\,
	sumout => \inst3|Add8~17_sumout\,
	cout => \inst3|Add8~18\);

\inst3|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~13_sumout\ = SUM(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add6~17_sumout\ ) + ( \inst3|Add8~18\ ))
-- \inst3|Add8~14\ = CARRY(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add6~17_sumout\ ) + ( \inst3|Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_Add6~17_sumout\,
	cin => \inst3|Add8~18\,
	sumout => \inst3|Add8~13_sumout\,
	cout => \inst3|Add8~14\);

\inst3|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~9_sumout\ = SUM(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add6~13_sumout\ ) + ( \inst3|Add8~14\ ))
-- \inst3|Add8~10\ = CARRY(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add6~13_sumout\ ) + ( \inst3|Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(14),
	dataf => \inst3|ALT_INV_Add6~13_sumout\,
	cin => \inst3|Add8~14\,
	sumout => \inst3|Add8~9_sumout\,
	cout => \inst3|Add8~10\);

\inst3|Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~13_sumout\ = SUM(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add8~17_sumout\ ) + ( \inst3|Add10~18\ ))
-- \inst3|Add10~14\ = CARRY(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add8~17_sumout\ ) + ( \inst3|Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_Add8~17_sumout\,
	cin => \inst3|Add10~18\,
	sumout => \inst3|Add10~13_sumout\,
	cout => \inst3|Add10~14\);

\inst3|Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~9_sumout\ = SUM(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add8~13_sumout\ ) + ( \inst3|Add10~14\ ))
-- \inst3|Add10~10\ = CARRY(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add8~13_sumout\ ) + ( \inst3|Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(14),
	dataf => \inst3|ALT_INV_Add8~13_sumout\,
	cin => \inst3|Add10~14\,
	sumout => \inst3|Add10~9_sumout\,
	cout => \inst3|Add10~10\);

\inst3|Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~5_sumout\ = SUM(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add8~9_sumout\ ) + ( \inst3|Add10~10\ ))
-- \inst3|Add10~6\ = CARRY(( !\inst3|Add8~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add8~9_sumout\ ) + ( \inst3|Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(15),
	dataf => \inst3|ALT_INV_Add8~9_sumout\,
	cin => \inst3|Add10~10\,
	sumout => \inst3|Add10~5_sumout\,
	cout => \inst3|Add10~6\);

\inst3|Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~9_sumout\ = SUM(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add10~13_sumout\ ) + ( \inst3|Add12~14\ ))
-- \inst3|Add12~10\ = CARRY(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add10~13_sumout\ ) + ( \inst3|Add12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(14),
	dataf => \inst3|ALT_INV_Add10~13_sumout\,
	cin => \inst3|Add12~14\,
	sumout => \inst3|Add12~9_sumout\,
	cout => \inst3|Add12~10\);

\inst3|Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~5_sumout\ = SUM(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add10~9_sumout\ ) + ( \inst3|Add12~10\ ))
-- \inst3|Add12~6\ = CARRY(( !\inst3|Add10~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add10~9_sumout\ ) + ( \inst3|Add12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(15),
	dataf => \inst3|ALT_INV_Add10~9_sumout\,
	cin => \inst3|Add12~10\,
	sumout => \inst3|Add12~5_sumout\,
	cout => \inst3|Add12~6\);

\inst3|Add14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~5_sumout\ = SUM(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add12~9_sumout\ ) + ( \inst3|Add14~10\ ))
-- \inst3|Add14~6\ = CARRY(( !\inst3|Add12~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add12~9_sumout\ ) + ( \inst3|Add14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(15),
	dataf => \inst3|ALT_INV_Add12~9_sumout\,
	cin => \inst3|Add14~10\,
	sumout => \inst3|Add14~5_sumout\,
	cout => \inst3|Add14~6\);

\inst3|Add16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~1_sumout\ = SUM(( \inst3|Add14~5_sumout\ ) + ( !\inst3|Add14~5_sumout\ ) + ( \inst3|Add16~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add14~5_sumout\,
	cin => \inst3|Add16~6\,
	sumout => \inst3|Add16~1_sumout\);

\inst3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~29_sumout\ = SUM(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(8)) ) + ( \inst3|ACC\(8) ) + ( \inst3|Add0~34\ ))
-- \inst3|Add0~30\ = CARRY(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(8)) ) + ( \inst3|ACC\(8) ) + ( \inst3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_BRout\(8),
	dataf => \inst3|ALT_INV_ACC\(8),
	cin => \inst3|Add0~34\,
	sumout => \inst3|Add0~29_sumout\,
	cout => \inst3|Add0~30\);

\inst3|ACC~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~29_combout\ = ( \inst3|Add0~29_sumout\ & ( (!\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\) # ((\inst2|BRout\(8) & \inst3|ACC\(8))))) # (\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\ & ((!\inst3|ACC\(8)))) # 
-- (\inst3|ACC[3]~2_combout\ & ((\inst3|ACC\(8)) # (\inst2|BRout\(8)))))) ) ) # ( !\inst3|Add0~29_sumout\ & ( (!\inst2|BRout\(8) & (\inst3|ACC[3]~8_combout\ & (!\inst3|ACC[3]~2_combout\ $ (\inst3|ACC\(8))))) # (\inst2|BRout\(8) & ((!\inst3|ACC\(8) & 
-- (\inst3|ACC[3]~8_combout\)) # (\inst3|ACC\(8) & ((\inst3|ACC[3]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000111111100011100011100110001000001111111000111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(8),
	datab => \inst3|ALT_INV_ACC[3]~8_combout\,
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC\(8),
	datae => \inst3|ALT_INV_Add0~29_sumout\,
	combout => \inst3|ACC~29_combout\);

\inst3|ACC~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~30_combout\ = ( \inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(9))) # (\inst3|ACC[3]~1_combout\ & ((\inst3|ACC\(7)))) ) ) # ( !\inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(9))) # 
-- (\inst3|ACC[3]~1_combout\ & ((\inst3|Mult0~16\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010011001101010101000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(9),
	datab => \inst3|ALT_INV_ACC\(7),
	datac => \inst3|ALT_INV_Mult0~16\,
	datad => \inst3|ALT_INV_ACC[3]~1_combout\,
	datae => \inst3|ALT_INV_ACC[3]~6_combout\,
	combout => \inst3|ACC~30_combout\);

\inst3|ACC~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~31_combout\ = ( \inst3|ACC~30_combout\ & ( (!\inst3|Equal0~0_combout\ & ((!\inst3|ACC[3]~7_combout\) # ((\inst3|ACC~29_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add16~1_sumout\)))) ) ) # ( !\inst3|ACC~30_combout\ & ( 
-- (!\inst3|Equal0~0_combout\ & (\inst3|ACC[3]~7_combout\ & ((\inst3|ACC~29_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add16~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110010110110001111101001010000011100101101100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~0_combout\,
	datab => \inst3|ALT_INV_ACC[3]~7_combout\,
	datac => \inst3|ALT_INV_Add16~1_sumout\,
	datad => \inst3|ALT_INV_ACC~29_combout\,
	datae => \inst3|ALT_INV_ACC~30_combout\,
	combout => \inst3|ACC~31_combout\);

\inst3|ACC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~31_combout\,
	sclr => \inst3|ACC[3]~57_combout\,
	ena => \inst3|ACC[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(8));

\inst|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~7_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(8));

\inst|temp~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~7_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(8)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(8),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(8),
	combout => \inst|temp~7_combout\);

\inst|MBR_RAM[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~7_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(8));

\inst9|sram|ram_block|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000030000000000000000000000000000000000000006",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

\inst|MBR_OP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(8),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(0));

\inst6|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~29_sumout\ = SUM(( (\inst|MBR_OP\(0)) # (\inst6|Equal3~0_combout\) ) + ( \inst6|CARout\(0) ) + ( !VCC ))
-- \inst6|Add0~30\ = CARRY(( (\inst|MBR_OP\(0)) # (\inst6|Equal3~0_combout\) ) + ( \inst6|CARout\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal3~0_combout\,
	datad => \inst|ALT_INV_MBR_OP\(0),
	dataf => \inst6|ALT_INV_CARout\(0),
	cin => GND,
	sumout => \inst6|Add0~29_sumout\,
	cout => \inst6|Add0~30\);

\inst6|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~25_sumout\ = SUM(( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(1)) ) + ( \inst6|CARout\(1) ) + ( \inst6|Add0~30\ ))
-- \inst6|Add0~26\ = CARRY(( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(1)) ) + ( \inst6|CARout\(1) ) + ( \inst6|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal3~0_combout\,
	datad => \inst|ALT_INV_MBR_OP\(1),
	dataf => \inst6|ALT_INV_CARout\(1),
	cin => \inst6|Add0~30\,
	sumout => \inst6|Add0~25_sumout\,
	cout => \inst6|Add0~26\);

\inst6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~21_sumout\ = SUM(( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(2)) ) + ( \inst6|CARout\(2) ) + ( \inst6|Add0~26\ ))
-- \inst6|Add0~22\ = CARRY(( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(2)) ) + ( \inst6|CARout\(2) ) + ( \inst6|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal3~0_combout\,
	datad => \inst|ALT_INV_MBR_OP\(2),
	dataf => \inst6|ALT_INV_CARout\(2),
	cin => \inst6|Add0~26\,
	sumout => \inst6|Add0~21_sumout\,
	cout => \inst6|Add0~22\);

\inst6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~17_sumout\ = SUM(( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(3)) ) + ( \inst6|CARout\(3) ) + ( \inst6|Add0~22\ ))
-- \inst6|Add0~18\ = CARRY(( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(3)) ) + ( \inst6|CARout\(3) ) + ( \inst6|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal3~0_combout\,
	datad => \inst|ALT_INV_MBR_OP\(3),
	dataf => \inst6|ALT_INV_CARout\(3),
	cin => \inst6|Add0~22\,
	sumout => \inst6|Add0~17_sumout\,
	cout => \inst6|Add0~18\);

\inst6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~13_sumout\ = SUM(( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(4)) ) + ( \inst6|CARout\(4) ) + ( \inst6|Add0~18\ ))
-- \inst6|Add0~14\ = CARRY(( (!\inst6|Equal3~0_combout\ & \inst|MBR_OP\(4)) ) + ( \inst6|CARout\(4) ) + ( \inst6|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal3~0_combout\,
	datad => \inst|ALT_INV_MBR_OP\(4),
	dataf => \inst6|ALT_INV_CARout\(4),
	cin => \inst6|Add0~18\,
	sumout => \inst6|Add0~13_sumout\,
	cout => \inst6|Add0~14\);

\inst8|srom|rom_block|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000001F40",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\inst6|CARout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add0~9_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(5),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(5));

\inst8|srom|rom_block|auto_generated|ram_block1a21\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000002",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

\inst|MBR_OP[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_OP[5]~0_combout\ = (!\reset~input_o\) # (\inst8|srom|rom_block|auto_generated|q_a\(21))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(21),
	datab => \ALT_INV_reset~input_o\,
	combout => \inst|MBR_OP[5]~0_combout\);

\inst|MBR_OP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(12),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(4));

\inst8|srom|rom_block|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000009C38",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\inst6|CARout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add0~13_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(4),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(4));

\inst8|srom|rom_block|auto_generated|ram_block1a16\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000200800000421084000001",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

\inst|MBR_BR[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|MBR_BR[5]~0_combout\ = (!\reset~input_o\) # (\inst8|srom|rom_block|auto_generated|q_a\(16))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(16),
	datab => \ALT_INV_reset~input_o\,
	combout => \inst|MBR_BR[5]~0_combout\);

\inst|MBR_BR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(11),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(11));

\inst2|BRout[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(11) = ( \inst2|BRout\(11) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(11) ) ) ) # ( !\inst2|BRout\(11) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(11) ) ) ) # ( \inst2|BRout\(11) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(11),
	datae => \inst2|ALT_INV_BRout\(11),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(11));

\inst3|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~17_sumout\ = SUM(( !\inst2|BRout\(12) ) + ( \inst3|Add2~23\ ) + ( \inst3|Add2~22\ ))
-- \inst3|Add2~18\ = CARRY(( !\inst2|BRout\(12) ) + ( \inst3|Add2~23\ ) + ( \inst3|Add2~22\ ))
-- \inst3|Add2~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(12),
	cin => \inst3|Add2~22\,
	sharein => \inst3|Add2~23\,
	sumout => \inst3|Add2~17_sumout\,
	cout => \inst3|Add2~18\,
	shareout => \inst3|Add2~19\);

\inst3|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~13_sumout\ = SUM(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add2~17_sumout\ ) + ( \inst3|Add4~18\ ))
-- \inst3|Add4~14\ = CARRY(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(13)) ) + ( \inst3|Add2~17_sumout\ ) + ( \inst3|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_Add2~17_sumout\,
	cin => \inst3|Add4~18\,
	sumout => \inst3|Add4~13_sumout\,
	cout => \inst3|Add4~14\);

\inst3|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~9_sumout\ = SUM(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add4~13_sumout\ ) + ( \inst3|Add6~14\ ))
-- \inst3|Add6~10\ = CARRY(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add4~13_sumout\ ) + ( \inst3|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(14),
	dataf => \inst3|ALT_INV_Add4~13_sumout\,
	cin => \inst3|Add6~14\,
	sumout => \inst3|Add6~9_sumout\,
	cout => \inst3|Add6~10\);

\inst3|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~5_sumout\ = SUM(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add6~9_sumout\ ) + ( \inst3|Add8~10\ ))
-- \inst3|Add8~6\ = CARRY(( !\inst3|Add6~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add6~9_sumout\ ) + ( \inst3|Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(15),
	dataf => \inst3|ALT_INV_Add6~9_sumout\,
	cin => \inst3|Add8~10\,
	sumout => \inst3|Add8~5_sumout\,
	cout => \inst3|Add8~6\);

\inst3|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add8~1_sumout\ = SUM(( \inst3|Add6~5_sumout\ ) + ( !\inst3|Add6~5_sumout\ ) + ( \inst3|Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add6~5_sumout\,
	cin => \inst3|Add8~6\,
	sumout => \inst3|Add8~1_sumout\);

\inst3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~25_sumout\ = SUM(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(9)) ) + ( \inst3|ACC\(9) ) + ( \inst3|Add0~30\ ))
-- \inst3|Add0~26\ = CARRY(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(9)) ) + ( \inst3|ACC\(9) ) + ( \inst3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_BRout\(9),
	dataf => \inst3|ALT_INV_ACC\(9),
	cin => \inst3|Add0~30\,
	sumout => \inst3|Add0~25_sumout\,
	cout => \inst3|Add0~26\);

\inst3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~21_sumout\ = SUM(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(10)) ) + ( \inst3|ACC\(10) ) + ( \inst3|Add0~26\ ))
-- \inst3|Add0~22\ = CARRY(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(10)) ) + ( \inst3|ACC\(10) ) + ( \inst3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_BRout\(10),
	dataf => \inst3|ALT_INV_ACC\(10),
	cin => \inst3|Add0~26\,
	sumout => \inst3|Add0~21_sumout\,
	cout => \inst3|Add0~22\);

\inst3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~17_sumout\ = SUM(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(11)) ) + ( \inst3|ACC\(11) ) + ( \inst3|Add0~22\ ))
-- \inst3|Add0~18\ = CARRY(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(11)) ) + ( \inst3|ACC\(11) ) + ( \inst3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_BRout\(11),
	dataf => \inst3|ALT_INV_ACC\(11),
	cin => \inst3|Add0~22\,
	sumout => \inst3|Add0~17_sumout\,
	cout => \inst3|Add0~18\);

\inst3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~13_sumout\ = SUM(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(12)) ) + ( \inst3|ACC\(12) ) + ( \inst3|Add0~18\ ))
-- \inst3|Add0~14\ = CARRY(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(12)) ) + ( \inst3|ACC\(12) ) + ( \inst3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_BRout\(12),
	dataf => \inst3|ALT_INV_ACC\(12),
	cin => \inst3|Add0~18\,
	sumout => \inst3|Add0~13_sumout\,
	cout => \inst3|Add0~14\);

\inst3|ACC~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~17_combout\ = ( \inst3|Add0~13_sumout\ & ( (!\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\) # ((\inst2|BRout\(12) & \inst3|ACC\(12))))) # (\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\ & ((!\inst3|ACC\(12)))) # 
-- (\inst3|ACC[3]~2_combout\ & ((\inst3|ACC\(12)) # (\inst2|BRout\(12)))))) ) ) # ( !\inst3|Add0~13_sumout\ & ( (!\inst2|BRout\(12) & (\inst3|ACC[3]~8_combout\ & (!\inst3|ACC[3]~2_combout\ $ (\inst3|ACC\(12))))) # (\inst2|BRout\(12) & ((!\inst3|ACC\(12) & 
-- (\inst3|ACC[3]~8_combout\)) # (\inst3|ACC\(12) & ((\inst3|ACC[3]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000111111100011100011100110001000001111111000111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(12),
	datab => \inst3|ALT_INV_ACC[3]~8_combout\,
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC\(12),
	datae => \inst3|ALT_INV_Add0~13_sumout\,
	combout => \inst3|ACC~17_combout\);

\inst3|ACC~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~18_combout\ = ( \inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(13))) # (\inst3|ACC[3]~1_combout\ & ((\inst3|ACC\(11)))) ) ) # ( !\inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(13))) # 
-- (\inst3|ACC[3]~1_combout\ & ((\inst3|Mult0~20\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010011001101010101000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(13),
	datab => \inst3|ALT_INV_ACC\(11),
	datac => \inst3|ALT_INV_Mult0~20\,
	datad => \inst3|ALT_INV_ACC[3]~1_combout\,
	datae => \inst3|ALT_INV_ACC[3]~6_combout\,
	combout => \inst3|ACC~18_combout\);

\inst3|ACC~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~19_combout\ = ( \inst3|ACC~18_combout\ & ( (!\inst3|Equal0~0_combout\ & ((!\inst3|ACC[3]~7_combout\) # ((\inst3|ACC~17_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add8~1_sumout\)))) ) ) # ( !\inst3|ACC~18_combout\ & ( 
-- (!\inst3|Equal0~0_combout\ & (\inst3|ACC[3]~7_combout\ & ((\inst3|ACC~17_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add8~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110010110110001111101001010000011100101101100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~0_combout\,
	datab => \inst3|ALT_INV_ACC[3]~7_combout\,
	datac => \inst3|ALT_INV_Add8~1_sumout\,
	datad => \inst3|ALT_INV_ACC~17_combout\,
	datae => \inst3|ALT_INV_ACC~18_combout\,
	combout => \inst3|ACC~19_combout\);

\inst3|ACC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~19_combout\,
	sclr => \inst3|ACC[3]~57_combout\,
	ena => \inst3|ACC[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(12));

\inst|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~3_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(12));

\inst|temp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~3_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(12)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(12),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(12),
	combout => \inst|temp~3_combout\);

\inst|MBR_RAM[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~3_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(12));

\inst9|sram|ram_block|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

\inst|MBR_BR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(12),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(12));

\inst2|BRout[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(12) = ( \inst2|BRout\(12) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(12) ) ) ) # ( !\inst2|BRout\(12) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(12) ) ) ) # ( \inst2|BRout\(12) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(12),
	datae => \inst2|ALT_INV_BRout\(12),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(12));

\inst3|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~13_sumout\ = SUM(( !\inst2|BRout\(13) ) + ( \inst3|Add2~19\ ) + ( \inst3|Add2~18\ ))
-- \inst3|Add2~14\ = CARRY(( !\inst2|BRout\(13) ) + ( \inst3|Add2~19\ ) + ( \inst3|Add2~18\ ))
-- \inst3|Add2~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(13),
	cin => \inst3|Add2~18\,
	sharein => \inst3|Add2~19\,
	sumout => \inst3|Add2~13_sumout\,
	cout => \inst3|Add2~14\,
	shareout => \inst3|Add2~15\);

\inst3|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~9_sumout\ = SUM(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add2~13_sumout\ ) + ( \inst3|Add4~14\ ))
-- \inst3|Add4~10\ = CARRY(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(14)) ) + ( \inst3|Add2~13_sumout\ ) + ( \inst3|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(14),
	dataf => \inst3|ALT_INV_Add2~13_sumout\,
	cin => \inst3|Add4~14\,
	sumout => \inst3|Add4~9_sumout\,
	cout => \inst3|Add4~10\);

\inst3|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~5_sumout\ = SUM(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add4~9_sumout\ ) + ( \inst3|Add6~10\ ))
-- \inst3|Add6~6\ = CARRY(( !\inst3|Add4~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add4~9_sumout\ ) + ( \inst3|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(15),
	dataf => \inst3|ALT_INV_Add4~9_sumout\,
	cin => \inst3|Add6~10\,
	sumout => \inst3|Add6~5_sumout\,
	cout => \inst3|Add6~6\);

\inst3|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~1_sumout\ = SUM(( \inst3|Add4~5_sumout\ ) + ( !\inst3|Add4~5_sumout\ ) + ( \inst3|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~5_sumout\,
	cin => \inst3|Add6~6\,
	sumout => \inst3|Add6~1_sumout\);

\inst3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~9_sumout\ = SUM(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(13)) ) + ( \inst3|ACC\(13) ) + ( \inst3|Add0~14\ ))
-- \inst3|Add0~10\ = CARRY(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(13)) ) + ( \inst3|ACC\(13) ) + ( \inst3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_BRout\(13),
	dataf => \inst3|ALT_INV_ACC\(13),
	cin => \inst3|Add0~14\,
	sumout => \inst3|Add0~9_sumout\,
	cout => \inst3|Add0~10\);

\inst3|ACC~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~14_combout\ = ( \inst3|Add0~9_sumout\ & ( (!\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\) # ((\inst2|BRout\(13) & \inst3|ACC\(13))))) # (\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\ & ((!\inst3|ACC\(13)))) # 
-- (\inst3|ACC[3]~2_combout\ & ((\inst3|ACC\(13)) # (\inst2|BRout\(13)))))) ) ) # ( !\inst3|Add0~9_sumout\ & ( (!\inst2|BRout\(13) & (\inst3|ACC[3]~8_combout\ & (!\inst3|ACC[3]~2_combout\ $ (\inst3|ACC\(13))))) # (\inst2|BRout\(13) & ((!\inst3|ACC\(13) & 
-- (\inst3|ACC[3]~8_combout\)) # (\inst3|ACC\(13) & ((\inst3|ACC[3]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000111111100011100011100110001000001111111000111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(13),
	datab => \inst3|ALT_INV_ACC[3]~8_combout\,
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC\(13),
	datae => \inst3|ALT_INV_Add0~9_sumout\,
	combout => \inst3|ACC~14_combout\);

\inst3|ACC~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~15_combout\ = ( \inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(14))) # (\inst3|ACC[3]~1_combout\ & ((\inst3|ACC\(12)))) ) ) # ( !\inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(14))) # 
-- (\inst3|ACC[3]~1_combout\ & ((\inst3|Mult0~21\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010011001101010101000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(14),
	datab => \inst3|ALT_INV_ACC\(12),
	datac => \inst3|ALT_INV_Mult0~21\,
	datad => \inst3|ALT_INV_ACC[3]~1_combout\,
	datae => \inst3|ALT_INV_ACC[3]~6_combout\,
	combout => \inst3|ACC~15_combout\);

\inst3|ACC~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~16_combout\ = ( \inst3|ACC~15_combout\ & ( (!\inst3|Equal0~0_combout\ & ((!\inst3|ACC[3]~7_combout\) # ((\inst3|ACC~14_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add6~1_sumout\)))) ) ) # ( !\inst3|ACC~15_combout\ & ( 
-- (!\inst3|Equal0~0_combout\ & (\inst3|ACC[3]~7_combout\ & ((\inst3|ACC~14_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add6~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110010110110001111101001010000011100101101100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~0_combout\,
	datab => \inst3|ALT_INV_ACC[3]~7_combout\,
	datac => \inst3|ALT_INV_Add6~1_sumout\,
	datad => \inst3|ALT_INV_ACC~14_combout\,
	datae => \inst3|ALT_INV_ACC~15_combout\,
	combout => \inst3|ACC~16_combout\);

\inst3|ACC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~16_combout\,
	sclr => \inst3|ACC[3]~57_combout\,
	ena => \inst3|ACC[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(13));

\inst|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~2_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(13));

\inst|temp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~2_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(13)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(13),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(13),
	combout => \inst|temp~2_combout\);

\inst|MBR_RAM[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~2_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(13));

\inst9|sram|ram_block|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

\inst|MBR_BR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(13),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(13));

\inst2|BRout[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(13) = ( \inst2|BRout\(13) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(13) ) ) ) # ( !\inst2|BRout\(13) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(13) ) ) ) # ( \inst2|BRout\(13) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(13),
	datae => \inst2|ALT_INV_BRout\(13),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(13));

\inst3|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~9_sumout\ = SUM(( !\inst2|BRout\(14) ) + ( \inst3|Add2~15\ ) + ( \inst3|Add2~14\ ))
-- \inst3|Add2~10\ = CARRY(( !\inst2|BRout\(14) ) + ( \inst3|Add2~15\ ) + ( \inst3|Add2~14\ ))
-- \inst3|Add2~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(14),
	cin => \inst3|Add2~14\,
	sharein => \inst3|Add2~15\,
	sumout => \inst3|Add2~9_sumout\,
	cout => \inst3|Add2~10\,
	shareout => \inst3|Add2~11\);

\inst3|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~5_sumout\ = SUM(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add2~9_sumout\ ) + ( \inst3|Add4~10\ ))
-- \inst3|Add4~6\ = CARRY(( !\inst3|Add2~5_sumout\ $ (\inst2|BRout\(15)) ) + ( \inst3|Add2~9_sumout\ ) + ( \inst3|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_BRout\(15),
	dataf => \inst3|ALT_INV_Add2~9_sumout\,
	cin => \inst3|Add4~10\,
	sumout => \inst3|Add4~5_sumout\,
	cout => \inst3|Add4~6\);

\inst3|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~1_sumout\ = SUM(( \inst3|Add2~5_sumout\ ) + ( !\inst3|Add2~5_sumout\ ) + ( \inst3|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~5_sumout\,
	cin => \inst3|Add4~6\,
	sumout => \inst3|Add4~1_sumout\);

\inst3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~5_sumout\ = SUM(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(14)) ) + ( \inst3|ACC\(14) ) + ( \inst3|Add0~10\ ))
-- \inst3|Add0~6\ = CARRY(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(14)) ) + ( \inst3|ACC\(14) ) + ( \inst3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_BRout\(14),
	dataf => \inst3|ALT_INV_ACC\(14),
	cin => \inst3|Add0~10\,
	sumout => \inst3|Add0~5_sumout\,
	cout => \inst3|Add0~6\);

\inst3|ACC~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~9_combout\ = ( \inst3|Add0~5_sumout\ & ( (!\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\) # ((\inst2|BRout\(14) & \inst3|ACC\(14))))) # (\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\ & ((!\inst3|ACC\(14)))) # 
-- (\inst3|ACC[3]~2_combout\ & ((\inst3|ACC\(14)) # (\inst2|BRout\(14)))))) ) ) # ( !\inst3|Add0~5_sumout\ & ( (!\inst2|BRout\(14) & (\inst3|ACC[3]~8_combout\ & (!\inst3|ACC[3]~2_combout\ $ (\inst3|ACC\(14))))) # (\inst2|BRout\(14) & ((!\inst3|ACC\(14) & 
-- (\inst3|ACC[3]~8_combout\)) # (\inst3|ACC\(14) & ((\inst3|ACC[3]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000111111100011100011100110001000001111111000111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(14),
	datab => \inst3|ALT_INV_ACC[3]~8_combout\,
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC\(14),
	datae => \inst3|ALT_INV_Add0~5_sumout\,
	combout => \inst3|ACC~9_combout\);

\inst3|ACC~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~10_combout\ = ( \inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(15))) # (\inst3|ACC[3]~1_combout\ & ((\inst3|ACC\(13)))) ) ) # ( !\inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(15))) # 
-- (\inst3|ACC[3]~1_combout\ & ((\inst3|Mult0~22\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010011001101010101000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(15),
	datab => \inst3|ALT_INV_ACC\(13),
	datac => \inst3|ALT_INV_Mult0~22\,
	datad => \inst3|ALT_INV_ACC[3]~1_combout\,
	datae => \inst3|ALT_INV_ACC[3]~6_combout\,
	combout => \inst3|ACC~10_combout\);

\inst3|ACC~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~11_combout\ = ( \inst3|ACC~10_combout\ & ( (!\inst3|Equal0~0_combout\ & (((!\inst3|ACC[3]~7_combout\) # (\inst3|ACC~9_combout\)))) # (\inst3|Equal0~0_combout\ & (!\inst3|Add4~1_sumout\)) ) ) # ( !\inst3|ACC~10_combout\ & ( 
-- (!\inst3|Equal0~0_combout\ & (((\inst3|ACC[3]~7_combout\ & \inst3|ACC~9_combout\)))) # (\inst3|Equal0~0_combout\ & (!\inst3|Add4~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001001110111001001110111001000100010011101110010011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~0_combout\,
	datab => \inst3|ALT_INV_Add4~1_sumout\,
	datac => \inst3|ALT_INV_ACC[3]~7_combout\,
	datad => \inst3|ALT_INV_ACC~9_combout\,
	datae => \inst3|ALT_INV_ACC~10_combout\,
	combout => \inst3|ACC~11_combout\);

\inst3|ACC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~11_combout\,
	sclr => \inst3|ACC[3]~57_combout\,
	ena => \inst3|ACC[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(14));

\inst|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~1_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(14));

\inst|temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~1_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(14)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(14),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(14),
	combout => \inst|temp~1_combout\);

\inst|MBR_RAM[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~1_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(14));

\inst9|sram|ram_block|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

\inst|MBR_BR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(14),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(14));

\inst2|BRout[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(14) = ( \inst2|BRout\(14) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(14) ) ) ) # ( !\inst2|BRout\(14) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(14) ) ) ) # ( \inst2|BRout\(14) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(14),
	datae => \inst2|ALT_INV_BRout\(14),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(14));

\inst3|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~5_sumout\ = SUM(( !\inst2|BRout\(15) ) + ( \inst3|Add2~11\ ) + ( \inst3|Add2~10\ ))
-- \inst3|Add2~6\ = CARRY(( !\inst2|BRout\(15) ) + ( \inst3|Add2~11\ ) + ( \inst3|Add2~10\ ))
-- \inst3|Add2~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_BRout\(15),
	cin => \inst3|Add2~10\,
	sharein => \inst3|Add2~11\,
	sumout => \inst3|Add2~5_sumout\,
	cout => \inst3|Add2~6\,
	shareout => \inst3|Add2~7\);

\inst3|Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add10~1_sumout\ = SUM(( \inst3|Add8~5_sumout\ ) + ( !\inst3|Add8~5_sumout\ ) + ( \inst3|Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add8~5_sumout\,
	cin => \inst3|Add10~6\,
	sumout => \inst3|Add10~1_sumout\);

\inst3|ACC~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~20_combout\ = ( \inst3|Add0~17_sumout\ & ( (!\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\) # ((\inst2|BRout\(11) & \inst3|ACC\(11))))) # (\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\ & ((!\inst3|ACC\(11)))) # 
-- (\inst3|ACC[3]~2_combout\ & ((\inst3|ACC\(11)) # (\inst2|BRout\(11)))))) ) ) # ( !\inst3|Add0~17_sumout\ & ( (!\inst2|BRout\(11) & (\inst3|ACC[3]~8_combout\ & (!\inst3|ACC[3]~2_combout\ $ (\inst3|ACC\(11))))) # (\inst2|BRout\(11) & ((!\inst3|ACC\(11) & 
-- (\inst3|ACC[3]~8_combout\)) # (\inst3|ACC\(11) & ((\inst3|ACC[3]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000111111100011100011100110001000001111111000111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(11),
	datab => \inst3|ALT_INV_ACC[3]~8_combout\,
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC\(11),
	datae => \inst3|ALT_INV_Add0~17_sumout\,
	combout => \inst3|ACC~20_combout\);

\inst3|ACC~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~21_combout\ = ( \inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(12))) # (\inst3|ACC[3]~1_combout\ & ((\inst3|ACC\(10)))) ) ) # ( !\inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(12))) # 
-- (\inst3|ACC[3]~1_combout\ & ((\inst3|Mult0~19\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010011001101010101000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(12),
	datab => \inst3|ALT_INV_ACC\(10),
	datac => \inst3|ALT_INV_Mult0~19\,
	datad => \inst3|ALT_INV_ACC[3]~1_combout\,
	datae => \inst3|ALT_INV_ACC[3]~6_combout\,
	combout => \inst3|ACC~21_combout\);

\inst3|ACC~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~22_combout\ = ( \inst3|ACC~21_combout\ & ( (!\inst3|Equal0~0_combout\ & ((!\inst3|ACC[3]~7_combout\) # ((\inst3|ACC~20_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add10~1_sumout\)))) ) ) # ( !\inst3|ACC~21_combout\ & ( 
-- (!\inst3|Equal0~0_combout\ & (\inst3|ACC[3]~7_combout\ & ((\inst3|ACC~20_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add10~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110010110110001111101001010000011100101101100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~0_combout\,
	datab => \inst3|ALT_INV_ACC[3]~7_combout\,
	datac => \inst3|ALT_INV_Add10~1_sumout\,
	datad => \inst3|ALT_INV_ACC~20_combout\,
	datae => \inst3|ALT_INV_ACC~21_combout\,
	combout => \inst3|ACC~22_combout\);

\inst3|ACC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~22_combout\,
	sclr => \inst3|ACC[3]~57_combout\,
	ena => \inst3|ACC[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(11));

\inst|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~4_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(11));

\inst|temp~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~4_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(11)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(11)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(11),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(11),
	combout => \inst|temp~4_combout\);

\inst|MBR_RAM[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~4_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(11));

\inst9|sram|ram_block|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

\inst|MBR_OP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(11),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(3));

\inst8|srom|rom_block|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000008000000000000005330",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\inst6|CARout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add0~17_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(3),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(3));

\inst8|srom|rom_block|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000001040100800108000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

\inst3|ACC[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC[3]~7_combout\ = (!\inst3|ACC[3]~6_combout\ & ((!\inst8|srom|rom_block|auto_generated|q_a\(12)) # (!\inst3|ACC[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst3|ALT_INV_ACC[3]~1_combout\,
	datac => \inst3|ALT_INV_ACC[3]~6_combout\,
	combout => \inst3|ACC[3]~7_combout\);

\inst3|Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add12~1_sumout\ = SUM(( \inst3|Add10~5_sumout\ ) + ( !\inst3|Add10~5_sumout\ ) + ( \inst3|Add12~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add10~5_sumout\,
	cin => \inst3|Add12~6\,
	sumout => \inst3|Add12~1_sumout\);

\inst3|ACC~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~23_combout\ = ( \inst3|Add0~21_sumout\ & ( (!\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\) # ((\inst2|BRout\(10) & \inst3|ACC\(10))))) # (\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\ & ((!\inst3|ACC\(10)))) # 
-- (\inst3|ACC[3]~2_combout\ & ((\inst3|ACC\(10)) # (\inst2|BRout\(10)))))) ) ) # ( !\inst3|Add0~21_sumout\ & ( (!\inst2|BRout\(10) & (\inst3|ACC[3]~8_combout\ & (!\inst3|ACC[3]~2_combout\ $ (\inst3|ACC\(10))))) # (\inst2|BRout\(10) & ((!\inst3|ACC\(10) & 
-- (\inst3|ACC[3]~8_combout\)) # (\inst3|ACC\(10) & ((\inst3|ACC[3]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000111111100011100011100110001000001111111000111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(10),
	datab => \inst3|ALT_INV_ACC[3]~8_combout\,
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC\(10),
	datae => \inst3|ALT_INV_Add0~21_sumout\,
	combout => \inst3|ACC~23_combout\);

\inst3|ACC~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~24_combout\ = ( \inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(11))) # (\inst3|ACC[3]~1_combout\ & ((\inst3|ACC\(9)))) ) ) # ( !\inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(11))) # 
-- (\inst3|ACC[3]~1_combout\ & ((\inst3|Mult0~18\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010011001101010101000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(11),
	datab => \inst3|ALT_INV_ACC\(9),
	datac => \inst3|ALT_INV_Mult0~18\,
	datad => \inst3|ALT_INV_ACC[3]~1_combout\,
	datae => \inst3|ALT_INV_ACC[3]~6_combout\,
	combout => \inst3|ACC~24_combout\);

\inst3|ACC~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~25_combout\ = ( \inst3|ACC~24_combout\ & ( (!\inst3|Equal0~0_combout\ & ((!\inst3|ACC[3]~7_combout\) # ((\inst3|ACC~23_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add12~1_sumout\)))) ) ) # ( !\inst3|ACC~24_combout\ & ( 
-- (!\inst3|Equal0~0_combout\ & (\inst3|ACC[3]~7_combout\ & ((\inst3|ACC~23_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add12~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110010110110001111101001010000011100101101100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~0_combout\,
	datab => \inst3|ALT_INV_ACC[3]~7_combout\,
	datac => \inst3|ALT_INV_Add12~1_sumout\,
	datad => \inst3|ALT_INV_ACC~23_combout\,
	datae => \inst3|ALT_INV_ACC~24_combout\,
	combout => \inst3|ACC~25_combout\);

\inst3|ACC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~25_combout\,
	sclr => \inst3|ACC[3]~57_combout\,
	ena => \inst3|ACC[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(10));

\inst|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~5_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(10));

\inst|temp~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~5_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(10)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(10),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(10),
	combout => \inst|temp~5_combout\);

\inst|MBR_RAM[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~5_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(10));

\inst9|sram|ram_block|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

\inst|MBR_OP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(10),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(2));

\inst8|srom|rom_block|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000003A28",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\inst6|CARout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add0~21_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(2),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(2));

\inst8|srom|rom_block|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000401002108000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

\inst3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst8|srom|rom_block|auto_generated|q_a\(15) & (\inst8|srom|rom_block|auto_generated|q_a\(14) & (!\inst8|srom|rom_block|auto_generated|q_a\(13) & !\inst8|srom|rom_block|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	combout => \inst3|Equal0~0_combout\);

\inst3|Add14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~1_sumout\ = SUM(( \inst3|Add12~5_sumout\ ) + ( !\inst3|Add12~5_sumout\ ) + ( \inst3|Add14~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add12~5_sumout\,
	cin => \inst3|Add14~6\,
	sumout => \inst3|Add14~1_sumout\);

\inst3|ACC~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~26_combout\ = ( \inst3|Add0~25_sumout\ & ( (!\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\) # ((\inst2|BRout\(9) & \inst3|ACC\(9))))) # (\inst3|ACC[3]~8_combout\ & ((!\inst3|ACC[3]~2_combout\ & ((!\inst3|ACC\(9)))) # 
-- (\inst3|ACC[3]~2_combout\ & ((\inst3|ACC\(9)) # (\inst2|BRout\(9)))))) ) ) # ( !\inst3|Add0~25_sumout\ & ( (!\inst2|BRout\(9) & (\inst3|ACC[3]~8_combout\ & (!\inst3|ACC[3]~2_combout\ $ (\inst3|ACC\(9))))) # (\inst2|BRout\(9) & ((!\inst3|ACC\(9) & 
-- (\inst3|ACC[3]~8_combout\)) # (\inst3|ACC\(9) & ((\inst3|ACC[3]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000111111100011100011100110001000001111111000111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(9),
	datab => \inst3|ALT_INV_ACC[3]~8_combout\,
	datac => \inst3|ALT_INV_ACC[3]~2_combout\,
	datad => \inst3|ALT_INV_ACC\(9),
	datae => \inst3|ALT_INV_Add0~25_sumout\,
	combout => \inst3|ACC~26_combout\);

\inst3|ACC~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~27_combout\ = ( \inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(10))) # (\inst3|ACC[3]~1_combout\ & ((\inst3|ACC\(8)))) ) ) # ( !\inst3|ACC[3]~6_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (\inst3|ACC\(10))) # 
-- (\inst3|ACC[3]~1_combout\ & ((\inst3|Mult0~17\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010011001101010101000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(10),
	datab => \inst3|ALT_INV_ACC\(8),
	datac => \inst3|ALT_INV_Mult0~17\,
	datad => \inst3|ALT_INV_ACC[3]~1_combout\,
	datae => \inst3|ALT_INV_ACC[3]~6_combout\,
	combout => \inst3|ACC~27_combout\);

\inst3|ACC~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~28_combout\ = ( \inst3|ACC~27_combout\ & ( (!\inst3|Equal0~0_combout\ & ((!\inst3|ACC[3]~7_combout\) # ((\inst3|ACC~26_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add14~1_sumout\)))) ) ) # ( !\inst3|ACC~27_combout\ & ( 
-- (!\inst3|Equal0~0_combout\ & (\inst3|ACC[3]~7_combout\ & ((\inst3|ACC~26_combout\)))) # (\inst3|Equal0~0_combout\ & (((!\inst3|Add14~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110010110110001111101001010000011100101101100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~0_combout\,
	datab => \inst3|ALT_INV_ACC[3]~7_combout\,
	datac => \inst3|ALT_INV_Add14~1_sumout\,
	datad => \inst3|ALT_INV_ACC~26_combout\,
	datae => \inst3|ALT_INV_ACC~27_combout\,
	combout => \inst3|ACC~28_combout\);

\inst3|ACC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~28_combout\,
	sclr => \inst3|ACC[3]~57_combout\,
	ena => \inst3|ACC[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(9));

\inst|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~6_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(9));

\inst|temp~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~6_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(9)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(9),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(9),
	combout => \inst|temp~6_combout\);

\inst|MBR_RAM[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~6_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(9));

\inst9|sram|ram_block|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000010000000000000000000000000000000000000001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

\inst|MBR_OP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(9),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_OP\(1));

\inst8|srom|rom_block|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000008000000000000006C60",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\inst6|CARout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add0~25_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(1),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(1));

\inst8|srom|rom_block|auto_generated|ram_block1a26\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000802084211084210400000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

\inst6|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal3~0_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(26) & (!\inst8|srom|rom_block|auto_generated|q_a\(25) & (!\inst8|srom|rom_block|auto_generated|q_a\(24) & \inst8|srom|rom_block|auto_generated|q_a\(23))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(26),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(25),
	datac => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(24),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(23),
	combout => \inst6|Equal3~0_combout\);

\inst8|srom|rom_block|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000008000000000000004AD0",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\inst6|CARout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add0~29_sumout\,
	asdata => \inst8|srom|rom_block|auto_generated|q_a\(0),
	sclr => \inst6|CARout[0]~0_combout\,
	sload => \inst6|CARout[0]~1_combout\,
	ena => \inst6|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CARout\(0));

\inst8|srom|rom_block|auto_generated|ram_block1a17\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000200000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

\inst|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp\(15));

\inst|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp~0_combout\ = (!\inst8|srom|rom_block|auto_generated|q_a\(20) & ((\inst|temp\(15)))) # (\inst8|srom|rom_block|auto_generated|q_a\(20) & (\inst3|ACC\(15)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC\(15),
	datab => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datac => \inst|ALT_INV_temp\(15),
	combout => \inst|temp~0_combout\);

\inst|MBR_RAM[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst|temp~0_combout\,
	ena => \inst|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_RAM\(15));

\inst9|sram|ram_block|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LPM_RAM_DQ_test1_pro2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst9|altram:sram|altsyncram:ram_block|altsyncram_lhh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst8|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portadatain => \inst9|sram|ram_block|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \inst9|sram|ram_block|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|sram|ram_block|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

\inst|MBR_BR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~input_o\,
	d => \inst9|sram|ram_block|auto_generated|q_a\(15),
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MBR_BR\(15));

\inst2|BRout[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout\(15) = ( \inst2|BRout\(15) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(15) ) ) ) # ( !\inst2|BRout\(15) & ( \inst8|srom|rom_block|auto_generated|q_a\(22) & ( \inst|MBR_BR\(15) ) ) ) # ( \inst2|BRout\(15) & ( 
-- !\inst8|srom|rom_block|auto_generated|q_a\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_MBR_BR\(15),
	datae => \inst2|ALT_INV_BRout\(15),
	dataf => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(22),
	combout => \inst2|BRout\(15));

\inst3|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~1_sumout\ = SUM(( GND ) + ( \inst3|Add2~7\ ) + ( \inst3|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Add2~6\,
	sharein => \inst3|Add2~7\,
	sumout => \inst3|Add2~1_sumout\);

\inst3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_sumout\ = SUM(( !\inst3|Equal0~3_combout\ $ (!\inst2|BRout\(15)) ) + ( \inst3|ACC\(15) ) + ( \inst3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_BRout\(15),
	dataf => \inst3|ALT_INV_ACC\(15),
	cin => \inst3|Add0~6\,
	sumout => \inst3|Add0~1_sumout\);

\inst3|ACC~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~62_combout\ = ( !\inst3|ACC~3_combout\ & ( (!\inst3|ACC\(15) & (\inst2|BRout\(15) & (((\inst8|srom|rom_block|auto_generated|q_a\(12) & \inst3|ACC[3]~2_combout\))))) # (\inst3|ACC\(15) & ((!\inst3|ACC[3]~2_combout\ & 
-- (((!\inst8|srom|rom_block|auto_generated|q_a\(11))))) # (\inst3|ACC[3]~2_combout\ & (((\inst8|srom|rom_block|auto_generated|q_a\(12))) # (\inst2|BRout\(15)))))) ) ) # ( \inst3|ACC~3_combout\ & ( (!\inst3|ACC[3]~2_combout\ & ((((\inst3|Add0~1_sumout\))))) 
-- # (\inst3|ACC[3]~2_combout\ & ((!\inst2|BRout\(15) & (\inst3|ACC\(15) & ((\inst8|srom|rom_block|auto_generated|q_a\(12))))) # (\inst2|BRout\(15) & (((\inst8|srom|rom_block|auto_generated|q_a\(12))) # (\inst3|ACC\(15)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011000000110000000011110000111100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout\(15),
	datab => \inst3|ALT_INV_ACC\(15),
	datac => \inst3|ALT_INV_Add0~1_sumout\,
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datae => \inst3|ALT_INV_ACC~3_combout\,
	dataf => \inst3|ALT_INV_ACC[3]~2_combout\,
	datag => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(11),
	combout => \inst3|ACC~62_combout\);

\inst3|ACC~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~58_combout\ = ( !\inst3|Equal0~1_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (((\inst3|ACC~62_combout\)))) # (\inst3|ACC[3]~1_combout\ & (((!\inst8|srom|rom_block|auto_generated|q_a\(12) & ((\inst3|ACC\(14)))) # 
-- (\inst8|srom|rom_block|auto_generated|q_a\(12) & (\inst3|Mult0~23\))))) ) ) # ( \inst3|Equal0~1_combout\ & ( (!\inst3|ACC[3]~1_combout\ & (((!\inst3|ACC\(15) & (!\inst8|srom|rom_block|auto_generated|q_a\(12)))))) # (\inst3|ACC[3]~1_combout\ & 
-- (((!\inst8|srom|rom_block|auto_generated|q_a\(12) & ((\inst3|ACC\(14)))) # (\inst8|srom|rom_block|auto_generated|q_a\(12) & (\inst3|Mult0~23\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000011011101000000001000101011111000110111111010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ACC[3]~1_combout\,
	datab => \inst3|ALT_INV_Mult0~23\,
	datac => \inst3|ALT_INV_ACC\(15),
	datad => \inst8|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datae => \inst3|ALT_INV_Equal0~1_combout\,
	dataf => \inst3|ALT_INV_ACC\(14),
	datag => \inst3|ALT_INV_ACC~62_combout\,
	combout => \inst3|ACC~58_combout\);

\inst3|ACC~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ACC~5_combout\ = (!\inst3|Add2~1_sumout\ & (!\inst3|Equal0~0_combout\ & ((\inst3|ACC~58_combout\)))) # (\inst3|Add2~1_sumout\ & (((!\inst3|Equal0~0_combout\ & \inst3|ACC~58_combout\)) # (\inst3|ACC~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~1_sumout\,
	datab => \inst3|ALT_INV_Equal0~0_combout\,
	datac => \inst3|ALT_INV_ACC~0_combout\,
	datad => \inst3|ALT_INV_ACC~58_combout\,
	combout => \inst3|ACC~5_combout\);

\inst3|ACC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst3|ACC~5_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ACC\(15));

\inst8|srom|rom_block|auto_generated|ram_block1a31\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

\inst8|srom|rom_block|auto_generated|ram_block1a30\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

\inst8|srom|rom_block|auto_generated|ram_block1a29\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

\inst8|srom|rom_block|auto_generated|ram_block1a28\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

\inst8|srom|rom_block|auto_generated|ram_block1a27\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000100000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~input_o\,
	portaaddr => \inst8|srom|rom_block|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|srom|rom_block|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

ww_ACC(15) <= \ACC[15]~output_o\;

ww_ACC(14) <= \ACC[14]~output_o\;

ww_ACC(13) <= \ACC[13]~output_o\;

ww_ACC(12) <= \ACC[12]~output_o\;

ww_ACC(11) <= \ACC[11]~output_o\;

ww_ACC(10) <= \ACC[10]~output_o\;

ww_ACC(9) <= \ACC[9]~output_o\;

ww_ACC(8) <= \ACC[8]~output_o\;

ww_ACC(7) <= \ACC[7]~output_o\;

ww_ACC(6) <= \ACC[6]~output_o\;

ww_ACC(5) <= \ACC[5]~output_o\;

ww_ACC(4) <= \ACC[4]~output_o\;

ww_ACC(3) <= \ACC[3]~output_o\;

ww_ACC(2) <= \ACC[2]~output_o\;

ww_ACC(1) <= \ACC[1]~output_o\;

ww_ACC(0) <= \ACC[0]~output_o\;

ww_ALUIN(3) <= \ALUIN[3]~output_o\;

ww_ALUIN(2) <= \ALUIN[2]~output_o\;

ww_ALUIN(1) <= \ALUIN[1]~output_o\;

ww_ALUIN(0) <= \ALUIN[0]~output_o\;

ww_BRIN(15) <= \BRIN[15]~output_o\;

ww_BRIN(14) <= \BRIN[14]~output_o\;

ww_BRIN(13) <= \BRIN[13]~output_o\;

ww_BRIN(12) <= \BRIN[12]~output_o\;

ww_BRIN(11) <= \BRIN[11]~output_o\;

ww_BRIN(10) <= \BRIN[10]~output_o\;

ww_BRIN(9) <= \BRIN[9]~output_o\;

ww_BRIN(8) <= \BRIN[8]~output_o\;

ww_BRIN(7) <= \BRIN[7]~output_o\;

ww_BRIN(6) <= \BRIN[6]~output_o\;

ww_BRIN(5) <= \BRIN[5]~output_o\;

ww_BRIN(4) <= \BRIN[4]~output_o\;

ww_BRIN(3) <= \BRIN[3]~output_o\;

ww_BRIN(2) <= \BRIN[2]~output_o\;

ww_BRIN(1) <= \BRIN[1]~output_o\;

ww_BRIN(0) <= \BRIN[0]~output_o\;

ww_BROUT(15) <= \BROUT[15]~output_o\;

ww_BROUT(14) <= \BROUT[14]~output_o\;

ww_BROUT(13) <= \BROUT[13]~output_o\;

ww_BROUT(12) <= \BROUT[12]~output_o\;

ww_BROUT(11) <= \BROUT[11]~output_o\;

ww_BROUT(10) <= \BROUT[10]~output_o\;

ww_BROUT(9) <= \BROUT[9]~output_o\;

ww_BROUT(8) <= \BROUT[8]~output_o\;

ww_BROUT(7) <= \BROUT[7]~output_o\;

ww_BROUT(6) <= \BROUT[6]~output_o\;

ww_BROUT(5) <= \BROUT[5]~output_o\;

ww_BROUT(4) <= \BROUT[4]~output_o\;

ww_BROUT(3) <= \BROUT[3]~output_o\;

ww_BROUT(2) <= \BROUT[2]~output_o\;

ww_BROUT(1) <= \BROUT[1]~output_o\;

ww_BROUT(0) <= \BROUT[0]~output_o\;

ww_CARcIN(3) <= \CARcIN[3]~output_o\;

ww_CARcIN(2) <= \CARcIN[2]~output_o\;

ww_CARcIN(1) <= \CARcIN[1]~output_o\;

ww_CARcIN(0) <= \CARcIN[0]~output_o\;

ww_CAROUT(7) <= \CAROUT[7]~output_o\;

ww_CAROUT(6) <= \CAROUT[6]~output_o\;

ww_CAROUT(5) <= \CAROUT[5]~output_o\;

ww_CAROUT(4) <= \CAROUT[4]~output_o\;

ww_CAROUT(3) <= \CAROUT[3]~output_o\;

ww_CAROUT(2) <= \CAROUT[2]~output_o\;

ww_CAROUT(1) <= \CAROUT[1]~output_o\;

ww_CAROUT(0) <= \CAROUT[0]~output_o\;

ww_CONTROLIN(31) <= \CONTROLIN[31]~output_o\;

ww_CONTROLIN(30) <= \CONTROLIN[30]~output_o\;

ww_CONTROLIN(29) <= \CONTROLIN[29]~output_o\;

ww_CONTROLIN(28) <= \CONTROLIN[28]~output_o\;

ww_CONTROLIN(27) <= \CONTROLIN[27]~output_o\;

ww_CONTROLIN(26) <= \CONTROLIN[26]~output_o\;

ww_CONTROLIN(25) <= \CONTROLIN[25]~output_o\;

ww_CONTROLIN(24) <= \CONTROLIN[24]~output_o\;

ww_CONTROLIN(23) <= \CONTROLIN[23]~output_o\;

ww_CONTROLIN(22) <= \CONTROLIN[22]~output_o\;

ww_CONTROLIN(21) <= \CONTROLIN[21]~output_o\;

ww_CONTROLIN(20) <= \CONTROLIN[20]~output_o\;

ww_CONTROLIN(19) <= \CONTROLIN[19]~output_o\;

ww_CONTROLIN(18) <= \CONTROLIN[18]~output_o\;

ww_CONTROLIN(17) <= \CONTROLIN[17]~output_o\;

ww_CONTROLIN(16) <= \CONTROLIN[16]~output_o\;

ww_CONTROLIN(15) <= \CONTROLIN[15]~output_o\;

ww_CONTROLIN(14) <= \CONTROLIN[14]~output_o\;

ww_CONTROLIN(13) <= \CONTROLIN[13]~output_o\;

ww_CONTROLIN(12) <= \CONTROLIN[12]~output_o\;

ww_CONTROLIN(11) <= \CONTROLIN[11]~output_o\;

ww_CONTROLIN(10) <= \CONTROLIN[10]~output_o\;

ww_CONTROLIN(9) <= \CONTROLIN[9]~output_o\;

ww_CONTROLIN(8) <= \CONTROLIN[8]~output_o\;

ww_CONTROLIN(7) <= \CONTROLIN[7]~output_o\;

ww_CONTROLIN(6) <= \CONTROLIN[6]~output_o\;

ww_CONTROLIN(5) <= \CONTROLIN[5]~output_o\;

ww_CONTROLIN(4) <= \CONTROLIN[4]~output_o\;

ww_CONTROLIN(3) <= \CONTROLIN[3]~output_o\;

ww_CONTROLIN(2) <= \CONTROLIN[2]~output_o\;

ww_CONTROLIN(1) <= \CONTROLIN[1]~output_o\;

ww_CONTROLIN(0) <= \CONTROLIN[0]~output_o\;

ww_IROUT(7) <= \IROUT[7]~output_o\;

ww_IROUT(6) <= \IROUT[6]~output_o\;

ww_IROUT(5) <= \IROUT[5]~output_o\;

ww_IROUT(4) <= \IROUT[4]~output_o\;

ww_IROUT(3) <= \IROUT[3]~output_o\;

ww_IROUT(2) <= \IROUT[2]~output_o\;

ww_IROUT(1) <= \IROUT[1]~output_o\;

ww_IROUT(0) <= \IROUT[0]~output_o\;

ww_MAROUT(7) <= \MAROUT[7]~output_o\;

ww_MAROUT(6) <= \MAROUT[6]~output_o\;

ww_MAROUT(5) <= \MAROUT[5]~output_o\;

ww_MAROUT(4) <= \MAROUT[4]~output_o\;

ww_MAROUT(3) <= \MAROUT[3]~output_o\;

ww_MAROUT(2) <= \MAROUT[2]~output_o\;

ww_MAROUT(1) <= \MAROUT[1]~output_o\;

ww_MAROUT(0) <= \MAROUT[0]~output_o\;

ww_PCOUT(7) <= \PCOUT[7]~output_o\;

ww_PCOUT(6) <= \PCOUT[6]~output_o\;

ww_PCOUT(5) <= \PCOUT[5]~output_o\;

ww_PCOUT(4) <= \PCOUT[4]~output_o\;

ww_PCOUT(3) <= \PCOUT[3]~output_o\;

ww_PCOUT(2) <= \PCOUT[2]~output_o\;

ww_PCOUT(1) <= \PCOUT[1]~output_o\;

ww_PCOUT(0) <= \PCOUT[0]~output_o\;

ww_RAMIN(15) <= \RAMIN[15]~output_o\;

ww_RAMIN(14) <= \RAMIN[14]~output_o\;

ww_RAMIN(13) <= \RAMIN[13]~output_o\;

ww_RAMIN(12) <= \RAMIN[12]~output_o\;

ww_RAMIN(11) <= \RAMIN[11]~output_o\;

ww_RAMIN(10) <= \RAMIN[10]~output_o\;

ww_RAMIN(9) <= \RAMIN[9]~output_o\;

ww_RAMIN(8) <= \RAMIN[8]~output_o\;

ww_RAMIN(7) <= \RAMIN[7]~output_o\;

ww_RAMIN(6) <= \RAMIN[6]~output_o\;

ww_RAMIN(5) <= \RAMIN[5]~output_o\;

ww_RAMIN(4) <= \RAMIN[4]~output_o\;

ww_RAMIN(3) <= \RAMIN[3]~output_o\;

ww_RAMIN(2) <= \RAMIN[2]~output_o\;

ww_RAMIN(1) <= \RAMIN[1]~output_o\;

ww_RAMIN(0) <= \RAMIN[0]~output_o\;

ww_RAMOUT(15) <= \RAMOUT[15]~output_o\;

ww_RAMOUT(14) <= \RAMOUT[14]~output_o\;

ww_RAMOUT(13) <= \RAMOUT[13]~output_o\;

ww_RAMOUT(12) <= \RAMOUT[12]~output_o\;

ww_RAMOUT(11) <= \RAMOUT[11]~output_o\;

ww_RAMOUT(10) <= \RAMOUT[10]~output_o\;

ww_RAMOUT(9) <= \RAMOUT[9]~output_o\;

ww_RAMOUT(8) <= \RAMOUT[8]~output_o\;

ww_RAMOUT(7) <= \RAMOUT[7]~output_o\;

ww_RAMOUT(6) <= \RAMOUT[6]~output_o\;

ww_RAMOUT(5) <= \RAMOUT[5]~output_o\;

ww_RAMOUT(4) <= \RAMOUT[4]~output_o\;

ww_RAMOUT(3) <= \RAMOUT[3]~output_o\;

ww_RAMOUT(2) <= \RAMOUT[2]~output_o\;

ww_RAMOUT(1) <= \RAMOUT[1]~output_o\;

ww_RAMOUT(0) <= \RAMOUT[0]~output_o\;
END structure;


