library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Latch_D is
    Port ( D : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Q1 : inout  STD_LOGIC;
           NQ1 : inout  STD_LOGIC);
end Latch_D;

architecture Behavioral of Latch_D is
signal sg1,sg2,sg3 : STD_LOGIC;
begin

sg3<= not d;
sg1<= d nand en;
sg2<= sg3 nand en;

q1<= sg1 nand nq1;
nq1<= sg2 nand q1;

end Behavioral;

