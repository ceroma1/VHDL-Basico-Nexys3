library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumaresta is
    Port ( opera : in  STD_LOGIC;
           a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (3 downto 0);
           des : out  STD_LOGIC);
end sumaresta;
  
architecture Behavioral of sumaresta is
 
component sumasigno is
    Port ( cin : in  STD_LOGIC;
           a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           suma : out  STD_LOGIC_VECTOR (3 downto 0);
           des : out  STD_LOGIC);
end component;

component complemento is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           selec : in  STD_LOGIC;
           comple : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sgcomple: std_logic_vector(3 downto 0);

begin
   
u0: complemento port map(a(3 downto 0)=>b(3 downto 0),selec=>opera,comple(3 downto 0)=>sgcomple);
u1: sumasigno port map(cin=>opera,a(3 downto 0)=>a(3 downto 0),b(3 downto 0)=>sgcomple(3 downto 0),suma(3 downto 0)=>salida(3 downto 0),des=>des);
end Behavioral;

