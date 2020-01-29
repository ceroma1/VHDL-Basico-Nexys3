library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity compnot is
    Port ( D : in  STD_LOGIC;
           F : out  STD_LOGIC);
end compnot;

architecture Behavioral of compnot is

begin

F <= not D;

end Behavioral;

