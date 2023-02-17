--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:51:45 05/26/2022
-- Design Name:   
-- Module Name:   /home/ise/Secuencial_Nexys3/MaquinasDeEstados/SemaforoPeatonV2/tesFinal.vhd
-- Project Name:  SemaforoPeatonV3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SupSemaforo
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
 
ENTITY tesFinal IS
END tesFinal;
 
ARCHITECTURE behavior OF tesFinal IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SupSemaforo
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         Boton : IN  std_logic;
         rojo : OUT  std_logic;
         amarillo : OUT  std_logic;
         verde : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal Boton : std_logic := '1';

 	--Outputs
   signal rojo : std_logic;
   signal amarillo : std_logic;
   signal verde : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SupSemaforo PORT MAP (
          clk => clk,
          reset => reset,
          Boton => Boton,
          rojo => rojo,
          amarillo => amarillo,
          verde => verde
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

--seg_boton: process
--begin		
--boton<='0';     
--wait for 2 ms;	
--boton<='1';
--wait for 100 ns;
--boton<='0';     
--wait;
--end process;

END;
