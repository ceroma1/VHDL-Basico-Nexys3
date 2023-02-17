--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:24:11 05/29/2022
-- Design Name:   
-- Module Name:   /home/ise/Secuencial_Nexys3/MaquinasDeEstados/SemaforoPeatonV3/tes-parpadeo.vhd
-- Project Name:  SemaforoPeatonV3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Parpadeo
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
 
ENTITY tes-parpadeo IS
END tes-parpadeo;
 
ARCHITECTURE behavior OF tes-parpadeo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Parpadeo
    PORT(
         clk : IN  std_logic;
         ce : IN  std_logic;
         reset : IN  std_logic;
         Fout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal ce : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Fout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Parpadeo PORT MAP (
          clk => clk,
          ce => ce,
          reset => reset,
          Fout => Fout
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
seg_reset: process
begin		
reset<='1';      -- hold reset state for 100 ns.
wait for 6 ns;	
reset<='0';
wait;
end process;

END;
