LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Anillo
    PORT(
         clk : IN  std_logic;
         clear : IN  std_logic;
         ce : IN  std_logic;
         DatoOut : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clear : std_logic := '0';
   signal ce : std_logic := '0';

 	--Outputs
   signal DatoOut : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Anillo PORT MAP (
          clk => clk,
          clear => clear,
          ce => ce,
          DatoOut => DatoOut
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
sig_clear :process
begin
clear<='1';
wait for 6 ns;
clear<='0';
wait;
end process;

sig_ce :process
begin
ce<='0';
wait for 40 ns;
ce<='1';
wait for 100 ns;
end process;

END;
