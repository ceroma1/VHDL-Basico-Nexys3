library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Estados_MuxPublick is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Int_paus : in  STD_LOGIC;
           Int_play : in  STD_LOGIC;
           Int_stop : in  STD_LOGIC;
           Int_izq : in  STD_LOGIC;
           Int_der : in  STD_LOGIC;
			  int_tiempo : in  STD_LOGIC;
			  CE_tiempo : out  STD_LOGIC;
           Fout_maq : out  STD_LOGIC_VECTOR (2 downto 0));
end Estados_MuxPublick;

architecture Behavioral of Estados_MuxPublick is
Type estados is (idle,s1,s2,s3,s4,s5);
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
			
siguiente:process(int_tiempo,Int_paus,Int_play,Int_stop,Int_izq,Int_der,estadoActual)
begin
	case estadoActual is
		when idle=>
			if Int_paus ='1' then
				estadoSiguiente<=s1;
			elsif Int_play ='1' then
				estadoSiguiente<=s2;
			elsif Int_stop ='1' then
				estadoSiguiente<=s3;
			elsif Int_izq ='1' then
				estadoSiguiente<=s4;
			elsif Int_der ='1' then
				estadoSiguiente<=s5;
			else
				estadosiguiente<=idle;
			end if;
		when s1=> -- PAUS
			if Int_play ='1' then
				estadoSiguiente<=s2;
			elsif Int_stop ='1' then
				estadoSiguiente<=s3;
			elsif Int_izq ='1' then
				estadoSiguiente<=s4;
			elsif Int_der ='1' then
				estadoSiguiente<=s5;
			else
				estadosiguiente<=s1;
			end if;
		when s2=> -- PLAY
			if Int_paus ='1' then
				estadoSiguiente<=s1;
			elsif Int_stop ='1' then
				estadoSiguiente<=s3;
			elsif Int_izq ='1' then
				estadoSiguiente<=s4;
			elsif Int_der ='1' then
				estadoSiguiente<=s5;
			else
				estadosiguiente<=s2;
			end if;
		when s3=> --stop
			if int_tiempo ='1' then
				estadosiguiente<=Idle;
			else
				estadosiguiente<=s3;
			end if;
		when s4=> --IZQ
			if Int_paus ='1' then
				estadoSiguiente<=s1;
			elsif Int_play ='1' then
				estadoSiguiente<=s2;
			elsif Int_stop ='1' then
				estadoSiguiente<=s3;
			elsif Int_der ='1' then
				estadoSiguiente<=s5;
			else
				estadosiguiente<=s4;
			end if;
		when s5=> --der
			if Int_paus ='1' then
				estadoSiguiente<=s1;
			elsif Int_play ='1' then
				estadoSiguiente<=s2;
			elsif Int_stop ='1' then
				estadoSiguiente<=s3;
			elsif Int_izq ='1' then
				estadoSiguiente<=s4;
			else
				estadosiguiente<=s5;
			end if;
		end case;		
end process;

salida:process(EstadoActual)
begin
	case estadoActual IS
		when Idle => 
		Fout_maq <= "000";
		CE_tiempo <= '0';
		when s1 => 
		Fout_maq <= "001";
		CE_tiempo <= '0';
		when s2 => 
		Fout_maq <= "010";
		CE_tiempo <= '0';
		when s3 => 
		Fout_maq <= "011";
		CE_tiempo <= '1';
		when s4 =>
		Fout_maq <= "100";
		CE_tiempo <= '0';
		when s5 => 
		Fout_maq <= "101";
		CE_tiempo <= '0';
	end case;
end process;
end Behavioral;




