----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:47:44 05/06/2022 
-- Design Name: 
-- Module Name:    REG - Behavioral 
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

entity REG is
    Port ( I_REG_EN : in  STD_LOGIC;
           I_REG_WE : in  STD_LOGIC;
           I_REG_SEL_RS : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_SEL_RT : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_SEL_RD : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_DATA_RD : in  STD_LOGIC_VECTOR (31 downto 0);
           O_REG_DATA_A : out  STD_LOGIC_VECTOR (31 downto 0);
           O_REG_DATA_B : out  STD_LOGIC_VECTOR (31 downto 0));
end REG;

architecture Behavioral of REG is
-- declare a new type which is a array and each element is a value in a register
type buf32x32 is array (0 to 32) of STD_LOGIC_VECTOR (31 downto 0);

	-- function used to load tShe initially register value from text file
	impure function init_reg(FileName : in string) return buf32x32 is
		file fp: text;
		-- a constant bigger than 32
		constant LINE_NUM: integer := 31;
		-- return array
		variable temp_reg : buf32x32 := (others => x"00000000");
		variable line_cache : line;
		variable byte_cache : bit_vector (31 downto 0) := x"00000000" ;
	
	begin 
		file_open(fp, FileName, read_mode);
		-- loop 32 times to get all register value
		for i in 0 to LINE_NUM loop
			if endfile(fp) then
				exit;
			else
				readline(fp, line_cache);
				read(line_cache, byte_cache);
				-- save the register value to array
				temp_reg(i) := to_stdlogicvector(byte_cache);
			end if;
		end loop;
		file_close(fp);
		return temp_reg;
	end function;

-- store all reg value read
signal reg_buf : buf32x32:= init_reg ("REG_init.txt");
begin
	-- REG process
	process(I_REG_EN, I_REG_WE, I_REG_SEL_RS, I_REG_SEL_RT, I_REG_SEL_RD, I_REG_DATA_RD)
		begin
		if I_REG_EN = '1' then
			O_REG_DATA_A <= reg_buf(to_integer(unsigned(I_REG_SEL_RS)));
			O_REG_DATA_B <= reg_buf(to_integer(unsigned(I_REG_SEL_RT)));
		
			if I_REG_WE = '1' and I_REG_SEL_RD /= "00000" then
				reg_buf(to_integer(unsigned(I_REG_SEL_RD))) <= I_REG_DATA_RD;
			end if;
		end if; 

	end process;

end Behavioral;
