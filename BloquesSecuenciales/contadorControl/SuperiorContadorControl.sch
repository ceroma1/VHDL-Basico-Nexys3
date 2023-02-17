<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="seg(6:0)" />
        <signal name="an(3:0)" />
        <signal name="clk" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="reset" />
        <signal name="XLXN_7(3:0)" />
        <signal name="selec" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Output" name="an(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="XLXN_5" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="selec" />
        <blockdef name="ContadorControl">
            <timestamp>2015-4-23T23:45:2</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="ModuloDisplay">
            <timestamp>2015-4-23T23:46:19</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="divide">
            <timestamp>2015-4-23T23:45:17</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="ContadorControl" name="XLXI_1">
            <blockpin signalname="XLXN_6" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="selec" name="sel" />
            <blockpin signalname="XLXN_7(3:0)" name="led(3:0)" />
        </block>
        <block symbolname="ModuloDisplay" name="XLXI_2">
            <blockpin signalname="XLXN_7(3:0)" name="A(3:0)" />
            <blockpin signalname="seg(6:0)" name="segmento(6:0)" />
            <blockpin signalname="an(3:0)" name="Anodos(3:0)" />
        </block>
        <block symbolname="divide" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_6" name="Foutdivide" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="784" y="480" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1248" y="544" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1728" y="480" name="XLXI_2" orien="R0">
        </instance>
        <branch name="seg(6:0)">
            <wire x2="2144" y1="384" y2="384" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2144" y="384" name="seg(6:0)" orien="R0" />
        <branch name="an(3:0)">
            <wire x2="2144" y1="448" y2="448" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2144" y="448" name="an(3:0)" orien="R0" />
        <branch name="clk">
            <wire x2="784" y1="384" y2="384" x1="672" />
        </branch>
        <branch name="reset">
            <wire x2="768" y1="448" y2="448" x1="704" />
            <wire x2="784" y1="448" y2="448" x1="768" />
            <wire x2="768" y1="448" y2="528" x1="768" />
            <wire x2="1184" y1="528" y2="528" x1="768" />
            <wire x2="1248" y1="448" y2="448" x1="1184" />
            <wire x2="1184" y1="448" y2="528" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="704" y="448" name="reset" orien="R180" />
        <iomarker fontsize="28" x="672" y="384" name="clk" orien="R180" />
        <branch name="XLXN_6">
            <wire x2="1248" y1="384" y2="384" x1="1168" />
        </branch>
        <branch name="XLXN_7(3:0)">
            <wire x2="1728" y1="384" y2="384" x1="1632" />
        </branch>
        <branch name="selec">
            <wire x2="1232" y1="592" y2="592" x1="1200" />
            <wire x2="1248" y1="512" y2="512" x1="1232" />
            <wire x2="1232" y1="512" y2="592" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1200" y="592" name="selec" orien="R180" />
    </sheet>
</drawing>