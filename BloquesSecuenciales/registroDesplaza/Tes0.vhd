LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Tes0 IS
END Tes0;
 
ARCHITECTURE behavior OF Tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegDesp
    PORT(
         clk : IN  std_logic;
         clear : IN  std_logic;
			R_L : IN  std_logic;
         DatoIn : IN  std_logic;
         DatoOut : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clear : std_logic := '0';
   signal R_L : std_logic := '0';
	signal DatoIn : std_logic := '0';
	
 	--Outputs
   signal DatoOut : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegDesp PORT MAP (
          clk => clk,
          clear => clear,
			 R_L=>R_L,
          DatoIn => DatoIn,
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
 

-- Stimulus process
sig_clear:process
begin
clear<='0';
wait for 6 ns;
clear<='1';
wait for 30 ns;
clear<='0';
wait;
end process;
 
sig_DatoIn:process
begin
DatoIn<='0';
wait for 9 ns;
DatoIn<='1';
wait for 7 ns;
end process;

sig_R_L:process
begin
R_L<='0';
wait for 100 ns;
R_L<='1';
wait for 100 ns;
end process;

END;
