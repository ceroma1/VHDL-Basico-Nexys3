LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ff_d
    PORT(
         D : IN  std_logic;
         clk : IN  std_logic;
         Q1 : OUT  std_logic;
         NQ1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Q1 : std_logic;
   signal NQ1 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ff_d PORT MAP (
          D => D,
          clk => clk,
          Q1 => Q1,
          NQ1 => NQ1
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

-- Stimulus process
Sin_d: process
begin
d<='0'; wait for 14 ns;
d<='1'; wait for 14 ns;
end process;

END;
