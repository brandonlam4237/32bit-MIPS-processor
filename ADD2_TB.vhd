--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:48:14 05/06/2022
-- Design Name:   
-- Module Name:   /home/student/Desktop/Group03_Lab07_CC1/ADD2_TB.vhd
-- Project Name:  Group03_Lab07_CC1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADD2
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
 
ENTITY ADD2_TB IS
END ADD2_TB;
 
ARCHITECTURE behavior OF ADD2_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADD2
    PORT(
         I_ADD2_A : IN  std_logic_vector(31 downto 0);
         I_ADD2_B : IN  std_logic_vector(31 downto 0);
         O_ADD2_Out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_ADD2_A : std_logic_vector(31 downto 0) := (others => '0');
   signal I_ADD2_B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_ADD2_Out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADD2 PORT MAP (
          I_ADD2_A => I_ADD2_A,
          I_ADD2_B => I_ADD2_B,
          O_ADD2_Out => O_ADD2_Out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;
		I_ADD2_A <= X"0101346a";
		I_ADD2_B <= X"01000eee";
		
		wait for 10 ns;
		I_ADD2_A <= X"aaa1346a";
		I_ADD2_B <= X"01000134";
		
		wait for 10 ns;
		I_ADD2_A <= "01111010001110111110001000111010";
		I_ADD2_B <= "11111010011110100111111000000011";
		wait for 10 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
