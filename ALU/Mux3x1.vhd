----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:24 04/04/2020 
-- Design Name: 
-- Module Name:    Mux3x1 - Behavioral 
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

entity Mux_3x1 is
    Port ( I0 : in STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           Sel : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           Output : out  STD_LOGIC);
end Mux_3x1;

architecture Behavioral of Mux_3x1 is

begin

Output <=	I0 WHEN Sel="0000" ELSE
		   	I1 WHEN Sel="0001" ELSE
			   I2 WHEN Sel="0010" ELSE
				I2 WHEN Sel="0110" ELSE
			   'Z';

end Behavioral;

