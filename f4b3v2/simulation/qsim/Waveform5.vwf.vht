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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/10/2026 17:09:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          top_level
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY top_level_vhd_vec_tst IS
END top_level_vhd_vec_tst;
ARCHITECTURE top_level_arch OF top_level_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ACC : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ALUIN : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL BRIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL BROUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL CARcIN : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CAROUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL clkMBR : STD_LOGIC;
SIGNAL CONTROLIN : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL IROUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MAROUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PCOUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RAMIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RAMOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT top_level
	PORT (
	ACC : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ALUIN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	BRIN : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	BROUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	CARcIN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	CAROUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	clkMBR : IN STD_LOGIC;
	CONTROLIN : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	IROUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MAROUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	PCOUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RAMIN : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RAMOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : top_level
	PORT MAP (
-- list connections between master ports and signals
	ACC => ACC,
	ALUIN => ALUIN,
	BRIN => BRIN,
	BROUT => BROUT,
	CARcIN => CARcIN,
	CAROUT => CAROUT,
	clk => clk,
	clkMBR => clkMBR,
	CONTROLIN => CONTROLIN,
	IROUT => IROUT,
	MAROUT => MAROUT,
	PCOUT => PCOUT,
	RAMIN => RAMIN,
	RAMOUT => RAMOUT,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- clkMBR
t_prcs_clkMBR: PROCESS
BEGIN
LOOP
	clkMBR <= '0';
	WAIT FOR 5000 ps;
	clkMBR <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clkMBR;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
END top_level_arch;
