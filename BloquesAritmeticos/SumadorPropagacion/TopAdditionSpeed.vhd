library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TopAdditionSpeed is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (4 downto 0));
end TopAdditionSpeed;

architecture Behavioral of TopAdditionSpeed is

component bitFullAdder1 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           p : out STD_LOGIC;
           g : out STD_LOGIC;
           s : out STD_LOGIC);
end component;

component CarryLookAhead is
    Port ( p : in STD_LOGIC_VECTOR (3 downto 0);
           g : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           cout : out STD_LOGIC_VECTOR (3 downto 0));
end component;

Signal p : STD_LOGIC_VECTOR(3 downto 0);
Signal g : STD_LOGIC_VECTOR(3 downto 0);
Signal cout_i : STD_LOGIC_VECTOR(3 downto 0);
	
begin

s(4)<= cout_i(3);

u0:bitFullAdder1 PORT MAP(a=>a(0),b=>b(0),cin=>cin,p=>p(0),g=>g(0),s => s(0));
u1:bitFullAdder1 PORT MAP(a=>a(1),b=>b(1),cin=>cout_i(0),p=>p(1),g=>g(1),s=>s(1));
u2:bitFullAdder1 PORT MAP(a=>a(2),b=>b(2),cin=>cout_i(1),p=>p(2),g=>g(2),s=>s(2));
u3:bitFullAdder1 PORT MAP(a=>a(3),b=>b(3),cin=>cout_i(2),p=>p(3),g=>g(3),s=>s(3));
u4:CarryLookAhead PORT MAP(p=>p,g=>g,cin=>cin,cout=>cout_i);        

end Behavioral;
