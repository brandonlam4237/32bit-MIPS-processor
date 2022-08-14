library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_left2 is
  port( input  : in std_logic_vector(31 downto 0);
        output : out std_logic_vector(31 downto 0) );
end shift_left2;

architecture Behavioral of Shift_left2 is
begin
	process(input)
		begin
		output <= std_logic_vector(unsigned(input) sll 2);
		end process;
end Behavioral;
