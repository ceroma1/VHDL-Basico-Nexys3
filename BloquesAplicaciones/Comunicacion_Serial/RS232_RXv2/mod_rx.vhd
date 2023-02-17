library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity mod_rx is
    Port (Clk : in  std_logic;
          Reset : in  std_logic;
          tick : in std_logic;
          LineRD_in : in  std_logic;
          rx_done_tick : out std_logic;
          dout : out std_logic_vector(7 downto 0));
end mod_rx;

architecture Behavioral of mod_rx is
type state_type is (idle, start, data, stop);
signal state_reg, state_next: state_type;
signal s_reg, s_next: unsigned(3 downto 0);
signal n_reg, n_next: unsigned(2 downto 0);
signal b_reg ,b_next: std_logic_vector (7 downto 0);

begin
 
process(clk,reset)
begin
	if reset='0' then
		state_reg <= idle;
      s_reg <= (others=>'0');
      n_reg <= (others=>'0');
		b_reg <= (others=>'0');
   elsif (clk'event and clk='1') then
      state_reg <= state_next;
      s_reg <= s_next;
      n_reg <= n_next;
		b_reg <= b_next;
   end if;
end process;
 
process(state_reg,s_reg,n_reg,b_reg,tick,LineRD_in) 
begin
    state_next <= state_reg;
    s_next <= s_reg;
    n_next <= n_reg;
	 b_next <= b_reg;
    rx_done_tick <='0';
        
    case state_reg is
       when idle =>
			if LineRD_in='0' then
				state_next <= start;
            s_next <= (others=>'0');
         end if;
       when start =>
          if (tick = '1') then
             if s_reg=7 then
                state_next <= data;
                s_next <= (others=>'0');
                n_next <= (others=>'0');
             else
                s_next <= s_reg + 1;
             end if;
          end if;
       when data =>
          if (tick = '1') then
				if s_reg=15 then
					s_next <= (others=>'0');
					b_next <= LineRD_in&b_reg(7 downto 1);
            if n_reg= 7 then 
               state_next <= stop ;
            else
               n_next <= n_reg + 1;
            end if;
           else
                s_next <= s_reg + 1;
           end if;
          end if;
       when stop =>
          if (tick = '1') then
             if s_reg= 15 then 
                state_next <= idle;
                 rx_done_tick <= '1';
             else
                s_next <= s_reg + 1;
             end if;
          end if;
    end case;
 end process;
 dout<=b_reg;
end Behavioral;
