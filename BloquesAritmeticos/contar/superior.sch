<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Fentrada(7:0)" />
        <signal name="seg(6:0)" />
        <signal name="an(3:0)" />
        <signal name="XLXN_4(3:0)" />
        <port polarity="Input" name="Fentrada(7:0)" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Output" name="an(3:0)" />
        <blockdef name="cuenta">
            <timestamp>2015-10-8T9:41:52</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ModuloDisplay">
            <timestamp>2015-10-8T9:41:37</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="cuenta" name="XLXI_1">
            <blockpin signalname="Fentrada(7:0)" name="a(7:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="f(3:0)" />
        </block>
        <block symbolname="ModuloDisplay" name="XLXI_2">
            <blockpin signalname="XLXN_4(3:0)" name="A(3:0)" />
            <blockpin signalname="seg(6:0)" name="segmento(6:0)" />
            <blockpin signalname="an(3:0)" name="Anodos(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1488" y="560" name="XLXI_2" orien="R0">
        </instance>
        <instance x="960" y="496" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Fentrada(7:0)">
            <wire x2="944" y1="464" y2="464" x1="896" />
            <wire x2="960" y1="464" y2="464" x1="944" />
        </branch>
        <branch name="seg(6:0)">
            <wire x2="1904" y1="464" y2="464" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1904" y="464" name="seg(6:0)" orien="R0" />
        <branch name="an(3:0)">
            <wire x2="1904" y1="528" y2="528" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1904" y="528" name="an(3:0)" orien="R0" />
        <branch name="XLXN_4(3:0)">
            <wire x2="1488" y1="464" y2="464" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="896" y="464" name="Fentrada(7:0)" orien="R180" />
    </sheet>
</drawing>