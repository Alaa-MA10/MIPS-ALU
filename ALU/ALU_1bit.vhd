----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:57:04 04/04/2020 
-- Design Name: 
-- Module Name:    ALU_1bit - Behavioral 
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
use work.ALU_1bit_Package.ALL;

entity ALU_1bit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CarryIn : in  STD_LOGIC;
			  AluOper : in  STD_LOGIC_VECTOR (3 downto 0);
           Result : out  STD_LOGIC;
           CarryOut : out  STD_LOGIC);
end ALU_1bit;

architecture Behavioral of ALU_1bit is
SIGNAL AndResult : STD_LOGIC;
SIGNAL OrResult : STD_LOGIC;
SIGNAL AdderResult : STD_LOGIC;
SIGNAL Temp_B : STD_LOGIC;
SIGNAL Not_B : STD_LOGIC;
begin

   Not_B <= NOT(B);
   B_mux : mux_2x1 port map (B, Not_B, AluOper(2), Temp_B);
	AndResult <= A AND Temp_B;
	OrResult <= A OR Temp_B;
	adder1 : adder_1bit port map(A, Temp_B, CarryIn, AdderResult, CarryOut);
	mux1 : mux_3x1 port map(AndResult, OrResult, AdderResult, AluOper, Result);
	
end Behavioral;