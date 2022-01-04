LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT srLatch
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
			Q1 : inout  STD_LOGIC;
			NQ1 : inout  STD_LOGIC);
     
    END COMPONENT;
 
	--Inputs
   signal S : std_logic := '0';
   signal R : std_logic := '0';

	--BiDirs
   signal Q1 : std_logic;
   signal NQ1 : std_logic;
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: srLatch PORT MAP (
          S => S,
          R => R,
          Q1 => Q1,
          NQ1 => NQ1
		);

--Stimulus process caso General Tabla latch NAND
Sin_1: process
begin
S<='1'; wait for 10 ns;
S<='0'; wait for 5 ns;
S<='1'; wait for 5 ns;
S<='0'; wait for 5 ns;
end process;

Sin_2: process
begin
R<='0'; wait for 5 ns; 
R<='1'; wait for 15 ns; 
R<='0'; wait for 5 ns;
end process;

END;