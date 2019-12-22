library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control is
    Port ( inta : in  STD_LOGIC;
           intb : in  STD_LOGIC;
           intc : in  STD_LOGIC;
           intd : in  STD_LOGIC;
           fsal : out  STD_LOGIC);
end control;

architecture Behavioral of control is

begin

fsal<= inta or (intb and intc) or (intb and intd);

end Behavioral;

