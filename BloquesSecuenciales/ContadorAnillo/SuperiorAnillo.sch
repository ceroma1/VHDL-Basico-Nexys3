<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="clear" />
        <signal name="DatOut(7:0)" />
        <signal name="XLXN_4" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="clear" />
        <port polarity="Output" name="DatOut(7:0)" />
        <blockdef name="Anillo">
            <timestamp>2015-5-17T11:37:31</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="divide">
            <timestamp>2015-5-17T11:38:1</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="Anillo" name="XLXI_1">
            <blockpin signalname="XLXN_4" name="clk" />
            <blockpin signalname="clear" name="clear" />
            <blockpin signalname="DatOut(7:0)" name="DatoOut(7:0)" />
        </block>
        <block symbolname="divide" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="clear" name="reset" />
            <blockpin signalname="XLXN_4" name="Foutdivide" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="992" y="320" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1504" y="320" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="976" y1="224" y2="224" x1="832" />
            <wire x2="992" y1="224" y2="224" x1="976" />
        </branch>
        <branch name="clear">
            <wire x2="960" y1="288" y2="288" x1="848" />
            <wire x2="976" y1="288" y2="288" x1="960" />
            <wire x2="992" y1="288" y2="288" x1="976" />
            <wire x2="960" y1="288" y2="384" x1="960" />
            <wire x2="1440" y1="384" y2="384" x1="960" />
            <wire x2="1440" y1="288" y2="384" x1="1440" />
            <wire x2="1504" y1="288" y2="288" x1="1440" />
        </branch>
        <branch name="DatOut(7:0)">
            <wire x2="1920" y1="224" y2="224" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1920" y="224" name="DatOut(7:0)" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1504" y1="224" y2="224" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="832" y="224" name="clk" orien="R180" />
        <iomarker fontsize="28" x="848" y="288" name="clear" orien="R180" />
    </sheet>
</drawing>