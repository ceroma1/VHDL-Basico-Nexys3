library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Estados is
    Port ( clk : in  STD_LOGIC;
           int_ext : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Foutq : out  STD_LOGIC);
end Estados;

architecture Behavioral of Estados is

Type estados is (Inc,s0,s1);
signal estadoActual,estadoSiguiente: estados;

begin
FSM:process(clk,reset)
begin
	if reset ='1' then 
		estadoActual<=Inc;  --esdado de reset
	elsif(clk'event and clk='1') then
      EstadoActual<=estadoSiguiente;
	end if;
end process;
			
siguiente:process(int_ext,estadoActual)
begin
	case estadoActual is
		when inc=>
			if int_ext ='0' then
				estadoSiguiente<=s0;
			else
				estadoSiguiente<=inc;
			end if;
		when s0=>
			if int_ext ='0' then
				estadoSiguiente<=s0;
			else
			  estadoSiguiente<=s1;
			end if;
		when s1=>
			  estadoSiguiente<=inc;
			end case;		
end process;

salida:process(EstadoActual)
begin
	case estadoActual IS
		when Inc => Foutq <= '0';
		when s0 => Foutq <='0';
		when s1 => Foutq<='1';
	end case;
end process;

end Behavioral;



