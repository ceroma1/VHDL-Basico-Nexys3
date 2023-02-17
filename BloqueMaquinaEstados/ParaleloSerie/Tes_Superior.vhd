--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:45:57 11/18/2021
-- Design Name:   
-- Module Name:   /home/ise/Secuencial_Nexys3/MaquinasDeEstados/ParaleloSerie/Tes_Superior.vhd
-- Project Name:  ParaleloSerie
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SupParaleloSerie
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
 
ENTITY Tes_Superior IS
END Tes_Superior;
 
ARCHITECTURE behavior OF Tes_Superior IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SupParaleloSerie
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         bt_inicio : IN  std_logic;
         dato_in : IN  std_logic_vector(7 downto 0);
         out_bit : OUT  std_logic;
         ocupado : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal bt_inicio : std_logic := '0';
   signal dato_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal out_bit : std_logic;
   signal ocupado : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SupParaleloSerie PORT MAP (
          clk => clk,
          reset => reset,
          bt_inicio => bt_inicio,
          dato_in => dato_in,
          out_bit => out_bit,
          ocupado => ocupado
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus processsg_reset: process
sg_reset :process
begin		
reset<='1';     -- hold reset state for 100 ns.
wait for 6 ns;	
reset<='0';
wait;
end process;

dato_in<="10101010";

sg_bt_inicio :process
begin		
bt_inicio<='0';     -- hold reset state for 100 ns.
wait for 1 ms;	
bt_inicio<='1';
wait for 10 ns;
bt_inicio<='0';
wait;
end process;


END;
