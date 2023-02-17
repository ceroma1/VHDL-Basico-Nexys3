LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Tes0 IS
END Tes0;
 
ARCHITECTURE behavior OF Tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Estados
    PORT(
         clk : IN  std_logic;
         int_ext : IN  std_logic;
         reset : IN  std_logic;
         Foutq : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal int_ext : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Foutq : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Estados PORT MAP (
          clk => clk,
          int_ext => int_ext,
          reset => reset,
          Foutq => Foutq
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
sig_reset:process
begin
reset<='1';
wait for 6 ns;
reset<='0';
wait;
end process;

sig_int_ext:process
begin
int_ext<='0';
wait for 53 ns;
int_ext<='1';
wait for 200 ns;
int_ext<='0';
wait for 120 ns;
end process;
END;
