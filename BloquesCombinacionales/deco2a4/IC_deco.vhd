library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC_deco is
    Port ( G0 : in  STD_LOGIC;
           G1 : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end IC_deco;

architecture Behavioral of IC_deco is

component compnot is
    Port ( D : in  STD_LOGIC;
           F : out  STD_LOGIC);
end component;

component compand is
    Port ( A0 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           B : out  STD_LOGIC);
end component;

Signal sg0,sg1,sg2: STD_LOGIC;

begin

----SALIDA F0---
u0: compnot port map(D=>G0,F=>sg0);
u1: compnot port map(D=>G1,F=>sg1);
u3: compand port map(A0=>sg0,A1=>sg1,B=>Y0);
------SALIDA F1----
u4: compand port map(A0=>G0,A1=>sg1,B=>Y1);
-----SALIDA F2-----
u5: compand port map(A0=>SG0,A1=>G1,B=>Y2);
----SALIDA F3---
U6: compand port map(A0=>G1,A1=>G0,B=>Y3);

end Behavioral;

