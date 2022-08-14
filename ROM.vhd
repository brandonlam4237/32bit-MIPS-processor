----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:07 04/29/2022 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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
use STD.textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
    Port ( I_ROM_EN : in  STD_LOGIC;
           I_ROM_ADDR : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ROM_DATA : out  STD_LOGIC_VECTOR (31 downto 0));
end ROM;

architecture Behavioral of ROM is

type ROM_mem is array (0 to 255) of STD_LOGIC_VECTOR (31 downto 0);

-- initialize the ROM file as an array
	impure function init_rom(FileName : in string) return ROM_mem is
		file fp: text;
		constant LINE_NUM: integer := 18;
		variable temp_rom : ROM_mem := (others => x"00000000");
		variable line_cache : line;
		variable byte_cache : bit_vector (31 downto 0) := x"00000000" ;
	
begin
file_open(fp, FileName, read_mode);
		for i in 0 to LINE_NUM loop
				if endfile(fp) then
					exit;
				else
					readline(fp, line_cache);
					read(line_cache, byte_cache);
					temp_rom(i*4) := to_stdlogicvector(byte_cache);				
				end if;
		end loop;
		for i in (LINE_NUM*4) to 255 loop
			temp_rom(i) := x"00000000";
		end loop;
		file_close(fp);
		return temp_rom;
	end function;

-- store all ROM value read
signal rom_buf : ROM_mem:= init_rom ("Fibonacci.bin");

begin
	-- ROM process
	process(I_ROM_EN, I_ROM_ADDR)
		begin
		if (I_ROM_EN = '1') then
			-- display mem contents at I_ROM_ADDR
			O_ROM_DATA <= rom_buf(to_integer(unsigned(I_ROM_ADDR)));
		end if; 
	end process;

end Behavioral;
