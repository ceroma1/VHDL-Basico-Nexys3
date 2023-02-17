--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:14:17 11/10/2021
-- Design Name:   
-- Module Name:   /home/ise/Secuencial_Nexys3/MaquinasDeEstados/ReboteTemporizado/tesTemporizador.vhd
-- Project Name:  ReboteTemporizado
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Temporizador
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
 
ENTITY tesTemporizador IS
END tesTemporizador;
 
ARCHITECTURE behavior OF tesTemporizador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Temporizador
    PORT(
         ce : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         fin300ms : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ce : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal fin300ms : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Temporizador PORT MAP (
          ce => ce,
          clk => clk,
          reset => reset,
          fin300ms => fin300ms
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
signal_rest: process
begin		
reset<='1';
wait for 12 ns;
reset<='0';
wait;
end process;

signal_ce: process
begin		
ce<='1';
wait for 22 ns;
reset<='0';
wait;
end process;  

END;
