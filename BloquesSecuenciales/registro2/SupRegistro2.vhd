library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupRegistro2 is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           Datout : out  STD_LOGIC_VECTOR (7 downto 0));
end SupRegistro2;

architecture Behavioral of SupRegistro2 is

component divfre is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           clk3 : out  STD_LOGIC);
end component;

component arreglo_reg is
    Port ( clear : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal sg_clk:STD_LOGIC;

begin

u0:divfre Port map(clk=>clk,clear=>clear,clk3=>sg_clk);
u1:arreglo_reg Port map(clear=>clear,clk=>sg_clk,salida=>Datout);

end Behavioral;

