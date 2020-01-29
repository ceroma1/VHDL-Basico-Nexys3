library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity compand is
    Port ( A0 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           B : out  STD_LOGIC);
end compand;

architecture Behavioral of compand is

begin

B <= A0 and A1;

end Behavioral;

