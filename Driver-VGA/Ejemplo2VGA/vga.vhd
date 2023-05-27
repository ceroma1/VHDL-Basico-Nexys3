library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY VGA IS
	Port(clk: in STD_LOGIC;
		  reset: in STD_LOGIC;
		  Pulsadores: in STD_LOGIC_VECTOR(3 downto 0);
		 -- VGAHZ: out STD_LOGIC;
		  V_Sync: out STD_LOGIC;
		  H_Sync: out STD_LOGIC;
		  Red: out STD_LOGIC_VECTOR(2 downto 0);
		  Green: out STD_LOGIC_VECTOR(2 downto 0);
		  Blue: out STD_LOGIC_VECTOR(1 downto 0));
END VGA;


ARCHITECTURE MAIN OF VGA IS
-- definir arquitectura
  
  COMPONENT SYNC IS
	PORT(
		CLK  : IN STD_LOGIC;
		HSYNC: OUT STD_LOGIC;   --sincronia horizontal
		VSYNC: OUT STD_LOGIC;   --sincronia vertical
		R:     OUT STD_LOGIC_VECTOR(2 downto 0); --rojo 8 bits
		G:     OUT STD_LOGIC_VECTOR(2 downto 0); -- verde
		B:     OUT STD_LOGIC_VECTOR(1 downto 0);  --azul
		KEYS: IN STD_LOGIC_VECTOR(3 DOWNTO 0) --pulsadores
		);
  END COMPONENT;
  
	Component DivisorFreq is
		Port ( clk : in  STD_LOGIC;
          reset : in  STD_LOGIC;
          FoutDivide : out  STD_LOGIC);
	end component;
	
--señales de union
signal hz: std_logic;

BEGIN 
 
 U1: SYNC port map(clk=>hz,Hsync=>H_Sync,Vsync=>V_sync,R=>Red,G=>Green,B=>Blue,Keys=>pulsadores);
 U2: DivisorFreq port map(clk=>clk,reset=>reset,FoutDivide=>hz);
	 
	 
    --VGA_CLK<=CLOCK_50;

END MAIN;  

