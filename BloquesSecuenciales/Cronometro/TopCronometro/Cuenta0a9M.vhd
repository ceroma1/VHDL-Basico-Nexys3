library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity Cuenta0a9M is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           f0a9m : out  STD_LOGIC_VECTOR (3 downto 0));
end Cuenta0a9M;

architecture Behavioral of Cuenta0a9M is
signal cuenta:std_logic_vector(3 downto 0);
begin
	process(clk,reset)
		begin
			if reset='1' then
				cuenta<=(others=>'0');
			elsif clk' event and clk='1' then
				if ce='1' then
					if cuenta="1001" then
						cuenta<=(others=>'0');
					else
						cuenta<=cuenta +1;
					end if;
				else
					cuenta<=cuenta;
				end if;
			end if;
		end process;
f0a9m<=cuenta;

end Behavioral;

