--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:08:25 06/20/2019
-- Design Name:   
-- Module Name:   /home/ise/OSwin7/Dig_Dos/MaqEstadoCuatro/tes0.vhd
-- Project Name:  MaqEstadoCuatro
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Maq_estado
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
 
    COMPONENT Maq_estado
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         Foutq : OUT  std_logic_vector(2 downto 0);
         Int_ext : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Int_ext : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Foutq : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Maq_estado PORT MAP (
          Clk => Clk,
          Reset => Reset,
          Foutq => Foutq,
          Int_ext => Int_ext
        );

-- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

-- Stimulus process
sig_reset: process
begin		
reset<='1';
wait for 6 ns;	
reset<='0';
wait;
end process;

sig_int_ext:process
begin
int_ext<="00";--00
wait for 30 ns;
int_ext<="11";--11
wait for 30 ns;
int_ext<="00";--0
wait for 60 ns;
int_ext(0)<='0';--0
wait for 30 ns;
int_ext(0)<='1';--0
wait;

end process;
END;
