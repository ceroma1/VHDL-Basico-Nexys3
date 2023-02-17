--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:52:36 11/17/2021
-- Design Name:   
-- Module Name:   /home/ise/Secuencial_Nexys3/MaquinasDeEstados/ReboteTemporizado/TesSupRebote.vhd
-- Project Name:  ReboteTemporizado
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SupReboteTemporizado
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
 
ENTITY TesSupRebote IS
END TesSupRebote;
 
ARCHITECTURE behavior OF TesSupRebote IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SupReboteTemporizado
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         Boton : IN  std_logic;
         Boton_Out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal Boton : std_logic := '0';

 	--Outputs
   signal Boton_Out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SupReboteTemporizado PORT MAP (
          clk => clk,
          reset => reset,
          Boton => Boton,
          Boton_Out => Boton_Out
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
sig_reset:process
begin
reset<='1';
wait for 12 ns;
reset<='0';
wait;
end process;

sig_Boton:process --Caso Dos
begin
Boton<='0';
wait for 53 ns;
Boton<='1';
wait for 10 ns;
Boton<='0';
wait for 15 ns;
Boton<='1';
wait for 20 ns;
Boton<='0';
wait for 10 ns;
Boton<='1';
wait for 10 ns;
Boton<='0';
wait for 20 ns;
Boton<='1';
wait for 100 ns;
end process;

END;
