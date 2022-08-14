----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:35:19 04/30/2022 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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

use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM is
    Port ( I_RAM_EN : in  STD_LOGIC;
           I_RAM_RE : in  STD_LOGIC;
           I_RAM_WE : in  STD_LOGIC;
           I_RAM_ADDR : in  STD_LOGIC_VECTOR (31 downto 0);
           I_RAM_DATA : in  STD_LOGIC_VECTOR (31 downto 0);
           O_RAM_DATA : out  STD_LOGIC_VECTOR (31 downto 0));
end RAM;

architecture Behavioral of RAM is
type RAM_mem is array (0 to 255) of STD_LOGIC_VECTOR (31 downto 0);

	-- function used to load the initially register value from text file
	impure function init_ram(FileName : in string) return RAM_mem is
		file fp: text;
		constant LINE_NUM: integer := 32;
		variable temp_ram : RAM_mem := (others => x"00000000");
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
					-- save the register value to array
					temp_ram(i*4) := to_stdlogicvector(byte_cache);				
				end if;
		end loop;
		for i in (LINE_NUM*4) to (255-LINE_NUM) loop
			temp_ram(i) := x"00000000";
		end loop;
		file_close(fp);
		return temp_ram;
	end function;

-- store all RAM value read
signal ram_buf : RAM_mem:= init_ram ("RAM_init.txt");
constant offset: integer := 8192;
begin
	-- RAM process
	process(I_RAM_EN, I_RAM_RE, I_RAM_WE, I_RAM_ADDR, I_RAM_DATA)
		begin		
		if I_RAM_EN = '1' then
			if I_RAM_RE = '1' then 
				-- display mem contents at I_RAM_ADDR
				O_RAM_DATA <= ram_buf(to_integer(unsigned(I_RAM_ADDR))-offset);
			end if;
			if I_RAM_WE = '1' then
				-- write over data in ADDR
				ram_buf(to_integer(unsigned(I_RAM_ADDR))-offset) <= std_logic_vector(to_unsigned(to_integer(unsigned(I_RAM_DATA)),I_RAM_DATA'length));
			end if;
		end if; 
	end process;		
end Behavioral;