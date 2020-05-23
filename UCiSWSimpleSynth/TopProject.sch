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
        <signal name="btn_south" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59(7:0)" />
        <signal name="XLXN_61(3:0)" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
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
        <port polarity="Input" name="btn_south" />
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
            <timestamp>2020-5-23T18:38:28</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="DACWrite" name="XLXI_2">
            <blockpin signalname="btn_south" name="Reset" />
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
            <blockpin signalname="btn_south" name="Reset" />
            <blockpin signalname="XLXN_52" name="DO_Rdy" />
            <blockpin signalname="XLXN_7(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_6(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_55(11:0)" name="DO(11:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2048" y="1424" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_6(3:0)">
            <wire x2="1968" y1="1072" y2="1072" x1="1936" />
            <wire x2="1968" y1="1008" y2="1072" x1="1968" />
            <wire x2="2048" y1="1008" y2="1008" x1="1968" />
        </branch>
        <branch name="XLXN_7(3:0)">
            <wire x2="2048" y1="944" y2="944" x1="1936" />
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
            <wire x2="1056" y1="944" y2="944" x1="992" />
            <wire x2="1072" y1="944" y2="944" x1="1056" />
            <wire x2="1056" y1="944" y2="1008" x1="1056" />
            <wire x2="1072" y1="1008" y2="1008" x1="1056" />
            <wire x2="1056" y1="1008" y2="1136" x1="1056" />
            <wire x2="1536" y1="1136" y2="1136" x1="1056" />
            <wire x2="1056" y1="1136" y2="1520" x1="1056" />
            <wire x2="2032" y1="1520" y2="1520" x1="1056" />
            <wire x2="2048" y1="1520" y2="1520" x1="2032" />
            <wire x2="2032" y1="1520" y2="1584" x1="2032" />
            <wire x2="2048" y1="1584" y2="1584" x1="2032" />
            <wire x2="1552" y1="1008" y2="1008" x1="1536" />
            <wire x2="1536" y1="1008" y2="1136" x1="1536" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="1056" y1="816" y2="816" x1="992" />
            <wire x2="1072" y1="816" y2="816" x1="1056" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="1056" y1="880" y2="880" x1="992" />
            <wire x2="1072" y1="880" y2="880" x1="1056" />
        </branch>
        <branch name="XLXN_49(7:0)">
            <wire x2="1552" y1="816" y2="816" x1="1456" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="2016" y1="816" y2="816" x1="1936" />
            <wire x2="2016" y1="816" y2="880" x1="2016" />
            <wire x2="2048" y1="880" y2="880" x1="2016" />
        </branch>
        <branch name="XLXN_55(11:0)">
            <wire x2="2016" y1="1200" y2="1200" x1="1936" />
            <wire x2="2016" y1="1072" y2="1200" x1="2016" />
            <wire x2="2048" y1="1072" y2="1072" x1="2016" />
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
        <branch name="btn_south">
            <wire x2="1536" y1="1200" y2="1200" x1="992" />
            <wire x2="1552" y1="1200" y2="1200" x1="1536" />
            <wire x2="1536" y1="1200" y2="1456" x1="1536" />
            <wire x2="2048" y1="1456" y2="1456" x1="1536" />
        </branch>
        <instance x="1552" y="1232" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_50">
            <wire x2="1552" y1="944" y2="944" x1="1456" />
        </branch>
        <instance x="1072" y="1040" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_51">
            <wire x2="1504" y1="1008" y2="1008" x1="1456" />
            <wire x2="1552" y1="880" y2="880" x1="1504" />
            <wire x2="1504" y1="880" y2="1008" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="992" y="1200" name="btn_south" orien="R180" />
        <iomarker fontsize="28" x="992" y="816" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="992" y="880" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="992" y="944" name="Clk_50MHz" orien="R180" />
    </sheet>
</drawing>