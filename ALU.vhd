----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:42:51 05/06/2022 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( I_ALU_EN : in  STD_LOGIC;
           I_ALU_CTL : in  STD_LOGIC_VECTOR (3 downto 0);
           I_ALU_A : in  STD_LOGIC_VECTOR (31 downto 0);
           I_ALU_B : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ALU_Out : out  STD_LOGIC_VECTOR (31 downto 0);
           O_ALU_Zero : out STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

begin
	process (I_ALU_EN,I_ALU_CTL,I_ALU_A,I_ALU_B)
	variable A_int: unsigned(31 downto 0);
	variable B_int: unsigned(31 downto 0);
	variable Out_int: unsigned(31 downto 0);
	begin 
		if I_ALU_EN = '1' then
			A_int := unsigned(I_ALU_A);
			B_int := unsigned(I_ALU_B);
			-- ALU do AND operation
			if I_ALU_CTL = "0000" then
				O_ALU_Out <= I_ALU_A and I_ALU_B;
				O_ALU_Zero <= '0';
			-- ALU do OR operation
			elsif I_ALU_CTL = "0001" then
				O_ALU_Out <= I_ALU_A or I_ALU_B;
				O_ALU_Zero <= '0';
			-- ALU do ADDITION 
			elsif I_ALU_CTL = "0010" then
				Out_int := A_int + B_int;
				O_ALU_Out <= std_logic_vector(Out_int);
				O_ALU_Zero <= '0';
			-- ALU do SUBTRACTION 
			elsif I_ALU_CTL = "0110" or I_ALU_CTL = "0111" then
				Out_int := A_int - B_int;
				O_ALU_Out <= std_logic_vector(Out_int);
				--Only when the subtraction result is 0, we assert O_ALU_Zero.
				--And this is used to for branch instructor 
				if Out_int = 0 then
					O_ALU_Zero <= '1';
				else
					O_ALU_Zero <= '0';
				end if;
			end if;
		end if;
end process;
end Behavioral;

