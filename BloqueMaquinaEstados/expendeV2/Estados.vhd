library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Estados is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  int_10 : in  STD_LOGIC;
			  int_20 : in  STD_LOGIC;
           int_50 : in  STD_LOGIC;
			  in_fin2s: in STD_LOGIC;
			  CE_Tempo: out STD_LOGIC;
			  monedas : out STD_LOGIC_VECTOR(7 DOWNTO 0);
			  vende : out  STD_LOGIC);
end Estados;

architecture Behavioral of Estados is

Type estados is (idle,s10,s20,s30,s40,s50,s60,s70,s80,s90,s100,s110,s120,s130,s140,sVende);
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
			
siguiente:process(In_Fin2s,int_10,int_20,int_50,estadoActual)
begin
	case estadoActual is
		when idle=>
			if int_10 ='1' then
				estadoSiguiente<=s10;
			elsif int_20 ='1' then
				estadoSiguiente<=s20;
			elsif int_50 ='1' then
				estadoSiguiente<=s50;
			else
				estadosiguiente<=idle;
			end if;
		when s10=>
			if int_10 ='1' then
				estadoSiguiente<=s20;
			elsif int_20 ='1' then
				estadoSiguiente<=s30;
			elsif int_50 ='1' then
				estadoSiguiente<=s60;
			else
				estadosiguiente<=s10;
			end if;
		when s20=>
			if int_10 ='1' then
				estadoSiguiente<=s30;
			elsif int_20 ='1' then
				estadoSiguiente<=s40;
			elsif int_50 ='1' then
				estadoSiguiente<=s70;
			else
				estadosiguiente<=s20;
			end if;
		when s30=>
			if int_10 ='1' then
				estadoSiguiente<=s40;
			elsif int_20 ='1' then
				estadoSiguiente<=s50;
			elsif int_50 ='1' then
				estadoSiguiente<=s80;
			else
				estadosiguiente<=s30;
			end if;
		when s40=>
			if int_10 ='1' then
				estadoSiguiente<=s50;
			elsif int_20 ='1' then
				estadoSiguiente<=s60;
			elsif int_50 ='1' then
				estadoSiguiente<=s90;
			else
				estadosiguiente<=s40;
			end if;
		when s50=>
			if int_10 ='1' then
				estadoSiguiente<=s60;
			elsif int_20 ='1' then
				estadoSiguiente<=s70;
			elsif int_50 ='1' then
				estadoSiguiente<=s100;
			else
				estadosiguiente<=s50;
			end if;
		when s60=>
			if int_10 ='1' then
				estadoSiguiente<=s70;
			elsif int_20 ='1' then
				estadoSiguiente<=s80;
			elsif int_50 ='1' then
				estadoSiguiente<=s110;
			else
				estadosiguiente<=s60;
			end if;		
		when s70=>
			if int_10 ='1' then
				estadoSiguiente<=s80;
			elsif int_20 ='1' then
				estadoSiguiente<=s90;
			elsif int_50 ='1' then
				estadoSiguiente<=s120;
			else
				estadosiguiente<=s70;
			end if;		
		when s80=>
			if int_10 ='1' then
				estadoSiguiente<=s90;
			elsif int_20 ='1' then
				estadoSiguiente<=s100;
			elsif int_50 ='1' then
				estadoSiguiente<=s130;
			else
				estadosiguiente<=s80;
			end if;		
		when s90=>
			if int_10 ='1' then
				estadoSiguiente<=s100;
			elsif int_20 ='1' then
				estadoSiguiente<=s110;
			elsif int_50 ='1' then
				estadoSiguiente<=s140;
			else
				estadosiguiente<=s90;
			end if;		
		when s100=>
			if int_10 ='1' then
				estadoSiguiente<=s110;
			elsif int_20 ='1' then
				estadoSiguiente<=s120;
			elsif int_50 ='1' then
				estadoSiguiente<=sVende;
			else
				estadosiguiente<=s100;
			end if;		
		when s110=>
			if int_10 ='1' then
				estadoSiguiente<=s120;
			elsif int_20 ='1' then
				estadoSiguiente<=s130;
			elsif int_50 ='1' then
				estadoSiguiente<=sVende;
			else
				estadosiguiente<=s110;
			end if;		
		when s120=>
			if int_10 ='1' then
				estadoSiguiente<=s130;
			elsif int_20 ='1' then
				estadoSiguiente<=s140;
			elsif int_50 ='1' then
				estadoSiguiente<=sVende;
			else
				estadosiguiente<=s120;
			end if;		
		when s130=>
			if int_10 ='1' then
				estadoSiguiente<=s140;
			elsif int_20 ='1' then
				estadoSiguiente<=sVende;
			elsif int_50 ='1' then
				estadoSiguiente<=sVende;
			else
				estadosiguiente<=s130;
			end if;		
		when s140=>
			if int_10 ='1' then
				estadoSiguiente<=sVende;
			elsif int_20 ='1' then
				estadoSiguiente<=sVende;
			elsif int_50 ='1' then
				estadoSiguiente<=sVende;
			else
				estadosiguiente<=s140;
			end if;		
		when sVende=>
			if In_Fin2s ='0' then
				estadoSiguiente<=sVende;
			else 
				estadoSiguiente<=Idle;
			end if;
		end case;		
end process;

salida:process(EstadoActual)
begin
	case estadoActual IS
		when Idle => 
		vende <= '0';
		CE_Tempo <='0';
		monedas<="00000000";
		when s10 => 
		vende <='0';
		CE_Tempo <='0';
		monedas<="00001010";
		when s20 => 
		vende <='0';
		CE_Tempo <='0';
		monedas<="00010100";
		when s30 => 
		vende <='0';
		CE_Tempo <='0';
		monedas<="00011110";
		when s40 =>
		vende <='0';
		CE_Tempo <='0';
		monedas<="00101000";
		when s50 => 
		vende <='0';
		CE_Tempo <='0';
		monedas<="00110010";
		when s60 => 
		vende <='0';
		CE_Tempo <='0';
		monedas<="00111100";
		when s70 => 
		vende <='0';
		CE_Tempo <='0';
		monedas<="01000110";
		when s80 => 
		vende <='0';
		CE_Tempo <='0';
		monedas<="01010000";
		when s90 => 
		vende <='0';
		CE_Tempo <='0';
		monedas<="01011010";
		when s100 => 
		vende <='0';
		CE_Tempo <='0';
		monedas<="01100100";
		when s110 => 
		vende <='0';
		CE_Tempo <='0';
		monedas<="01101110";
		when s120 => 
		vende <='0';
		CE_Tempo <='0';
		monedas<="01111000";
		when s130 => 
		vende <='0';
		CE_Tempo <='0';
		monedas<="10000010";
		when s140 => 
		vende <='0';
		CE_Tempo <='0';
		monedas<="10001100";
		when sVende => 
		vende <='1';
		CE_Tempo <='1';
		monedas<="10010110";
	end case;
end process;
end Behavioral;

