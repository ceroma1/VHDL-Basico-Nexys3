<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="reset" />
        <signal name="Seg(6:0)" />
        <signal name="an(3:0)" />
        <signal name="XLXN_5(3:0)" />
        <signal name="XLXN_6" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="Seg(6:0)" />
        <port polarity="Output" name="an(3:0)" />
        <blockdef name="ModuloDisplay">
            <timestamp>2015-4-10T21:25:24</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="contador">
            <timestamp>2015-4-10T21:25:33</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="divide">
            <timestamp>2015-4-10T21:25:41</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="ModuloDisplay" name="XLXI_1">
            <blockpin signalname="XLXN_5(3:0)" name="A(3:0)" />
            <blockpin signalname="Seg(6:0)" name="segmento(6:0)" />
            <blockpin signalname="an(3:0)" name="Anodos(3:0)" />
        </block>
        <block symbolname="contador" name="XLXI_2">
            <blockpin signalname="reset" name="Borra" />
            <blockpin signalname="XLXN_6" name="reloj" />
            <blockpin signalname="XLXN_5(3:0)" name="salida(3:0)" />
        </block>
        <block symbolname="divide" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_6" name="Foutdivide" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1632" y="448" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1072" y="448" name="XLXI_2" orien="R0">
        </instance>
        <instance x="560" y="448" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="544" y1="352" y2="352" x1="352" />
            <wire x2="560" y1="352" y2="352" x1="544" />
        </branch>
        <branch name="reset">
            <wire x2="528" y1="416" y2="416" x1="384" />
            <wire x2="544" y1="416" y2="416" x1="528" />
            <wire x2="560" y1="416" y2="416" x1="544" />
            <wire x2="528" y1="416" y2="528" x1="528" />
            <wire x2="1056" y1="528" y2="528" x1="528" />
            <wire x2="1056" y1="352" y2="528" x1="1056" />
            <wire x2="1072" y1="352" y2="352" x1="1056" />
        </branch>
        <branch name="Seg(6:0)">
            <wire x2="2048" y1="352" y2="352" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2048" y="352" name="Seg(6:0)" orien="R0" />
        <branch name="an(3:0)">
            <wire x2="2048" y1="416" y2="416" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2048" y="416" name="an(3:0)" orien="R0" />
        <branch name="XLXN_5(3:0)">
            <wire x2="1632" y1="352" y2="352" x1="1456" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1008" y1="352" y2="352" x1="944" />
            <wire x2="1008" y1="352" y2="416" x1="1008" />
            <wire x2="1072" y1="416" y2="416" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="352" y="352" name="clk" orien="R180" />
        <iomarker fontsize="28" x="384" y="416" name="reset" orien="R180" />
    </sheet>
</drawing>