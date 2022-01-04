LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SR_Enable
    PORT(
         R : IN  std_logic;
         S : IN  std_logic;
         EN : IN  std_logic;
         Q1 : INOUT  std_logic;
         NQ1 : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal R : std_logic := '0';
   signal S : std_logic := '0';
   signal EN : std_logic := '0';

	--BiDirs
   signal Q1 : std_logic;
   signal NQ1 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SR_Enable PORT MAP (
          R => R,
          S => S,
          EN => EN,
          Q1 => Q1,
          NQ1 => NQ1
        );

-- Stimulus process
Sin_S: process
begin
S<='0'; wait for 5 ns;
S<='1'; wait for 5 ns;
s<='0'; wait for 10 ns;
S<='1'; wait for 10 ns; 
S<='0'; wait for 5 ns;
S<='1'; wait; 
end process;

Sin_R: process
begin
R<='1'; wait for  5 ns; 
R<='0'; wait for  20 ns;
R<='1'; wait; 
end process;

--stimulos EN pulso
Sin_EN: process
begin
EN<='1'; wait for 2 ns; 
EN<='0'; wait for 7.5 ns; 
EN<='1'; wait for  2 ns;
En<='0'; wait for 7.5 ns;
EN<='1'; wait for  2 ns;
EN<='0'; wait for 12 ns;
EN<='1'; wait for  2 ns;
EN<='0'; wait;
end process;

--stimulos EN=0  EN=1

--en<='1';


END;
