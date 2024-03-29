----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:58 05/06/2022 
-- Design Name: 
-- Module Name:    MUX32 - Behavioral 
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

entity MUX32 is
    Port ( I_MUX_0 : in  STD_LOGIC_VECTOR (31 downto 0);
           I_MUX_1 : in  STD_LOGIC_VECTOR (31 downto 0);
           I_MUX_Sel : in  STD_LOGIC;
           O_MUX_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX32;

architecture Behavioral of MUX32 is

begin
	process(I_MUX_0, I_MUX_1, I_MUX_Sel) 
		begin
			if I_MUX_Sel = '1' then
				O_MUX_Out <= I_MUX_1;
			elsif I_MUX_Sel = '0' then
				O_MUX_Out <= I_MUX_0;
			end if;	
		end process;
end Behavioral;

