----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:45:08 05/06/2022 
-- Design Name: 
-- Module Name:    FSM - Behavioral 
-- Project Name: 
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
use work.FSM_STATE_PACKAGE.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSM is
    Port ( I_FSM_CLK : in  STD_LOGIC;
           I_FSM_EN : in  STD_LOGIC;
           I_FSM_INST : in  STD_LOGIC_VECTOR (31 downto 0);
           O_FSM_IF : out  STD_LOGIC;
           O_FSM_ID : out  STD_LOGIC;
           O_FSM_EX : out  STD_LOGIC;
           O_FSM_ME : out  STD_LOGIC;
           O_FSM_WB : out  STD_LOGIC);
end FSM;

architecture Behavioral of FSM is
	signal state : fsm_state := START;
begin
	process(I_FSM_CLK) 
	begin
		if rising_edge(I_FSM_CLK) then
			if I_FSM_EN ='1' then
				if state = START then
					state <= IF_stage;
				elsif state = IF_stage then
					state <= ID_stage;
				elsif state = ID_stage then
					state <= EX_stage;
				elsif state = EX_stage then
					state <= ME_stage;
				elsif state = ME_stage then
					state <= WB_stage;
				elsif state = WB_stage then
					-- the processor only stop when system call 
					if I_FSM_INST(5 downto 0) = "001100" then
						state <= STOP;
					else 
						state <= IF_stage;
					end if;
				end if;
			end if;
		end if;
	end process;
	
	-- for each state we output the correct control bit.
	process(state)
	begin
		if state = IF_stage then
			O_FSM_IF <= '1'; O_FSM_ID <= '0';
			O_FSM_EX <= '0'; O_FSM_ME <= '0'; 
			O_FSM_WB <= '0';
		elsif state = ID_stage then
			O_FSM_IF <= '0'; O_FSM_ID <= '1';
			O_FSM_EX <= '0'; O_FSM_ME <= '0'; 
			O_FSM_WB <= '0';
		elsif state = EX_stage then
			O_FSM_IF <= '0'; O_FSM_ID <= '0';
			O_FSM_EX <= '1'; O_FSM_ME <= '0'; 
			O_FSM_WB <= '0';
		elsif state = ME_stage then
			O_FSM_IF <= '0'; O_FSM_ID <= '0';
			O_FSM_EX <= '0'; O_FSM_ME <= '1'; 
			O_FSM_WB <= '0';
		elsif state = WB_stage then
			O_FSM_IF <= '0'; O_FSM_ID <= '0';
			O_FSM_EX <= '0'; O_FSM_ME <= '0'; 
			O_FSM_WB <= '1';
		elsif state = STOP or state = START then
			O_FSM_IF <= '0'; O_FSM_ID <= '0';
			O_FSM_EX <= '0'; O_FSM_ME <= '0'; 
			O_FSM_WB <= '0';
		end if;
	end process;
	
	

end Behavioral;

