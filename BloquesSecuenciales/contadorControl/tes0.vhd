--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:29:05 04/29/2015
-- Design Name:   
-- Module Name:   E:/secuenciales/contadorControl/tes0.vhd
-- Project Name:  contadorControl
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ContadorControl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tes0 IS
END tes0;
 
ARCHITECTURE behavior OF tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ContadorControl
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         sel : IN  std_logic;
         led : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal sel : std_logic := '0';

 	--Outputs
   signal led : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ContadorControl PORT MAP (
          clk => clk,
          reset => reset,
          sel => sel,
          led => led
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
S_reset:PROCESS
BEGIN
reset<= '1';
WAIT FOR 6ns;
reset<= '0';
wait;
end process;
   
S_sel:PROCESS
BEGIN
sel<= '1';
WAIT FOR 60ns;
sel<= '0';
wait for 60ns;
end process;
	
END;
