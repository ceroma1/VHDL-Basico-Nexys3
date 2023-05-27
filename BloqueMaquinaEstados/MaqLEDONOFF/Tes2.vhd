--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:13:39 05/23/2022
-- Design Name:   
-- Module Name:   /home/ise/Secuencial_Nexys3/MaquinasDeEstados/MaqLEDONOFF/Tes2.vhd
-- Project Name:  MaqLEDONOFF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SupLEDONOFF
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
 
ENTITY Tes2 IS
END Tes2;
 
ARCHITECTURE behavior OF Tes2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SupLEDONOFF
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         boton : IN  std_logic;
         SalidaLED : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal boton : std_logic := '0';

 	--Outputs
   signal SalidaLED : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SupLEDONOFF PORT MAP (
          clk => clk,
          reset => reset,
          boton => boton,
          SalidaLED => SalidaLED
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
sig_reset: process
begin		
reset<='1';
wait for 6 ns;	
reset<='0';
wait;
end process;

sig_Boton: process
begin		
Boton<='0';
wait for 50 ms;	
Boton<='1';
wait for 100 ms;
end process;

END;