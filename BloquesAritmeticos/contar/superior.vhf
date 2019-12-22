--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.4
--  \   \         Application : sch2hdl
--  /   /         Filename : superior.vhf
-- /___/   /\     Timestamp : 04/14/2016 12:22:14
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl "E:/circuitos aritmeticosB2015/6contar/superior.vhf" -w "E:/circuitos aritmeticosB2015/6contar/superior.sch"
--Design Name: superior
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

entity superior is
   port ( Fentrada : in    std_logic_vector (7 downto 0); 
          an       : out   std_logic_vector (3 downto 0); 
          seg      : out   std_logic_vector (6 downto 0));
end superior;

architecture BEHAVIORAL of superior is
   signal XLXN_4   : std_logic_vector (3 downto 0);
   component cuenta
      port ( a : in    std_logic_vector (7 downto 0); 
             f : out   std_logic_vector (3 downto 0));
   end component;
   
   component ModuloDisplay
      port ( A        : in    std_logic_vector (3 downto 0); 
             segmento : out   std_logic_vector (6 downto 0); 
             Anodos   : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : cuenta
      port map (a(7 downto 0)=>Fentrada(7 downto 0),
                f(3 downto 0)=>XLXN_4(3 downto 0));
   
   XLXI_2 : ModuloDisplay
      port map (A(3 downto 0)=>XLXN_4(3 downto 0),
                Anodos(3 downto 0)=>an(3 downto 0),
                segmento(6 downto 0)=>seg(6 downto 0));
   
end BEHAVIORAL;


