--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:25:40 06/24/2019
-- Design Name:   
-- Module Name:   /home/ise/Codigos_VHDL/MaquinasDeEstados/verificaUno/Tes0.vhd
-- Project Name:  verificaUno
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cuenta
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
 
ENTITY Tes0 IS
END Tes0;
 
ARCHITECTURE behavior OF Tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cuenta2
    PORT(
         clk : IN  std_logic;
         clear : IN  std_logic;
         ce : IN  std_logic;
         salidacuenta : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clear : std_logic := '0';
   signal ce : std_logic := '0';

 	--Outputs
   signal salidacuenta : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cuenta2 PORT MAP (
          clk => clk,
          clear => clear,
          ce => ce,
          salidacuenta => salidacuenta
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
sig_clear :process
begin
clear<='1';
wait for 6 ns;
clear<='0';
wait;
end process;

sig_ce :process
begin
ce<='0';
wait for 40 ns;
ce<='1';
wait for 100 ns;
end process;

END;
