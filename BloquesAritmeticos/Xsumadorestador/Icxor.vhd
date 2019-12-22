library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Icxor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           f : out  STD_LOGIC);
end Icxor;

architecture Behavioral of Icxor is

begin

f<= a xor b;

end Behavioral;

