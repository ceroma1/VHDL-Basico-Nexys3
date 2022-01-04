LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Latch_D
    PORT(
         D : IN  std_logic;
         EN : IN  std_logic;
         Q1 : INOUT  std_logic;
         NQ1 : INOUT  std_logic
        );
    END COMPONENT;

   --Inputs
   signal D : std_logic := '0';
   signal EN : std_logic := '0';

	--BiDirs
   signal Q1 : std_logic;
   signal NQ1 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Latch_D PORT MAP (
          D => D,
          EN => EN,
          Q1 => Q1,
          NQ1 => NQ1
        );

-- Clock process definitions
 
-- Stimulus process

Sin_D: process
begin
D<='0'; wait for 5 ns; 
D<='1'; wait for  5 ns;
end process;

--stimulus En Pulso
sin_EN: process
begin
en<='1'; wait for 2ns;
en<='0'; wait for 7ns;
en<='1'; wait for 2ns;
en<='0'; wait for 3ns;
en<='1'; wait for 2ns;
end process;

--stimulus En=0  En=1
--en<='1';
 
END;
