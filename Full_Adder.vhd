----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: C3C Aaron Stolze
-- 
-- Create Date:    08:48:05 02/10/2014 
-- Design Name: 	 Full Adder
-- Module Name:    Full_Adder - Behavioral 
-- Project Name:   Full Adder/Subtractor
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder is
    Port ( Ain : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

signal AB, BA, ABC : STD_LOGIC;

begin

AB <= Ain xor Bin;
BA <= Ain and Bin;
ABC <= AB and Cin;

S <= AB xor Cin;
Cout <= BA or ABC;


end Behavioral;

