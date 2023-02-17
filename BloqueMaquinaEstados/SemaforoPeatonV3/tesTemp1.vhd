--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:45:32 11/17/2021
-- Design Name:   
-- Module Name:   /home/ise/Secuencial_Nexys3/MaquinasDeEstados/SemaforoPeatonV2/tesTemp1.vhd
-- Project Name:  SemaforoPeatonV3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Temp1
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
 
ENTITY tesTemp1 IS
END tesTemp1;
 
ARCHITECTURE behavior OF tesTemp1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Temp1
    PORT(
         ce : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         fin2sg : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ce : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal fin2sg : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Temp1 PORT MAP (
          ce => ce,
          clk => clk,
          reset => reset,
          fin2sg => fin2sg
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
sg_reset: process
begin		
reset<='1';     -- hold reset state for 100 ns.
wait for 6 ns;	
reset<='0';
wait;
end process;

sg_ce: process
begin		
ce<='0';     -- hold reset state for 100 ns.
wait for 29 ns;	
ce<='1';
wait;
end process;

END;
