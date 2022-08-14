--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:08:01 05/10/2022
-- Design Name:   
-- Module Name:   /home/student/Desktop/Group03_Lab07_CC1/CCSiMP32_TB.vhd
-- Project Name:  Group03_Lab07_CC1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CCSiMP32
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
 
ENTITY CCSiMP32_TB IS
END CCSiMP32_TB;
 
ARCHITECTURE behavior OF CCSiMP32_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CCSiMP32
    PORT(
         I_EN : IN  std_logic;
         I_CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I_EN : std_logic := '0';
   signal I_CLK : std_logic := '0';

   -- Clock period definitions
   constant I_CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CCSiMP32 PORT MAP (
          I_EN => I_EN,
          I_CLK => I_CLK
        );

   -- Clock process definitions
   I_CLK_process :process
   begin
		I_CLK <= '0';
		wait for I_CLK_period/2;
		I_CLK <= '1';
		wait for I_CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	

      I_EN <= '1';

      -- insert stimulus here 

      wait;
   end process;
END;
