----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:21:04 04/05/2020 
-- Design Name: 
-- Module Name:    NOR_32bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOR_32bit is
    Port ( A : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
           B : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
           X : out  STD_LOGIC_VECTOR(31 DOWNTO 0));
end NOR_32bit;

architecture Behavioral of NOR_32bit is

begin

 X <= A NOR B;
end Behavioral;

