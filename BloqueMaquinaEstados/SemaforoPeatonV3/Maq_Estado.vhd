library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Maq_Estado is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Boton : in  STD_LOGIC;
           In_fin2sg : in  STD_LOGIC;
           In_fin10sg : in  STD_LOGIC;
           f_luzCE : out  STD_LOGIC_VECTOR (5 downto 0));
end Maq_Estado;

architecture Behavioral of Maq_Estado is

Type estados is (blink,s0,s1,s2,s3);
signal estadoActual,estadoSiguiente:estados;

begin
FSM:process(clk,reset)
begin
	if reset ='1' then 
		estadoActual<=blink;  --esdado de reseto estado ocioso
	elsif(clk'event and clk='1') then
		EstadoActual<=estadoSiguiente;
	end if;
end process;

siguiente: process(In_fin2sg,In_fin10sg,boton,estadoActual)

begin
	case estadoActual Is
		when blink=>
				if Boton ='1' then
					estadoSiguiente<=s0;
				else 
					estadoSiguiente<=blink;
				end if;
		when s0=>
				if(boton='0')then
					estadoSiguiente<=blink;
				else
				  if(In_fin10sg ='0')then 
					estadoSiguiente<=s0;
				  else 
					estadoSiguiente<=s1;
				  end if;
				end if;
		when s1 =>
			if boton='0' then
			  estadoSiguiente<=blink;
			else
			  if(In_fin2sg ='0')then
				estadoSiguiente<=s1;
			else
				estadoSiguiente<=s2;
			end if;
		end if;
		when s2 =>
			if boton='0' then
			  estadoSiguiente<=blink;
			else
			if(In_fin10sg ='0')then
				estadoSiguiente<=s2;
			else
				estadoSiguiente<=s3;
			end if;
		end if;
		when s3 =>
			if boton='0' then
			  estadoSiguiente<=blink;
			else
			if(In_fin2sg ='0')then
				estadoSiguiente<=s3;
			else
				estadoSiguiente<=s0;
			end if;	
		end if;
	end case;		
end process;

salidas:process(estadoActual)
begin
	case estadoActual Is
		when blink => f_luzCE<="000001";
		when s0    => f_luzCE<="001010";
		when s1    => f_luzCE<="011100";
		when s2    => f_luzCE<="100010";
		when s3    => f_luzCE<="110100";
	end case;
end process;
end Behavioral;

