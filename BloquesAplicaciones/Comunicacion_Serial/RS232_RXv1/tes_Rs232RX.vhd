LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes_Rs232RX IS
END tes_Rs232RX;
 
ARCHITECTURE behavior OF tes_Rs232RX IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RS232_RX
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         LineRD_in : IN  std_logic;
         Store_out : OUT  std_logic;
         Data_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal LineRD_in : std_logic := '0';

 	--Outputs
   signal Store_out : std_logic;
   signal Data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RS232_RX PORT MAP (
          Clk => Clk,
          Reset => Reset,
          LineRD_in => LineRD_in,
          Store_out => Store_out,
          Data_out => Data_out
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

-- Stimulus process
signal_reset : PROCESS
BEGIN
reset <= '1';
wait for 75 ns;
reset <= '0';
wait for 10 ns;
reset<='1';
wait;
end process;

p_reset : PROCESS
BEGIN
	LineRD_in <= '1',
         '0' after 500 ns,    -- StartBit
         '1' after 9150 ns,   -- LSb
         '0' after 17800 ns,
         '0' after 26450 ns,
         '1' after 35100 ns,
         '1' after 43750 ns,
         '1' after 52400 ns,
         '1' after 61050 ns,
         '0' after 69700 ns,  -- MSb
         '1' after 78350 ns;  -- Stopbit
         --'1' after 87000 ns;
wait;
end process;
END;
