library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Maq_estado is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Foutq : out  STD_LOGIC;
           Int_ext : in  STD_LOGIC);
end Maq_estado;

architecture Behavioral of Maq_estado is

Type estados is (s0,s1,s2,s3);
signal estadoActual,estadoSiguiente:estados;

begin
 
FSM:process(clk,reset)
begin
	if reset ='1' then 
		estadoActual<=s0;  --esdado de reseto estado ocioso
	elsif(clk'event and clk='1') then
		EstadoActual<=estadoSiguiente;
	end if;
end process;

siguiente: process(Int_ext,estadoActual)

begin
	case estadoActual Is
		when s0=>
			if int_ext = '0' then
				estadoSiguiente<=s0;
			else
				estadoSiguiente<=s1;
			end if;
		when s1 =>
			if int_ext ='1' then
				estadoSiguiente<=s1;
			else 
				estadoSiguiente<=s2;
			end if;
		when s2 =>
			if int_ext ='0' then
				estadoSiguiente<=s2;
			else
				estadoSiguiente<=s3;
		end if;
	when s3 =>
			if int_ext ='1' then
				estadoSiguiente<=s3;
			else
				estadoSiguiente<=s0;
			end if;
	end case;		
end process;

salidas:process(estadoActual)
begin
	case estadoActual Is
		when s0   => Foutq <= '0';
		when s1   => Foutq <= '1';
		when s2   => Foutq <= '1';
		when s3   => Foutq <= '0';
	end case;
end process;
end Behavioral;

