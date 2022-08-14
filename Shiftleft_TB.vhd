--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:27:10 05/08/2022
-- Design Name:   
-- Module Name:   /home/ise/Desktop/Group03_Lab07_CC1/Shiftleft_TB.vhd
-- Project Name:  Group03_Lab07_CC1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift_left2
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
 
ENTITY Shiftleft_TB IS
END Shiftleft_TB;
 
ARCHITECTURE behavior OF Shiftleft_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_left2
    PORT(
         input : IN  std_logic_vector(31 downto 0);
         output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_left2 PORT MAP (
          input => input,
          output => output
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 10 ns;
      input <= "00000000000000000000000000000001";
		wait for 10 ns;
		input <= "00000000000000000000100000000000";
		wait for 10 ns;
		input <= "00000000000000100000000000000000";
		wait for 10 ns;
		wait for 10 ns;
		input <= "00000000100000000000100000000000";
		wait for 10 ns;
      wait;
   end process;

END;
