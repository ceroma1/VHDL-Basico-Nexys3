--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:13:08 06/15/2019
-- Design Name:   
-- Module Name:   /home/ise/OSwin7/Dig_Dos/MaqEstadoUnoA/Tes0.vhd
-- Project Name:  MaqEstadoUnoA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Estados
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
 
ENTITY Tes0 IS
END Tes0;
 
ARCHITECTURE behavior OF Tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Estados
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         Foutq : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Foutq : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Estados PORT MAP (
          clk => clk,
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
sg_reset:process
begin
reset<='1';
wait for 6 ns;
reset<='0';
wait;
end process;

END;
