library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MaqEstados is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  Boton : in  STD_LOGIC;
           rojo : out  STD_LOGIC;
           amarillo : out  STD_LOGIC;
           verde : out  STD_LOGIC);
end MaqEstados;

architecture Behavioral of MaqEstados is

Type estados is (Idle,s1,s2,s3);
signal estadoActual,estadoSiguiente: estados;

begin

FSM:process(clk,reset)
begin
	if reset ='1' then 
		estadoActual<=Idle;  --esdado de reset
   elsif(clk'event and clk='1') then
		estadoActual<=estadoSiguiente;
	end if;
end process;

siguiente:process(boton,estadoActual)
begin
	case estadoActual is
		when Idle=>
			if boton ='0' then
				estadoSiguiente<=Idle;
			else
				estadoSiguiente<=s1;
			end if;
		when s1=>
				estadoSiguiente<=s2;
		when s2=>
			  estadoSiguiente<=s3;
		when s3=>
			  estadoSiguiente<=Idle;
			end case;		
end process;

salida:process(EstadoActual)
begin
	case estadoActual IS
		when Idle => 
		rojo <= '0';
		amarillo <= '0';
		verde <= '1';
		when s1 => 
		rojo <= '0';
		amarillo <= '1';
		verde <= '1';
		when s2 => 
		rojo <= '1';
		amarillo <= '0';
		verde <= '0';
		when s3 => 
		rojo <= '1';
		amarillo <= '1';
		verde <= '0';
	end case;
end process;

end Behavioral;

