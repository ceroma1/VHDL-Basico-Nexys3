--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:33:57 11/17/2021
-- Design Name:   
-- Module Name:   /home/ise/Secuencial_Nexys3/MaquinasDeEstados/SemaforoPeatonV1/tesTopSemaforo.vhd
-- Project Name:  SemaforoPeaton
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TopSemaforo
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
 
ENTITY tesTopSemaforo IS
END tesTopSemaforo;
 
ARCHITECTURE behavior OF tesTopSemaforo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TopSemaforo
    PORT(
         CLK : IN  std_logic;
         Reset : IN  std_logic;
         start : IN  std_logic;
         Rojo : OUT  std_logic;
         Amarillo : OUT  std_logic;
         Verde : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal Reset : std_logic := '0';
   signal start : std_logic := '0';

 	--Outputs
   signal Rojo : std_logic;
   signal Amarillo : std_logic;
   signal Verde : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TopSemaforo PORT MAP (
          CLK => CLK,
          Reset => Reset,
          start => start,
          Rojo => Rojo,
          Amarillo => Amarillo,
          Verde => Verde
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
seg_reset: process
begin		
reset<='1';      -- hold reset state for 100 ns.
wait for 6 ns;	
reset<='0';
wait;
end process;

seg_start: process
begin		
start<='0';     
wait for 2 ms;	
start<='1';
wait for 100 ns;
start<='0';     
wait;
end process;

END;
