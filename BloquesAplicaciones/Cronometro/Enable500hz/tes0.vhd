--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:18:49 10/10/2019
-- Design Name:   
-- Module Name:   /home/ise/OSwin7/Cronometro/Enable500hz/tes0.vhd
-- Project Name:  Enable500hz
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Enable500hz
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
 
    COMPONENT Enable500hz
    PORT(
         clk : IN  std_logic;
         Fout500 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal Fout500 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 200 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Enable500hz PORT MAP (
          clk => clk,
          Fout500 => Fout500
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
  
END;
