library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_dato is
    Port ( DatoA : in  STD_LOGIC_VECTOR (3 downto 0);
           DatoB : in  STD_LOGIC_VECTOR (3 downto 0);
           Fout_dato : out  STD_LOGIC_VECTOR (3 downto 0);
           Sel_dato : in  STD_LOGIC);
end Mux_dato;

architecture Behavioral of Mux_dato is

begin

Fout_dato <= DatoB when sel_dato = '1' else DatoA;

end Behavioral;

