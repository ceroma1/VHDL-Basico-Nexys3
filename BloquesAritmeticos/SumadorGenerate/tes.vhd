--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:05:04 09/26/2012
-- Design Name:   
-- Module Name:   C:/digitalesB2012/SumadorGenerate/tes.vhd
-- Project Name:  SumadorGenerate
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SumadorN
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
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SumadorN
    PORT(
         cin : IN  std_logic;
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         suma : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal cin : std_logic := '0';
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal suma : std_logic_vector(3 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SumadorN PORT MAP (
          cin => cin,
          a => a,
          b => b,
          suma => suma,
          cout => cout
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

S_b0:PROCESS
BEGIN
b(0)<= '0';
WAIT FOR 16ns;
b(0)<= '1';
wait for 16ns;
end process;

S_b1:PROCESS
BEGIN
b(1)<= '0';
WAIT FOR 32ns;
b(1)<= '1';
wait for 32ns;
end process;

S_b2:PROCESS
BEGIN
b(2)<= '0';
WAIT FOR 64ns;
b(2)<= '1';
wait for 64ns;
end process;

S_b3:PROCESS
BEGIN
b(3)<= '0';
WAIT FOR 128ns;
b(3)<= '1';
wait for 128ns;
end process;

cin<='0';
END;
