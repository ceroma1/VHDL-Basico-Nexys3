library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Estados is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  int_100 : in  STD_LOGIC;
			  int_200 : in  STD_LOGIC;
           int_500 : in  STD_LOGIC;
			  vende : out  STD_LOGIC);
end Estados;

architecture Behavioral of Estados is

Type estados is (idle,s100,s200,s300,s400,s500,s600,s700,s800,s900,s1000,s1100,s1200,s1300,s1400,sVende);
signal estadoActual,estadoSiguiente: estados;

begin
FSM:process(clk,reset)
begin
	if reset ='1' then 
		estadoActual<=Idle;  --esdado de reset
	elsif(clk'event and clk='1') then
      EstadoActual<=estadoSiguiente;
	end if;
end process;
			
siguiente:process(int_100,int_200,int_500,estadoActual)
begin
	case estadoActual is
		when idle=>
			if int_100 ='1' then
				estadoSiguiente<=s100;
			elsif int_200 ='1' then
				estadoSiguiente<=s200;
			elsif int_500 ='1' then
				estadoSiguiente<=s500;
			else
				estadosiguiente<=idle;
			end if;
		when s100=>
			if int_100 ='1' then
				estadoSiguiente<=s200;
			elsif int_200 ='1' then
				estadoSiguiente<=s300;
			elsif int_500 ='1' then
				estadoSiguiente<=s600;
			else
				estadosiguiente<=s100;
			end if;
		when s200=>
			if int_100 ='1' then
				estadoSiguiente<=s300;
			elsif int_200 ='1' then
				estadoSiguiente<=s400;
			elsif int_500 ='1' then
				estadoSiguiente<=s700;
			else
				estadosiguiente<=s200;
			end if;
		when s300=>
			if int_100 ='1' then
				estadoSiguiente<=s400;
			elsif int_200 ='1' then
				estadoSiguiente<=s500;
			elsif int_500 ='1' then
				estadoSiguiente<=s800;
			else
				estadosiguiente<=s300;
			end if;
		when s400=>
			if int_100 ='1' then
				estadoSiguiente<=s500;
			elsif int_200 ='1' then
				estadoSiguiente<=s600;
			elsif int_500 ='1' then
				estadoSiguiente<=s900;
			else
				estadosiguiente<=s400;
			end if;
		when s500=>
			if int_100 ='1' then
				estadoSiguiente<=s600;
			elsif int_200 ='1' then
				estadoSiguiente<=s700;
			elsif int_500 ='1' then
				estadoSiguiente<=s1000;
			else
				estadosiguiente<=s500;
			end if;
		when s600=>
			if int_100 ='1' then
				estadoSiguiente<=s700;
			elsif int_200 ='1' then
				estadoSiguiente<=s800;
			elsif int_500 ='1' then
				estadoSiguiente<=s1100;
			else
				estadosiguiente<=s600;
			end if;		
		when s700=>
			if int_100 ='1' then
				estadoSiguiente<=s800;
			elsif int_200 ='1' then
				estadoSiguiente<=s900;
			elsif int_500 ='1' then
				estadoSiguiente<=s1200;
			else
				estadosiguiente<=s700;
			end if;		
		when s800=>
			if int_100 ='1' then
				estadoSiguiente<=s900;
			elsif int_200 ='1' then
				estadoSiguiente<=s1000;
			elsif int_500 ='1' then
				estadoSiguiente<=s1300;
			else
				estadosiguiente<=s800;
			end if;		
		when s900=>
			if int_100 ='1' then
				estadoSiguiente<=s1000;
			elsif int_200 ='1' then
				estadoSiguiente<=s1100;
			elsif int_500 ='1' then
				estadoSiguiente<=s1400;
			else
				estadosiguiente<=s900;
			end if;		
		when s1000=>
			if int_100 ='1' then
				estadoSiguiente<=s1100;
			elsif int_200 ='1' then
				estadoSiguiente<=s1200;
			elsif int_500 ='1' then
				estadoSiguiente<=sVende;
			else
				estadosiguiente<=s1000;
			end if;		
		when s1100=>
			if int_100 ='1' then
				estadoSiguiente<=s1200;
			elsif int_200 ='1' then
				estadoSiguiente<=s1300;
			elsif int_500 ='1' then
				estadoSiguiente<=sVende;
			else
				estadosiguiente<=s1100;
			end if;		
		when s1200=>
			if int_100 ='1' then
				estadoSiguiente<=s1300;
			elsif int_200 ='1' then
				estadoSiguiente<=s1400;
			elsif int_500 ='1' then
				estadoSiguiente<=sVende;
			else
				estadosiguiente<=s1200;
			end if;		
		when s1300=>
			if int_100 ='1' then
				estadoSiguiente<=s1400;
			elsif int_200 ='1' then
				estadoSiguiente<=sVende;
			elsif int_500 ='1' then
				estadoSiguiente<=sVende;
			else
				estadosiguiente<=s1300;
			end if;		
		when s1400=>
			if int_100 ='1' then
				estadoSiguiente<=sVende;
			elsif int_200 ='1' then
				estadoSiguiente<=sVende;
			elsif int_500 ='1' then
				estadoSiguiente<=sVende;
			else
				estadosiguiente<=s1400;
			end if;		
		when sVende=>
			estadoSiguiente<=idle;	
			end case;		
end process;

salida:process(EstadoActual)
begin
	case estadoActual IS
		when Idle => 
		vende <= '0';
		when s100 => 
		vende <='0';
		when s200 => 
		vende <='0';
		when s300 => 
		vende <='0';
		when s400 => 
		vende <='0';
		when s500 => 
		vende <='0';
		when s600 => 
		vende <='0';
		when s700 => 
		vende <='0';
		when s800 => 
		vende <='0';
		when s900 => 
		vende <='0';
		when s1000 => 
		vende <='0';
		when s1100 => 
		vende <='0';
		when s1200 => 
		vende <='0';
		when s1300 => 
		vende <='0';
		when s1400 => 
		vende <='0';
		when sVende => 
		vende <='1';
	end case;
end process;
end Behavioral;

