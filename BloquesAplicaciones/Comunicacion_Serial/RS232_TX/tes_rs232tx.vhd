LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes_rs232tx IS
END tes_rs232tx;
 
ARCHITECTURE behavior OF tes_rs232tx IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RS232_TX
    PORT(
         clk : IN  std_logic;
         Reset : IN  std_logic;
         Start : IN  std_logic;
         Data : IN  std_logic_vector(7 downto 0);
         EOT : OUT  std_logic;
         TX : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Start : std_logic := '0';
   signal Data : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal EOT : std_logic;
   signal TX : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RS232_TX PORT MAP (
          clk => clk,
          Reset => Reset,
          Start => Start,
          Data => Data,
          EOT => EOT,
          TX => TX
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

-- Reset & Start generator
signal_dato:process
begin
Data<="10101010";
wait for 60 us;
Data<="10100101";
wait;
end process;

signal_reset : PROCESS
BEGIN
reset <= '1';
wait for 75 ns;
reset <= '0';
wait for 10 ns;
reset<='1';
wait;
end process;
 
signal_start:process
begin
Start<='0';
wait for 100 ns;
Start<='1';
wait for 10 ns;
Start<='0';
wait for 100 ns;
Start<='1';
wait for 10 ns;
Start<='0';
wait;

end process;
 
END;
