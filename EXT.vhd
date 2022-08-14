----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:54:01 05/06/2022 
-- Design Name: 
-- Module Name:    EXT - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EXT is
    Port ( I_EXT_16 : in  STD_LOGIC_VECTOR (15 downto 0);
           O_EXT_32 : out  STD_LOGIC_VECTOR (31 downto 0));
end EXT;

architecture Behavioral of EXT is

signal top_bit : STD_LOGIC := I_EXT_16(15);

begin
	process(I_EXT_16)
	begin
			O_EXT_32(31 downto 16) <= (31 downto 16 => I_EXT_16(15));
			O_EXT_32(15 downto 0) <= I_EXT_16;
	end process;
end Behavioral;

