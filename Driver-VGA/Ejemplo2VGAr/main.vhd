library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main is
	Port(clk,reset: in std_logic;
		  Pulsadores: in std_logic_vector(3 downto 0);
		  V_Sync: out std_logic;
		  H_Sync: out std_logic;
		  Red: out std_logic_vector(2 downto 0);
		  Green: out std_logic_vector(2 downto 0);
		  Blue: out std_logic_vector(1 downto 0));
end main;

architecture Behavioral of main is

component DivFreq is
	Port(clk : in  STD_LOGIC;
          reset : in  STD_LOGIC;
          FoutDivide : out  STD_LOGIC);
end component;

component VGA is
	Port(clk: in std_logic;
		  HSync: out std_logic;
		  VSync: out std_logic;
		  Show: out std_logic;
		  HCount: out std_logic_vector(10 downto 0);
		  VCount: out std_logic_vector(9 downto 0));
end component;

component Move is
	Port(clk: in std_logic;
		  Keys: in std_logic_vector(3 downto 0);--Pulsadores
		  Show: in std_logic;
		  HPos: in std_logic_vector(10 downto 0);
		  VPos: in std_logic_vector(9 downto 0);
		  R: out std_Logic_vector(2 downto 0);
		  G: out std_Logic_vector(2 downto 0);
		  B: out std_Logic_vector(1 downto 0));
end component;

--señales de union
signal hz: std_logic;
signal HCounter: std_logic_vector(10 downto 0);
signal VCounter: std_logic_vector(9 downto 0);
signal Ce: std_logic;
begin

U0: DivFreq port map(clk=>clk,reset=>reset,FoutDivide=>hz);
U1: VGA port map(clk=>hz,HSync=>H_Sync,VSync=>V_Sync,show=>Ce,HCount=>HCounter,VCount=>VCounter);
U2: Move port map(clk=>hz,Keys=>Pulsadores,show=>Ce,HPos=>HCounter,VPos=>VCounter,R=>Red,G=>Green,B=>Blue);

end Behavioral;

