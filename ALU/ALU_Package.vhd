--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package ALU_Package is

component Adder_1bit is
 Port ( A, B, Cin : in  STD_LOGIC;
        Sum, Cout : out  STD_LOGIC);
		  
end component;


component Mux_2x1 is
    Port ( I0 : in STD_LOGIC;
           I1 : in  STD_LOGIC;
           Sel : in  STD_LOGIC;
           Output : out  STD_LOGIC);
end component;

component Mux_3x1 is
    Port ( I0 : in STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           Sel : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           Output : out  STD_LOGIC);
end component;

component ALU_1bit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CarryIn : in  STD_LOGIC;
			  AluOper : in  STD_LOGIC_VECTOR (3 downto 0);
           Result : out  STD_LOGIC;
           CarryOut : out  STD_LOGIC);
end component;

component NOR_32bit is
    Port ( A : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
           B : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
           X : out  STD_LOGIC_VECTOR(31 DOWNTO 0));
end component;

component N_input_NOR is
GENERIC (n : INTEGER := 32);
    Port ( A : in  STD_LOGIC_VECTOR(1 TO n);
           X : out  STD_LOGIC);
end component;

end ALU_Package;
