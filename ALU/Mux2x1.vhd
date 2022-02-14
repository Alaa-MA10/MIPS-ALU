----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:46:17 04/04/2020 
-- Design Name: 
-- Module Name:    Mux2x1 - Behavioral 
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

entity Mux_2x1 is
    Port ( I0 : in STD_LOGIC;
           I1 : in  STD_LOGIC;
           Sel : in  STD_LOGIC;
           Output : out  STD_LOGIC);
end Mux_2x1;

architecture Behavioral of Mux_2x1 is

begin

Output <=	I0 WHEN Sel='0' ELSE
		   	I1 WHEN Sel='1' ELSE
			   'Z';

end Behavioral;

