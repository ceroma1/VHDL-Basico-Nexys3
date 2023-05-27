library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY VGA IS
	PORT(clk: in STD_LOGIC;
		  reset: in STD_LOGIC;
		  Pulsadores: in STD_LOGIC_VECTOR(3 downto 0);
		  Switches: in STD_LOGIC_VECTOR(1 downto 0);
		 -- VGAHZ: out STD_LOGIC;
		  V_Sync: out STD_LOGIC;
		  H_Sync: out STD_LOGIC;
		  Red: out STD_LOGIC_VECTOR(2 downto 0);
		  Green: out STD_LOGIC_VECTOR(2 downto 0);
		  Blue: out STD_LOGIC_VECTOR(1 downto 0));
END VGA;


ARCHITECTURE MAIN OF VGA IS
--SIGNAL VGACLK,RESET:STD_LOGIC;
  COMPONENT SYNC IS
	PORT(
		CLK  : IN STD_LOGIC;
		HSYNC: OUT STD_LOGIC;
		VSYNC: OUT STD_LOGIC;
		R:     OUT STD_LOGIC_VECTOR(2 downto 0);
		G:     OUT STD_LOGIC_VECTOR(2 downto 0);
		B:     OUT STD_LOGIC_VECTOR(1 downto 0);
		
		KEYS: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S: IN STD_LOGIC_VECTOR(1 downto 0));
  END COMPONENT;
  
component DivisorFreq is
	Port(clk : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        FoutDivide : out  STD_LOGIC);
end component;

signal hz: std_logic;

BEGIN 

U1: SYNC port map(clk=>hz,Hsync=>H_Sync,Vsync=>V_Sync,R=>Red,G=>Green,B=>Blue,Keys=>Pulsadores,S=>switches);
U2: DivisorFreq port map(clk=>clk,reset=>reset,FoutDivide=>hz);
 
END MAIN;  
