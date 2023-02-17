library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SuperiorBinarioDecimal is
    Port ( Ent : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end SuperiorBinarioDecimal;
 
architecture Behavioral of SuperiorBinarioDecimal is

component Modulo_BinBcd is
    Port ( B : in  STD_LOGIC_VECTOR (7 downto 0);
           P : out STD_LOGIC_VECTOR (9 downto 0));
end component;

component display is
    Port ( digito : in  STD_LOGIC_VECTOR (3 downto 0);
           segmento : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component mux4a1 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
			  c : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           fout : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component negacion is
    Port ( btn : in  STD_LOGIC_VECTOR (1 downto 0);
           anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component cuenta is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           salidacuenta : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

component divide is
    Port ( clk : in  STD_LOGIC;
           Foutdivide : out  STD_LOGIC);
end component;

signal sg1:STD_LOGIC_VECTOR (9 downto 0);
signal sg2:STD_LOGIC_VECTOR (1 downto 0);
signal sg3:STD_LOGIC_VECTOR (3 downto 0);
signal sg4:STD_LOGIC;

begin

u0:Modulo_BinBcd port map(B=>Ent,p=>sg1);
u1:mux4a1 port map(a=>sg1(3 downto 0),b=>sg1(7 downto 4),c(1 downto 0)=>sg1(9 downto 8),c(3 downto 2)=>"00",sel=>sg2,fout=>sg3);
u2:display port map(digito=>sg3,segmento=>seg);
u3:cuenta port map(clk=>sg4,clear=>reset,salidacuenta=>sg2);
u4:negacion port map(btn=>sg2,anodo=>an);
u5:divide port map(clk=>clk,Foutdivide=>sg4);
end Behavioral;

