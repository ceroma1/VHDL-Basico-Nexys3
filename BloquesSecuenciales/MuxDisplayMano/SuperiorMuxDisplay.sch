<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="EntA(3:0)" />
        <signal name="EntB(3:0)" />
        <signal name="Selec" />
        <signal name="seg(6:0)" />
        <signal name="XLXN_5(3:0)" />
        <signal name="XLXN_6" />
        <signal name="an(3:0)" />
        <port polarity="Input" name="EntA(3:0)" />
        <port polarity="Input" name="EntB(3:0)" />
        <port polarity="Input" name="Selec" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Output" name="an(3:0)" />
        <blockdef name="mux4a1">
            <timestamp>2015-4-11T9:42:54</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="display">
            <timestamp>2015-4-11T9:42:35</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="negacion">
            <timestamp>2015-4-11T9:52:39</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-64" height="128" />
        </blockdef>
        <block symbolname="mux4a1" name="XLXI_1">
            <blockpin signalname="Selec" name="sel" />
            <blockpin signalname="EntA(3:0)" name="a(3:0)" />
            <blockpin signalname="EntB(3:0)" name="b(3:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="fout(3:0)" />
        </block>
        <block symbolname="display" name="XLXI_2">
            <blockpin signalname="XLXN_5(3:0)" name="digito(3:0)" />
            <blockpin signalname="seg(6:0)" name="segmento(6:0)" />
        </block>
        <block symbolname="negacion" name="XLXI_4">
            <blockpin signalname="an(3:0)" name="anodo(3:0)" />
            <blockpin signalname="Selec" name="btn" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1056" y="464" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1632" y="336" name="XLXI_2" orien="R0">
        </instance>
        <branch name="EntA(3:0)">
            <wire x2="1040" y1="368" y2="368" x1="976" />
            <wire x2="1056" y1="368" y2="368" x1="1040" />
        </branch>
        <branch name="EntB(3:0)">
            <wire x2="1040" y1="432" y2="432" x1="976" />
            <wire x2="1056" y1="432" y2="432" x1="1040" />
        </branch>
        <branch name="Selec">
            <wire x2="1008" y1="304" y2="304" x1="928" />
            <wire x2="1040" y1="304" y2="304" x1="1008" />
            <wire x2="1056" y1="304" y2="304" x1="1040" />
            <wire x2="1008" y1="304" y2="528" x1="1008" />
            <wire x2="1648" y1="528" y2="528" x1="1008" />
        </branch>
        <branch name="seg(6:0)">
            <wire x2="2048" y1="304" y2="304" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2048" y="304" name="seg(6:0)" orien="R0" />
        <branch name="XLXN_5(3:0)">
            <wire x2="1632" y1="304" y2="304" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="976" y="368" name="EntA(3:0)" orien="R180" />
        <iomarker fontsize="28" x="976" y="432" name="EntB(3:0)" orien="R180" />
        <instance x="1648" y="496" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="928" y="304" name="Selec" orien="R180" />
        <branch name="an(3:0)">
            <wire x2="2064" y1="464" y2="464" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="2064" y="464" name="an(3:0)" orien="R0" />
    </sheet>
</drawing>