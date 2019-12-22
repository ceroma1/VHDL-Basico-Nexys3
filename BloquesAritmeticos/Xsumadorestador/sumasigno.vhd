library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumasigno is
    Port ( cin : in  STD_LOGIC;
           a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           suma : out  STD_LOGIC_VECTOR (3 downto 0);
           des : out  STD_LOGIC);
end sumasigno;

architecture Behavioral of sumasigno is

COMPONENT SumaMedia is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           suma : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end COMPONENT;

signal sgcout: std_logic_vector(0 to 4);

begin

sgcout(0)<=cin;

generate_etiqueta:
for i in 0 to 3 generate
u0: SumaMedia port map(a=>a(i),b=>b(i),cin=>sgcout(i),suma=>suma(i),cout=>sgcout(i+1));
end generate;

des<=sgcout(3) xor sgcout(4); 

end Behavioral;

