LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SumaMedia
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         cin : IN  std_logic;
         suma : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal suma : std_logic;
   signal cout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SumaMedia PORT MAP (
          a => a,
          b => b,
          cin => cin,
          suma => suma,
          cout => cout
        );

S_cin:PROCESS
	BEGIN
	cin<= '0';
WAIT FOR 1ns;
	cin<= '1';
wait for 1ns;
end process;

S_b:PROCESS
	BEGIN
	b<= '0';
WAIT FOR 2ns;
	b<= '1';
wait for 2ns;
end process;

S_A:PROCESS
	BEGIN
	a<= '0';
WAIT FOR 4ns;
	a<= '1';
wait for 4ns;
end process;

END;
