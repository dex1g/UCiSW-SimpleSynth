<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_6(3:0)" />
        <signal name="XLXN_7(3:0)" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SCK" />
        <signal name="DAC_CS" />
        <signal name="DAC_CLR" />
        <signal name="SPI_SS_B" />
        <signal name="AMP_CS" />
        <signal name="AD_CONV" />
        <signal name="SF_CE0" />
        <signal name="FPGA_INIT_B" />
        <signal name="Clk_50MHz" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_49(7:0)" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_55(11:0)" />
        <signal name="XLXN_56(17:0)" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_MISO" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <blockdef name="DACWrite">
            <timestamp>2009-10-4T15:3:32</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:36</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="Module_Generation">
            <timestamp>2020-5-13T22:36:55</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="DACWrite" name="XLXI_2">
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_52" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_7(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_6(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_55(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin name="Busy" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_4">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin signalname="XLXN_50" name="F0" />
            <blockpin signalname="XLXN_51" name="DO_Rdy" />
            <blockpin signalname="XLXN_49(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="Module_Generation" name="XLXI_5">
            <blockpin signalname="XLXN_49(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_51" name="DI_Rdy" />
            <blockpin signalname="XLXN_50" name="F0" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_56(17:0)" name="Att_Val(17:0)" />
            <blockpin signalname="XLXN_56(17:0)" name="Rel_Val(17:0)" />
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_52" name="DO_Rdy" />
            <blockpin signalname="XLXN_7(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_6(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_55(11:0)" name="DO(11:0)" />
        </block>
        <block symbolname="constant" name="XLXI_6">
            <attr value="29896" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_56(17:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2048" y="1424" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_6(3:0)">
            <wire x2="1856" y1="1072" y2="1072" x1="1632" />
            <wire x2="2048" y1="1008" y2="1008" x1="1856" />
            <wire x2="1856" y1="1008" y2="1072" x1="1856" />
        </branch>
        <branch name="XLXN_7(3:0)">
            <wire x2="2048" y1="944" y2="944" x1="1632" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="2528" y1="880" y2="880" x1="2496" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="2528" y1="944" y2="944" x1="2496" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="2528" y1="1008" y2="1008" x1="2496" />
        </branch>
        <branch name="DAC_CS">
            <wire x2="2528" y1="1072" y2="1072" x1="2496" />
        </branch>
        <branch name="DAC_CLR">
            <wire x2="2528" y1="1136" y2="1136" x1="2496" />
        </branch>
        <branch name="SPI_SS_B">
            <wire x2="2528" y1="1200" y2="1200" x1="2496" />
        </branch>
        <branch name="AMP_CS">
            <wire x2="2528" y1="1264" y2="1264" x1="2496" />
        </branch>
        <branch name="AD_CONV">
            <wire x2="2528" y1="1328" y2="1328" x1="2496" />
        </branch>
        <branch name="SF_CE0">
            <wire x2="2528" y1="1392" y2="1392" x1="2496" />
        </branch>
        <branch name="FPGA_INIT_B">
            <wire x2="2528" y1="1456" y2="1456" x1="2496" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="432" y1="1520" y2="1520" x1="416" />
            <wire x2="1456" y1="1520" y2="1520" x1="432" />
            <wire x2="2032" y1="1520" y2="1520" x1="1456" />
            <wire x2="2048" y1="1520" y2="1520" x1="2032" />
            <wire x2="2032" y1="1520" y2="1584" x1="2032" />
            <wire x2="2048" y1="1584" y2="1584" x1="2032" />
            <wire x2="448" y1="976" y2="976" x1="432" />
            <wire x2="432" y1="976" y2="1040" x1="432" />
            <wire x2="448" y1="1040" y2="1040" x1="432" />
            <wire x2="432" y1="1040" y2="1136" x1="432" />
            <wire x2="432" y1="1136" y2="1520" x1="432" />
            <wire x2="1088" y1="1136" y2="1136" x1="432" />
            <wire x2="1088" y1="1008" y2="1136" x1="1088" />
            <wire x2="1248" y1="1008" y2="1008" x1="1088" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="448" y1="848" y2="848" x1="432" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="448" y1="912" y2="912" x1="432" />
        </branch>
        <instance x="448" y="1072" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_49(7:0)">
            <wire x2="976" y1="848" y2="848" x1="832" />
            <wire x2="1248" y1="816" y2="816" x1="976" />
            <wire x2="976" y1="816" y2="848" x1="976" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="880" y1="976" y2="976" x1="832" />
            <wire x2="880" y1="944" y2="976" x1="880" />
            <wire x2="1248" y1="944" y2="944" x1="880" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="880" y1="1040" y2="1040" x1="832" />
            <wire x2="880" y1="1008" y2="1040" x1="880" />
            <wire x2="1056" y1="1008" y2="1008" x1="880" />
            <wire x2="1056" y1="880" y2="1008" x1="1056" />
            <wire x2="1248" y1="880" y2="880" x1="1056" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="1856" y1="816" y2="816" x1="1632" />
            <wire x2="1856" y1="816" y2="880" x1="1856" />
            <wire x2="2048" y1="880" y2="880" x1="1856" />
        </branch>
        <instance x="1248" y="1232" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_55(11:0)">
            <wire x2="1904" y1="1200" y2="1200" x1="1632" />
            <wire x2="1904" y1="1072" y2="1200" x1="1904" />
            <wire x2="2048" y1="1072" y2="1072" x1="1904" />
        </branch>
        <instance x="912" y="1248" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_56(17:0)">
            <wire x2="1152" y1="1280" y2="1280" x1="1056" />
            <wire x2="1248" y1="1072" y2="1072" x1="1152" />
            <wire x2="1152" y1="1072" y2="1136" x1="1152" />
            <wire x2="1152" y1="1136" y2="1280" x1="1152" />
            <wire x2="1248" y1="1136" y2="1136" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="2528" y="880" name="SPI_MOSI" orien="R0" />
        <iomarker fontsize="28" x="2528" y="944" name="SPI_MISO" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1008" name="SPI_SCK" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1072" name="DAC_CS" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1136" name="DAC_CLR" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1200" name="SPI_SS_B" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1264" name="AMP_CS" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1328" name="AD_CONV" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1392" name="SF_CE0" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1456" name="FPGA_INIT_B" orien="R0" />
        <iomarker fontsize="28" x="416" y="1520" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="432" y="848" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="432" y="912" name="PS2_Data" orien="R180" />
    </sheet>
</drawing>