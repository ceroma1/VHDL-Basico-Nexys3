--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:40:00 11/16/2022
-- Design Name:   
-- Module Name:   /home/ise/Secuencial_Nexys3/MaquinasDeEstados/Desplazamiento/Tes1.vhd
-- Project Name:  Desplazamiento
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SupMaquina
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
 
ENTITY Tes1 IS
END Tes1;
 
ARCHITECTURE behavior OF Tes1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SupMaquina
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         Btn : IN  std_logic;
         Dato_In : IN  std_logic_vector(7 downto 0);
         transmitiendo : OUT  std_logic;
         Fsalida : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal Btn : std_logic := '0';
   signal Dato_In : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal transmitiendo : std_logic;
   signal Fsalida : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SupMaquina PORT MAP (
          clk => clk,
          reset => reset,
          Btn => Btn,
          Dato_In => Dato_In,
          transmitiendo => transmitiendo,
          Fsalida => Fsalida
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 sg_reset: process
	begin		
      reset<='1';
      wait for 6 ns;	
		reset<='0';
      wait;
end process;

sg_Btn: process
	begin		
      btn<='0';
      wait for 19 ns;	
		btn<='1';
      wait for 10 ns;
		btn<='0';
      wait for 90 ms;
		btn<='1';
      wait for 10 ns;
		btn<='0';
		wait;
end process;

Dato_In<="01110010";

END;
