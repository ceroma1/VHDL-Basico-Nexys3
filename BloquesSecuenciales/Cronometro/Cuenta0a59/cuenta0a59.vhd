library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity cuenta0a59 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           f0a59 : out  STD_LOGIC_VECTOR (5 downto 0));
end cuenta0a59;

architecture Behavioral of cuenta0a59 is
signal cuenta:std_logic_vector(5 downto 0);
begin
	process(clk,reset)
		begin
			if reset='1' then
				cuenta<=(others=>'0');
			elsif clk' event and clk='1' then
				if ce='1' then
					if cuenta="111011" then
						cuenta<=(others=>'0');
					else
						cuenta<=cuenta +1;
					end if;
				else
					cuenta<=cuenta;
				end if;
			end if;
		end process;
f0a59<=cuenta;
end Behavioral;

