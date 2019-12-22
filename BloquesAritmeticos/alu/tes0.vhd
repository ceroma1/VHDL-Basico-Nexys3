--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:42:39 03/18/2013
-- Design Name:   
-- Module Name:   C:/Temp/alu/tes0.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: operaciones
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
 
ENTITY tes0 IS
END tes0;
 
ARCHITECTURE behavior OF tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT operaciones
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         sel : IN  std_logic_vector(1 downto 0);
         s : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal s : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: operaciones PORT MAP (
          a => a,
          b => b,
          sel => sel,
          s => s
        );

S_A0:PROCESS
BEGIN
a(0)<= '0';
WAIT FOR 1ns;
a(0)<= '1';
wait for 1ns;
end process;

S_A1:PROCESS
BEGIN
a(1)<= '0';
WAIT FOR 2ns;
a(1)<= '1';
wait for 2ns;
end process;

S_A2:PROCESS
BEGIN
a(2)<= '0';
WAIT FOR 4ns;
a(2)<= '1';
wait for 4ns;
end process;

S_A3:PROCESS
BEGIN
a(3)<= '0';
WAIT FOR 8ns;
a(3)<= '1';
wait for 8ns;
end process;

S_B0:PROCESS
BEGIN
b(0)<= '0';
WAIT FOR 16ns;
b(0)<= '1';
wait for 16ns;
end process;

S_B1:PROCESS
BEGIN
b(1)<= '0';
WAIT FOR 32ns;
b(1)<= '1';
wait for 32ns;
end process;

S_B2:PROCESS
BEGIN
b(2)<= '0';
WAIT FOR 64ns;
b(2)<= '1';
wait for 64ns;
end process;

S_B3:PROCESS
BEGIN
b(3)<= '0';
WAIT FOR 128ns;
b(3)<= '1';
wait for 128ns;
end process;

S_sel0:PROCESS
BEGIN
sel(0)<= '0';
WAIT FOR 256ns;
sel(0)<= '1';
wait for 256ns;
end process;

S_sel1:PROCESS
BEGIN
sel(1)<= '0';
WAIT FOR 512ns;
sel(1)<= '1';
wait for 512ns;
end process;  
END;
