<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(11:0)" />
        <signal name="DI(7:0)" />
        <signal name="DI_Rdy" />
        <signal name="F0" />
        <signal name="Clk" />
        <signal name="DO_Rdy" />
        <signal name="XLXN_16" />
        <signal name="XLXN_18" />
        <signal name="Att_Val(17:0)" />
        <signal name="Rel_Val(17:0)" />
        <signal name="Cmd(3:0)" />
        <signal name="Addr(3:0)" />
        <signal name="XLXN_34(7:0)" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36(11:0)" />
        <signal name="DO(11:0)" />
        <signal name="Reset" />
        <port polarity="Input" name="DI(7:0)" />
        <port polarity="Input" name="DI_Rdy" />
        <port polarity="Input" name="F0" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="DO_Rdy" />
        <port polarity="Input" name="Att_Val(17:0)" />
        <port polarity="Input" name="Rel_Val(17:0)" />
        <port polarity="Output" name="Cmd(3:0)" />
        <port polarity="Output" name="Addr(3:0)" />
        <port polarity="Output" name="DO(11:0)" />
        <port polarity="Input" name="Reset" />
        <blockdef name="Oscillator">
            <timestamp>2020-4-17T7:1:32</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="Freq_calc">
            <timestamp>2020-4-17T8:20:17</timestamp>
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="384" />
        </blockdef>
        <blockdef name="Env_gen">
            <timestamp>2020-4-17T6:50:59</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="448" />
        </blockdef>
        <blockdef name="Multiplier">
            <timestamp>2020-4-17T6:51:9</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="Freq_calc" name="XLXI_5">
            <blockpin signalname="F0" name="F0" />
            <blockpin signalname="DI_Rdy" name="DO_Rdy" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="DI(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_16" name="Key_Pressed" />
            <blockpin signalname="XLXN_1(11:0)" name="Freq(11:0)" />
        </block>
        <block symbolname="Oscillator" name="XLXI_2">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_1(11:0)" name="Freq(11:0)" />
            <blockpin signalname="DO_Rdy" name="Start" />
            <blockpin signalname="XLXN_36(11:0)" name="Data(11:0)" />
            <blockpin signalname="Cmd(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="Addr(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_18" name="Enabled" />
        </block>
        <block symbolname="Env_gen" name="XLXI_8">
            <blockpin signalname="XLXN_16" name="Key_Pressed" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_18" name="Play" />
            <blockpin signalname="XLXN_35" name="Env_On" />
            <blockpin signalname="XLXN_34(7:0)" name="Factor(7:0)" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Att_Val(17:0)" name="Att_Val(17:0)" />
            <blockpin signalname="Rel_Val(17:0)" name="Rel_Val(17:0)" />
        </block>
        <block symbolname="Multiplier" name="XLXI_9">
            <blockpin signalname="XLXN_35" name="Enable" />
            <blockpin signalname="XLXN_36(11:0)" name="Data(11:0)" />
            <blockpin signalname="XLXN_34(7:0)" name="Ratio(7:0)" />
            <blockpin signalname="DO(11:0)" name="DO(11:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1(11:0)">
            <wire x2="1680" y1="944" y2="944" x1="1584" />
            <wire x2="1680" y1="944" y2="1232" x1="1680" />
            <wire x2="2032" y1="1232" y2="1232" x1="1680" />
        </branch>
        <branch name="DI(7:0)">
            <wire x2="1200" y1="1072" y2="1072" x1="1040" />
        </branch>
        <branch name="DI_Rdy">
            <wire x2="1200" y1="1008" y2="1008" x1="1040" />
        </branch>
        <branch name="F0">
            <wire x2="1200" y1="944" y2="944" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="944" name="F0" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1008" name="DI_Rdy" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1072" name="DI(7:0)" orien="R180" />
        <instance x="1200" y="1104" name="XLXI_5" orien="R0">
        </instance>
        <instance x="2032" y="1200" name="XLXI_2" orien="R0">
        </instance>
        <branch name="DO_Rdy">
            <wire x2="2496" y1="976" y2="976" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2496" y="976" name="DO_Rdy" orien="R0" />
        <iomarker fontsize="28" x="1040" y="1328" name="Clk" orien="R180" />
        <branch name="XLXN_18">
            <wire x2="2016" y1="1520" y2="1520" x1="2000" />
            <wire x2="2032" y1="1296" y2="1296" x1="2016" />
            <wire x2="2016" y1="1296" y2="1520" x1="2016" />
        </branch>
        <branch name="Clk">
            <wire x2="1152" y1="1328" y2="1328" x1="1040" />
            <wire x2="1536" y1="1328" y2="1328" x1="1152" />
            <wire x2="1760" y1="1328" y2="1328" x1="1536" />
            <wire x2="1536" y1="1328" y2="1712" x1="1536" />
            <wire x2="1616" y1="1712" y2="1712" x1="1536" />
            <wire x2="1200" y1="1136" y2="1136" x1="1152" />
            <wire x2="1152" y1="1136" y2="1328" x1="1152" />
            <wire x2="2032" y1="976" y2="976" x1="1760" />
            <wire x2="1760" y1="976" y2="1328" x1="1760" />
        </branch>
        <instance x="1616" y="1744" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_16">
            <wire x2="1600" y1="1264" y2="1264" x1="1584" />
            <wire x2="1600" y1="1264" y2="1520" x1="1600" />
            <wire x2="1616" y1="1520" y2="1520" x1="1600" />
        </branch>
        <branch name="Att_Val(17:0)">
            <wire x2="1616" y1="1840" y2="1840" x1="1408" />
        </branch>
        <branch name="Rel_Val(17:0)">
            <wire x2="1616" y1="1904" y2="1904" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1408" y="1840" name="Att_Val(17:0)" orien="R180" />
        <iomarker fontsize="28" x="1408" y="1904" name="Rel_Val(17:0)" orien="R180" />
        <branch name="Cmd(3:0)">
            <wire x2="2480" y1="1104" y2="1104" x1="2416" />
        </branch>
        <branch name="Addr(3:0)">
            <wire x2="2480" y1="1168" y2="1168" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1104" name="Cmd(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2480" y="1168" name="Addr(3:0)" orien="R0" />
        <branch name="XLXN_34(7:0)">
            <wire x2="2496" y1="1712" y2="1712" x1="2000" />
            <wire x2="2752" y1="1408" y2="1408" x1="2496" />
            <wire x2="2496" y1="1408" y2="1712" x1="2496" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="2432" y1="1616" y2="1616" x1="2000" />
            <wire x2="2432" y1="1280" y2="1616" x1="2432" />
            <wire x2="2752" y1="1280" y2="1280" x1="2432" />
        </branch>
        <branch name="XLXN_36(11:0)">
            <wire x2="2656" y1="1040" y2="1040" x1="2416" />
            <wire x2="2656" y1="1040" y2="1344" x1="2656" />
            <wire x2="2752" y1="1344" y2="1344" x1="2656" />
        </branch>
        <instance x="2752" y="1440" name="XLXI_9" orien="R0">
        </instance>
        <branch name="DO(11:0)">
            <wire x2="3200" y1="1280" y2="1280" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1280" name="DO(11:0)" orien="R0" />
        <branch name="Reset">
            <wire x2="1184" y1="1536" y2="1536" x1="1120" />
            <wire x2="1184" y1="1536" y2="1776" x1="1184" />
            <wire x2="1616" y1="1776" y2="1776" x1="1184" />
            <wire x2="1200" y1="1200" y2="1200" x1="1184" />
            <wire x2="1184" y1="1200" y2="1536" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1120" y="1536" name="Reset" orien="R180" />
    </sheet>
</drawing>