library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SumaMedia is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           suma : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end SumaMedia;

architecture Behavioral of SumaMedia is

begin

suma <=a xor b xor cin;
cout <= (a and b) or ((a xor b)and cin);

end Behavioral;

