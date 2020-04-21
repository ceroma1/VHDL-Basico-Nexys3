library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegDespL_R is
    Port ( clk : in  STD_LOGIC;
           DatoIn : in  STD_LOGIC;
			  R_L :in std_logic;
           clear : in  STD_LOGIC;
           Datoout : out  STD_LOGIC_VECTOR (7 downto 0));
end RegDespL_R;

architecture Behavioral of RegDespL_R is

component RegDesp is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
			  R_L : in  STD_LOGIC;
           DatoIn : in  STD_LOGIC;
           DatoOut : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component divide is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Foutdivide : out  STD_LOGIC);
end component;

signal Sg1: std_logic;

begin

u0: divide port map(clk=>clk,reset=>clear,foutdivide=>sg1);
u1:RegDesp Port map(clk=>sg1,clear=>clear,R_L =>R_L,DatoIn=>Datoin,DatoOut=>datoout);
end Behavioral;

