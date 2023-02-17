--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:45:11 06/25/2019
-- Design Name:   
-- Module Name:   /home/ise/Codigos_VHDL/MaquinasDeEstados/verificaDos/Tes0.vhd
-- Project Name:  verificaDos
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SpVerificaDos
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
 
    COMPONENT SpVerificaDos
    PORT(
         clk : IN  std_logic;
         clear : IN  std_logic;
         Int_btn : IN  std_logic;
         seg : out  STD_LOGIC_VECTOR (6 downto 0);
         an : out  STD_LOGIC_VECTOR (3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clear : std_logic := '0';
   signal Int_btn : std_logic := '0';

 	--Outputs
   signal seg : STD_LOGIC_VECTOR (6 downto 0);
   signal an :  STD_LOGIC_VECTOR (3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SpVerificaDos PORT MAP (
          clk => clk,
          clear => clear,
          Int_btn => Int_btn,
          seg =>seg,
			 an =>an
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

sig_Int_btn :process
begin
Int_btn<='0';
wait for 40 ns;
Int_btn<='1';
wait for 100 ns;
end process;

END;
