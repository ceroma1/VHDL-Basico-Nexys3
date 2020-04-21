library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupContadorDisplay is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           segmentos : out  STD_LOGIC_VECTOR (6 downto 0);
           anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end SupContadorDisplay;

architecture Behavioral of SupContadorDisplay is

component ModuloCuenta is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Fsalida : out  STD_LOGIC_VECTOR (13 downto 0));
end Component;

component SuperiorBinarioDecimal is
    Port ( Ent : in  STD_LOGIC_VECTOR (13 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component ModuloDivide is
    Port ( clk : in  STD_LOGIC;
           Fout : out  STD_LOGIC);
end component;

signal sg_clk:STD_LOGIC;
signal sg_dato:STD_LOGIC_VECTOR (13 downto 0);

begin
u0:ModuloDivide Port map(clk=>clk,Fout=>sg_clk);
u1:ModuloCuenta Port map(clk=>sg_clk,reset=>reset,Fsalida=>sg_dato);
u2:SuperiorBinarioDecimal Port map(Ent=>sg_dato,clk=>clk,reset=>reset,seg=>segmentos,an=>anodos);
end Behavioral;

