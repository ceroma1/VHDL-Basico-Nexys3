library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Maq_estadoReb is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  Boton : in  STD_LOGIC;
			  dato : in  STD_LOGIC_VECTOR(7 downto 0);
           In_Fin1ms : in  STD_LOGIC;
           CE_Tempo : out  STD_LOGIC;
			  transmitiendo: out  STD_LOGIC;
           salida_bits : out  STD_LOGIC);
end Maq_estadoReb;
 
architecture Behavioral of Maq_estadoReb is

Type estados is (Idle,s0,s1,s2,s3,s4,s5,s6,s7);
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

siguiente: process(In_Fin1ms,boton,estadoActual)

begin
	case estadoActual Is
		when Idle=>
				if Boton ='0' then
					estadoSiguiente<=Idle;
				else 
					estadoSiguiente<=s0;
				end if;
		when s0 =>
			if In_Fin1ms ='0' then
				estadoSiguiente<=s0;
			else 
				estadoSiguiente<=s1;
			end if;
		when s1 =>
			if In_Fin1ms ='0' then
				estadoSiguiente<=s1;
			else 
				estadoSiguiente<=s2;
			end if;
		when s2 =>
			if In_Fin1ms ='0' then
				estadoSiguiente<=s2;
			else 
				estadoSiguiente<=s3;
			end if;
		when s3 =>
			if In_Fin1ms ='0' then
				estadoSiguiente<=s3;
			else 
				estadoSiguiente<=s4;
			end if;
		when s4 =>
			if In_Fin1ms ='0' then
				estadoSiguiente<=s4;
			else 
				estadoSiguiente<=s5;
			end if;
		when s5 =>
			if In_Fin1ms ='0' then
				estadoSiguiente<=s5;
			else 
				estadoSiguiente<=s6;
			end if;
		when s6 =>
			if In_Fin1ms ='0' then
				estadoSiguiente<=s6;
			else 
				estadoSiguiente<=s7;
			end if;
		when s7 =>
			if In_Fin1ms ='0' then
				estadoSiguiente<=s7;
			else 
				estadoSiguiente<=Idle;
			end if;
	end case;	
end process;
 
salidas:process(estadoActual,dato)
begin
	case estadoActual Is
		when Idle => 
			transmitiendo <= '0';
         salida_bits <='0'; 
			CE_Tempo <='0' ;
		when s0   => 
			transmitiendo <= '1';
         salida_bits <=dato(0);
			CE_Tempo <='1' ;
		when s1   => 
			transmitiendo <= '1';
         salida_bits <=dato(1);
			CE_Tempo <='1' ;
		when s2   => 
			transmitiendo <= '1';
         salida_bits <=dato(2);
			CE_Tempo <='1' ;
		when s3   => 
			transmitiendo <= '1';
         salida_bits <=dato(3);
			CE_Tempo <='1' ;
		when s4   => 
			transmitiendo <= '1';
         salida_bits <=dato(4);
			CE_Tempo <='1' ;
		when s5   => 
			transmitiendo <= '1';
         salida_bits <=dato(5);
			CE_Tempo <='1' ;
		when s6   => 
			transmitiendo <= '1';
         salida_bits <=dato(6);
			CE_Tempo <='1' ;
		when s7   => 
			transmitiendo <= '1';
         salida_bits <=dato(7);
			CE_Tempo <='1' ;
	end case;
end process;
end Behavioral;

