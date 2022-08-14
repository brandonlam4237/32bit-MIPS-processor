----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:14:27 05/08/2022 
-- Design Name: 
-- Module Name:    jump - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jump is
    Port ( I_Instr : in  STD_LOGIC_VECTOR(25 downto 0);
           I_PC4 : in  STD_LOGIC_VECTOR(31 downto 0);
           O_address : out  STD_LOGIC_VECTOR(31 downto 0));
end jump;

architecture Behavioral of jump is

begin
	O_address(31 downto 28) <= I_PC4(31 downto 28);
	O_address(27 downto 2) <= I_Instr;
	O_address(1 downto 0) <= "00";
end Behavioral;

