--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:38:20 05/25/2015
-- Design Name:   
-- Module Name:   E:/secuenciales/registros/PublickDesplazaVer2/tesdiv.vhd
-- Project Name:  PublickDesplaza
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: divfre
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
 
ENTITY tesdiv IS
END tesdiv;
 
ARCHITECTURE behavior OF tesdiv IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divfre
    PORT(
         clk : IN  std_logic;
         clear : IN  std_logic;
         clk3 : OUT  std_logic;
         clk190 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clear : std_logic := '0';

 	--Outputs
   signal clk3 : std_logic;
   signal clk190 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divfre PORT MAP (
          clk => clk,
          clear => clear,
          clk3 => clk3,
          clk190 => clk190
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
clear<= '1';
WAIT FOR 6ns;
clear<= '0';
wait;
end process;
   
  
  
END;
