library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupContadorModulo is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           segmentos : out  STD_LOGIC_VECTOR (6 downto 0);
           anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end SupContadorModulo;

architecture Behavioral of SupContadorModulo is

component divide is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Foutdivide : out  STD_LOGIC);
end component;

component ContadorModulo is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component ModuloDisplay is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           segmento : out  STD_LOGIC_VECTOR (6 downto 0);
           Anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sg_clk:STD_LOGIC;
signal sg_dato:STD_LOGIC_VECTOR (3 downto 0);

begin

uo:divide Port map(clk=>clk,reset=>reset,Foutdivide=>sg_clk);
u1:ContadorModulo Port map(clk=>sg_clk,reset=>reset,led=>sg_dato);
u2:ModuloDisplay Port map(A=>sg_dato,segmento=>segmentos,Anodos=>anodos);

end Behavioral;

