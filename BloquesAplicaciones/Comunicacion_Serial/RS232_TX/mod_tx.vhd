library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity mod_tx is
    Port ( clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           tick: in STD_LOGIC;
           Start : in STD_LOGIC;
           Data : in STD_LOGIC_VECTOR (7 downto 0);
           EOT : out STD_LOGIC;
           TX : out STD_LOGIC);
end mod_tx;

architecture Behavioral of mod_tx is
type state_type is (idle,inicio,dato,stop);
signal state_reg, state_next: state_type;
signal s_reg, s_next: unsigned(3 downto 0);
signal n_reg, n_next: unsigned(2 downto 0);
signal b_reg, b_next: std_logic_vector(7 downto 0);

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
  
  process(state_reg,s_reg,n_reg,b_reg,tick,start,data)
  begin
     state_next <= state_reg;
     s_next <= s_reg;
     n_next <= n_reg;
     b_next <= b_reg;
     EOT <= '1';
     case state_reg is
        
        when idle =>
           tx <= '1';
           EOT <='1';
           if start='1' then
              state_next <= inicio;
              s_next <= (others=>'0');
              b_next <= data;
           end if;
        when inicio =>
           tx <= '0';
           EOT <='0';
           if (tick = '1') then
              if s_reg=15 then
                 state_next <= dato;
                 s_next <= (others=>'0');
                 n_next <= (others=>'0');
              else
                 s_next <= s_reg + 1;
              end if;
           end if;
           
        when dato =>
           EOT<='0';        
           tx <= b_reg(0);
           if (tick = '1') then
              if s_reg=15 then 
                 s_next <= (others=>'0');
                 b_next <= '0' & b_reg(7 downto 1) ;
                 if n_reg = 7 then 
                    state_next <= stop ;
                 else
                    n_next <= n_reg + 1;
                 end if;
              else
                 s_next <= s_reg + 1;
              end if;
           end if;
           
        when stop =>
           tx <= '1';
           EOT <= '0';
           if (tick = '1') then
              if s_reg= 15 then 
                 state_next <= idle;
              else
                 s_next <= s_reg + 1;
              end if;
           end if;
     end case;
  end process;
end Behavioral;
