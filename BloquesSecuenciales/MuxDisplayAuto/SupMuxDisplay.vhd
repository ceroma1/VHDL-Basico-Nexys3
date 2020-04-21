library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupMuxDisplay is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           EntrA : in  STD_LOGIC_VECTOR (3 downto 0);
           EntrB : in  STD_LOGIC_VECTOR (3 downto 0);
           segmentos : out  STD_LOGIC_VECTOR (6 downto 0);
           anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end SupMuxDisplay;

architecture Behavioral of SupMuxDisplay is

component display is
    Port ( digito : in  STD_LOGIC_VECTOR (3 downto 0);
           segmento : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component divide is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Foutdivide : out  STD_LOGIC);
end component;

component mux4a1 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC;
           fout : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component negacion is
    Port ( btn : in  STD_LOGIC;
           anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sg_clk:STD_LOGIC;
signal sg_datos:STD_LOGIC_VECTOR (3 downto 0);

begin

u0:divide Port map(clk=>clk,reset=>reset,Foutdivide=>sg_clk);
u1:mux4a1 Port map(a=>EntrA,b=>EntrB,sel=>sg_clk,fout=>sg_datos);
u2:negacion Port map(btn=>sg_clk,anodo=>anodos);
u3:display port map(digito=>sg_datos,segmento=>segmentos);		  
end Behavioral;

