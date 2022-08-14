<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(31:0)" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12(31:0)" />
        <signal name="XLXN_13(31:0)" />
        <signal name="XLXN_14" />
        <signal name="XLXN_29(31:0)" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33(4:0)" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38(31:0)" />
        <signal name="XLXN_39(31:0)" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41(1:0)" />
        <signal name="XLXN_43(31:0)" />
        <signal name="XLXN_44(31:0)" />
        <signal name="XLXN_45(31:0)" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47(3:0)" />
        <signal name="XLXN_48(3:0)" />
        <signal name="XLXN_49(31:0)" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64(31:0)" />
        <signal name="XLXN_65(31:0)" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68(31:0)" />
        <signal name="XLXN_69(31:0)" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71(31:0)" />
        <signal name="XLXN_72(31:0)" />
        <signal name="I_CLK" />
        <signal name="I_EN" />
        <port polarity="Input" name="I_CLK" />
        <port polarity="Input" name="I_EN" />
        <blockdef name="PC">
            <timestamp>2022-5-15T14:24:59</timestamp>
            <rect width="304" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
        </blockdef>
        <blockdef name="ROM">
            <timestamp>2022-5-15T14:25:19</timestamp>
            <rect width="432" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-108" height="24" />
            <line x2="560" y1="-96" y2="-96" x1="496" />
        </blockdef>
        <blockdef name="FSM">
            <timestamp>2022-5-15T14:24:42</timestamp>
            <rect width="336" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="ADD1">
            <timestamp>2022-5-15T14:25:9</timestamp>
            <rect width="384" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
        </blockdef>
        <blockdef name="jump">
            <timestamp>2022-5-15T14:25:29</timestamp>
            <rect width="320" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
        </blockdef>
        <blockdef name="DEC">
            <timestamp>2022-5-15T14:25:39</timestamp>
            <rect width="432" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="560" y1="-608" y2="-608" x1="496" />
            <line x2="560" y1="-544" y2="-544" x1="496" />
            <line x2="560" y1="-480" y2="-480" x1="496" />
            <line x2="560" y1="-416" y2="-416" x1="496" />
            <line x2="560" y1="-352" y2="-352" x1="496" />
            <line x2="560" y1="-288" y2="-288" x1="496" />
            <line x2="560" y1="-224" y2="-224" x1="496" />
            <line x2="560" y1="-160" y2="-160" x1="496" />
            <line x2="560" y1="-96" y2="-96" x1="496" />
            <rect width="64" x="496" y="-44" height="24" />
            <line x2="560" y1="-32" y2="-32" x1="496" />
        </blockdef>
        <blockdef name="REG">
            <timestamp>2022-5-15T14:25:57</timestamp>
            <rect width="496" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="560" y="-364" height="24" />
            <line x2="624" y1="-352" y2="-352" x1="560" />
            <rect width="64" x="560" y="-44" height="24" />
            <line x2="624" y1="-32" y2="-32" x1="560" />
        </blockdef>
        <blockdef name="MUX5">
            <timestamp>2022-5-15T14:25:49</timestamp>
            <rect width="336" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="EXT">
            <timestamp>2022-5-15T14:26:6</timestamp>
            <rect width="352" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="shift_left2">
            <timestamp>2022-5-15T14:26:15</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MUX32">
            <timestamp>2022-5-15T14:26:24</timestamp>
            <rect width="368" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-172" height="24" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
        </blockdef>
        <blockdef name="ACU">
            <timestamp>2022-5-15T14:26:34</timestamp>
            <rect width="400" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
        </blockdef>
        <blockdef name="ADD2">
            <timestamp>2022-5-15T14:26:43</timestamp>
            <rect width="384" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-108" height="24" />
            <line x2="512" y1="-96" y2="-96" x1="448" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2022-5-15T14:26:52</timestamp>
            <rect width="368" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="RAM">
            <timestamp>2022-5-15T14:27:20</timestamp>
            <rect width="432" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-300" height="24" />
            <line x2="560" y1="-288" y2="-288" x1="496" />
        </blockdef>
        <block symbolname="FSM" name="XLXI_13">
            <blockpin signalname="I_CLK" name="I_FSM_CLK" />
            <blockpin signalname="I_EN" name="I_FSM_EN" />
            <blockpin signalname="XLXN_29(31:0)" name="I_FSM_INST(31:0)" />
            <blockpin signalname="XLXN_11" name="O_FSM_IF" />
            <blockpin signalname="XLXN_14" name="O_FSM_ID" />
            <blockpin signalname="XLXN_46" name="O_FSM_EX" />
            <blockpin signalname="XLXN_61" name="O_FSM_ME" />
            <blockpin signalname="XLXN_34" name="O_FSM_WB" />
        </block>
        <block symbolname="PC" name="XLXI_3">
            <blockpin signalname="XLXN_11" name="I_PC_UPDATE" />
            <blockpin signalname="XLXN_71(31:0)" name="I_PC(31:0)" />
            <blockpin signalname="XLXN_1(31:0)" name="O_PC(31:0)" />
        </block>
        <block symbolname="ADD1" name="XLXI_21">
            <blockpin signalname="XLXN_1(31:0)" name="I_ADD1_A(31:0)" />
            <blockpin signalname="XLXN_12(31:0)" name="O_ADD1_Out(31:0)" />
        </block>
        <block symbolname="REG" name="XLXI_24">
            <blockpin signalname="XLXN_35" name="I_REG_EN" />
            <blockpin signalname="XLXN_37" name="I_REG_WE" />
            <blockpin signalname="XLXN_29(31:0)" name="I_REG_SEL_RS(4:0)" />
            <blockpin signalname="XLXN_29(31:0)" name="I_REG_SEL_RT(4:0)" />
            <blockpin signalname="XLXN_33(4:0)" name="I_REG_SEL_RD(4:0)" />
            <blockpin signalname="XLXN_72(31:0)" name="I_REG_DATA_RD(31:0)" />
            <blockpin signalname="XLXN_45(31:0)" name="O_REG_DATA_A(31:0)" />
            <blockpin signalname="XLXN_39(31:0)" name="O_REG_DATA_B(31:0)" />
        </block>
        <block symbolname="ROM" name="XLXI_26">
            <blockpin signalname="XLXN_11" name="I_ROM_EN" />
            <blockpin signalname="XLXN_1(31:0)" name="I_ROM_ADDR(31:0)" />
            <blockpin signalname="XLXN_29(31:0)" name="O_ROM_DATA(31:0)" />
        </block>
        <block symbolname="jump" name="XLXI_27">
            <blockpin signalname="XLXN_29(31:0)" name="I_Instr(25:0)" />
            <blockpin signalname="XLXN_12(31:0)" name="I_PC4(31:0)" />
            <blockpin signalname="XLXN_69(31:0)" name="O_address(31:0)" />
        </block>
        <block symbolname="DEC" name="XLXI_28">
            <blockpin signalname="XLXN_14" name="I_DEC_EN" />
            <blockpin signalname="XLXN_29(31:0)" name="I_DEC_Opcode(5:0)" />
            <blockpin signalname="XLXN_32" name="O_DEC_RegDst" />
            <blockpin signalname="XLXN_70" name="O_DEC_Jump" />
            <blockpin signalname="XLXN_51" name="O_DEC_Beq" />
            <blockpin signalname="XLXN_52" name="O_DEC_Bne" />
            <blockpin signalname="XLXN_62" name="O_DEC_MemRead" />
            <blockpin signalname="XLXN_67" name="O_DEC_MemtoReg" />
            <blockpin signalname="XLXN_63" name="O_DEC_MemWrite" />
            <blockpin signalname="XLXN_40" name="O_DEC_ALUSrc" />
            <blockpin signalname="XLXN_36" name="O_DEC_RegWrite" />
            <blockpin signalname="XLXN_41(1:0)" name="O_DEC_ALUOp(1:0)" />
        </block>
        <block symbolname="MUX5" name="XLXI_29">
            <blockpin signalname="XLXN_32" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_29(31:0)" name="I_MUX_0(4:0)" />
            <blockpin signalname="XLXN_29(31:0)" name="I_MUX_1(4:0)" />
            <blockpin signalname="XLXN_33(4:0)" name="O_MUX_Out(4:0)" />
        </block>
        <block symbolname="or2" name="XLXI_30">
            <blockpin signalname="XLXN_34" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_31">
            <blockpin signalname="XLXN_34" name="I0" />
            <blockpin signalname="XLXN_36" name="I1" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="EXT" name="XLXI_32">
            <blockpin signalname="XLXN_29(31:0)" name="I_EXT_16(15:0)" />
            <blockpin signalname="XLXN_38(31:0)" name="O_EXT_32(31:0)" />
        </block>
        <block symbolname="shift_left2" name="XLXI_33">
            <blockpin signalname="XLXN_38(31:0)" name="input(31:0)" />
            <blockpin signalname="XLXN_43(31:0)" name="output(31:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_34">
            <blockpin signalname="XLXN_40" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_39(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_38(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_44(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="ACU" name="XLXI_35">
            <blockpin signalname="XLXN_41(1:0)" name="I_ACU_ALUOp(1:0)" />
            <blockpin signalname="XLXN_29(31:0)" name="I_ACU_Funct(5:0)" />
            <blockpin signalname="XLXN_48(3:0)" name="O_ACU_CTL(3:0)" />
        </block>
        <block symbolname="ADD2" name="XLXI_36">
            <blockpin signalname="XLXN_12(31:0)" name="I_ADD2_A(31:0)" />
            <blockpin signalname="XLXN_43(31:0)" name="I_ADD2_B(31:0)" />
            <blockpin signalname="XLXN_49(31:0)" name="O_ADD2_Out(31:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_37">
            <blockpin signalname="XLXN_46" name="I_ALU_EN" />
            <blockpin signalname="XLXN_48(3:0)" name="I_ALU_CTL(3:0)" />
            <blockpin signalname="XLXN_45(31:0)" name="I_ALU_A(31:0)" />
            <blockpin signalname="XLXN_44(31:0)" name="I_ALU_B(31:0)" />
            <blockpin signalname="XLXN_53" name="O_ALU_Zero" />
            <blockpin signalname="XLXN_64(31:0)" name="O_ALU_Out(31:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_38">
            <blockpin signalname="XLXN_60" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_12(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_49(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_68(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="and2" name="XLXI_39">
            <blockpin signalname="XLXN_51" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_40">
            <blockpin signalname="XLXN_50" name="I0" />
            <blockpin signalname="XLXN_52" name="I1" />
            <blockpin signalname="XLXN_55" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_41">
            <blockpin signalname="XLXN_55" name="I0" />
            <blockpin signalname="XLXN_54" name="I1" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_42">
            <blockpin signalname="XLXN_53" name="I" />
            <blockpin signalname="XLXN_50" name="O" />
        </block>
        <block symbolname="RAM" name="XLXI_43">
            <blockpin signalname="XLXN_61" name="I_RAM_EN" />
            <blockpin signalname="XLXN_62" name="I_RAM_RE" />
            <blockpin signalname="XLXN_63" name="I_RAM_WE" />
            <blockpin signalname="XLXN_64(31:0)" name="I_RAM_ADDR(31:0)" />
            <blockpin signalname="XLXN_39(31:0)" name="I_RAM_DATA(31:0)" />
            <blockpin signalname="XLXN_65(31:0)" name="O_RAM_DATA(31:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_44">
            <blockpin signalname="XLXN_70" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_68(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_69(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_71(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_45">
            <blockpin signalname="XLXN_67" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_64(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_65(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_72(31:0)" name="O_MUX_Out(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="368" y="1824" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_1(31:0)">
            <wire x2="1456" y1="1184" y2="1184" x1="1360" />
            <wire x2="1584" y1="1184" y2="1184" x1="1456" />
            <wire x2="1456" y1="720" y2="1184" x1="1456" />
            <wire x2="1600" y1="720" y2="720" x1="1456" />
        </branch>
        <instance x="928" y="1280" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1600" y="752" name="XLXI_21" orien="R0">
        </instance>
        <branch name="XLXN_12(31:0)">
            <wire x2="2272" y1="720" y2="720" x1="2112" />
            <wire x2="2336" y1="720" y2="720" x1="2272" />
            <wire x2="2272" y1="720" y2="800" x1="2272" />
            <wire x2="2864" y1="800" y2="800" x1="2272" />
            <wire x2="2864" y1="496" y2="640" x1="2864" />
            <wire x2="2864" y1="640" y2="800" x1="2864" />
            <wire x2="3296" y1="640" y2="640" x1="2864" />
            <wire x2="3856" y1="496" y2="496" x1="2864" />
            <wire x2="3856" y1="496" y2="640" x1="3856" />
            <wire x2="4000" y1="640" y2="640" x1="3856" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="848" y1="1600" y2="1600" x1="832" />
            <wire x2="1296" y1="1600" y2="1600" x1="848" />
            <wire x2="1296" y1="1600" y2="2048" x1="1296" />
            <wire x2="1728" y1="2048" y2="2048" x1="1296" />
            <wire x2="2256" y1="912" y2="912" x1="848" />
            <wire x2="848" y1="912" y2="1600" x1="848" />
        </branch>
        <instance x="2224" y="2064" name="XLXI_24" orien="R0">
        </instance>
        <branch name="XLXN_29(31:0)">
            <wire x2="368" y1="1792" y2="1792" x1="336" />
            <wire x2="336" y1="1792" y2="2384" x1="336" />
            <wire x2="2096" y1="2384" y2="2384" x1="336" />
            <wire x2="2160" y1="1440" y2="1440" x1="1456" />
            <wire x2="2160" y1="1440" y2="1488" x1="2160" />
            <wire x2="2256" y1="1488" y2="1488" x1="2160" />
            <wire x2="1456" y1="1440" y2="1856" x1="1456" />
            <wire x2="1600" y1="1856" y2="1856" x1="1456" />
            <wire x2="1456" y1="1856" y2="1920" x1="1456" />
            <wire x2="1600" y1="1920" y2="1920" x1="1456" />
            <wire x2="2160" y1="1488" y2="1488" x1="2096" />
            <wire x2="2096" y1="1488" y2="1840" x1="2096" />
            <wire x2="2096" y1="1840" y2="1904" x1="2096" />
            <wire x2="2224" y1="1904" y2="1904" x1="2096" />
            <wire x2="2096" y1="1904" y2="2336" x1="2096" />
            <wire x2="2304" y1="2336" y2="2336" x1="2096" />
            <wire x2="2368" y1="2336" y2="2336" x1="2304" />
            <wire x2="2304" y1="2336" y2="2416" x1="2304" />
            <wire x2="2992" y1="2416" y2="2416" x1="2304" />
            <wire x2="2096" y1="2336" y2="2384" x1="2096" />
            <wire x2="2224" y1="1840" y2="1840" x1="2096" />
            <wire x2="2160" y1="1120" y2="1120" x1="2144" />
            <wire x2="2160" y1="1120" y2="1440" x1="2160" />
            <wire x2="2336" y1="656" y2="656" x1="2160" />
            <wire x2="2160" y1="656" y2="1120" x1="2160" />
            <wire x2="2992" y1="2336" y2="2416" x1="2992" />
            <wire x2="3008" y1="2336" y2="2336" x1="2992" />
        </branch>
        <instance x="2336" y="752" name="XLXI_27" orien="R0">
        </instance>
        <instance x="2256" y="1520" name="XLXI_28" orien="R0">
        </instance>
        <instance x="1600" y="1952" name="XLXI_29" orien="R0">
        </instance>
        <instance x="1584" y="1216" name="XLXI_26" orien="R0">
        </instance>
        <branch name="XLXN_11">
            <wire x2="1584" y1="1120" y2="1120" x1="832" />
            <wire x2="832" y1="1120" y2="1184" x1="832" />
            <wire x2="832" y1="1184" y2="1536" x1="832" />
            <wire x2="928" y1="1184" y2="1184" x1="832" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="2944" y1="1584" y2="1584" x1="1600" />
            <wire x2="1600" y1="1584" y2="1792" x1="1600" />
            <wire x2="2944" y1="912" y2="912" x1="2816" />
            <wire x2="2944" y1="912" y2="1584" x1="2944" />
        </branch>
        <branch name="XLXN_33(4:0)">
            <wire x2="2160" y1="1792" y2="1792" x1="2064" />
            <wire x2="2160" y1="1792" y2="1968" x1="2160" />
            <wire x2="2224" y1="1968" y2="1968" x1="2160" />
        </branch>
        <instance x="1728" y="2176" name="XLXI_30" orien="R0" />
        <branch name="XLXN_34">
            <wire x2="832" y1="1792" y2="2112" x1="832" />
            <wire x2="1728" y1="2112" y2="2112" x1="832" />
            <wire x2="832" y1="2112" y2="2272" x1="832" />
            <wire x2="1728" y1="2272" y2="2272" x1="832" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="2112" y1="2080" y2="2080" x1="1984" />
            <wire x2="2112" y1="1712" y2="2080" x1="2112" />
            <wire x2="2224" y1="1712" y2="1712" x1="2112" />
        </branch>
        <instance x="1728" y="2336" name="XLXI_31" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="3024" y1="1552" y2="1552" x1="1376" />
            <wire x2="1376" y1="1552" y2="2208" x1="1376" />
            <wire x2="1728" y1="2208" y2="2208" x1="1376" />
            <wire x2="3024" y1="1424" y2="1424" x1="2816" />
            <wire x2="3024" y1="1424" y2="1552" x1="3024" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="2176" y1="2240" y2="2240" x1="1984" />
            <wire x2="2176" y1="1776" y2="2240" x1="2176" />
            <wire x2="2224" y1="1776" y2="1776" x1="2176" />
        </branch>
        <instance x="2368" y="2368" name="XLXI_32" orien="R0">
        </instance>
        <branch name="XLXN_38(31:0)">
            <wire x2="2880" y1="2336" y2="2336" x1="2848" />
            <wire x2="2896" y1="832" y2="832" x1="2880" />
            <wire x2="2880" y1="832" y2="2096" x1="2880" />
            <wire x2="2880" y1="2096" y2="2336" x1="2880" />
            <wire x2="2960" y1="2096" y2="2096" x1="2880" />
        </branch>
        <branch name="XLXN_39(31:0)">
            <wire x2="2864" y1="2032" y2="2032" x1="2848" />
            <wire x2="2960" y1="2032" y2="2032" x1="2864" />
            <wire x2="2864" y1="2032" y2="2176" x1="2864" />
            <wire x2="4352" y1="2176" y2="2176" x1="2864" />
            <wire x2="4352" y1="1984" y2="2176" x1="4352" />
            <wire x2="4384" y1="1984" y2="1984" x1="4352" />
        </branch>
        <instance x="2960" y="2128" name="XLXI_34" orien="R0">
        </instance>
        <branch name="XLXN_40">
            <wire x2="2960" y1="1360" y2="1360" x1="2816" />
            <wire x2="2960" y1="1360" y2="1968" x1="2960" />
        </branch>
        <instance x="3008" y="2368" name="XLXI_35" orien="R0">
        </instance>
        <branch name="XLXN_41(1:0)">
            <wire x2="2912" y1="1488" y2="1488" x1="2816" />
            <wire x2="2912" y1="1488" y2="2272" x1="2912" />
            <wire x2="3008" y1="2272" y2="2272" x1="2912" />
        </branch>
        <instance x="3296" y="736" name="XLXI_36" orien="R0">
        </instance>
        <instance x="2896" y="864" name="XLXI_33" orien="R0">
        </instance>
        <branch name="XLXN_43(31:0)">
            <wire x2="3280" y1="704" y2="832" x1="3280" />
            <wire x2="3296" y1="704" y2="704" x1="3280" />
        </branch>
        <instance x="3584" y="2000" name="XLXI_37" orien="R0">
        </instance>
        <branch name="XLXN_44(31:0)">
            <wire x2="3584" y1="1968" y2="1968" x1="3456" />
        </branch>
        <branch name="XLXN_45(31:0)">
            <wire x2="3424" y1="1712" y2="1712" x1="2848" />
            <wire x2="3424" y1="1712" y2="1904" x1="3424" />
            <wire x2="3584" y1="1904" y2="1904" x1="3424" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="3584" y1="1664" y2="1664" x1="832" />
            <wire x2="3584" y1="1664" y2="1776" x1="3584" />
        </branch>
        <branch name="XLXN_48(3:0)">
            <wire x2="3536" y1="1840" y2="2272" x1="3536" />
            <wire x2="3584" y1="1840" y2="1840" x1="3536" />
        </branch>
        <instance x="4000" y="736" name="XLXI_38" orien="R0">
        </instance>
        <branch name="XLXN_49(31:0)">
            <wire x2="3808" y1="640" y2="704" x1="3808" />
            <wire x2="4000" y1="704" y2="704" x1="3808" />
        </branch>
        <instance x="3472" y="1344" name="XLXI_40" orien="R0" />
        <branch name="XLXN_50">
            <wire x2="3472" y1="1280" y2="1280" x1="3440" />
        </branch>
        <instance x="3216" y="1312" name="XLXI_42" orien="R0" />
        <branch name="XLXN_51">
            <wire x2="3472" y1="1040" y2="1040" x1="2816" />
        </branch>
        <instance x="3472" y="1104" name="XLXI_39" orien="R0" />
        <branch name="XLXN_52">
            <wire x2="3472" y1="1104" y2="1104" x1="2816" />
            <wire x2="3472" y1="1104" y2="1216" x1="3472" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="3472" y1="976" y2="976" x1="3136" />
            <wire x2="3136" y1="976" y2="1280" x1="3136" />
            <wire x2="3136" y1="1280" y2="1536" x1="3136" />
            <wire x2="4080" y1="1536" y2="1536" x1="3136" />
            <wire x2="4080" y1="1536" y2="1776" x1="4080" />
            <wire x2="3216" y1="1280" y2="1280" x1="3136" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="3728" y1="1008" y2="1024" x1="3728" />
            <wire x2="3744" y1="1024" y2="1024" x1="3728" />
            <wire x2="3744" y1="1024" y2="1120" x1="3744" />
            <wire x2="3776" y1="1120" y2="1120" x1="3744" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="3728" y1="1232" y2="1248" x1="3728" />
            <wire x2="3744" y1="1232" y2="1232" x1="3728" />
            <wire x2="3744" y1="1184" y2="1232" x1="3744" />
            <wire x2="3776" y1="1184" y2="1184" x1="3744" />
        </branch>
        <instance x="3776" y="1248" name="XLXI_41" orien="R0" />
        <branch name="XLXN_60">
            <wire x2="3952" y1="576" y2="800" x1="3952" />
            <wire x2="4032" y1="800" y2="800" x1="3952" />
            <wire x2="4032" y1="800" y2="1152" x1="4032" />
            <wire x2="4000" y1="576" y2="576" x1="3952" />
        </branch>
        <instance x="4384" y="2016" name="XLXI_43" orien="R0">
        </instance>
        <branch name="XLXN_61">
            <wire x2="1184" y1="1728" y2="1728" x1="832" />
            <wire x2="1184" y1="1728" y2="2512" x1="1184" />
            <wire x2="4224" y1="2512" y2="2512" x1="1184" />
            <wire x2="4224" y1="1728" y2="2512" x1="4224" />
            <wire x2="4384" y1="1728" y2="1728" x1="4224" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="3216" y1="1168" y2="1168" x1="2816" />
            <wire x2="3216" y1="1168" y2="1472" x1="3216" />
            <wire x2="4320" y1="1472" y2="1472" x1="3216" />
            <wire x2="4320" y1="1472" y2="1792" x1="4320" />
            <wire x2="4384" y1="1792" y2="1792" x1="4320" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="3072" y1="1296" y2="1296" x1="2816" />
            <wire x2="3072" y1="1296" y2="1600" x1="3072" />
            <wire x2="4144" y1="1600" y2="1600" x1="3072" />
            <wire x2="4144" y1="1600" y2="1856" x1="4144" />
            <wire x2="4384" y1="1856" y2="1856" x1="4144" />
        </branch>
        <branch name="XLXN_64(31:0)">
            <wire x2="4288" y1="1968" y2="1968" x1="4080" />
            <wire x2="4288" y1="1968" y2="2256" x1="4288" />
            <wire x2="5040" y1="2256" y2="2256" x1="4288" />
            <wire x2="4288" y1="1920" y2="1968" x1="4288" />
            <wire x2="4384" y1="1920" y2="1920" x1="4288" />
            <wire x2="5040" y1="1792" y2="2256" x1="5040" />
            <wire x2="5088" y1="1792" y2="1792" x1="5040" />
        </branch>
        <instance x="4656" y="592" name="XLXI_44" orien="R0">
        </instance>
        <instance x="5088" y="1888" name="XLXI_45" orien="R0">
        </instance>
        <branch name="XLXN_65(31:0)">
            <wire x2="4944" y1="1728" y2="1856" x1="4944" />
            <wire x2="5088" y1="1856" y2="1856" x1="4944" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="3104" y1="1232" y2="1232" x1="2816" />
            <wire x2="3104" y1="1232" y2="1392" x1="3104" />
            <wire x2="5088" y1="1392" y2="1392" x1="3104" />
            <wire x2="5088" y1="1392" y2="1728" x1="5088" />
        </branch>
        <branch name="XLXN_68(31:0)">
            <wire x2="4496" y1="496" y2="576" x1="4496" />
            <wire x2="4656" y1="496" y2="496" x1="4496" />
        </branch>
        <branch name="XLXN_69(31:0)">
            <wire x2="2784" y1="416" y2="656" x1="2784" />
            <wire x2="4544" y1="416" y2="416" x1="2784" />
            <wire x2="4544" y1="416" y2="560" x1="4544" />
            <wire x2="4656" y1="560" y2="560" x1="4544" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="2816" y1="368" y2="976" x1="2816" />
            <wire x2="4656" y1="368" y2="368" x1="2816" />
            <wire x2="4656" y1="368" y2="432" x1="4656" />
        </branch>
        <branch name="XLXN_71(31:0)">
            <wire x2="5232" y1="256" y2="256" x1="528" />
            <wire x2="5232" y1="256" y2="432" x1="5232" />
            <wire x2="528" y1="256" y2="1248" x1="528" />
            <wire x2="928" y1="1248" y2="1248" x1="528" />
            <wire x2="5232" y1="432" y2="432" x1="5152" />
        </branch>
        <branch name="XLXN_72(31:0)">
            <wire x2="2224" y1="2032" y2="2032" x1="2208" />
            <wire x2="2208" y1="2032" y2="2608" x1="2208" />
            <wire x2="5664" y1="2608" y2="2608" x1="2208" />
            <wire x2="5664" y1="1728" y2="1728" x1="5584" />
            <wire x2="5664" y1="1728" y2="2608" x1="5664" />
        </branch>
        <branch name="I_CLK">
            <wire x2="368" y1="1536" y2="1536" x1="336" />
        </branch>
        <iomarker fontsize="28" x="336" y="1536" name="I_CLK" orien="R180" />
        <branch name="I_EN">
            <wire x2="368" y1="1664" y2="1664" x1="336" />
        </branch>
        <iomarker fontsize="28" x="336" y="1664" name="I_EN" orien="R180" />
    </sheet>
</drawing>