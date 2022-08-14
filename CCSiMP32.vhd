----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:19:15 05/06/2022 
-- Design Name: 
-- Module Name:    CCSiMP32 - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity CCSiMP32 is
    Port ( I_EN : in  STD_LOGIC;
           I_CLK : in  STD_LOGIC);
end CCSiMP32;

architecture Behavioral of CCSiMP32 is

component PC
Port ( I_PC_UPDATE : in  STD_LOGIC;
       I_PC : in  STD_LOGIC_VECTOR (31 downto 0);
       O_PC : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ADD1 is
    Port ( I_ADD1_A : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ADD1_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ROM is
    Port ( I_ROM_EN : in  STD_LOGIC;
           I_ROM_ADDR : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ROM_DATA : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component jump is
    Port ( I_Instr : in  STD_LOGIC_VECTOR(25 downto 0);
           I_PC4 : in  STD_LOGIC_VECTOR(31 downto 0);
           O_address : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

component DEC is
    Port ( I_DEC_EN : in  STD_LOGIC;
           I_DEC_Opcode : in  STD_LOGIC_VECTOR (5 downto 0);
           O_DEC_RegDst : out  STD_LOGIC;
           O_DEC_Jump : out  STD_LOGIC;
           O_DEC_Beq : out  STD_LOGIC;
           O_DEC_Bne : out  STD_LOGIC;
           O_DEC_MemRead : out  STD_LOGIC;
           O_DEC_MemtoReg : out  STD_LOGIC;
           O_DEC_ALUOp : out  STD_LOGIC_VECTOR (1 downto 0);
           O_DEC_MemWrite : out  STD_LOGIC;
           O_DEC_ALUSrc : out  STD_LOGIC;
           O_DEC_RegWrite : out  STD_LOGIC);
end component;

component MUX5 is
    Port ( I_MUX_0 : in  STD_LOGIC_VECTOR (4 downto 0);
           I_MUX_1 : in  STD_LOGIC_VECTOR (4 downto 0);
           I_MUX_Sel : in  STD_LOGIC;
           O_MUX_Out : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component REG is
    Port ( I_REG_EN : in  STD_LOGIC;
           I_REG_WE : in  STD_LOGIC;
           I_REG_SEL_RS : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_SEL_RT : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_SEL_RD : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_DATA_RD : in  STD_LOGIC_VECTOR (31 downto 0);
           O_REG_DATA_A : out  STD_LOGIC_VECTOR (31 downto 0);
           O_REG_DATA_B : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component EXT is
    Port ( I_EXT_16 : in  STD_LOGIC_VECTOR (15 downto 0);
           O_EXT_32 : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component shift_left2 is
  Port( input  : in std_logic_vector(31 downto 0);
        output : out std_logic_vector(31 downto 0));
end component;

component ADD2 is
    Port ( I_ADD2_A : in  STD_LOGIC_VECTOR (31 downto 0);
           I_ADD2_B : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ADD2_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ALU is
    Port ( I_ALU_EN : in  STD_LOGIC;
           I_ALU_CTL : in  STD_LOGIC_VECTOR (3 downto 0);
           I_ALU_A : in  STD_LOGIC_VECTOR (31 downto 0);
           I_ALU_B : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ALU_Out : out  STD_LOGIC_VECTOR (31 downto 0);
           O_ALU_Zero : out STD_LOGIC);
end component;

component MUX32 is
    Port ( I_MUX_0 : in  STD_LOGIC_VECTOR (31 downto 0);
           I_MUX_1 : in  STD_LOGIC_VECTOR (31 downto 0);
           I_MUX_Sel : in  STD_LOGIC;
           O_MUX_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ACU is
    Port ( I_ACU_ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           I_ACU_Funct : in  STD_LOGIC_VECTOR (5 downto 0);
           O_ACU_CTL : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component RAM is
    Port ( I_RAM_EN : in  STD_LOGIC;
           I_RAM_RE : in  STD_LOGIC;
           I_RAM_WE : in  STD_LOGIC;
           I_RAM_ADDR : in  STD_LOGIC_VECTOR (31 downto 0);
           I_RAM_DATA : in  STD_LOGIC_VECTOR (31 downto 0);
           O_RAM_DATA : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component FSM is
    Port ( I_FSM_CLK : in  STD_LOGIC;
           I_FSM_EN : in  STD_LOGIC;
           I_FSM_INST : in  STD_LOGIC_VECTOR (31 downto 0);
           O_FSM_IF : out  STD_LOGIC;
           O_FSM_ID : out  STD_LOGIC;
           O_FSM_EX : out  STD_LOGIC;
           O_FSM_ME : out  STD_LOGIC;
           O_FSM_WB : out  STD_LOGIC);
end component;

component AND2 port (I0,I1: in STD_LOGIC; O: out STD_LOGIC); end component;
component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;
component OR2 port (I0,I1: in STD_LOGIC; O: out STD_LOGIC); end component;

--32 bit Store current instruction read from ROM
signal Instruction: STD_LOGIC_VECTOR (31 downto 0);

--FSM component signal. 
signal IF_EN,ID_EN,EX_EN,ME_EN,WB_EN : STD_LOGIC;

--Decoder signal
signal O_DEC_RegDst, O_DEC_Jump, O_DEC_Bne, O_DEC_Beq, O_DEC_MemRead, O_DEC_MemtoReg, O_DEC_MemWrite, O_DEC_ALUSrc, O_DEC_RegWrite: STD_LOGIC;
signal O_DEC_ALUOp : STD_LOGIC_VECTOR (1 downto 0);

--ALU Control signal
signal ALU_CTL: STD_LOGIC_VECTOR (3 downto 0);

-- ALU signal
signal O_ALU_Zero: STD_LOGIC;
signal O_ALU_Out: STD_LOGIC_VECTOR(31 downto 0);

--REG Signal
signal O_REG_DATA_A, O_REG_DATA_B: STD_LOGIC_VECTOR (31 downto 0);

--RAM signal
signal O_RAM_DATA: STD_LOGIC_VECTOR (31 downto 0);

--PC signal
signal O_PC: STD_LOGIC_VECTOR (31 downto 0);

--EXT signal
signal O_EXT_32: STD_LOGIC_VECTOR (31 downto 0);

--ADD_1
signal O_ADD1_Out : STD_LOGIC_VECTOR (31 downto 0);
--ADD_2
signal O_ADD2_Out: STD_LOGIC_VECTOR (31 downto 0);

--MUX_1
signal O_MUX1_Out: STD_LOGIC_VECTOR (31 downto 0);
--MUX_2
signal O_MUX2_Out: STD_LOGIC_VECTOR (31 downto 0);
--MUX_3
signal O_MUX3_Out: STD_LOGIC_VECTOR (31 downto 0);
--MUX_4
signal O_MUX4_Out: STD_LOGIC_VECTOR (4 downto 0);
--MUX_5
signal O_MUX5_Out: STD_LOGIC_VECTOR (31 downto 0);

--control signals
signal AND_Beq, AND_Bne, ALU_zero_INV, BRANCH : STD_LOGIC;

--Jump signal
signal Jump_Addr : STD_LOGIC_VECTOR (31 downto 0);

--SFT signal 
signal SLL_O: STD_LOGIC_VECTOR (31 downto 0);
begin

--layer 1
FSM_OUT: FSM
Port map( I_FSM_CLK => I_CLK,
           I_FSM_EN => I_EN,
           I_FSM_INST => Instruction, 
           O_FSM_IF => IF_EN,
           O_FSM_ID => ID_EN,
           O_FSM_EX => EX_EN,
           O_FSM_ME => ME_EN,
           O_FSM_WB => WB_EN
			  );	
			  

PC_UPDATE: PC
Port map( I_PC_UPDATE => IF_EN,
           I_PC => O_MUX5_Out,
           O_PC => O_PC
			  );

--layer 2
PC_ADD4: ADD1 
Port map( I_ADD1_A => O_PC,
           O_ADD1_Out => O_ADD1_Out
			  );
			  
ROM_READ: ROM
Port map( I_ROM_EN => IF_EN,
           I_ROM_ADDR => O_PC,
           O_ROM_DATA => Instruction
			  );
		

--layer 3
JUMP_Address: Jump
Port map( I_Instr => Instruction(25 downto 0),
           I_PC4 => O_ADD1_Out,
           O_address => Jump_Addr
			  );

DEC_INSTR: DEC
Port map( I_DEC_EN => ID_EN,
          I_DEC_Opcode => Instruction(31 downto 26),
           O_DEC_RegDst => O_DEC_RegDst,
           O_DEC_Jump => O_DEC_Jump,
           O_DEC_Beq => O_DEC_Beq,
           O_DEC_Bne => O_DEC_Bne,
           O_DEC_MemRead => O_DEC_MemRead,
           O_DEC_MemtoReg => O_DEC_MemtoReg,
           O_DEC_ALUOp => O_DEC_ALUOp,
           O_DEC_MemWrite => O_DEC_MemWrite,
           O_DEC_ALUSrc => O_DEC_ALUSrc,
           O_DEC_RegWrite => O_DEC_RegWrite
			  );
			  
MUX_4: MUX5
Port map( I_MUX_0 => Instruction(20 downto 16),
           I_MUX_1 => Instruction(15 downto 11),
           I_MUX_Sel => O_DEC_RegDst,
           O_MUX_Out => O_MUX4_Out
			  );		  

--layer 4			  
REG_RW: REG
Port map( I_REG_EN => (ID_EN or WB_EN),
           I_REG_WE => (O_DEC_RegWrite and WB_EN),
           I_REG_SEL_RS => Instruction(25 downto 21),
           I_REG_SEL_RT => Instruction(20 downto 16),
           I_REG_SEL_RD => O_MUX4_Out,
           I_REG_DATA_RD => O_MUX2_Out,
           O_REG_DATA_A => O_REG_DATA_A,
           O_REG_DATA_B => O_REG_DATA_B
			  );  
			  
SIGN_EXT: EXT
Port map( I_EXT_16 => Instruction(15 downto 0),
           O_EXT_32 => O_EXT_32
			  );			

--layer 5 
SHIFT: shift_left2
Port map( input => O_EXT_32,
        output => SLL_O
		  );			  
		  
MUX_3: MUX32
Port map( I_MUX_0 => O_REG_DATA_B,
           I_MUX_1 => O_EXT_32,
           I_MUX_Sel => O_DEC_ALUSrc,
           O_MUX_Out => O_MUX3_Out
			  );


ALU_Control: ACU
Port map( I_ACU_ALUOp => O_DEC_ALUOp,
           I_ACU_Funct => Instruction(5 downto 0),
           O_ACU_CTL => ALU_CTL
			  );
			  

-- layer 6
			  
Branch_Address: ADD2 
Port map( I_ADD2_A => O_ADD1_Out,
           I_ADD2_B => SLL_O,
           O_ADD2_Out => O_ADD2_Out
			  );
			  
INV_ALU_ZERO: INV port map(O_ALU_Zero, ALU_zero_INV);
Beq_And: AND2 port map (O_DEC_Beq, O_ALU_Zero, AND_Beq);
Bne_And: AND2 port map (O_DEC_Bne, ALU_zero_INV, AND_Bne);
Branch_Enable: OR2 port map (AND_Beq, AND_Bne, BRANCH);
			  
ALU_CAL: ALU
Port map( I_ALU_EN => EX_EN,
           I_ALU_CTL => ALU_CTL,
           I_ALU_A => O_REG_DATA_A,
           I_ALU_B => O_MUX3_Out,
           O_ALU_Out => O_ALU_Out,
           O_ALU_Zero => O_ALU_Zero
			  );


--layer 7
MUX_1: MUX32
Port map( I_MUX_0 => O_ADD1_Out,
           I_MUX_1 => O_ADD2_Out,
           I_MUX_Sel => BRANCH,
           O_MUX_Out => O_MUX1_Out
			  );
			  
RAM_RW: RAM
Port map( I_RAM_EN => ME_EN,
           I_RAM_RE => O_DEC_MemRead,
           I_RAM_WE => O_DEC_MemWrite,
           I_RAM_ADDR => O_ALU_Out,
           I_RAM_DATA => O_REG_DATA_B,
           O_RAM_DATA => O_RAM_DATA
			  );
			  
--layer 8
MUX_5: MUX32
Port map( I_MUX_0 => O_MUX1_Out,
           I_MUX_1 => Jump_Addr,
           I_MUX_Sel => O_DEC_JUMP,
           O_MUX_Out => O_MUX5_Out
			  );


MUX_2: MUX32
Port map( I_MUX_0 => O_ALU_Out,
           I_MUX_1 => O_RAM_DATA,
           I_MUX_Sel => O_DEC_MemtoReg,
           O_MUX_Out => O_MUX2_Out
			  );		

	  
end Behavioral;

