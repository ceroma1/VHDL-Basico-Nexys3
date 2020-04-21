<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="leds(3:0)" />
        <signal name="CLK" />
        <signal name="reset" />
        <signal name="XLXN_4" />
        <port polarity="Output" name="leds(3:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="reset" />
        <blockdef name="cuenta">
            <timestamp>2015-4-10T21:7:46</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="divide">
            <timestamp>2015-4-10T21:7:56</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="cuenta" name="XLXI_1">
            <blockpin signalname="XLXN_4" name="clk" />
            <blockpin signalname="reset" name="clear" />
            <blockpin signalname="leds(3:0)" name="salidacuenta(3:0)" />
        </block>
        <block symbolname="divide" name="XLXI_2">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_4" name="Foutdivide" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="896" y="432" name="XLXI_1" orien="R0">
        </instance>
        <instance x="416" y="432" name="XLXI_2" orien="R0">
        </instance>
        <branch name="leds(3:0)">
            <wire x2="1312" y1="336" y2="336" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1312" y="336" name="leds(3:0)" orien="R0" />
        <branch name="CLK">
            <wire x2="400" y1="336" y2="336" x1="320" />
            <wire x2="416" y1="336" y2="336" x1="400" />
        </branch>
        <branch name="reset">
            <wire x2="400" y1="400" y2="400" x1="320" />
            <wire x2="416" y1="400" y2="400" x1="400" />
            <wire x2="400" y1="400" y2="496" x1="400" />
            <wire x2="864" y1="496" y2="496" x1="400" />
            <wire x2="864" y1="400" y2="496" x1="864" />
            <wire x2="896" y1="400" y2="400" x1="864" />
        </branch>
        <iomarker fontsize="28" x="320" y="336" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="320" y="400" name="reset" orien="R180" />
        <branch name="XLXN_4">
            <wire x2="896" y1="336" y2="336" x1="800" />
        </branch>
    </sheet>
</drawing>