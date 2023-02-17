library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SpVerificaDos is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           Int_btn : in  STD_LOGIC;
			  seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end SpVerificaDos;
 
architecture Behavioral of SpVerificaDos is
 
component Estados is
    Port ( clk : in  STD_LOGIC;
           int_ext : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Foutq : out  STD_LOGIC);
end component;

component cuenta2 is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
			  ce : in  STD_LOGIC;
           salidacuenta : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component SuperiorBinarioDecimal is
    Port ( Ent : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sg1:std_logic;
signal sg2:STD_LOGIC_VECTOR (7 downto 0);

begin

u0: estados port map(clk=>clk,reset=>clear,int_ext=>Int_btn,Foutq=>sg1);
u1: cuenta2 port map(clk=>clk,clear=>clear,ce=>sg1,salidacuenta=>sg2);
u2:SuperiorBinarioDecimal Port map( Ent=>sg2,clk=>clk,reset=>clear,seg=>seg,an=>an);
end Behavioral;

