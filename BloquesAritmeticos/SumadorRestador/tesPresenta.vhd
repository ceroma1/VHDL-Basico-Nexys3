--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:42:36 04/13/2016
-- Design Name:   
-- Module Name:   E:/circuitos aritmeticosB2015/SumadorRestador/tesPresenta.vhd
-- Project Name:  SumadorRestador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: presenta
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
 
ENTITY tesPresenta IS
END tesPresenta;
 
ARCHITECTURE behavior OF tesPresenta IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT presenta
    PORT(
         DatoEnt : IN  std_logic_vector(4 downto 0);
         sel : IN  std_logic;
         DatoSal : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DatoEnt : std_logic_vector(4 downto 0) := (others => '0');
   signal sel : std_logic := '0';

 	--Outputs
   signal DatoSal : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: presenta PORT MAP (
          DatoEnt => DatoEnt,
          sel => sel,
          DatoSal => DatoSal
        );

S_b0:PROCESS
BEGIN
DatoEnt(0)<= '0';
WAIT FOR 1ns;
DatoEnt(0)<= '1';
wait for 1ns;
end process;  

S_b1:PROCESS
BEGIN
DatoEnt(1)<= '0';
WAIT FOR 2ns;
DatoEnt(1)<= '1';
wait for 2ns;
end process;

S_b2:PROCESS
BEGIN
DatoEnt(2)<= '0';
WAIT FOR 4ns;
DatoEnt(2)<= '1';
wait for 4ns;
end process;

S_b3:PROCESS
BEGIN
DatoEnt(3)<= '0';
WAIT FOR 8ns;
DatoEnt(3)<= '1';
wait for 8ns;
end process;

S_a0:PROCESS
BEGIN
DatoEnt(4)<= '0';
WAIT FOR 16ns;
DatoEnt(4)<= '1';
wait for 16ns;
end process;

S_sel:PROCESS
BEGIN
sel<= '0';
WAIT FOR 32ns;
sel<= '1';
wait for 32ns;
end process;


END;
