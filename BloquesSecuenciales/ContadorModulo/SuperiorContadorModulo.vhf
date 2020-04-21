--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.4
--  \   \         Application : sch2hdl
--  /   /         Filename : SuperiorContadorModulo.vhf
-- /___/   /\     Timestamp : 04/23/2015 19:41:24
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/secuenciales/ContadorModulo/SuperiorContadorModulo.vhf -w E:/secuenciales/ContadorModulo/SuperiorContadorModulo.sch
--Design Name: SuperiorContadorModulo
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

entity SuperiorContadorModulo is
   port ( clk   : in    std_logic; 
          reset : in    std_logic; 
          an    : out   std_logic_vector (3 downto 0); 
          seg   : out   std_logic_vector (6 downto 0));
end SuperiorContadorModulo;

architecture BEHAVIORAL of SuperiorContadorModulo is
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic_vector (3 downto 0);
   component divide
      port ( clk        : in    std_logic; 
             reset      : in    std_logic; 
             Foutdivide : out   std_logic);
   end component;
   
   component ContadorModulo
      port ( clk   : in    std_logic; 
             reset : in    std_logic; 
             led   : out   std_logic_vector (3 downto 0));
   end component;
   
   component ModuloDisplay
      port ( A        : in    std_logic_vector (3 downto 0); 
             segmento : out   std_logic_vector (6 downto 0); 
             Anodos   : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : divide
      port map (clk=>clk,
                reset=>reset,
                Foutdivide=>XLXN_1);
   
   XLXI_2 : ContadorModulo
      port map (clk=>XLXN_1,
                reset=>reset,
                led(3 downto 0)=>XLXN_2(3 downto 0));
   
   XLXI_3 : ModuloDisplay
      port map (A(3 downto 0)=>XLXN_2(3 downto 0),
                Anodos(3 downto 0)=>an(3 downto 0),
                segmento(6 downto 0)=>seg(6 downto 0));
   
end BEHAVIORAL;


