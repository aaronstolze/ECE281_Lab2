--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: C3C Aaron Stolze
--
-- Create Date:   21:07:14 02/13/2014
-- Design Name:   
-- Module Name:   C:/Labs/Lab2ACS/Four_Bit_Adder_Testbench.vhd
-- Project Name:  Lab2ACS
-- Target Device:  Nexys2
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Four_Bit_Adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Four_Bit_Adder_Testbench IS
END Four_Bit_Adder_Testbench;
 
ARCHITECTURE behavior OF Four_Bit_Adder_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Four_Bit_Adder
    PORT(
         Ain : IN  std_logic;
         Bin : IN  std_logic;
         Cin : IN  std_logic;
         S : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Ain : std_logic_vector(3 downto 0) := (others =>  '0');
   signal Bin : std_logic_vector(3 downto 0) := (others =>  '0');
   signal Cin : std_logic;

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Cout : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Four_Bit_Adder PORT MAP (
          Ain => Ain,
          Bin => Bin,
          Cin => Cin,
          S => S,
          Cout => Cout
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		

		Ain <= "0000";
		Bin <= "0000";
		Cin <= "0";
		for I in 0 to 3 loop
			for J in 0 to 3 loop
				wait for 10 ns;
				assert (S = Ain + Bin) report "Expected sum of " &
				integer' image(to_integer(unsigned((Ain+Bin))))& "for Ain = " &
				integer' image(to_integer(unsigned((Ain)))) & " and Bin = " &
				integer' image(to_integer(unsigned((Bin)))) & ", but was " &
				integer' image(to_integer(unsigned((S)))) severity ERROR;
				Bin <= Bin + "0001";
			end loop;
			Ain <= Ain + "0001";
		end loop;
			report "Test Finished";
      wait;
   end process;

END;
