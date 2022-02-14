----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:33:51 04/05/2020 
-- Design Name: 
-- Module Name:    N_input_NOR - Behavioral 
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

entity N_input_NOR is
GENERIC (n : INTEGER := 32);
    Port ( A : in  STD_LOGIC_VECTOR(1 TO n);
           X : out  STD_LOGIC);
end N_input_NOR;

architecture Behavioral of N_input_NOR is
SIGNAL temp : STD_LOGIC_VECTOR(1 TO n);
BEGIN

temp <= (OTHERS => '0');
X <= '1' WHEN A = temp ELSE '0';
END Behavioral;