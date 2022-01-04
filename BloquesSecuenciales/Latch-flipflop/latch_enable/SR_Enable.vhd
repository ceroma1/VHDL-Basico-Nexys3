library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR_Enable is
    Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Q1 : inout  STD_LOGIC;
           NQ1 : inout  STD_LOGIC);
end SR_Enable;

architecture Behavioral of SR_Enable is

signal sg1,sg2 : STD_LOGIC;
begin

sg1<= r and en;
sg2<= s and en;

q1<= sg1 nor nq1;
nq1<= sg2 nor q1;

end Behavioral;

