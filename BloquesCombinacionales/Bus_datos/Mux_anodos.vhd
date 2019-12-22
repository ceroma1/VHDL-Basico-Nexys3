library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_anodos is
    Port ( sel_display : in  STD_LOGIC_VECTOR (1 downto 0);
           anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end Mux_anodos;

architecture Behavioral of Mux_anodos is

begin

anodos <= "1110" when sel_display = "00" else
			 "1101" when sel_display = "01" else
			 "1011" when sel_display = "10" else
			 "0111";
			 
end Behavioral;

