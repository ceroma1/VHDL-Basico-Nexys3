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
         int_10 : IN  std_logic;
         int_20 : IN  std_logic;
         int_50 : IN  std_logic;
			monedas : out STD_LOGIC_VECTOR(7 DOWNTO 0);
         vende : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal int_10 : std_logic := '0';
   signal int_20 : std_logic := '0';
	signal int_50 : std_logic;

 	--Outputs
   signal vende : std_logic;
   signal monedas : STD_LOGIC_VECTOR(7 DOWNTO 0);
   
	-- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Estados PORT MAP (
          clk => clk,
          reset => reset,
          int_10 => int_10,
          int_20 => int_20,
          int_50 => int_50,
          monedas => monedas,
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
wait for 5 ns;	
reset<='0';
wait;
end process;

s_Int_10: process
begin		
Int_10<='0';
wait for 40 ns;	
Int_10 <='1';
wait for 10 ns;
Int_10<='0';
wait for 50 ns;	
end process;

s_Int_20: process
begin		
Int_20<='0';
wait for 64 ns;	
Int_20 <='1';
wait for 10 ns;
Int_20<='0';
wait for 54 ns;	
end process;

s_Int_50: process
begin		
Int_50<='0';
wait for 379 ns;	
Int_50 <='1';
wait for 10 ns;
Int_50<='0';
wait for 130 ns;	
end process;

END;
