--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:26:15 02/03/2023
-- Design Name:   
-- Module Name:   /home/ise/Secuencial_Nexys3/DisplayCalculadora/Tes_Arreglo.vhd
-- Project Name:  DisplayCalculadora
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: arreglo_reg
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
 
ENTITY Tes_Arreglo IS
END Tes_Arreglo;
 
ARCHITECTURE behavior OF Tes_Arreglo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arreglo_reg
    PORT(
         clear : IN  std_logic;
         clk : IN  std_logic;
         dato : IN  std_logic_vector(3 downto 0);
         salida : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clear : std_logic := '0';
   signal clk : std_logic := '0';
   signal dato : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arreglo_reg PORT MAP (
          clear => clear,
          clk => clk,
          dato => dato,
          salida => salida
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

signal_clear: process
begin		
clear<='1';     -- hold clear state for 100 ns.
wait for 6 ns;	
clear<='0';     -- hold clear state for 100 ns.
wait;	      
end process;

dato<="0011";
END;
