LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cuenta
    PORT(
         clk : IN  std_logic;
         clear : IN  std_logic;
         salidacuenta : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clear : std_logic := '0';

 	--Outputs
   signal salidacuenta : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cuenta PORT MAP (
          clk => clk,
          clear => clear,
          salidacuenta => salidacuenta
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
S_clear:PROCESS
BEGIN
clear<= '1';
WAIT FOR 6ns;
clear<= '0';
wait;
end process;

  
END;
