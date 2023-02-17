library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity superior is
    Port ( clk : in  STD_LOGIC;
           int_ext : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Foutq : out  STD_LOGIC_VECTOR (7 downto 0));
end superior;

architecture Behavioral of superior is

component Estados is
    Port ( clk : in  STD_LOGIC;
           int_ext : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Foutq : out  STD_LOGIC);
end component;

component cuenta is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  ce : in  STD_LOGIC;
           salidacuenta : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal sg1:std_logic;

begin

u0:Estados port map(clk=>clk,int_ext=>int_ext,reset=>reset,Foutq=>sg1);
u1:cuenta port map(clk=>clk,ce=>sg1,reset=>reset,salidacuenta=>foutq);

end Behavioral;

