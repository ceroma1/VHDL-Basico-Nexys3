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
        <signal name="XLXN_3(13:0)" />
        <signal name="CLK" />
        <signal name="Reset" />
        <signal name="XLXN_9" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Output" name="an(3:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="Reset" />
        <blockdef name="ModuloCuenta">
            <timestamp>2015-4-12T10:37:3</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="SuperiorBinarioDecimal">
            <timestamp>2015-4-12T10:37:16</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ModuloDivide">
            <timestamp>2015-4-12T10:42:40</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="ModuloDivide" name="XLXI_3">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="Reset" name="reset" />
            <blockpin signalname="XLXN_9" name="Fout" />
        </block>
        <block symbolname="ModuloCuenta" name="XLXI_1">
            <blockpin signalname="XLXN_9" name="clk" />
            <blockpin signalname="Reset" name="reset" />
            <blockpin signalname="XLXN_3(13:0)" name="Fsalida(13:0)" />
        </block>
        <block symbolname="SuperiorBinarioDecimal" name="XLXI_2">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="Reset" name="reset" />
            <blockpin signalname="XLXN_3(13:0)" name="Ent(13:0)" />
            <blockpin signalname="seg(6:0)" name="seg(6:0)" />
            <blockpin signalname="an(3:0)" name="an(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1488" y="400" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2128" y="432" name="XLXI_2" orien="R0">
        </instance>
        <branch name="seg(6:0)">
            <wire x2="2544" y1="272" y2="272" x1="2512" />
        </branch>
        <branch name="an(3:0)">
            <wire x2="2544" y1="400" y2="400" x1="2512" />
        </branch>
        <branch name="XLXN_3(13:0)">
            <wire x2="2000" y1="304" y2="304" x1="1872" />
            <wire x2="2000" y1="304" y2="400" x1="2000" />
            <wire x2="2128" y1="400" y2="400" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2544" y="272" name="seg(6:0)" orien="R0" />
        <iomarker fontsize="28" x="2544" y="400" name="an(3:0)" orien="R0" />
        <instance x="944" y="400" name="XLXI_3" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="912" y1="304" y2="304" x1="800" />
            <wire x2="928" y1="304" y2="304" x1="912" />
            <wire x2="944" y1="304" y2="304" x1="928" />
            <wire x2="912" y1="208" y2="304" x1="912" />
            <wire x2="1936" y1="208" y2="208" x1="912" />
            <wire x2="1936" y1="208" y2="272" x1="1936" />
            <wire x2="2128" y1="272" y2="272" x1="1936" />
        </branch>
        <branch name="Reset">
            <wire x2="912" y1="368" y2="368" x1="816" />
            <wire x2="928" y1="368" y2="368" x1="912" />
            <wire x2="944" y1="368" y2="368" x1="928" />
            <wire x2="912" y1="368" y2="464" x1="912" />
            <wire x2="1392" y1="464" y2="464" x1="912" />
            <wire x2="1952" y1="464" y2="464" x1="1392" />
            <wire x2="1392" y1="368" y2="464" x1="1392" />
            <wire x2="1488" y1="368" y2="368" x1="1392" />
            <wire x2="1952" y1="336" y2="464" x1="1952" />
            <wire x2="2128" y1="336" y2="336" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="800" y="304" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="816" y="368" name="Reset" orien="R180" />
        <branch name="XLXN_9">
            <wire x2="1488" y1="304" y2="304" x1="1328" />
        </branch>
    </sheet>
</drawing>