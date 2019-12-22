library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity muxgeneric is
	generic(n:integer :=4);
    Port ( a : in  STD_LOGIC_VECTOR (n-1 downto 0);
           b : in  STD_LOGIC_VECTOR (n-1 downto 0);
           c : in  STD_LOGIC_VECTOR (n-1 downto 0);
           d : in  STD_LOGIC_VECTOR (n-1 downto 0);
           selec : in  STD_LOGIC_VECTOR (1 downto 0);
           salida : out  STD_LOGIC_VECTOR (n-1 downto 0));
end muxgeneric;
     
architecture Behavioral of muxgeneric is
          
begin
	process(a,b,c,d,selec)
	begin
		case selec is
			when "00" => salida <= a;
			when "01" => salida <= b;
			when "10" => salida <= c;
			when "11" => salida <= d;
			when others => salida <=(others => 'Z');
		end case;
		end process;
end Behavioral;

