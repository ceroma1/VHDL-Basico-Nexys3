--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:08:30 05/30/2022
-- Design Name:   
-- Module Name:   /home/ise/Secuencial_Nexys3/MaquinasDeEstados/SemaforoPeatonV3/tesMaqSemaforo.vhd
-- Project Name:  SemaforoPeatonV3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Maq_Estado
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
 
ENTITY tesMaqSemaforo IS
END tesMaqSemaforo;
 
ARCHITECTURE behavior OF tesMaqSemaforo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Maq_Estado
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         Boton : IN  std_logic;
         In_fin2sg : IN  std_logic;
         In_fin10sg : IN  std_logic;
         f_luzCE : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal Boton : std_logic := '0';
   signal In_fin2sg : std_logic := '0';
   signal In_fin10sg : std_logic := '0';

 	--Outputs
   signal f_luzCE : std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Maq_Estado PORT MAP (
          clk => clk,
          reset => reset,
          Boton => Boton,
          In_fin2sg => In_fin2sg,
          In_fin10sg => In_fin10sg,
          f_luzCE => f_luzCE
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

boton<='1';
END;
