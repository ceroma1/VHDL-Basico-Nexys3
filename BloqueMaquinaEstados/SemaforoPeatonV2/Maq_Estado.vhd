library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Maq_Estado is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Boton : in  STD_LOGIC;
           In_fin2sg : in  STD_LOGIC;
           In_fin10sg : in  STD_LOGIC;
           f_luzCE : out  STD_LOGIC_VECTOR (4 downto 0));
end Maq_Estado;

architecture Behavioral of Maq_Estado is

Type estados is (Idle,s1,s2,s3);
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

siguiente: process(In_fin2sg,In_fin10sg,boton,estadoActual)

begin
	case estadoActual Is
		when Idle=>
				if Boton ='0' then
					estadoSiguiente<=Idle;
				else 
					estadoSiguiente<=s1;
				end if;
		when s1 =>
			if In_fin2sg ='0' then
				estadoSiguiente<=s1;
			else 
				estadoSiguiente<=s2;
			end if;
		when s2 =>
			if In_fin10sg ='0' then
				estadoSiguiente<=s2;
			else
				estadoSiguiente<=s3;
			end if;
		when s3 =>
			if In_fin2sg ='0' then
				estadoSiguiente<=s3;
			else
				estadoSiguiente<=Idle;
			end if;	
	end case;		
end process;

salidas:process(estadoActual)
begin
	case estadoActual Is
		when Idle => f_luzCE<="00100";
		when s1   => f_luzCE<="01110";
		when s2   => f_luzCE<="10001";
		when s3   => f_luzCE<="11010";
	end case;
end process;
end Behavioral;

