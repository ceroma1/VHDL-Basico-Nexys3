library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Maq_estado is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Foutq : out  STD_LOGIC_VECTOR (2 downto 0);
           Int_ext : in  STD_LOGIC_VECTOR (1 downto 0));
end Maq_estado;
 
architecture Behavioral of Maq_estado is
 
Type estados is (Idle,s1,s2,s3,s4);
signal estadoActual,estadoSiguiente:estados;

begin

FSM:process(clk,reset)
begin
	if reset ='1' then 
		estadoActual<=Idle;  --esdado de reseto estado ocioso
	elsif(clk'event and clk='1') then
		EstadoActual<=estadoSiguiente;
	end if;
end process;

siguiente: process(Int_ext,estadoActual)

begin
	case estadoActual Is
		when Idle=>
				estadoSiguiente<=s1;
		when s1 =>
			if int_ext(0) ='1' then
				estadoSiguiente<=s2;
			else 
				estadoSiguiente<=s1;
			end if;
		when s2 =>
			if int_ext ="01" then
				estadoSiguiente<=s3;
			elsif int_ext="11" then
				estadoSiguiente<=s4;
			elsif int_ext="10" then
				estadoSiguiente<=Idle;
			--else
			--	estadoSiguiente<=s2;
		end if;
	when s3 =>
			estadoSiguiente<=s4;
	when s4 =>
			estadoSiguiente<=Idle;
	end case;		
end process;
 
salidas:process(estadoActual)
begin
	case estadoActual Is
		when Idle => Foutq <= "000";
		when s1   => Foutq <= "101";
		when s2   => Foutq <= "111";
		when s3   => Foutq <= "011";
		when s4   => Foutq <= "000";
	end case;
end process;
end Behavioral;

