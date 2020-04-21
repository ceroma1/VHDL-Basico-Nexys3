library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SuperiorPublick is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end SuperiorPublick;

architecture Behavioral of SuperiorPublick is

component negacion is
    Port ( btn : in  STD_LOGIC_VECTOR (2 downto 0);
           anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component cuenta is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           salidacuenta : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component mux4a1 is
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
           fout : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component divide is
    Port ( clk : in  STD_LOGIC;
           Foutdivide : out  STD_LOGIC);
end component;

signal sg2:STD_LOGIC_VECTOR (2 downto 0);
signal sg3:STD_LOGIC;
  
begin
u1:negacion port map(btn=>sg2,anodo=>an);
u2:mux4a1 port map(sel=>sg2,fout=>seg);
u3:cuenta port map(clk=>sg3,clear=>reset,salidacuenta=>sg2);
u4:divide port map(clk=>clk,foutdivide=>sg3);
end Behavioral;

