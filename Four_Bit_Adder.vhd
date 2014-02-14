----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: C3C Aaron Stolze
-- 
-- Create Date:    22:14:41 02/13/2014 
-- Design Name: 	 Four Bit Adder
-- Module Name:    Four_Bit_Adder - Behavioral 
-- Project Name: 	Lab 2
-- Target Devices: Nexys2
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Four_Bit_Adder is
    Port ( Ain : in  STD_LOGIC_VECTOR (3 downto 0);
           Bin : in  STD_LOGIC_VECTOR (3 downto 0);
			  Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
			  Cout : out STD_LOGIC);
end Four_Bit_Adder;

architecture Strucutural of Four_Bit_Adder is

component Full_Adder is
	port (Ain: in STD_LOGIC;
			Bin: in STD_LOGIC;
			Cin: in STD_LOGIC;
			S: out STD_LOGIC;
			Cout: out STD_LOGIC);
			
signal X,Y,Z : STD_LOGIC;

end component Full_Adder



begin

Bit0: Full_Adder
	port map (Ain(0), Bin(0), Cin, S(0), X);
Bit1: Full_Adder
	port map (Ain(1), Bin(1), Cin, S(1), Y);
Bit2: Full_Adder
	port map (Ain(2), Bin(2), Cin, S(2), Z);
Bit3: Full_Adder
	port map (Ain(3), Bin(3), Cin, S(3), Cout);
	
				 

end Structural;

