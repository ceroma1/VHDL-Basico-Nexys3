<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="clk" />
        <signal name="clear" />
        <signal name="datOut(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="clear" />
        <port polarity="Output" name="datOut(7:0)" />
        <blockdef name="arreglo_reg">
            <timestamp>2015-5-18T10:54:12</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="divfre">
            <timestamp>2015-5-18T10:41:52</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="arreglo_reg" name="XLXI_1">
            <blockpin signalname="clear" name="clear" />
            <blockpin signalname="XLXN_1" name="clk" />
            <blockpin signalname="datOut(7:0)" name="salida(7:0)" />
        </block>
        <block symbolname="divfre" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="clear" name="clear" />
            <blockpin signalname="XLXN_1" name="clk3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1056" y="496" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1600" y="496" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1520" y1="400" y2="400" x1="1440" />
            <wire x2="1520" y1="400" y2="464" x1="1520" />
            <wire x2="1600" y1="464" y2="464" x1="1520" />
        </branch>
        <branch name="clk">
            <wire x2="1056" y1="400" y2="400" x1="912" />
        </branch>
        <branch name="clear">
            <wire x2="1008" y1="464" y2="464" x1="928" />
            <wire x2="1056" y1="464" y2="464" x1="1008" />
            <wire x2="1008" y1="464" y2="528" x1="1008" />
            <wire x2="1584" y1="528" y2="528" x1="1008" />
            <wire x2="1600" y1="400" y2="400" x1="1584" />
            <wire x2="1584" y1="400" y2="528" x1="1584" />
        </branch>
        <branch name="datOut(7:0)">
            <wire x2="2016" y1="400" y2="400" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="2016" y="400" name="datOut(7:0)" orien="R0" />
        <iomarker fontsize="28" x="912" y="400" name="clk" orien="R180" />
        <iomarker fontsize="28" x="928" y="464" name="clear" orien="R180" />
    </sheet>
</drawing>