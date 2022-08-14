--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:22:46 05/06/2022
-- Design Name:   
-- Module Name:   /home/student/Desktop/Group03_Lab07_CC1/FSM_TB.vhd
-- Project Name:  Group03_Lab07_CC1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FSM
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
 
ENTITY FSM_TB IS
END FSM_TB;
 
ARCHITECTURE behavior OF FSM_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FSM
    PORT(
         I_FSM_CLK : IN  std_logic;
         I_FSM_EN : IN  std_logic;
         I_FSM_INST : IN  std_logic_vector(31 downto 0);
         O_FSM_IF : OUT  std_logic;
         O_FSM_ID : OUT  std_logic;
         O_FSM_EX : OUT  std_logic;
         O_FSM_ME : OUT  std_logic;
         O_FSM_WB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I_FSM_CLK : std_logic := '0';
   signal I_FSM_EN : std_logic := '0';
   signal I_FSM_INST : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_FSM_IF : std_logic;
   signal O_FSM_ID : std_logic;
   signal O_FSM_EX : std_logic;
   signal O_FSM_ME : std_logic;
   signal O_FSM_WB : std_logic;

   -- Clock period definitions
   constant I_FSM_CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FSM PORT MAP (
          I_FSM_CLK => I_FSM_CLK,
          I_FSM_EN => I_FSM_EN,
          I_FSM_INST => I_FSM_INST,
          O_FSM_IF => O_FSM_IF,
          O_FSM_ID => O_FSM_ID,
          O_FSM_EX => O_FSM_EX,
          O_FSM_ME => O_FSM_ME,
          O_FSM_WB => O_FSM_WB
        );

   -- Clock process definitions
   I_FSM_CLK_process :process
   begin
		I_FSM_CLK <= '0';
		wait for I_FSM_CLK_period/2;
		I_FSM_CLK <= '1';
		wait for I_FSM_CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for I_FSM_CLK_period*10;

      -- insert stimulus here 
		I_FSM_EN <= '1';
		wait for I_FSM_CLK_period*20;
		I_FSM_INST <= "00000000000000000000000000001100";
      wait;
   end process;

END;
