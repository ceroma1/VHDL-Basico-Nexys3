--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:15:38 07/01/2019
-- Design Name:   
-- Module Name:   /home/ise/OSwin7/Dig_Dos/expende/Tes.vhd
-- Project Name:  expende
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Estados
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
 
ENTITY Tes IS
END Tes;
 
ARCHITECTURE behavior OF Tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Estados
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         int_100 : IN  std_logic;
         int_200 : IN  std_logic;
         int_500 : IN  std_logic;
         vende : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal int_100 : std_logic := '0';
   signal int_200 : std_logic := '0';
	signal int_500 : std_logic;

 	--Outputs
   signal vende : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Estados PORT MAP (
          clk => clk,
          reset => reset,
          int_100 => int_100,
          int_200 => int_200,
          int_500 => int_500,
          vende => vende
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
s_reset: process
begin		
reset<='1';
wait for 6 ns;	
reset<='0';
wait;
end process;

s_Int_100: process
begin		
Int_100<='0';
wait for 199 ns;	
Int_100 <='1';
wait for 10 ns;
Int_100<='0';
wait for 559 ns;
Int_100 <='1';
wait for 10 ns;
Int_100 <='0';
wait;
end process;

s_Int_200: process
begin		
Int_200<='0';
wait for 99 ns;	
Int_200 <='1';
wait for 10 ns;
Int_200<='0';
wait for 719 ns;	
Int_200 <='1';
wait for 10 ns;
Int_200 <='0';
wait;
end process;

s_Int_500: process
begin		
Int_500<='0';
wait for 249 ns; --249	209 204
Int_500 <='1';
wait for 10 ns;
Int_500 <='0';
wait for 239 ns;
Int_500 <='1';
wait for 10 ns;
Int_500 <='0';
wait;
end process;

END;
