library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity MaqEstados is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           tick : in  STD_LOGIC;
           start : in  STD_LOGIC;
           rojo : out  STD_LOGIC;
           Amarillo : out  STD_LOGIC;
           Verde : out  STD_LOGIC);
end MaqEstados;

architecture Behavioral of MaqEstados is

type state_type is (idle,s1,s2,s3);
signal state_reg, state_next: state_type;
signal s_reg, s_next: unsigned(3 downto 0);

begin
  
  process(clk,reset)
  begin
     if reset='1' then
        state_reg <= idle;
        s_reg <= (others=>'0');
   
     elsif (clk'event and clk='1') then
        state_reg <= state_next;
        s_reg <= s_next;
     end if;
  end process;
  
  process(state_reg,s_reg,tick,start)
  begin
		 state_next <= state_reg;
		 s_next <= s_reg;
     
      case state_reg is
        
        when idle =>
           rojo <= '0';
           Amarillo <= '0';
           Verde <= '1';
           if start='1' then
              state_next <= s1;
              s_next <= (others=>'0');
           end if;
			  
        when s1 =>
           rojo <= '0';
           Amarillo <= '1';
           Verde <= '1';
           if (tick = '1') then
              if s_reg=1 then
                 state_next <= s2;
                 s_next <= (others=>'0');
              else
                 s_next <= s_reg + 1;
              end if;
           end if;
           
        when s2 =>
           rojo <= '1';
           Amarillo <= '0';
           Verde <= '0';
           if (tick = '1') then
              if s_reg=9 then 
                 state_next <= s3;
					  s_next <= (others=>'0');
              else
                 s_next <= s_reg + 1;
              end if;
           end if;
           
        when s3 =>
           rojo <= '1';
           Amarillo <= '1';
           Verde <= '0';
           if (tick = '1') then
              if s_reg=1 then 
                 state_next <= idle;
					  s_next <= (others=>'0');
              else
                 s_next <= s_reg + 1;
              end if;
           end if;
     end case;
  end process;
end Behavioral;

