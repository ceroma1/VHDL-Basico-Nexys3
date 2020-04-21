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
        <signal name="DatoOut(7:0)" />
        <signal name="XLXN_4" />
        <signal name="DatoIn" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="DatoOut(7:0)" />
        <port polarity="Input" name="DatoIn" />
        <blockdef name="divide">
            <timestamp>2015-5-14T3:28:55</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="RegDesp">
            <timestamp>2015-5-14T3:29:1</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="divide" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_4" name="Foutdivide" />
        </block>
        <block symbolname="RegDesp" name="XLXI_2">
            <blockpin signalname="XLXN_4" name="clk" />
            <blockpin signalname="reset" name="clear" />
            <blockpin signalname="DatoIn" name="DatoIn" />
            <blockpin signalname="DatoOut(7:0)" name="DatoOut(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="960" y="528" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1456" y="592" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="944" y1="432" y2="432" x1="784" />
            <wire x2="960" y1="432" y2="432" x1="944" />
        </branch>
        <branch name="reset">
            <wire x2="912" y1="496" y2="496" x1="816" />
            <wire x2="912" y1="496" y2="592" x1="912" />
            <wire x2="1408" y1="592" y2="592" x1="912" />
            <wire x2="960" y1="496" y2="496" x1="912" />
            <wire x2="1408" y1="496" y2="592" x1="1408" />
            <wire x2="1456" y1="496" y2="496" x1="1408" />
        </branch>
        <branch name="DatoOut(7:0)">
            <wire x2="1872" y1="432" y2="432" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1872" y="432" name="DatoOut(7:0)" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1456" y1="432" y2="432" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="816" y="496" name="reset" orien="R180" />
        <branch name="DatoIn">
            <wire x2="1440" y1="656" y2="656" x1="1408" />
            <wire x2="1456" y1="560" y2="560" x1="1440" />
            <wire x2="1440" y1="560" y2="656" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1408" y="656" name="DatoIn" orien="R180" />
        <iomarker fontsize="28" x="784" y="432" name="clk" orien="R180" />
    </sheet>
</drawing>