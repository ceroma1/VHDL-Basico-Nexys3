library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CarryLookAhead is
    Port ( p : in STD_LOGIC_VECTOR (3 downto 0);
           g : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           cout : out STD_LOGIC_VECTOR (3 downto 0));
end CarryLookAhead;

architecture Behavioral of CarryLookAhead is

Signal s_cout: STD_LOGIC_VECTOR(3 downto 0);

begin

cout <= s_cout;
s_cout(0) <= g(0) or (p(0) and cin);
s_cout(1) <= g(1) or (p(1) and s_cout(0));
s_cout(2) <= g(2) or (p(2) and s_cout(1));
s_cout(3) <= g(3) or (p(3) and s_cout(2));

end Behavioral;
