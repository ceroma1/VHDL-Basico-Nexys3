LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JK_Enable
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         en : IN  std_logic;
         Q1 : INOUT  std_logic;
         NQ1 : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal en : std_logic := '0';
	

	--BiDirs
   signal Q1 : std_logic:='0';
   signal NQ1 : std_logic:='1';
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
-- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JK_Enable PORT MAP (
          J => J,
          K => K,
          en => en,
          Q1 => Q1,
          NQ1 => NQ1
        );

-- Clock process definitions
-- Stimulus process

Sin_k: process
begin
k<='1'; wait for 5 ns;
k<='0'; wait for 5 ns;
end process;

Sin_j: process
begin
j<='0'; wait for 10 ns;
j<='1'; wait for 10 ns;
end process;

--en<='1';
en<='0';
END;
