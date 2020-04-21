library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupContador is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           SalidaCuenta : out  STD_LOGIC_VECTOR (7 downto 0));
end SupContador;

architecture Behavioral of SupContador is

component cuenta is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           salidacuenta : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component divide is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Foutdivide : out  STD_LOGIC);
end component;

signal sg_clk: Std_logic;

begin

uo:divide Port map(clk=>clk,reset=>reset,Foutdivide=>sg_clk);
u1:cuenta Port map(clk=>sg_clk,clear=>reset,salidacuenta=>SalidaCuenta);

end Behavioral;

