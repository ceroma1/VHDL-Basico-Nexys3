library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SumaMedia1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           suma : out  STD_LOGIC);
end SumaMedia1;

architecture Behavioral of SumaMedia1 is

begin

suma <=a xor b xor cin;

end Behavioral;

