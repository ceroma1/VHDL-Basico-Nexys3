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

-- Stimulus process caso General Tabla latch NOR
Sin_1: process
begin
s<='1'; wait for 5 ns;
s<='0'; wait for 15 ns;
s<='1'; wait for 5 ns;
end process;

Sin_2: process
begin
r<='0'; wait for 10 ns; 
r<='1'; wait for 5 ns; 
r<='0'; wait for 5 ns;
r<='1'; wait for 5 ns; 
end process;

END;



