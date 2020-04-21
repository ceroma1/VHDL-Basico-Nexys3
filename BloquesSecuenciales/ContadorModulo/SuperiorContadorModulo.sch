<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2(3:0)" />
        <signal name="seg(6:0)" />
        <signal name="an(3:0)" />
        <signal name="clk" />
        <signal name="reset" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Output" name="an(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <blockdef name="divide">
            <timestamp>2015-4-24T0:37:52</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="ContadorModulo">
            <timestamp>2015-4-24T0:37:15</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="ModuloDisplay">
            <timestamp>2015-4-24T0:37:35</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="divide" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_1" name="Foutdivide" />
        </block>
        <block symbolname="ContadorModulo" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_2(3:0)" name="led(3:0)" />
        </block>
        <block symbolname="ModuloDisplay" name="XLXI_3">
            <blockpin signalname="XLXN_2(3:0)" name="A(3:0)" />
            <blockpin signalname="seg(6:0)" name="segmento(6:0)" />
            <blockpin signalname="an(3:0)" name="Anodos(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1920" y="432" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1408" y="448" name="XLXI_2" orien="R0">
        </instance>
        <instance x="912" y="448" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1408" y1="352" y2="352" x1="1296" />
        </branch>
        <branch name="XLXN_2(3:0)">
            <wire x2="1856" y1="352" y2="352" x1="1792" />
            <wire x2="1856" y1="336" y2="352" x1="1856" />
            <wire x2="1920" y1="336" y2="336" x1="1856" />
        </branch>
        <branch name="seg(6:0)">
            <wire x2="2336" y1="336" y2="336" x1="2304" />
        </branch>
        <iomarker fontsize="28" x="2336" y="336" name="seg(6:0)" orien="R0" />
        <branch name="an(3:0)">
            <wire x2="2336" y1="400" y2="400" x1="2304" />
        </branch>
        <iomarker fontsize="28" x="2336" y="400" name="an(3:0)" orien="R0" />
        <branch name="clk">
            <wire x2="896" y1="352" y2="352" x1="784" />
            <wire x2="912" y1="352" y2="352" x1="896" />
        </branch>
        <branch name="reset">
            <wire x2="880" y1="416" y2="416" x1="816" />
            <wire x2="896" y1="416" y2="416" x1="880" />
            <wire x2="912" y1="416" y2="416" x1="896" />
            <wire x2="880" y1="416" y2="512" x1="880" />
            <wire x2="1360" y1="512" y2="512" x1="880" />
            <wire x2="1360" y1="416" y2="512" x1="1360" />
            <wire x2="1408" y1="416" y2="416" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="784" y="352" name="clk" orien="R180" />
        <iomarker fontsize="28" x="816" y="416" name="reset" orien="R180" />
    </sheet>
</drawing>