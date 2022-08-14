--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:23:42 05/06/2022
-- Design Name:   
-- Module Name:   /home/student/Desktop/Group03_Lab07_CC1/ALU_TB.vhd
-- Project Name:  Group03_Lab07_CC1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALU_TB IS
END ALU_TB;
 
ARCHITECTURE behavior OF ALU_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         I_ALU_EN : IN  std_logic;
         I_ALU_CTL : IN  std_logic_vector(3 downto 0);
         I_ALU_A : IN  std_logic_vector(31 downto 0);
         I_ALU_B : IN  std_logic_vector(31 downto 0);
         O_ALU_Out : OUT  std_logic_vector(31 downto 0);
         O_ALU_Zero : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I_ALU_EN : std_logic := '0';
   signal I_ALU_CTL : std_logic_vector(3 downto 0) := (others => '0');
   signal I_ALU_A : std_logic_vector(31 downto 0) := (others => '0');
   signal I_ALU_B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_ALU_Out : std_logic_vector(31 downto 0);
   signal O_ALU_Zero : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          I_ALU_EN => I_ALU_EN,
          I_ALU_CTL => I_ALU_CTL,
          I_ALU_A => I_ALU_A,
          I_ALU_B => I_ALU_B,
          O_ALU_Out => O_ALU_Out,
          O_ALU_Zero => O_ALU_Zero
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		-- test when I_ALU_EN is 0
		I_ALU_EN <= '0';
		I_ALU_CTL <= "0000";
		I_ALU_A <= X"00000000";
		I_ALU_B <= X"11111111";
		wait for 10ns;
		I_ALU_EN <= '0';
		I_ALU_CTL <= "0001";
		I_ALU_A <= X"00000000";
		I_ALU_B <= X"11111111";
		wait for 10ns;
		I_ALU_EN <= '0';
		I_ALU_CTL <= "0010";
		I_ALU_A <= X"00000000";
		I_ALU_B <= X"11111111";
		wait for 10ns;
		-- test for I_ALU_CTL = 0000, then ALU do and operation
		I_ALU_EN <= '1';
		I_ALU_CTL <= "0000";
		I_ALU_A <= X"00000000";
		I_ALU_B <= X"11111111";
		wait for 10ns;
		-- test for I_ALU_CTL = 0001, then ALU do or operation
		I_ALU_EN <= '1';
		I_ALU_CTL <= "0001";
		I_ALU_A <= X"00000000";
		I_ALU_B <= X"11111111";
		wait for 10ns;
		-- test for I_ALU_CTL = 0010, then ALU do addition operation
		I_ALU_EN <= '1';
		I_ALU_CTL <= "0010";
		I_ALU_A <= X"00000000";
		I_ALU_B <= X"11111111";
		wait for 10ns;
		-- test for I_ALU_CTL = 0110, then ALU do sub operation
		I_ALU_EN <= '1';
		I_ALU_CTL <= "0110";
		I_ALU_A <= X"11111111";
		I_ALU_B <= X"00000000";
      wait for 10ns;
		-- test when result of sub is 0
		I_ALU_EN <= '1';
		I_ALU_CTL <= "0110";
		I_ALU_A <= X"11111111";
		I_ALU_B <= X"11111111";
      wait for 10ns;
		I_ALU_EN <= '1';
		I_ALU_CTL <= "0110";
		I_ALU_A <= X"00000000";
		I_ALU_B <= X"11111111";
      wait for 10ns;
		I_ALU_EN <= '1';
		I_ALU_CTL <= "0111";
		I_ALU_A <= X"11111111";
		I_ALU_B <= X"11111111";
      wait for 10ns;
      -- insert stimulus here 

      wait;
   end process;

END;
