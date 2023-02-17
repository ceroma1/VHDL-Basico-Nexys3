library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity superiorVerifica is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  ce: in  STD_LOGIC;
			  seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end superiorVerifica;

architecture Behavioral of superiorVerifica is

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

signal sg:STD_LOGIC_VECTOR (7 downto 0);

begin
u0:cuenta2 Port map(clk=>clk,clear=>reset,ce=>ce,salidacuenta=>sg);
u1:SuperiorBinarioDecimal Port map(Ent=>sg,clk=>clk,reset=>reset,seg=>seg,an=>an);
end Behavioral;

