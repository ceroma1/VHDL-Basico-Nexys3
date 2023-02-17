library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all; 

entity ShiftRegister is
    Port ( D : in STD_LOGIC;
           Clk: in STD_LOGIC;
           Reset: in STD_LOGIC;
           Enable: in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (7 downto 0));
end ShiftRegister;

architecture Behavioral of ShiftRegister is
signal s_q : std_logic_vector(7 downto 0);

begin

process(reset,clk)
begin
if (reset = '0') then
    s_q <= "00000000";
elsif clk' event and clk ='1' then
  if (enable='1') then
    s_q(7 downto 0)<=d&s_q(7 downto 1);--s_q(6 downto 0)<=s_q(7 downto 1);
    --s_q(0)<=D;  --s_q(7)<=D;
  end if;
end if;
end process;
q<=s_q;
end Behavioral;


--signal count: natural range 0 to 8:=0; -- : unsigned (3 downto 0);
--signal s_q : STD_LOGIC_VECTOR (7 downto 0):="00000000";

--begin 

--process(enable,clk,Reset) 

--begin
-- if Reset = '1' then
--   if clk'event and clk = '1' then  
--      if Enable = '1' then
--          count <= count +1;
--          if count > 7 then
--           count <= 0;                 
--      end if;
--   end if;
-- end if;
--  elsif Reset = '0' then
--        count <= 0;
--end if;
--end process;

--process(count)  -- para pasar los datos a paralelo

--begin
--    case count is 
--        when 0 => s_Q(0) <= D;
--        when 1 => s_Q(1) <= D;
--        when 2 => s_Q(2) <= D;
--        when 3 => s_Q(3) <= D;
--        when 4 => s_Q(4) <= D;
--        when 5 => s_Q(5) <= D;
--        when 6 => s_Q(6) <= D;
--        when 7 => s_Q(7) <= D;
--        when others => s_Q <= "00000000";
--    end case;                  
--q<=s_q;
--end process;

