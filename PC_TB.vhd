--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:45:51 05/07/2022
-- Design Name:   
-- Module Name:   /home/student/Desktop/Group03_Lab07_CC1/PC_TB.vhd
-- Project Name:  Group03_Lab07_CC1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC
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
 
ENTITY PC_TB IS
END PC_TB;
 
ARCHITECTURE behavior OF PC_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         I_PC_UPDATE : IN  std_logic;
         I_PC : IN  std_logic_vector(31 downto 0);
         O_PC : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_PC_UPDATE : std_logic := '0';
   signal I_PC : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_PC : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          I_PC_UPDATE => I_PC_UPDATE,
          I_PC => I_PC,
          O_PC => O_PC
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		I_PC <= X"03200130";
		wait for 10 ns;
		I_PC_UPDATE <= '1'; 
		I_PC <= X"F32FF130";
		wait for 10 ns;
		I_PC <= X"a321F000";
		wait for 10 ns;

    

      -- insert stimulus here 

      wait;
   end process;

END;
