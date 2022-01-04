library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity srLatch is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
			  Q1 : inout  STD_LOGIC;
			  NQ1 : inout  STD_LOGIC);
end srLatch;

architecture Behavioral of srLatch is

begin

--LATCH con NOR
Q1<= R nor NQ1;
NQ1<= S nor Q1;

end Behavioral;
