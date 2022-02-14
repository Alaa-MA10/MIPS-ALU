----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:37:56 04/04/2020 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.ALU_Package.ALL;

entity ALU is
    Port ( data1 : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
           data2 : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
           aluop : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           cin : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC);
end ALU;

architecture Behavioral OF ALU IS

SIGNAL cout: STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL result : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL cin_temp : STD_LOGIC;
SIGNAL cout_temp : STD_LOGIC;

BEGIN

    cin_temp <= data2(0) OR cin;
	 
alu: FOR i in 0 to 31 GENERATE

	alu0: if i = 0 GENERATE
		alu: ALU_1bit port map(data1(i), data2(i), cin_temp, aluop, result(i), cout(i));	
	END GENERATE;

	alu : if i/= 0 GENERATE
		alu: ALU_1bit port map(data1(i), data2(i), cout(i-1), aluop, result(i), cout(i));
		END GENERATE;

END GENERATE;

   dataout <= result;
	cflag <= cout(31);
	--cout_temp <= cout(31);
	oflag <= cout(31) XOR cout(30);
	zeroflag: N_input_NOR port map (result, zflag);
	
END Behavioral;

--alu: ALU_1bit port map(data1(i), data2(i), data2(i), aluop, result(i), cout(i));
	--	alu31 : if i = 31 generate
--		alu: ALU_1bit port map(data1(i), data2(i), cout(i-1), aluop, result(i), cout(i));
--		--cflag <= cout_temp;
--	end generate;
----AND i /= 31
		--result_zero <= result NOR result;
	--zflag <= result_zero(0);
	

--alu0: ALU_1bit port map(data1(0), data2(0), data2(0), aluop, dataout(0), cout(0));
--	alu1: ALU_1bit port map(data1(1), data2(1), cout(0), aluop, dataout(1), cout(1));
--	alu2: ALU_1bit port map(data1(2), data2(2), cout(1), aluop, dataout(2), cout(2));
--	alu3: ALU_1bit port map(data1(3), data2(3), cout(2), aluop, dataout(3), cout(3));
--alu31: ALU_1bit port map(data1(31), data2(31), cout(30), aluop, dataout(31), cflag);