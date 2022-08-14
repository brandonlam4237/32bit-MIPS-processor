--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:17:03 05/06/2022
-- Design Name:   
-- Module Name:   /home/student/Desktop/Group03_Lab07_CC1/EXT_TB.vhd
-- Project Name:  Group03_Lab07_CC1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: EXT
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
 
ENTITY EXT_TB IS
END EXT_TB;
 
ARCHITECTURE behavior OF EXT_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EXT
    PORT(
         I_EXT_16 : IN  std_logic_vector(15 downto 0);
         O_EXT_32 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_EXT_16 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal O_EXT_32 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EXT PORT MAP (
          I_EXT_16 => I_EXT_16,
          O_EXT_32 => O_EXT_32
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;
      I_EXT_16 <= "0000000000000000";
		wait for 10 ns;
		I_EXT_16 <= "1000000000000000";
		wait for 10 ns;
		I_EXT_16 <= "0100001000000110";
		wait for 10 ns;
		wait for 10 ns;
		I_EXT_16 <= "1110001000000110";
		wait for 10 ns;
      wait;
   end process;

END;
