<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="reset" />
        <signal name="seg(6:0)" />
        <signal name="an(3:0)" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13(3:0)" />
        <signal name="EntrA(3:0)" />
        <signal name="EntrB(3:0)" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Output" name="an(3:0)" />
        <port polarity="Input" name="EntrA(3:0)" />
        <port polarity="Input" name="EntrB(3:0)" />
        <port polarity="Input" name="clk" />
        <blockdef name="display">
            <timestamp>2015-4-11T10:15:39</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="divide">
            <timestamp>2015-4-11T10:15:57</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="mux4a1">
            <timestamp>2015-4-11T10:16:14</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="negacion">
            <timestamp>2015-4-11T10:16:31</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-64" height="128" />
        </blockdef>
        <block symbolname="display" name="XLXI_1">
            <blockpin signalname="XLXN_13(3:0)" name="digito(3:0)" />
            <blockpin signalname="seg(6:0)" name="segmento(6:0)" />
        </block>
        <block symbolname="divide" name="EntA">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_18" name="Foutdivide" />
        </block>
        <block symbolname="mux4a1" name="XLXI_3">
            <blockpin signalname="XLXN_18" name="sel" />
            <blockpin signalname="EntrA(3:0)" name="a(3:0)" />
            <blockpin signalname="EntrB(3:0)" name="b(3:0)" />
            <blockpin signalname="XLXN_13(3:0)" name="fout(3:0)" />
        </block>
        <block symbolname="negacion" name="XLXI_4">
            <blockpin signalname="XLXN_18" name="btn" />
            <blockpin signalname="an(3:0)" name="anodo(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1136" y="448" name="XLXI_3" orien="R0">
        </instance>
        <instance x="624" y="384" name="EntA" orien="R0">
        </instance>
        <instance x="1136" y="592" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1632" y="320" name="XLXI_1" orien="R0">
        </instance>
        <branch name="reset">
            <wire x2="608" y1="352" y2="352" x1="480" />
            <wire x2="624" y1="352" y2="352" x1="608" />
        </branch>
        <branch name="seg(6:0)">
            <wire x2="2048" y1="288" y2="288" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2048" y="288" name="seg(6:0)" orien="R0" />
        <branch name="an(3:0)">
            <wire x2="1552" y1="560" y2="560" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1552" y="560" name="an(3:0)" orien="R0" />
        <iomarker fontsize="28" x="480" y="352" name="reset" orien="R180" />
        <branch name="XLXN_13(3:0)">
            <wire x2="1632" y1="288" y2="288" x1="1520" />
        </branch>
        <branch name="EntrA(3:0)">
            <wire x2="1024" y1="496" y2="496" x1="512" />
            <wire x2="1024" y1="352" y2="496" x1="1024" />
            <wire x2="1120" y1="352" y2="352" x1="1024" />
            <wire x2="1136" y1="352" y2="352" x1="1120" />
        </branch>
        <branch name="EntrB(3:0)">
            <wire x2="1120" y1="560" y2="560" x1="512" />
            <wire x2="1136" y1="416" y2="416" x1="1120" />
            <wire x2="1120" y1="416" y2="560" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="512" y="560" name="EntrB(3:0)" orien="R180" />
        <iomarker fontsize="28" x="512" y="496" name="EntrA(3:0)" orien="R180" />
        <branch name="XLXN_18">
            <wire x2="1056" y1="288" y2="288" x1="1008" />
            <wire x2="1136" y1="288" y2="288" x1="1056" />
            <wire x2="1056" y1="288" y2="624" x1="1056" />
            <wire x2="1136" y1="624" y2="624" x1="1056" />
        </branch>
        <branch name="clk">
            <wire x2="608" y1="288" y2="288" x1="448" />
            <wire x2="624" y1="288" y2="288" x1="608" />
        </branch>
        <iomarker fontsize="28" x="448" y="288" name="clk" orien="R180" />
    </sheet>
</drawing>