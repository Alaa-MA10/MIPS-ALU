----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:49:47 04/04/2020 
-- Design Name: 
-- Module Name:    Adder_1bit - Behavioral 
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

entity Adder_1bit is
 Port ( A, B, Cin : in  STD_LOGIC;
        Sum, Cout : out  STD_LOGIC);
		  
end Adder_1bit;

architecture Behavioral of Adder_1bit is

begin

Sum <= A XOR B XOR Cin;
Cout <= (A AND B) OR (A AND Cin) OR (B AND Cin);

end Behavioral;

