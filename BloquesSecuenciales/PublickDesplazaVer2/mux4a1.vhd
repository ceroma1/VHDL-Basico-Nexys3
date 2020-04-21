library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4a1 is
    Port ( a : in  STD_LOGIC_VECTOR (5 downto 0);
           b : in  STD_LOGIC_VECTOR (5 downto 0);
           c : in  STD_LOGIC_VECTOR (5 downto 0);
           d : in  STD_LOGIC_VECTOR (5 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           salida : out  STD_LOGIC_VECTOR (5 downto 0));
end mux4a1;

architecture Behavioral of mux4a1 is

begin
	with sel select
	salida <= a when "00",
				 b when "01",
				 c when "10",
				 d when others;
end Behavioral;

