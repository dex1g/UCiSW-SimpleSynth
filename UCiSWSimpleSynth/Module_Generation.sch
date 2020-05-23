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
        <signal name="DO_Rdy" />
        <signal name="Clk" />
        <signal name="XLXN_16" />
        <signal name="Cmd(3:0)" />
        <signal name="Addr(3:0)" />
        <signal name="XLXN_34(7:0)" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36(11:0)" />
        <signal name="DO(11:0)" />
        <signal name="Reset" />
        <signal name="XLXN_7" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_63(11:0)" />
        <signal name="XLXN_65(11:0)" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_70(11:0)" />
        <signal name="XLXN_72(11:0)" />
        <signal name="XLXN_74(11:0)" />
        <signal name="XLXN_77" />
        <signal name="XLXN_78" />
        <signal name="XLXN_82" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="XLXN_89" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="XLXN_96" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98" />
        <signal name="XLXN_99" />
        <signal name="XLXN_101" />
        <signal name="XLXN_102" />
        <signal name="XLXN_103" />
        <signal name="XLXN_104(7:0)" />
        <signal name="XLXN_105" />
        <signal name="XLXN_109" />
        <signal name="XLXN_110(11:0)" />
        <signal name="XLXN_111" />
        <signal name="XLXN_112" />
        <signal name="XLXN_114" />
        <signal name="XLXN_115(19:0)" />
        <signal name="XLXN_118(11:0)" />
        <signal name="XLXN_120(11:0)" />
        <signal name="XLXN_121(19:0)" />
        <signal name="XLXN_122(19:0)" />
        <port polarity="Input" name="DI(7:0)" />
        <port polarity="Input" name="DI_Rdy" />
        <port polarity="Input" name="F0" />
        <port polarity="Output" name="DO_Rdy" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="Cmd(3:0)" />
        <port polarity="Output" name="Addr(3:0)" />
        <port polarity="Output" name="DO(11:0)" />
        <port polarity="Input" name="Reset" />
        <blockdef name="Freq_calc">
            <timestamp>2020-5-13T22:36:40</timestamp>
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
        <blockdef name="Oscillator">
            <timestamp>2020-5-10T19:36:10</timestamp>
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
        <blockdef name="Env_gen">
            <timestamp>2020-5-23T17:23:25</timestamp>
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
            <timestamp>2020-5-23T18:37:58</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Env_control">
            <timestamp>2020-5-23T18:25:26</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
            <blockpin signalname="XLXN_7" name="Enabled" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_1(11:0)" name="Freq(11:0)" />
            <blockpin signalname="DO_Rdy" name="Start" />
            <blockpin signalname="XLXN_110(11:0)" name="Data(11:0)" />
            <blockpin signalname="Cmd(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="Addr(3:0)" name="Addr(3:0)" />
        </block>
        <block symbolname="Env_gen" name="XLXI_8">
            <blockpin signalname="XLXN_16" name="Key_Pressed" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_121(19:0)" name="Att_Val(19:0)" />
            <blockpin signalname="XLXN_122(19:0)" name="Rel_Val(19:0)" />
            <blockpin signalname="XLXN_7" name="Play" />
            <blockpin signalname="XLXN_109" name="Env_On" />
            <blockpin signalname="XLXN_34(7:0)" name="Factor(7:0)" />
        </block>
        <block symbolname="Multiplier" name="XLXI_9">
            <blockpin signalname="XLXN_109" name="Enable" />
            <blockpin signalname="XLXN_110(11:0)" name="Data(11:0)" />
            <blockpin signalname="XLXN_34(7:0)" name="Ratio(7:0)" />
            <blockpin signalname="DO(11:0)" name="DO(11:0)" />
        </block>
        <block symbolname="Env_control" name="XLXI_10">
            <blockpin signalname="DI_Rdy" name="DO_Rdy" />
            <blockpin signalname="F0" name="F0" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="DI(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_121(19:0)" name="Att_Val(19:0)" />
            <blockpin signalname="XLXN_122(19:0)" name="Rel_Val(19:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1(11:0)">
            <wire x2="1760" y1="912" y2="912" x1="1680" />
            <wire x2="1760" y1="912" y2="1200" x1="1760" />
            <wire x2="2080" y1="1200" y2="1200" x1="1760" />
        </branch>
        <branch name="DI(7:0)">
            <wire x2="992" y1="1040" y2="1040" x1="944" />
            <wire x2="992" y1="1040" y2="1792" x1="992" />
            <wire x2="1136" y1="1792" y2="1792" x1="992" />
            <wire x2="1296" y1="1040" y2="1040" x1="992" />
        </branch>
        <branch name="DI_Rdy">
            <wire x2="1136" y1="976" y2="976" x1="944" />
            <wire x2="1136" y1="976" y2="1600" x1="1136" />
            <wire x2="1296" y1="976" y2="976" x1="1136" />
        </branch>
        <branch name="F0">
            <wire x2="1088" y1="912" y2="912" x1="944" />
            <wire x2="1088" y1="912" y2="1664" x1="1088" />
            <wire x2="1136" y1="1664" y2="1664" x1="1088" />
            <wire x2="1296" y1="912" y2="912" x1="1088" />
        </branch>
        <branch name="DO_Rdy">
            <wire x2="2992" y1="944" y2="944" x1="2464" />
        </branch>
        <branch name="Cmd(3:0)">
            <wire x2="2992" y1="1072" y2="1072" x1="2464" />
        </branch>
        <branch name="Addr(3:0)">
            <wire x2="2992" y1="1136" y2="1136" x1="2464" />
        </branch>
        <branch name="XLXN_34(7:0)">
            <wire x2="2512" y1="1600" y2="1600" x1="2080" />
            <wire x2="2512" y1="1376" y2="1600" x1="2512" />
            <wire x2="2544" y1="1376" y2="1376" x1="2512" />
        </branch>
        <instance x="2544" y="1408" name="XLXI_9" orien="R0">
        </instance>
        <branch name="DO(11:0)">
            <wire x2="2992" y1="1248" y2="1248" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="2992" y="1248" name="DO(11:0)" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1136" name="Addr(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1072" name="Cmd(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2992" y="944" name="DO_Rdy" orien="R0" />
        <branch name="Reset">
            <wire x2="1296" y1="1360" y2="1360" x1="944" />
            <wire x2="1600" y1="1360" y2="1360" x1="1296" />
            <wire x2="1600" y1="1360" y2="1664" x1="1600" />
            <wire x2="1696" y1="1664" y2="1664" x1="1600" />
            <wire x2="1296" y1="1168" y2="1360" x1="1296" />
        </branch>
        <branch name="Clk">
            <wire x2="1040" y1="1296" y2="1296" x1="944" />
            <wire x2="1040" y1="1296" y2="1728" x1="1040" />
            <wire x2="1136" y1="1728" y2="1728" x1="1040" />
            <wire x2="1248" y1="1296" y2="1296" x1="1040" />
            <wire x2="1648" y1="1296" y2="1296" x1="1248" />
            <wire x2="1648" y1="1296" y2="1600" x1="1648" />
            <wire x2="1696" y1="1600" y2="1600" x1="1648" />
            <wire x2="2000" y1="1296" y2="1296" x1="1648" />
            <wire x2="1296" y1="1104" y2="1104" x1="1248" />
            <wire x2="1248" y1="1104" y2="1296" x1="1248" />
            <wire x2="2080" y1="944" y2="944" x1="2000" />
            <wire x2="2000" y1="944" y2="1296" x1="2000" />
        </branch>
        <instance x="1136" y="1824" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_110(11:0)">
            <wire x2="2512" y1="1008" y2="1008" x1="2464" />
            <wire x2="2512" y1="1008" y2="1312" x1="2512" />
            <wire x2="2544" y1="1312" y2="1312" x1="2512" />
        </branch>
        <instance x="1296" y="1072" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_16">
            <wire x2="1696" y1="1232" y2="1232" x1="1680" />
            <wire x2="1696" y1="1232" y2="1408" x1="1696" />
        </branch>
        <instance x="1696" y="1632" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_109">
            <wire x2="2464" y1="1504" y2="1504" x1="2080" />
            <wire x2="2544" y1="1248" y2="1248" x1="2464" />
            <wire x2="2464" y1="1248" y2="1504" x1="2464" />
        </branch>
        <instance x="2080" y="1168" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_7">
            <wire x2="2080" y1="1264" y2="1408" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="944" y="912" name="F0" orien="R180" />
        <iomarker fontsize="28" x="944" y="976" name="DI_Rdy" orien="R180" />
        <iomarker fontsize="28" x="944" y="1040" name="DI(7:0)" orien="R180" />
        <iomarker fontsize="28" x="944" y="1296" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="944" y="1360" name="Reset" orien="R180" />
        <branch name="XLXN_121(19:0)">
            <wire x2="1552" y1="1600" y2="1600" x1="1520" />
            <wire x2="1552" y1="1600" y2="1728" x1="1552" />
            <wire x2="1696" y1="1728" y2="1728" x1="1552" />
        </branch>
        <branch name="XLXN_122(19:0)">
            <wire x2="1696" y1="1792" y2="1792" x1="1520" />
        </branch>
    </sheet>
</drawing>