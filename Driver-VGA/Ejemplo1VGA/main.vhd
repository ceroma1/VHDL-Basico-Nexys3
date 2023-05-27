library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity main is
	Port(clk: in STD_LOGIC;
		  reset: in STD_LOGIC;
		 -- VGAHZ: out STD_LOGIC;
		  V_Sync: out STD_LOGIC;
		  H_Sync: out STD_LOGIC;
		  Red: out STD_LOGIC_VECTOR(2 downto 0);
		  Green: out STD_LOGIC_VECTOR(2 downto 0);
		  Blue: out STD_LOGIC_VECTOR(1 downto 0));
end main;

architecture Behavioral of main is

--Componentes
Component DivisorFreq is
	Port (clk : in  STD_LOGIC;
         reset : in  STD_LOGIC;
         FoutDivide : out  STD_LOGIC);
end component;

component Sync is
	Port(clk: in STD_LOGIC;
		  HSync: out STD_LOGIC;
		  VSync: out STD_LOGIC;
		  R: out STD_LOGIC_VECTOR(2 downto 0);
		  G: out STD_LOGIC_VECTOR(2 downto 0);
		  B: out STD_LOGIC_VECTOR(1 downto 0));
end component;

--Señales de union

signal Hz: std_logic;

begin

U0: DivisorFreq port map(clk=>clk,reset=>reset,FoutDivide=>Hz);
U1: Sync port map(clk=>Hz,HSync=>H_Sync,VSync=>V_Sync,R=>Red,G=>Green,B=>Blue);
--VGAHz<=Hz;
end Behavioral;

