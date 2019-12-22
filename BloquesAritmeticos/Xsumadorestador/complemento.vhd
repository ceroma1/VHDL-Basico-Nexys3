library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity complemento is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           selec : in  STD_LOGIC;
           comple : out  STD_LOGIC_VECTOR (3 downto 0));
end complemento;

architecture Behavioral of complemento is

component Icxor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           f : out  STD_LOGIC);
end component;
  
begin

generate_etiqueta:
for i in 0 to 3 generate
u0: Icxor port map(a=>a(i),b=>selec,f=>comple(i));
end generate;


end Behavioral;

