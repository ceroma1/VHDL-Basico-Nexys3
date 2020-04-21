--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SuperiorContadorDisplayVer2.vhf
-- /___/   /\     Timestamp : 06/28/2019 15:59:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/ise/OSwin7/BoquesSecuenciales/ContadorDisplayVer2/SuperiorContadorDisplayVer2.vhf -w /home/ise/OSwin7/BoquesSecuenciales/ContadorDisplayVer2/SuperiorContadorDisplayVer2.sch
--Design Name: SuperiorContadorDisplayVer2
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SuperiorContadorDisplayVer2 is
   port ( CLK   : in    std_logic; 
          Reset : in    std_logic; 
          an    : out   std_logic_vector (3 downto 0); 
          seg   : out   std_logic_vector (6 downto 0));
end SuperiorContadorDisplayVer2;

architecture BEHAVIORAL of SuperiorContadorDisplayVer2 is
   signal XLXN_3 : std_logic_vector (13 downto 0);
   signal XLXN_9 : std_logic;
   component ModuloCuenta
      port ( clk     : in    std_logic; 
             reset   : in    std_logic; 
             Fsalida : out   std_logic_vector (13 downto 0));
   end component;
   
   component SuperiorBinarioDecimal
      port ( clk   : in    std_logic; 
             reset : in    std_logic; 
             Ent   : in    std_logic_vector (13 downto 0); 
             seg   : out   std_logic_vector (6 downto 0); 
             an    : out   std_logic_vector (3 downto 0));
   end component;
   
   component ModuloDivide
      port ( clk   : in    std_logic; 
             reset : in    std_logic; 
             Fout  : out   std_logic);
   end component;
   
begin
   XLXI_1 : ModuloCuenta
      port map (clk=>XLXN_9,
                reset=>Reset,
                Fsalida(13 downto 0)=>XLXN_3(13 downto 0));
   
   XLXI_2 : SuperiorBinarioDecimal
      port map (clk=>CLK,
                Ent(13 downto 0)=>XLXN_3(13 downto 0),
                reset=>Reset,
                an(3 downto 0)=>an(3 downto 0),
                seg(6 downto 0)=>seg(6 downto 0));
   
   XLXI_3 : ModuloDivide
      port map (clk=>CLK,
                reset=>Reset,
                Fout=>XLXN_9);
   
end BEHAVIORAL;


