// ======================================================================
// project.v generated from TopDesign.cysch
// 12/09/2020 at 13:36
// This file is auto generated. ANY EDITS YOU MAKE MAY BE LOST WHEN THIS FILE IS REGENERATED!!!
// ======================================================================

`define CYDEV_CHIP_FAMILY_PSOC3 1
`define CYDEV_CHIP_FAMILY_PSOC4 2
`define CYDEV_CHIP_FAMILY_PSOC5 3
`define CYDEV_CHIP_FAMILY_PSOC6 4
`define CYDEV_CHIP_FAMILY_FM0P 5
`define CYDEV_CHIP_FAMILY_FM3 6
`define CYDEV_CHIP_FAMILY_FM4 7
`define CYDEV_CHIP_FAMILY_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_3A 1
`define CYDEV_CHIP_REVISION_3A_PRODUCTION 3
`define CYDEV_CHIP_REVISION_3A_ES3 3
`define CYDEV_CHIP_REVISION_3A_ES2 1
`define CYDEV_CHIP_REVISION_3A_ES1 0
`define CYDEV_CHIP_MEMBER_5B 2
`define CYDEV_CHIP_REVISION_5B_PRODUCTION 0
`define CYDEV_CHIP_REVISION_5B_ES0 0
`define CYDEV_CHIP_MEMBER_5A 3
`define CYDEV_CHIP_REVISION_5A_PRODUCTION 1
`define CYDEV_CHIP_REVISION_5A_ES1 1
`define CYDEV_CHIP_REVISION_5A_ES0 0
`define CYDEV_CHIP_MEMBER_4G 4
`define CYDEV_CHIP_REVISION_4G_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4G_ES 17
`define CYDEV_CHIP_REVISION_4G_ES2 33
`define CYDEV_CHIP_MEMBER_4U 5
`define CYDEV_CHIP_REVISION_4U_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4E 6
`define CYDEV_CHIP_REVISION_4E_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4E_CCG2_NO_USBPD 0
`define CYDEV_CHIP_MEMBER_4X 7
`define CYDEV_CHIP_REVISION_4X_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4O 8
`define CYDEV_CHIP_REVISION_4O_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4R 9
`define CYDEV_CHIP_REVISION_4R_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4T 10
`define CYDEV_CHIP_REVISION_4T_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4N 11
`define CYDEV_CHIP_REVISION_4N_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4S 12
`define CYDEV_CHIP_REVISION_4S_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4W 13
`define CYDEV_CHIP_REVISION_4W_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AC 14
`define CYDEV_CHIP_REVISION_4AC_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Q 15
`define CYDEV_CHIP_REVISION_4Q_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Y 16
`define CYDEV_CHIP_REVISION_4Y_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Z 17
`define CYDEV_CHIP_REVISION_4Z_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4D 18
`define CYDEV_CHIP_REVISION_4D_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4J 19
`define CYDEV_CHIP_REVISION_4J_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4K 20
`define CYDEV_CHIP_REVISION_4K_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4V 21
`define CYDEV_CHIP_REVISION_4V_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4H 22
`define CYDEV_CHIP_REVISION_4H_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AA 23
`define CYDEV_CHIP_REVISION_4AA_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4A 24
`define CYDEV_CHIP_REVISION_4A_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4A_ES0 17
`define CYDEV_CHIP_MEMBER_4F 25
`define CYDEV_CHIP_REVISION_4F_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0
`define CYDEV_CHIP_MEMBER_4P 26
`define CYDEV_CHIP_REVISION_4P_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4M 27
`define CYDEV_CHIP_REVISION_4M_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AB 28
`define CYDEV_CHIP_REVISION_4AB_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4L 29
`define CYDEV_CHIP_REVISION_4L_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4I 30
`define CYDEV_CHIP_REVISION_4I_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_6A 31
`define CYDEV_CHIP_REVISION_6A_ES 17
`define CYDEV_CHIP_REVISION_6A_PRODUCTION 33
`define CYDEV_CHIP_REVISION_6A_NO_UDB 33
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE1 32
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE1_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE2 33
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE2_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE3 34
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM3 35
`define CYDEV_CHIP_REVISION_FM3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM4 36
`define CYDEV_CHIP_REVISION_FM4_PRODUCTION 0
`define CYDEV_CHIP_FAMILY_USED 4
`define CYDEV_CHIP_MEMBER_USED 31
`define CYDEV_CHIP_REVISION_USED 33
// Component: GraphicLCDIntf_v1_80
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\GraphicLCDIntf_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\GraphicLCDIntf_v1_80\GraphicLCDIntf_v1_80.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\GraphicLCDIntf_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\GraphicLCDIntf_v1_80\GraphicLCDIntf_v1_80.v"
`endif

// Component: cy_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`endif

// Component: ZeroTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`endif

// Component: or_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0\or_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0\or_v1_0.v"
`endif

// SCB_UART_PDL_v2_0(BaudRate=115200, BitsOrder=0, BreakSignalBits=11, BufferMinSize=64, ByteMode=true, ClkFreqDes=1382.4, ClkMinusTolerance=5, ClkPlusTolerance=5, ClockFromTerm=false, ComMode=0, CtsPolarity=0, CtsTermEnable=false, DataWidth=8, Direction=3, DropOnFrameErr=false, DropOnParityErr=false, EnableCts=false, EnableInputFilter=false, EnableMultiProc=false, EnableRts=false, EnableRxOutput=false, EnableTxEn=false, EnableTxOutput=false, InterruptMode=1, InterruptTermEnable=false, IntrRxBreakDetected=false, IntrRxFrameErr=false, IntrRxFull=false, IntrRxNotEmpty=false, IntrRxOverflow=false, IntrRxParityErr=false, IntrRxTrigger=false, IntrRxUnderflow=false, IntrTxEmpty=false, IntrTxNotFull=false, IntrTxOverflow=false, IntrTxTrigger=false, IntrTxUartDone=false, IntrTxUartLostArb=false, IntrTxUartNack=false, IntrTxUnderflow=false, IrdaLowPower=false, IrdaPolarity=0, IsCtsPinAllowed=true, IsDmaCapable=true, IsEnableInputFilterVisible=true, IsMultiprocessorModeAvailable=false, IsRtsPinAllowed=true, IsRtsTriggerLevelVisible=false, IsRxIntrSourcesVisible=false, IsRxTriggerLevelVisible=false, IsTxIntrSourcesVisible=false, IsTxTriggerLevelVisible=false, MaxFifoLevel=127, MpRxAcceptAddress=false, MpRxAddress=0, MpRxAddressMask=255, OvsFactor=12, ParityType=3, PreconfigureIO=false, RemoveCtsPin=true, RemoveIntr=false, RemoveRtsPin=true, RemoveRxPin=false, RemoveRxTxPin=true, RemoveTxEnPin=true, RemoveTxPin=false, RtsPolarity=0, RtsTermEnable=false, RtsTriggerLevel=63, RxIntrMask=0, RxTermEnable=false, RxTriggerLevel=63, RxTxTermEnable=false, ShowTerminals=false, SmCardRetryOnNack=false, StopBits=2, SymbolShape=0, TriggerOutputEnable=false, TxEnTermEnable=false, TxIntrMask=0, TxTermEnable=false, TxTriggerLevel=63, UartMode=2, UseIntr=true, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=SCB_UART_PDL_v2_0, CY_CONFIG_TITLE=UART, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=UART, CY_INSTANCE_SHORT_NAME=UART, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=scb, CY_PDL_DRIVER_REQ_VERSION=2.0.0, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.3, INSTANCE_NAME=UART, )
module SCB_UART_PDL_v2_0_0 (
    cts_in,
    tx_out,
    rts_out,
    interrupt,
    clock,
    rx_dma,
    tx_dma,
    rx_in,
    rx_tx_out,
    tx_en_out);
    input       cts_in;
    output      tx_out;
    output      rts_out;
    output      interrupt;
    input       clock;
    output      rx_dma;
    output      tx_dma;
    input       rx_in;
    output      rx_tx_out;
    output      tx_en_out;


          wire  rx_wire;
          wire  tx_wire;
          wire  rts_wire;
          wire  cts_wire;
          wire  intr_wire;
          wire  clock_wire;
          wire  Net_161;
          wire  Net_157;
          wire  Net_156;
          wire [3:0] Net_155;
          wire  Net_154;
          wire  Net_150;
          wire  Net_149;
          wire  Net_148;
          wire  Net_147;
          wire  Net_146;
          wire  Net_145;
          wire  Net_1172;
          wire  Net_23;
          wire  tx_en_wire;
          wire  Net_47;
          wire  Net_22;
          wire  Net_24;
          wire  Net_847;


	cy_clock_v1_0
		#(.id("da32549e-f5e5-46c7-bf57-0caf4665302f/b68e5b9d-7828-482d-a282-930f990e3b3e"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("723379629.62963"),
		  .is_direct(0),
		  .is_digital(0))
		SCBCLK
		 (.clock_out(Net_847));


	// clock_VM (cy_virtualmux_v1_0)
	assign clock_wire = Net_847;

    ZeroTerminal ZeroTerminal_7 (
        .z(Net_22));


    assign Net_23 = Net_22 | Net_847;

	wire [0:0] tmpFB_0__tx_net;
	wire [0:0] tmpIO_0__tx_net;
	electrical [0:0] tmpSIOVREF__tx_net;

	cy_mxs40_gpio_v1_0
		#(.id("da32549e-f5e5-46c7-bf57-0caf4665302f/65f3af6c-759b-4ccb-8c66-5c95ba1f5f4f"),
		  .width(1),
		  .sio_grp_cnt(0),
		  .drive_mode("6"),
		  .ibuf_enabled("0"),
		  .init_dr_st("1"),
		  .input_sync("0"),
		  .intr_mode("0"),
		  .io_voltage(""),
		  .output_conn("1"),
		  .oe_conn("0"),
		  .output_sync("0"),
		  .oe_sync("0"),
		  .drive_strength("0"),
		  .max_frequency("100"),
		  .i2c_mode("0"),
		  .output_current_cap("8"),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .slew_rate("0"),
		  .vtrip("0"),
		  .use_annotation("0"),
		  .hotswap_needed("0"))
		tx
		 (.oe({1'b1}),
		  .y({tx_wire}),
		  .fb({tmpFB_0__tx_net[0:0]}),
		  .io({tmpIO_0__tx_net[0:0]}),
		  .siovref(tmpSIOVREF__tx_net));


	wire [0:0] tmpIO_0__rx_net;
	electrical [0:0] tmpSIOVREF__rx_net;

	cy_mxs40_gpio_v1_0
		#(.id("da32549e-f5e5-46c7-bf57-0caf4665302f/b7e8018e-1ef7-49c0-b5a5-61641a03e31c"),
		  .width(1),
		  .sio_grp_cnt(0),
		  .drive_mode("0"),
		  .ibuf_enabled("1"),
		  .init_dr_st("1"),
		  .input_sync("0"),
		  .intr_mode("0"),
		  .io_voltage(""),
		  .output_conn("0"),
		  .oe_conn("0"),
		  .output_sync("0"),
		  .oe_sync("0"),
		  .drive_strength("0"),
		  .max_frequency("100"),
		  .i2c_mode("0"),
		  .output_current_cap("8"),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .slew_rate("0"),
		  .vtrip("0"),
		  .use_annotation("0"),
		  .hotswap_needed("0"))
		rx
		 (.oe({1'b1}),
		  .y({1'b0}),
		  .fb({Net_1172}),
		  .io({tmpIO_0__rx_net[0:0]}),
		  .siovref(tmpSIOVREF__rx_net));


	// rx_VM (cy_virtualmux_v1_0)
	assign rx_wire = Net_1172;

	// cts_VM (cy_virtualmux_v1_0)
	assign cts_wire = cts_in;


	cy_mxs40_isr_v1_0
		#(.deepsleep_required(0),
		  .int_type(2'b10))
		SCB_IRQ
		 (.int_signal(intr_wire));


    cy_mxs40_scb_v1_10 SCB (
        .clock(clock_wire),
        .uart_rx(rx_wire),
        .uart_cts(cts_wire),
        .i2c_scl(Net_145),
        .i2c_sda(Net_146),
        .spi_clk_s(1'b0),
        .spi_select_s(1'b0),
        .spi_miso_m(1'b0),
        .spi_mosi_s(1'b0),
        .uart_tx(tx_wire),
        .uart_rts(rts_wire),
        .uart_tx_en(tx_en_wire),
        .spi_clk_m(Net_154),
        .spi_select_m(Net_155[3:0]),
        .spi_mosi_m(Net_156),
        .spi_miso_s(Net_157),
        .interrupt(intr_wire),
        .tr_tx_req(tx_dma),
        .tr_rx_req(rx_dma),
        .tr_i2c_scl_filtered(Net_161));
    defparam SCB.master = 0;
    defparam SCB.mode = 2;
    defparam SCB.requires_io_preconfigure = 0;


    assign tx_out = tx_wire;

    assign rts_out = rts_wire;

    assign interrupt = intr_wire;

    assign rx_tx_out = tx_wire;

    assign tx_en_out = tx_en_wire;


endmodule

// Component: cy_analog_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`endif

// Component: Bus_Connect_v2_50
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\Bus_Connect_v2_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\Bus_Connect_v2_50\Bus_Connect_v2_50.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\Bus_Connect_v2_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\Bus_Connect_v2_50\Bus_Connect_v2_50.v"
`endif

// Component: cy_constant_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`endif

// Component: cy_vref_v1_70
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70\cy_vref_v1_70.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.3\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70\cy_vref_v1_70.v"
`endif

// Scan_ADC_v3_10(AclkMuxSelect=1, Config0=<?xml version="1.0" encoding="utf-16"?><CyConfigModel xmlns:Version="3_10"><SampleRateEditor>true</SampleRateEditor><SampleRate>1000000</SampleRate><FreeRunning>true</FreeRunning><UseSoc>false</UseSoc><VrefBypass>true</VrefBypass><VrefSource>VREFSOURCE_VDDA</VrefSource><VrefVoltage>3.3</VrefVoltage><VnegSource>VNEGSOURCE_VREFSHORT</VnegSource><DiffResultFormat>SIGNED_FORMAT</DiffResultFormat><SingleEndedResultFormat>UNSIGNED_FORMAT</SingleEndedResultFormat><SamplesAveraged>FOUR_SAMPLES</SamplesAveraged><AveragingMode>SEQUENTIAL_AVG</AveragingMode><AlternateResolution>EIGHT_BIT</AlternateResolution><CompareMode>LESS_THAN</CompareMode><LowLimit>512</LowLimit><HighLimit>3584</HighLimit><NumChannels>4</NumChannels><ChannelList><CyChannelModel><Enabled>true</Enabled><UseAltResolution>false</UseAltResolution><InputMode>SINGLE_ENDED_CHAN</InputMode><UseAveraging>false</UseAveraging><MinimumAcqTime>167</MinimumAcqTime><UseLimitInterrupt>false</UseLimitInterrupt><ActualAcqTime>180</ActualAcqTime><UseSaturationInterrupt>false</UseSaturationInterrupt><ApertureTimer>0</ApertureTimer></CyChannelModel><CyChannelModel><Enabled>true</Enabled><UseAltResolution>false</UseAltResolution><InputMode>SINGLE_ENDED_CHAN</InputMode><UseAveraging>false</UseAveraging><MinimumAcqTime>167</MinimumAcqTime><UseLimitInterrupt>false</UseLimitInterrupt><ActualAcqTime>180</ActualAcqTime><UseSaturationInterrupt>false</UseSaturationInterrupt><ApertureTimer>1</ApertureTimer></CyChannelModel><CyChannelModel><Enabled>true</Enabled><UseAltResolution>false</UseAltResolution><InputMode>SINGLE_ENDED_CHAN</InputMode><UseAveraging>false</UseAveraging><MinimumAcqTime>167</MinimumAcqTime><UseLimitInterrupt>false</UseLimitInterrupt><ActualAcqTime>180</ActualAcqTime><UseSaturationInterrupt>false</UseSaturationInterrupt><ApertureTimer>1</ApertureTimer></CyChannelModel><CyChannelModel><Enabled>true</Enabled><UseAltResolution>false</UseAltResolution><InputMode>SINGLE_ENDED_CHAN</InputMode><UseAveraging>false</UseAveraging><MinimumAcqTime>167</MinimumAcqTime><UseLimitInterrupt>false</UseLimitInterrupt><ActualAcqTime>180</ActualAcqTime><UseSaturationInterrupt>false</UseSaturationInterrupt><ApertureTimer>1</ApertureTimer></CyChannelModel></ChannelList><ApertureTimers><int>4</int><int>4</int><int>2</int><int>2</int></ApertureTimers><AdcClockDivider>3</AdcClockDivider><FilterUabStartDelay>0</FilterUabStartDelay><ActualSampleRate>231481</ActualSampleRate><ActualAdcClockHz>16666666</ActualAdcClockHz><ActualScanUs>4.32000898561869</ActualScanUs></CyConfigModel>, Config0Filter=<pass_type=LOW_PASS>\r\n<shape=BUTTERWORTH>\r\n<primary_freq=10>\r\n<secondary_freq=-1>\r\n<notchEnabled=False>\r\n<modBitEnabled=False>\r\n<sampleRate=1000>\r\n<uabClockDivider=0>\r\n<sampleRateSource=AUTO>\r\n<filterGain_dB=0>\r\n<filterGain_Linear=1>\r\n<gainScale=DB>\r\n, Config0FilterDisplay=<FreqAxisUpper=150>\r\n<FreqAxisLower=0>\r\n<GainAxisUpper=0>\r\n<GainAxisLower=-140>\r\n<Display=16829571>\r\n, Config1=<?xml version="1.0" encoding="utf-16"?><CyConfigModel xmlns:Version="3_10"><SampleRateEditor>true</SampleRateEditor><SampleRate>100000</SampleRate><FreeRunning>true</FreeRunning><UseSoc>false</UseSoc><VrefBypass>true</VrefBypass><VrefSource>VREFSOURCE_VBGR</VrefSource><VrefVoltage>1.2</VrefVoltage><VnegSource>VNEGSOURCE_VREFSHORT</VnegSource><DiffResultFormat>SIGNED_FORMAT</DiffResultFormat><SingleEndedResultFormat>UNSIGNED_FORMAT</SingleEndedResultFormat><SamplesAveraged>TWO_SAMPLES</SamplesAveraged><AveragingMode>SEQUENTIAL_AVG</AveragingMode><AlternateResolution>EIGHT_BIT</AlternateResolution><CompareMode>LESS_THAN</CompareMode><LowLimit>512</LowLimit><HighLimit>3584</HighLimit><NumChannels>2</NumChannels><ChannelList><CyChannelModel><Enabled>true</Enabled><UseAltResolution>false</UseAltResolution><InputMode>DIFFERENTIAL_CHAN</InputMode><UseAveraging>false</UseAveraging><MinimumAcqTime>167</MinimumAcqTime><UseLimitInterrupt>false</UseLimitInterrupt><ActualAcqTime>8040</ActualAcqTime><UseSaturationInterrupt>false</UseSaturationInterrupt><ApertureTimer>0</ApertureTimer></CyChannelModel><CyChannelModel><Enabled>true</Enabled><UseAltResolution>false</UseAltResolution><InputMode>DIFFERENTIAL_CHAN</InputMode><UseAveraging>false</UseAveraging><MinimumAcqTime>167</MinimumAcqTime><UseLimitInterrupt>false</UseLimitInterrupt><ActualAcqTime>180</ActualAcqTime><UseSaturationInterrupt>false</UseSaturationInterrupt><ApertureTimer>1</ApertureTimer></CyChannelModel></ChannelList><ApertureTimers><int>135</int><int>4</int><int>2</int><int>2</int></ApertureTimers><AdcClockDivider>3</AdcClockDivider><FilterUabStartDelay>0</FilterUabStartDelay><ActualSampleRate>99800</ActualSampleRate><ActualAdcClockHz>16666666</ActualAdcClockHz><ActualScanUs>10.020040080160321</ActualScanUs></CyConfigModel>, Config1Filter=<pass_type=LOW_PASS>\r\n<shape=BUTTERWORTH>\r\n<primary_freq=10>\r\n<secondary_freq=-1>\r\n<notchEnabled=False>\r\n<modBitEnabled=False>\r\n<sampleRate=1000>\r\n<uabClockDivider=0>\r\n<sampleRateSource=AUTO>\r\n<filterGain_dB=0>\r\n<filterGain_Linear=1>\r\n<gainScale=DB>\r\n, Config1FilterDisplay=<FreqAxisUpper=150>\r\n<FreqAxisLower=0>\r\n<GainAxisUpper=0>\r\n<GainAxisLower=-140>\r\n<Display=16829571>\r\n, Config2=<?xml version="1.0" encoding="utf-16"?><CyConfigModel xmlns:Version="3_10"><SampleRateEditor>true</SampleRateEditor><SampleRate>100000</SampleRate><FreeRunning>true</FreeRunning><UseSoc>false</UseSoc><VrefBypass>true</VrefBypass><VrefSource>VREFSOURCE_VBGR</VrefSource><VrefVoltage>1.2</VrefVoltage><VnegSource>VNEGSOURCE_VREFSHORT</VnegSource><DiffResultFormat>SIGNED_FORMAT</DiffResultFormat><SingleEndedResultFormat>UNSIGNED_FORMAT</SingleEndedResultFormat><SamplesAveraged>TWO_SAMPLES</SamplesAveraged><AveragingMode>SEQUENTIAL_AVG</AveragingMode><AlternateResolution>EIGHT_BIT</AlternateResolution><CompareMode>LESS_THAN</CompareMode><LowLimit>512</LowLimit><HighLimit>3584</HighLimit><NumChannels>2</NumChannels><ChannelList><CyChannelModel><Enabled>true</Enabled><UseAltResolution>false</UseAltResolution><InputMode>DIFFERENTIAL_CHAN</InputMode><UseAveraging>false</UseAveraging><MinimumAcqTime>167</MinimumAcqTime><UseLimitInterrupt>false</UseLimitInterrupt><ActualAcqTime>8040</ActualAcqTime><UseSaturationInterrupt>false</UseSaturationInterrupt><ApertureTimer>0</ApertureTimer></CyChannelModel><CyChannelModel><Enabled>true</Enabled><UseAltResolution>false</UseAltResolution><InputMode>DIFFERENTIAL_CHAN</InputMode><UseAveraging>false</UseAveraging><MinimumAcqTime>167</MinimumAcqTime><UseLimitInterrupt>false</UseLimitInterrupt><ActualAcqTime>180</ActualAcqTime><UseSaturationInterrupt>false</UseSaturationInterrupt><ApertureTimer>1</ApertureTimer></CyChannelModel></ChannelList><ApertureTimers><int>135</int><int>4</int><int>2</int><int>2</int></ApertureTimers><AdcClockDivider>3</AdcClockDivider><FilterUabStartDelay>0</FilterUabStartDelay><ActualSampleRate>99800</ActualSampleRate><ActualAdcClockHz>16666666</ActualAdcClockHz><ActualScanUs>10.020040080160321</ActualScanUs></CyConfigModel>, Config2Filter=<pass_type=LOW_PASS>\r\n<shape=BUTTERWORTH>\r\n<primary_freq=10>\r\n<secondary_freq=-1>\r\n<notchEnabled=False>\r\n<modBitEnabled=False>\r\n<sampleRate=1000>\r\n<uabClockDivider=0>\r\n<sampleRateSource=AUTO>\r\n<filterGain_dB=0>\r\n<filterGain_Linear=1>\r\n<gainScale=DB>\r\n, Config2FilterDisplay=<FreqAxisUpper=150>\r\n<FreqAxisLower=0>\r\n<GainAxisUpper=0>\r\n<GainAxisLower=-140>\r\n<Display=16829571>\r\n, Config3=<?xml version="1.0" encoding="utf-16"?><CyConfigModel xmlns:Version="3_10"><SampleRateEditor>true</SampleRateEditor><SampleRate>100000</SampleRate><FreeRunning>true</FreeRunning><UseSoc>false</UseSoc><VrefBypass>true</VrefBypass><VrefSource>VREFSOURCE_VBGR</VrefSource><VrefVoltage>1.2</VrefVoltage><VnegSource>VNEGSOURCE_VREFSHORT</VnegSource><DiffResultFormat>SIGNED_FORMAT</DiffResultFormat><SingleEndedResultFormat>UNSIGNED_FORMAT</SingleEndedResultFormat><SamplesAveraged>TWO_SAMPLES</SamplesAveraged><AveragingMode>SEQUENTIAL_AVG</AveragingMode><AlternateResolution>EIGHT_BIT</AlternateResolution><CompareMode>LESS_THAN</CompareMode><LowLimit>512</LowLimit><HighLimit>3584</HighLimit><NumChannels>2</NumChannels><ChannelList><CyChannelModel><Enabled>true</Enabled><UseAltResolution>false</UseAltResolution><InputMode>DIFFERENTIAL_CHAN</InputMode><UseAveraging>false</UseAveraging><MinimumAcqTime>167</MinimumAcqTime><UseLimitInterrupt>false</UseLimitInterrupt><ActualAcqTime>8040</ActualAcqTime><UseSaturationInterrupt>false</UseSaturationInterrupt><ApertureTimer>0</ApertureTimer></CyChannelModel><CyChannelModel><Enabled>true</Enabled><UseAltResolution>false</UseAltResolution><InputMode>DIFFERENTIAL_CHAN</InputMode><UseAveraging>false</UseAveraging><MinimumAcqTime>167</MinimumAcqTime><UseLimitInterrupt>false</UseLimitInterrupt><ActualAcqTime>180</ActualAcqTime><UseSaturationInterrupt>false</UseSaturationInterrupt><ApertureTimer>1</ApertureTimer></CyChannelModel></ChannelList><ApertureTimers><int>135</int><int>4</int><int>2</int><int>2</int></ApertureTimers><AdcClockDivider>3</AdcClockDivider><FilterUabStartDelay>0</FilterUabStartDelay><ActualSampleRate>99800</ActualSampleRate><ActualAdcClockHz>16666666</ActualAdcClockHz><ActualScanUs>10.020040080160321</ActualScanUs></CyConfigModel>, Config3Filter=<pass_type=LOW_PASS>\r\n<shape=BUTTERWORTH>\r\n<primary_freq=10>\r\n<secondary_freq=-1>\r\n<notchEnabled=False>\r\n<modBitEnabled=False>\r\n<sampleRate=1000>\r\n<uabClockDivider=0>\r\n<sampleRateSource=AUTO>\r\n<filterGain_dB=0>\r\n<filterGain_Linear=1>\r\n<gainScale=DB>\r\n, Config3FilterDisplay=<FreqAxisUpper=150>\r\n<FreqAxisLower=0>\r\n<GainAxisUpper=0>\r\n<GainAxisLower=-140>\r\n<Display=16829571>\r\n, Debug=false, DeviceSeriesName=PSoC 63, ExternalClk=false, ExternalSoc=false, ExtVrefMuxSelect=3, FilterConfigMuxSelect_0=1, FilterConfigMuxSelect_1=1, FilterConfigMuxSelect_2=2, FilterConfigMuxSelect_3=3, FilterVinMuxSelect_1_0=3, FilterVinMuxSelect_2_0=2, FilterVinMuxSelect_2_1=0, FilterVinMuxSelect_3_0=1, FilterVinMuxSelect_3_1=0, FilterVinMuxSelect_3_2=0, IsEdgeTrigger=0, IsFilterPresent=false, NumConfigs=1, SarmuxDiffMask=0000, SarmuxVinDiffWidth=4, SarmuxVinNegWidth=1, SarmuxVinPlusMuxSelect_0=0, SarmuxVinPlusMuxSelect_1=0, SarmuxVinPlusMuxSelect_10=0, SarmuxVinPlusMuxSelect_11=0, SarmuxVinPlusMuxSelect_12=0, SarmuxVinPlusMuxSelect_13=0, SarmuxVinPlusMuxSelect_14=0, SarmuxVinPlusMuxSelect_15=0, SarmuxVinPlusMuxSelect_16=0, SarmuxVinPlusMuxSelect_17=0, SarmuxVinPlusMuxSelect_18=0, SarmuxVinPlusMuxSelect_19=0, SarmuxVinPlusMuxSelect_2=0, SarmuxVinPlusMuxSelect_20=0, SarmuxVinPlusMuxSelect_21=0, SarmuxVinPlusMuxSelect_22=0, SarmuxVinPlusMuxSelect_23=0, SarmuxVinPlusMuxSelect_24=0, SarmuxVinPlusMuxSelect_25=0, SarmuxVinPlusMuxSelect_26=0, SarmuxVinPlusMuxSelect_27=0, SarmuxVinPlusMuxSelect_28=0, SarmuxVinPlusMuxSelect_29=0, SarmuxVinPlusMuxSelect_3=0, SarmuxVinPlusMuxSelect_30=0, SarmuxVinPlusMuxSelect_31=0, SarmuxVinPlusMuxSelect_32=0, SarmuxVinPlusMuxSelect_33=0, SarmuxVinPlusMuxSelect_34=0, SarmuxVinPlusMuxSelect_35=0, SarmuxVinPlusMuxSelect_36=0, SarmuxVinPlusMuxSelect_37=0, SarmuxVinPlusMuxSelect_38=0, SarmuxVinPlusMuxSelect_39=0, SarmuxVinPlusMuxSelect_4=0, SarmuxVinPlusMuxSelect_40=0, SarmuxVinPlusMuxSelect_41=0, SarmuxVinPlusMuxSelect_42=0, SarmuxVinPlusMuxSelect_43=0, SarmuxVinPlusMuxSelect_44=0, SarmuxVinPlusMuxSelect_45=0, SarmuxVinPlusMuxSelect_46=0, SarmuxVinPlusMuxSelect_47=0, SarmuxVinPlusMuxSelect_48=0, SarmuxVinPlusMuxSelect_49=0, SarmuxVinPlusMuxSelect_5=0, SarmuxVinPlusMuxSelect_50=0, SarmuxVinPlusMuxSelect_51=0, SarmuxVinPlusMuxSelect_52=0, SarmuxVinPlusMuxSelect_53=0, SarmuxVinPlusMuxSelect_54=0, SarmuxVinPlusMuxSelect_55=0, SarmuxVinPlusMuxSelect_56=0, SarmuxVinPlusMuxSelect_57=0, SarmuxVinPlusMuxSelect_58=0, SarmuxVinPlusMuxSelect_59=0, SarmuxVinPlusMuxSelect_6=0, SarmuxVinPlusMuxSelect_60=0, SarmuxVinPlusMuxSelect_61=0, SarmuxVinPlusMuxSelect_62=0, SarmuxVinPlusMuxSelect_63=0, SarmuxVinPlusMuxSelect_7=0, SarmuxVinPlusMuxSelect_8=0, SarmuxVinPlusMuxSelect_9=0, SocMuxSelect=1, Test_ConfigSpacing=15, Test_ExposeTestTerminals=false, VinMinusMuxSelect_0=1, VinMinusMuxSelect_1=1, VinMinusMuxSelect_10=1, VinMinusMuxSelect_11=1, VinMinusMuxSelect_12=1, VinMinusMuxSelect_13=1, VinMinusMuxSelect_14=1, VinMinusMuxSelect_15=1, VinMinusMuxSelect_16=1, VinMinusMuxSelect_17=1, VinMinusMuxSelect_18=1, VinMinusMuxSelect_19=1, VinMinusMuxSelect_2=1, VinMinusMuxSelect_20=1, VinMinusMuxSelect_21=1, VinMinusMuxSelect_22=1, VinMinusMuxSelect_23=1, VinMinusMuxSelect_24=1, VinMinusMuxSelect_25=1, VinMinusMuxSelect_26=1, VinMinusMuxSelect_27=1, VinMinusMuxSelect_28=1, VinMinusMuxSelect_29=1, VinMinusMuxSelect_3=1, VinMinusMuxSelect_30=1, VinMinusMuxSelect_31=1, VinMinusMuxSelect_32=1, VinMinusMuxSelect_33=1, VinMinusMuxSelect_34=1, VinMinusMuxSelect_35=1, VinMinusMuxSelect_36=1, VinMinusMuxSelect_37=1, VinMinusMuxSelect_38=1, VinMinusMuxSelect_39=1, VinMinusMuxSelect_4=1, VinMinusMuxSelect_40=1, VinMinusMuxSelect_41=1, VinMinusMuxSelect_42=1, VinMinusMuxSelect_43=1, VinMinusMuxSelect_44=1, VinMinusMuxSelect_45=1, VinMinusMuxSelect_46=1, VinMinusMuxSelect_47=1, VinMinusMuxSelect_48=1, VinMinusMuxSelect_49=1, VinMinusMuxSelect_5=1, VinMinusMuxSelect_50=1, VinMinusMuxSelect_51=1, VinMinusMuxSelect_52=1, VinMinusMuxSelect_53=1, VinMinusMuxSelect_54=1, VinMinusMuxSelect_55=1, VinMinusMuxSelect_56=1, VinMinusMuxSelect_57=1, VinMinusMuxSelect_58=1, VinMinusMuxSelect_59=1, VinMinusMuxSelect_6=1, VinMinusMuxSelect_60=1, VinMinusMuxSelect_61=1, VinMinusMuxSelect_62=1, VinMinusMuxSelect_63=1, VinMinusMuxSelect_7=1, VinMinusMuxSelect_8=1, VinMinusMuxSelect_9=1, VinNegMuxSelect_0=1, VinNegMuxSelect_1=1, VinNegMuxSelect_2=1, VinNegMuxSelect_3=1, VinPlusMuxSelect_0=0, VinPlusMuxSelect_1=0, VinPlusMuxSelect_10=1, VinPlusMuxSelect_11=1, VinPlusMuxSelect_12=1, VinPlusMuxSelect_13=1, VinPlusMuxSelect_14=1, VinPlusMuxSelect_15=1, VinPlusMuxSelect_16=1, VinPlusMuxSelect_17=1, VinPlusMuxSelect_18=1, VinPlusMuxSelect_19=1, VinPlusMuxSelect_2=0, VinPlusMuxSelect_20=1, VinPlusMuxSelect_21=1, VinPlusMuxSelect_22=1, VinPlusMuxSelect_23=1, VinPlusMuxSelect_24=1, VinPlusMuxSelect_25=1, VinPlusMuxSelect_26=1, VinPlusMuxSelect_27=1, VinPlusMuxSelect_28=1, VinPlusMuxSelect_29=1, VinPlusMuxSelect_3=0, VinPlusMuxSelect_30=1, VinPlusMuxSelect_31=1, VinPlusMuxSelect_32=1, VinPlusMuxSelect_33=1, VinPlusMuxSelect_34=1, VinPlusMuxSelect_35=1, VinPlusMuxSelect_36=1, VinPlusMuxSelect_37=1, VinPlusMuxSelect_38=1, VinPlusMuxSelect_39=1, VinPlusMuxSelect_4=1, VinPlusMuxSelect_40=1, VinPlusMuxSelect_41=1, VinPlusMuxSelect_42=1, VinPlusMuxSelect_43=1, VinPlusMuxSelect_44=1, VinPlusMuxSelect_45=1, VinPlusMuxSelect_46=1, VinPlusMuxSelect_47=1, VinPlusMuxSelect_48=1, VinPlusMuxSelect_49=1, VinPlusMuxSelect_5=1, VinPlusMuxSelect_50=1, VinPlusMuxSelect_51=1, VinPlusMuxSelect_52=1, VinPlusMuxSelect_53=1, VinPlusMuxSelect_54=1, VinPlusMuxSelect_55=1, VinPlusMuxSelect_56=1, VinPlusMuxSelect_57=1, VinPlusMuxSelect_58=1, VinPlusMuxSelect_59=1, VinPlusMuxSelect_6=1, VinPlusMuxSelect_60=1, VinPlusMuxSelect_61=1, VinPlusMuxSelect_62=1, VinPlusMuxSelect_63=1, VinPlusMuxSelect_7=1, VinPlusMuxSelect_8=1, VinPlusMuxSelect_9=1, VminusMuxSelect=0, VplusMuxSelect=0, VrefMuxSelect_0=1, VrefMuxSelect_1=1, VrefMuxSelect_2=1, VrefMuxSelect_3=1, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=Scan_ADC_v3_10, CY_CONFIG_TITLE=ADC, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=Scan_ADC_P6_v3_10.pdf, CY_FITTER_NAME=ADC, CY_INSTANCE_SHORT_NAME=ADC, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=10, CY_PDL_DRIVER_NAME=sar, CY_PDL_DRIVER_REQ_VERSION=1.20, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.3, INSTANCE_NAME=ADC, )
module Scan_ADC_v3_10_1 (
    sdone,
    eos,
    t_chidv,
    t_chid,
    t_dav,
    t_da,
    t_fvout,
    t_fvalid,
    t_fvinternal,
    vagnd,
    vinPlus_0,
    vinPlus_1,
    vinPlus_2,
    vinPlus_3);
    output      sdone;
    output      eos;
    output      t_chidv;
    output     [3:0] t_chid;
    output      t_dav;
    output     [11:0] t_da;
    inout       t_fvout;
    electrical  t_fvout;
    output      t_fvalid;
    inout      [0:1] t_fvinternal;
    electrical [0:1] t_fvinternal;
    inout       vagnd;
    electrical  vagnd;
    inout       vinPlus_0;
    electrical  vinPlus_0;
    inout       vinPlus_1;
    electrical  vinPlus_1;
    inout       vinPlus_2;
    electrical  vinPlus_2;
    inout       vinPlus_3;
    electrical  vinPlus_3;


          wire  sarClock;
          wire [1:0] st_sel;
    electrical  vref;
          wire  Net_34;
    electrical [3:0] vinNeg;
    electrical  muxoutPlus;
    electrical  muxoutMinus;
    electrical  sarmuxOutMinus;
    electrical  sarmuxOutPlus;
          wire  Net_33;
    electrical  Net_105;
    electrical  Net_100;
    electrical  Net_99;
          wire  Net_29;
          wire  Net_43;
    electrical [63:0] vinPlus;
          wire  Net_42;
          wire  Net_41;
          wire  Net_40;
          wire  Net_56;
    electrical  Net_102;
    electrical  Net_1405;
    electrical  Net_1379;
    electrical  Net_1447;
    electrical  Net_1448;
    electrical  Net_1385;
    electrical  Net_1388;
    electrical  Net_1382;
    electrical  Net_459;
    electrical  Net_458;
    electrical  Net_457;
    electrical  Net_456;
    electrical  Net_1399;
    electrical  Net_1402;
    electrical  Net_1406;
    electrical  Net_349;
    electrical  Net_347;
    electrical  Net_345;
    electrical  Net_331;
    electrical  Net_316;
    electrical  Net_315;
    electrical  Net_314;
    electrical  Net_313;
    electrical  Net_312;
    electrical  Net_311;
    electrical  Net_310;
    electrical  Net_309;
    electrical  Net_308;
    electrical  Net_307;
    electrical  Net_306;
    electrical  Net_305;
    electrical  Net_304;
    electrical  Net_303;
    electrical  Net_302;
    electrical  Net_301;
    electrical  Net_300;
    electrical  Net_299;
    electrical  Net_298;
    electrical  Net_297;
    electrical  Net_296;
    electrical  Net_295;
    electrical  Net_294;
    electrical  Net_293;
    electrical [63:0] vinMinus;
    electrical  Net_292;
    electrical  Net_291;
    electrical  Net_290;
    electrical  Net_289;
    electrical  Net_288;
    electrical  Net_287;
    electrical  Net_286;
    electrical  Net_285;
    electrical  Net_278;
    electrical  Net_276;
    electrical  Net_274;
    electrical  Net_272;
    electrical  Net_270;
    electrical  Net_268;
    electrical  Net_266;
    electrical  Net_264;
    electrical  Net_262;
    electrical  Net_260;
    electrical  Net_258;
    electrical  Net_256;
    electrical  Net_254;
    electrical  Net_252;
    electrical  Net_250;
    electrical  Net_248;
    electrical  Net_246;
    electrical  Net_244;
    electrical  Net_242;
    electrical  Net_240;
    electrical  Net_238;
    electrical  Net_236;
    electrical  Net_234;
    electrical  Net_232;
    electrical  Net_230;
    electrical  Net_228;
    electrical  Net_226;
    electrical  Net_224;
    electrical  Net_222;
    electrical  Net_220;
    electrical  Net_218;
    electrical  Net_213;
    electrical  Net_211;
    electrical  Net_210;
    electrical  Net_209;
    electrical  Net_208;
    electrical  Net_207;
    electrical  Net_206;
    electrical  Net_205;
    electrical  Net_204;
    electrical  Net_203;
    electrical  Net_202;
    electrical  Net_201;
    electrical  Net_200;
    electrical  Net_199;
    electrical  Net_198;
    electrical  Net_197;
    electrical  Net_196;
    electrical  Net_195;
    electrical  Net_194;
    electrical  Net_193;
    electrical  Net_192;
    electrical  Net_191;
    electrical  Net_190;
    electrical  Net_189;
    electrical  Net_188;
    electrical  Net_187;
    electrical  Net_186;
    electrical  Net_185;
    electrical  Net_184;
    electrical  Net_183;
    electrical  Net_182;
    electrical  Net_181;
    electrical  Net_180;
    electrical [3:0] vrefBus;
    electrical  Net_172;
    electrical  Net_170;
    electrical  Net_168;
    electrical  Net_166;
    electrical  Net_164;
    electrical  Net_162;
    electrical  Net_160;
    electrical  Net_158;
    electrical  Net_156;
    electrical  Net_154;
    electrical  Net_152;
    electrical  Net_150;
    electrical  Net_148;
    electrical  Net_146;
    electrical  Net_144;
    electrical  Net_142;
    electrical  Net_139;
    electrical  Net_137;
    electrical  Net_135;
    electrical  Net_133;
    electrical  Net_131;
    electrical  Net_129;
    electrical  Net_127;
    electrical  Net_125;
    electrical  Net_123;
    electrical  Net_121;
    electrical  Net_119;
    electrical  Net_117;
    electrical  Net_115;
    electrical  Net_113;
    electrical  Net_110;
    electrical  Net_107;
    electrical  Net_408;
          wire  Net_415;
          wire  Net_423;
          wire  Net_428;
    electrical [0:0] Net_21;
    electrical [3:0] Net_340;
    electrical [3:0] Net_339;

    cy_mxs40_sarmux_v1_0 SARMUX (
        .muxin_plus(Net_339[3:0]),
        .muxin_minus(Net_340[3:0]),
        .cmn_neg(Net_21[0:0]),
        .muxout_plus(sarmuxOutPlus),
        .muxout_minus(sarmuxOutMinus));
    defparam SARMUX.cmn_neg_width = 1;
    defparam SARMUX.input_mode = "0000";
    defparam SARMUX.muxin_width = 4;


	cy_clock_v1_0
		#(.id("ddb383ac-14a1-468c-a124-6c6fd3331def/f7143d07-534d-4542-813a-8bb23ceb1ae9"),
		  .source_clock_id("2FB4EC85-8328-4C5A-9ED9-8B63060178EB"),
		  .divisor(0),
		  .period("1000000000"),
		  .is_direct(0),
		  .is_digital(0))
		intSarClock
		 (.clock_out(Net_428));


	// vplusMux (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vplusMux_connect(muxoutPlus, sarmuxOutPlus);
	defparam vplusMux_connect.sig_width = 1;

	// vminusMux (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vminusMux_connect(muxoutMinus, sarmuxOutMinus);
	defparam vminusMux_connect.sig_width = 1;

    Bus_Connect_v2_50 vinPlusConnect (
        .in_bus(vinPlus[63:0]),
        .out_bus(Net_339[3:0]));
    defparam vinPlusConnect.in_width = 64;
    defparam vinPlusConnect.out_width = 4;

    Bus_Connect_v2_50 vinMinusConnect (
        .in_bus(vinMinus[63:0]),
        .out_bus(Net_340[3:0]));
    defparam vinMinusConnect.in_width = 64;
    defparam vinMinusConnect.out_width = 4;

    Bus_Connect_v2_50 vinNegConnect (
        .in_bus(vinNeg[3:0]),
        .out_bus(Net_21[0:0]));
    defparam vinNegConnect.in_width = 4;
    defparam vinNegConnect.out_width = 1;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_40));

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_41));

    ZeroTerminal ZeroTerminal_4 (
        .z(Net_42));

    ZeroTerminal ZeroTerminal_5 (
        .z(Net_43));

    ZeroTerminal ZeroTerminal_6 (
        .z(st_sel[1]));

    ZeroTerminal ZeroTerminal_7 (
        .z(st_sel[0]));

	// aclkMux (cy_virtualmux_v1_0)
	assign sarClock = Net_428;

	// socMux (cy_virtualmux_v1_0)
	assign Net_415 = Net_29;

	// extVrefMux (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 extVrefMux_connect(Net_408, Net_102);
	defparam extVrefMux_connect.sig_width = 1;


	cy_mxs40_isr_v1_0
		#(.deepsleep_required(0),
		  .int_type(2'b10))
		IRQ
		 (.int_signal(Net_423));


    ZeroTerminal ZeroTerminal_8 (
        .z(Net_29));

	// vinPlusMux_0 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_0_connect(vinPlus[0], vinPlus_0);
	defparam vinPlusMux_0_connect.sig_width = 1;


    assign Net_34 = Net_33 | Net_428;

    ZeroTerminal ZeroTerminal_9 (
        .z(Net_33));

    cy_mxs40_sar_v1_0 SAR (
        .vplus(muxoutPlus),
        .vminus(muxoutMinus),
        .vref(vref),
        .ext_vref(Net_408),
        .dsi_sar_cfg_st_sel(st_sel[1:0]),
        .dsi_sar_cfg_average(Net_40),
        .dsi_sar_cfg_differential(Net_41),
        .dsi_sar_sw_negvref(Net_42),
        .dsi_sar_data_hilo_sel(Net_43),
        .tr_sar_in(Net_415),
        .clock(sarClock),
        .dsi_sar_sample_done(sdone),
        .dsi_sar_chan_id_valid(t_chidv),
        .dsi_sar_data_valid(t_dav),
        .tr_sar_out(eos),
        .dsi_sar_data(t_da[11:0]),
        .dsi_sar_chan_id(t_chid[3:0]),
        .interrupt(Net_423));
    defparam SAR.edge_trigger = 0;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_133 (
        .noconnect(Net_107));

	// vinPlusMux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_1_connect(vinPlus[1], vinPlus_1);
	defparam vinPlusMux_1_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_134 (
        .noconnect(Net_110));

	// vinPlusMux_2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_2_connect(vinPlus[2], vinPlus_2);
	defparam vinPlusMux_2_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_135 (
        .noconnect(Net_113));

	// vinPlusMux_3 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_3_connect(vinPlus[3], vinPlus_3);
	defparam vinPlusMux_3_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_136 (
        .noconnect(Net_115));

	// vinPlusMux_4 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_4_connect(vinPlus[4], Net_117);
	defparam vinPlusMux_4_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_137 (
        .noconnect(Net_117));

	// vinPlusMux_5 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_5_connect(vinPlus[5], Net_119);
	defparam vinPlusMux_5_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_138 (
        .noconnect(Net_119));

	// vinPlusMux_6 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_6_connect(vinPlus[6], Net_121);
	defparam vinPlusMux_6_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_139 (
        .noconnect(Net_121));

	// vinPlusMux_7 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_7_connect(vinPlus[7], Net_123);
	defparam vinPlusMux_7_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_140 (
        .noconnect(Net_123));

	// vinPlusMux_8 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_8_connect(vinPlus[8], Net_125);
	defparam vinPlusMux_8_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_141 (
        .noconnect(Net_125));

	// vinPlusMux_9 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_9_connect(vinPlus[9], Net_127);
	defparam vinPlusMux_9_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_142 (
        .noconnect(Net_127));

	// vinPlusMux_10 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_10_connect(vinPlus[10], Net_129);
	defparam vinPlusMux_10_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_143 (
        .noconnect(Net_129));

	// vinPlusMux_11 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_11_connect(vinPlus[11], Net_131);
	defparam vinPlusMux_11_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_144 (
        .noconnect(Net_131));

	// vinPlusMux_12 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_12_connect(vinPlus[12], Net_133);
	defparam vinPlusMux_12_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_145 (
        .noconnect(Net_133));

	// vinPlusMux_13 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_13_connect(vinPlus[13], Net_135);
	defparam vinPlusMux_13_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_146 (
        .noconnect(Net_135));

	// vinPlusMux_14 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_14_connect(vinPlus[14], Net_137);
	defparam vinPlusMux_14_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_147 (
        .noconnect(Net_137));

	// vinPlusMux_15 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_15_connect(vinPlus[15], Net_139);
	defparam vinPlusMux_15_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_148 (
        .noconnect(Net_139));

	// vinPlusMux_16 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_16_connect(vinPlus[16], Net_142);
	defparam vinPlusMux_16_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_149 (
        .noconnect(Net_142));

	// vinPlusMux_17 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_17_connect(vinPlus[17], Net_144);
	defparam vinPlusMux_17_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_150 (
        .noconnect(Net_144));

	// vinPlusMux_18 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_18_connect(vinPlus[18], Net_146);
	defparam vinPlusMux_18_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_151 (
        .noconnect(Net_146));

	// vinPlusMux_19 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_19_connect(vinPlus[19], Net_148);
	defparam vinPlusMux_19_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_152 (
        .noconnect(Net_148));

	// vinPlusMux_20 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_20_connect(vinPlus[20], Net_150);
	defparam vinPlusMux_20_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_153 (
        .noconnect(Net_150));

	// vinPlusMux_21 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_21_connect(vinPlus[21], Net_152);
	defparam vinPlusMux_21_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_154 (
        .noconnect(Net_152));

	// vinPlusMux_22 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_22_connect(vinPlus[22], Net_154);
	defparam vinPlusMux_22_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_155 (
        .noconnect(Net_154));

	// vinPlusMux_23 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_23_connect(vinPlus[23], Net_156);
	defparam vinPlusMux_23_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_156 (
        .noconnect(Net_156));

	// vinPlusMux_24 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_24_connect(vinPlus[24], Net_158);
	defparam vinPlusMux_24_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_157 (
        .noconnect(Net_158));

	// vinPlusMux_25 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_25_connect(vinPlus[25], Net_160);
	defparam vinPlusMux_25_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_158 (
        .noconnect(Net_160));

	// vinPlusMux_26 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_26_connect(vinPlus[26], Net_162);
	defparam vinPlusMux_26_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_159 (
        .noconnect(Net_162));

	// vinPlusMux_27 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_27_connect(vinPlus[27], Net_164);
	defparam vinPlusMux_27_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_160 (
        .noconnect(Net_164));

	// vinPlusMux_28 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_28_connect(vinPlus[28], Net_166);
	defparam vinPlusMux_28_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_161 (
        .noconnect(Net_166));

	// vinPlusMux_29 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_29_connect(vinPlus[29], Net_168);
	defparam vinPlusMux_29_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_162 (
        .noconnect(Net_168));

	// vinPlusMux_30 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_30_connect(vinPlus[30], Net_170);
	defparam vinPlusMux_30_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_163 (
        .noconnect(Net_170));

	// vinPlusMux_31 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_31_connect(vinPlus[31], Net_172);
	defparam vinPlusMux_31_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_164 (
        .noconnect(Net_172));

	// vinPlusMux_32 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_32_connect(vinPlus[32], Net_180);
	defparam vinPlusMux_32_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_165 (
        .noconnect(Net_180));

	// vinPlusMux_33 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_33_connect(vinPlus[33], Net_181);
	defparam vinPlusMux_33_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_166 (
        .noconnect(Net_181));

	// vinPlusMux_34 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_34_connect(vinPlus[34], Net_182);
	defparam vinPlusMux_34_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_167 (
        .noconnect(Net_182));

	// vinPlusMux_35 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_35_connect(vinPlus[35], Net_183);
	defparam vinPlusMux_35_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_168 (
        .noconnect(Net_183));

	// vinPlusMux_36 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_36_connect(vinPlus[36], Net_184);
	defparam vinPlusMux_36_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_169 (
        .noconnect(Net_184));

	// vinPlusMux_37 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_37_connect(vinPlus[37], Net_185);
	defparam vinPlusMux_37_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_170 (
        .noconnect(Net_185));

	// vinPlusMux_38 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_38_connect(vinPlus[38], Net_186);
	defparam vinPlusMux_38_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_171 (
        .noconnect(Net_186));

	// vinPlusMux_39 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_39_connect(vinPlus[39], Net_187);
	defparam vinPlusMux_39_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_172 (
        .noconnect(Net_187));

	// vinPlusMux_40 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_40_connect(vinPlus[40], Net_188);
	defparam vinPlusMux_40_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_173 (
        .noconnect(Net_188));

	// vinPlusMux_41 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_41_connect(vinPlus[41], Net_189);
	defparam vinPlusMux_41_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_174 (
        .noconnect(Net_189));

	// vinPlusMux_42 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_42_connect(vinPlus[42], Net_190);
	defparam vinPlusMux_42_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_175 (
        .noconnect(Net_190));

	// vinPlusMux_43 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_43_connect(vinPlus[43], Net_191);
	defparam vinPlusMux_43_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_176 (
        .noconnect(Net_191));

	// vinPlusMux_44 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_44_connect(vinPlus[44], Net_192);
	defparam vinPlusMux_44_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_177 (
        .noconnect(Net_192));

	// vinPlusMux_45 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_45_connect(vinPlus[45], Net_193);
	defparam vinPlusMux_45_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_178 (
        .noconnect(Net_193));

	// vinPlusMux_46 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_46_connect(vinPlus[46], Net_194);
	defparam vinPlusMux_46_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_179 (
        .noconnect(Net_194));

	// vinPlusMux_47 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_47_connect(vinPlus[47], Net_195);
	defparam vinPlusMux_47_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_180 (
        .noconnect(Net_195));

	// vinPlusMux_48 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_48_connect(vinPlus[48], Net_196);
	defparam vinPlusMux_48_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_181 (
        .noconnect(Net_196));

	// vinPlusMux_49 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_49_connect(vinPlus[49], Net_197);
	defparam vinPlusMux_49_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_182 (
        .noconnect(Net_197));

	// vinPlusMux_50 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_50_connect(vinPlus[50], Net_198);
	defparam vinPlusMux_50_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_183 (
        .noconnect(Net_198));

	// vinPlusMux_51 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_51_connect(vinPlus[51], Net_199);
	defparam vinPlusMux_51_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_184 (
        .noconnect(Net_199));

	// vinPlusMux_52 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_52_connect(vinPlus[52], Net_200);
	defparam vinPlusMux_52_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_185 (
        .noconnect(Net_200));

	// vinPlusMux_53 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_53_connect(vinPlus[53], Net_201);
	defparam vinPlusMux_53_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_186 (
        .noconnect(Net_201));

	// vinPlusMux_54 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_54_connect(vinPlus[54], Net_202);
	defparam vinPlusMux_54_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_187 (
        .noconnect(Net_202));

	// vinPlusMux_55 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_55_connect(vinPlus[55], Net_203);
	defparam vinPlusMux_55_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_188 (
        .noconnect(Net_203));

	// vinPlusMux_56 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_56_connect(vinPlus[56], Net_204);
	defparam vinPlusMux_56_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_189 (
        .noconnect(Net_204));

	// vinPlusMux_57 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_57_connect(vinPlus[57], Net_205);
	defparam vinPlusMux_57_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_190 (
        .noconnect(Net_205));

	// vinPlusMux_58 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_58_connect(vinPlus[58], Net_206);
	defparam vinPlusMux_58_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_191 (
        .noconnect(Net_206));

	// vinPlusMux_59 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_59_connect(vinPlus[59], Net_207);
	defparam vinPlusMux_59_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_192 (
        .noconnect(Net_207));

	// vinPlusMux_60 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_60_connect(vinPlus[60], Net_208);
	defparam vinPlusMux_60_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_193 (
        .noconnect(Net_208));

	// vinPlusMux_61 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_61_connect(vinPlus[61], Net_209);
	defparam vinPlusMux_61_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_194 (
        .noconnect(Net_209));

	// vinPlusMux_62 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_62_connect(vinPlus[62], Net_210);
	defparam vinPlusMux_62_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_195 (
        .noconnect(Net_210));

	// vinPlusMux_63 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinPlusMux_63_connect(vinPlus[63], Net_211);
	defparam vinPlusMux_63_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_196 (
        .noconnect(Net_211));

	// vinMinusMux_0 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_0_connect(vinMinus[0], Net_213);
	defparam vinMinusMux_0_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_213));

	// vinMinusMux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_1_connect(vinMinus[1], Net_218);
	defparam vinMinusMux_1_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_2 (
        .noconnect(Net_218));

	// vinMinusMux_2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_2_connect(vinMinus[2], Net_220);
	defparam vinMinusMux_2_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_3 (
        .noconnect(Net_220));

	// vinMinusMux_3 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_3_connect(vinMinus[3], Net_222);
	defparam vinMinusMux_3_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_4 (
        .noconnect(Net_222));

	// vinMinusMux_4 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_4_connect(vinMinus[4], Net_224);
	defparam vinMinusMux_4_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_5 (
        .noconnect(Net_224));

	// vinMinusMux_5 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_5_connect(vinMinus[5], Net_226);
	defparam vinMinusMux_5_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_6 (
        .noconnect(Net_226));

	// vinMinusMux_6 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_6_connect(vinMinus[6], Net_228);
	defparam vinMinusMux_6_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_7 (
        .noconnect(Net_228));

	// vinMinusMux_7 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_7_connect(vinMinus[7], Net_230);
	defparam vinMinusMux_7_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_8 (
        .noconnect(Net_230));

	// vinMinusMux_8 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_8_connect(vinMinus[8], Net_232);
	defparam vinMinusMux_8_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_9 (
        .noconnect(Net_232));

	// vinMinusMux_9 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_9_connect(vinMinus[9], Net_234);
	defparam vinMinusMux_9_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_10 (
        .noconnect(Net_234));

	// vinMinusMux_10 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_10_connect(vinMinus[10], Net_236);
	defparam vinMinusMux_10_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_11 (
        .noconnect(Net_236));

	// vinMinusMux_11 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_11_connect(vinMinus[11], Net_238);
	defparam vinMinusMux_11_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_12 (
        .noconnect(Net_238));

	// vinMinusMux_12 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_12_connect(vinMinus[12], Net_240);
	defparam vinMinusMux_12_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_13 (
        .noconnect(Net_240));

	// vinMinusMux_13 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_13_connect(vinMinus[13], Net_242);
	defparam vinMinusMux_13_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_14 (
        .noconnect(Net_242));

	// vinMinusMux_14 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_14_connect(vinMinus[14], Net_244);
	defparam vinMinusMux_14_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_15 (
        .noconnect(Net_244));

	// vinMinusMux_15 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_15_connect(vinMinus[15], Net_246);
	defparam vinMinusMux_15_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_16 (
        .noconnect(Net_246));

	// vinMinusMux_16 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_16_connect(vinMinus[16], Net_248);
	defparam vinMinusMux_16_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_17 (
        .noconnect(Net_248));

	// vinMinusMux_17 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_17_connect(vinMinus[17], Net_250);
	defparam vinMinusMux_17_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_18 (
        .noconnect(Net_250));

	// vinMinusMux_18 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_18_connect(vinMinus[18], Net_252);
	defparam vinMinusMux_18_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_19 (
        .noconnect(Net_252));

	// vinMinusMux_19 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_19_connect(vinMinus[19], Net_254);
	defparam vinMinusMux_19_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_20 (
        .noconnect(Net_254));

	// vinMinusMux_20 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_20_connect(vinMinus[20], Net_256);
	defparam vinMinusMux_20_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_21 (
        .noconnect(Net_256));

	// vinMinusMux_21 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_21_connect(vinMinus[21], Net_258);
	defparam vinMinusMux_21_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_22 (
        .noconnect(Net_258));

	// vinMinusMux_22 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_22_connect(vinMinus[22], Net_260);
	defparam vinMinusMux_22_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_23 (
        .noconnect(Net_260));

	// vinMinusMux_23 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_23_connect(vinMinus[23], Net_262);
	defparam vinMinusMux_23_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_24 (
        .noconnect(Net_262));

	// vinMinusMux_24 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_24_connect(vinMinus[24], Net_264);
	defparam vinMinusMux_24_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_25 (
        .noconnect(Net_264));

	// vinMinusMux_25 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_25_connect(vinMinus[25], Net_266);
	defparam vinMinusMux_25_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_26 (
        .noconnect(Net_266));

	// vinMinusMux_26 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_26_connect(vinMinus[26], Net_268);
	defparam vinMinusMux_26_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_27 (
        .noconnect(Net_268));

	// vinMinusMux_27 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_27_connect(vinMinus[27], Net_270);
	defparam vinMinusMux_27_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_28 (
        .noconnect(Net_270));

	// vinMinusMux_28 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_28_connect(vinMinus[28], Net_272);
	defparam vinMinusMux_28_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_29 (
        .noconnect(Net_272));

	// vinMinusMux_29 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_29_connect(vinMinus[29], Net_274);
	defparam vinMinusMux_29_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_30 (
        .noconnect(Net_274));

	// vinMinusMux_30 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_30_connect(vinMinus[30], Net_276);
	defparam vinMinusMux_30_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_31 (
        .noconnect(Net_276));

	// vinMinusMux_31 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_31_connect(vinMinus[31], Net_278);
	defparam vinMinusMux_31_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_32 (
        .noconnect(Net_278));

	// vinMinusMux_32 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_32_connect(vinMinus[32], Net_285);
	defparam vinMinusMux_32_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_33 (
        .noconnect(Net_285));

	// vinMinusMux_33 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_33_connect(vinMinus[33], Net_286);
	defparam vinMinusMux_33_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_34 (
        .noconnect(Net_286));

	// vinMinusMux_34 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_34_connect(vinMinus[34], Net_287);
	defparam vinMinusMux_34_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_35 (
        .noconnect(Net_287));

	// vinMinusMux_35 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_35_connect(vinMinus[35], Net_288);
	defparam vinMinusMux_35_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_36 (
        .noconnect(Net_288));

	// vinMinusMux_36 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_36_connect(vinMinus[36], Net_289);
	defparam vinMinusMux_36_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_37 (
        .noconnect(Net_289));

	// vinMinusMux_37 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_37_connect(vinMinus[37], Net_290);
	defparam vinMinusMux_37_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_38 (
        .noconnect(Net_290));

	// vinMinusMux_38 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_38_connect(vinMinus[38], Net_291);
	defparam vinMinusMux_38_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_39 (
        .noconnect(Net_291));

	// vinMinusMux_39 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_39_connect(vinMinus[39], Net_292);
	defparam vinMinusMux_39_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_40 (
        .noconnect(Net_292));

	// vinMinusMux_40 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_40_connect(vinMinus[40], Net_293);
	defparam vinMinusMux_40_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_41 (
        .noconnect(Net_293));

	// vinMinusMux_41 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_41_connect(vinMinus[41], Net_294);
	defparam vinMinusMux_41_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_42 (
        .noconnect(Net_294));

	// vinMinusMux_42 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_42_connect(vinMinus[42], Net_295);
	defparam vinMinusMux_42_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_43 (
        .noconnect(Net_295));

	// vinMinusMux_43 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_43_connect(vinMinus[43], Net_296);
	defparam vinMinusMux_43_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_44 (
        .noconnect(Net_296));

	// vinMinusMux_44 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_44_connect(vinMinus[44], Net_297);
	defparam vinMinusMux_44_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_45 (
        .noconnect(Net_297));

	// vinMinusMux_45 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_45_connect(vinMinus[45], Net_298);
	defparam vinMinusMux_45_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_46 (
        .noconnect(Net_298));

	// vinMinusMux_46 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_46_connect(vinMinus[46], Net_299);
	defparam vinMinusMux_46_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_47 (
        .noconnect(Net_299));

	// vinMinusMux_47 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_47_connect(vinMinus[47], Net_300);
	defparam vinMinusMux_47_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_48 (
        .noconnect(Net_300));

	// vinMinusMux_48 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_48_connect(vinMinus[48], Net_301);
	defparam vinMinusMux_48_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_49 (
        .noconnect(Net_301));

	// vinMinusMux_49 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_49_connect(vinMinus[49], Net_302);
	defparam vinMinusMux_49_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_50 (
        .noconnect(Net_302));

	// vinMinusMux_50 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_50_connect(vinMinus[50], Net_303);
	defparam vinMinusMux_50_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_51 (
        .noconnect(Net_303));

	// vinMinusMux_51 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_51_connect(vinMinus[51], Net_304);
	defparam vinMinusMux_51_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_52 (
        .noconnect(Net_304));

	// vinMinusMux_52 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_52_connect(vinMinus[52], Net_305);
	defparam vinMinusMux_52_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_53 (
        .noconnect(Net_305));

	// vinMinusMux_53 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_53_connect(vinMinus[53], Net_306);
	defparam vinMinusMux_53_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_54 (
        .noconnect(Net_306));

	// vinMinusMux_54 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_54_connect(vinMinus[54], Net_307);
	defparam vinMinusMux_54_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_55 (
        .noconnect(Net_307));

	// vinMinusMux_55 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_55_connect(vinMinus[55], Net_308);
	defparam vinMinusMux_55_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_56 (
        .noconnect(Net_308));

	// vinMinusMux_56 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_56_connect(vinMinus[56], Net_309);
	defparam vinMinusMux_56_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_57 (
        .noconnect(Net_309));

	// vinMinusMux_57 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_57_connect(vinMinus[57], Net_310);
	defparam vinMinusMux_57_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_58 (
        .noconnect(Net_310));

	// vinMinusMux_58 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_58_connect(vinMinus[58], Net_311);
	defparam vinMinusMux_58_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_59 (
        .noconnect(Net_311));

	// vinMinusMux_59 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_59_connect(vinMinus[59], Net_312);
	defparam vinMinusMux_59_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_60 (
        .noconnect(Net_312));

	// vinMinusMux_60 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_60_connect(vinMinus[60], Net_313);
	defparam vinMinusMux_60_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_61 (
        .noconnect(Net_313));

	// vinMinusMux_61 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_61_connect(vinMinus[61], Net_314);
	defparam vinMinusMux_61_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_62 (
        .noconnect(Net_314));

	// vinMinusMux_62 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_62_connect(vinMinus[62], Net_315);
	defparam vinMinusMux_62_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_63 (
        .noconnect(Net_315));

	// vinMinusMux_63 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinMinusMux_63_connect(vinMinus[63], Net_316);
	defparam vinMinusMux_63_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_64 (
        .noconnect(Net_316));

	// vinNegMux_0 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinNegMux_0_connect(vinNeg[0], Net_331);
	defparam vinNegMux_0_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_65 (
        .noconnect(Net_331));

	// vinNegMux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinNegMux_1_connect(vinNeg[1], Net_345);
	defparam vinNegMux_1_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_66 (
        .noconnect(Net_345));

	// vinNegMux_2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinNegMux_2_connect(vinNeg[2], Net_347);
	defparam vinNegMux_2_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_67 (
        .noconnect(Net_347));

	// vinNegMux_3 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vinNegMux_3_connect(vinNeg[3], Net_349);
	defparam vinNegMux_3_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_68 (
        .noconnect(Net_349));

	// vrefMux_0 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vrefMux_0_connect(vrefBus[0], Net_456);
	defparam vrefMux_0_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_71 (
        .noconnect(Net_456));

	// vrefMux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vrefMux_1_connect(vrefBus[1], Net_457);
	defparam vrefMux_1_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_72 (
        .noconnect(Net_457));

	// vrefMux_2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vrefMux_2_connect(vrefBus[2], Net_458);
	defparam vrefMux_2_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_73 (
        .noconnect(Net_458));

	// vrefMux_3 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vrefMux_3_connect(vrefBus[3], Net_459);
	defparam vrefMux_3_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_74 (
        .noconnect(Net_459));

	// vrefMuxRemoved (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 vrefMuxRemoved_connect(vref, Net_1448);
	defparam vrefMuxRemoved_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_87 (
        .noconnect(Net_1448));

    assign t_fvalid = 1'h0;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_fvint (
        .noconnect(t_fvinternal[1]));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_fvint_1 (
        .noconnect(t_fvinternal[0]));


	cy_vref_v1_0
		#(.guid("6E0C5DC9-D531-4D01-9B49-536487FE4A82"),
		  .name("Bandgap Reference"),
		  .autoenable(1))
		vRef_4
		 (.vout(Net_1379));



	cy_vref_v1_0
		#(.guid("6E0C5DC9-D531-4D01-9B49-536487FE4A82"),
		  .name("Bandgap Reference"),
		  .autoenable(1))
		vRef_6
		 (.vout(Net_1385));



	cy_vref_v1_0
		#(.guid("6E0C5DC9-D531-4D01-9B49-536487FE4A82"),
		  .name("Bandgap Reference"),
		  .autoenable(1))
		vRef_7
		 (.vout(Net_1388));



	cy_vref_v1_0
		#(.guid("6E0C5DC9-D531-4D01-9B49-536487FE4A82"),
		  .name("Bandgap Reference"),
		  .autoenable(1))
		vRef_5
		 (.vout(Net_1382));



	cy_vref_v1_0
		#(.guid("A74A229D-E18B-4A00-BEEC-CCDCB446AC07 "),
		  .name(""),
		  .autoenable(1))
		vRef_8
		 (.vout(Net_102));


    cy_analog_noconnect_v1_0 cy_analog_noconnect_69 (
        .noconnect(Net_105));


    cy_connect_v1_0 vagnd__cy_connect_v1_0(vagnd, t_fvout);
    defparam vagnd__cy_connect_v1_0.sig_width = 1;


endmodule

// DMA_PDL_v2_0(BUFFERABLE=false, CHAIN_TO_1=0, CHAIN_TO_2=0, CHAIN_TO_3=0, CHAIN_TO_4=0, CHANNEL_PRIORITY=3, DATA_ELEMENT_SIZE_1=2, DATA_ELEMENT_SIZE_2=2, DATA_ELEMENT_SIZE_3=2, DATA_ELEMENT_SIZE_4=2, DESCR_NAME_1=Descriptor_1, DESCR_NAME_2=Descriptor_2, DESCR_NAME_3=Descriptor_3, DESCR_NAME_4=Descriptor_4, DESCRIPTORS_XML_STR=<?xml version="1.0" encoding="utf-16"?> <ArrayOfCyDmaDescriptionProperties xmlns:Version="ystem.Collections.Generic">   <CyDmaDescriptionProperties>     <DescriptorName>Descriptor_1</DescriptorName>     <TriggerOutput>CY_DMA_INTR_DESCR_CMPLT</TriggerOutput>     <Interrupt>CY_DMA_INTR_DESCR_CMPLT</Interrupt>     <ChainToDescriptor>Descriptor_2</ChainToDescriptor>     <NumberOfDataElementsToTransfer>256</NumberOfDataElementsToTransfer>     <SourceIncrementEveryCycleByX>0</SourceIncrementEveryCycleByX>     <SourceIncrementEveryCycleByY>0</SourceIncrementEveryCycleByY>     <DestinationIncrementEveryCycleByY>0</DestinationIncrementEveryCycleByY>   </CyDmaDescriptionProperties>   <CyDmaDescriptionProperties>     <DescriptorName>Descriptor_2</DescriptorName>     <TriggerOutput>CY_DMA_INTR_DESCR_CMPLT</TriggerOutput>     <Interrupt>CY_DMA_INTR_DESCR_CMPLT</Interrupt>     <ChainToDescriptor>Descriptor_1</ChainToDescriptor>     <NumberOfDataElementsToTransfer>256</NumberOfDataElementsToTransfer>     <SourceIncrementEveryCycleByX>0</SourceIncrementEveryCycleByX>     <SourceIncrementEveryCycleByY>0</SourceIncrementEveryCycleByY>     <DestinationIncrementEveryCycleByY>0</DestinationIncrementEveryCycleByY>   </CyDmaDescriptionProperties> </ArrayOfCyDmaDescriptionProperties>, DST_WIDTH_1=0, DST_WIDTH_2=0, DST_WIDTH_3=0, DST_WIDTH_4=0, INTR_OUT_1=0, INTR_OUT_2=0, INTR_OUT_3=0, INTR_OUT_4=0, MIGRATION=false, NUM_OF_DESCRIPTORS=2, PREEMPTABLE=false, SRC_WIDTH_1=0, SRC_WIDTH_2=0, SRC_WIDTH_3=0, SRC_WIDTH_4=0, TRIG_DEACT_1=0, TRIG_DEACT_2=0, TRIG_DEACT_3=0, TRIG_DEACT_4=0, TRIG_IN_TYPE_1=0, TRIG_IN_TYPE_2=0, TRIG_IN_TYPE_3=0, TRIG_IN_TYPE_4=0, TRIG_INPUT=true, TRIG_OUT_TYPE_1=0, TRIG_OUT_TYPE_2=0, TRIG_OUT_TYPE_3=0, TRIG_OUT_TYPE_4=0, TRIG_OUTPUT=false, X_DST_INCREMENT_1=1, X_DST_INCREMENT_2=1, X_DST_INCREMENT_3=1, X_DST_INCREMENT_4=1, X_NUM_OF_ELEMENTS_1=1, X_NUM_OF_ELEMENTS_2=1, X_NUM_OF_ELEMENTS_3=1, X_NUM_OF_ELEMENTS_4=1, X_SRC_INCREMENT_1=1, X_SRC_INCREMENT_2=1, X_SRC_INCREMENT_3=1, X_SRC_INCREMENT_4=1, Y_DST_INCREMENT_1=1, Y_DST_INCREMENT_2=1, Y_DST_INCREMENT_3=1, Y_DST_INCREMENT_4=1, Y_NUM_OF_ELEMENTS_1=1, Y_NUM_OF_ELEMENTS_2=1, Y_NUM_OF_ELEMENTS_3=1, Y_NUM_OF_ELEMENTS_4=1, Y_SRC_INCREMENT_1=1, Y_SRC_INCREMENT_2=1, Y_SRC_INCREMENT_3=1, Y_SRC_INCREMENT_4=1, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=DMA_PDL_v2_0, CY_CONFIG_TITLE=DMA_1, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=DMA_1, CY_INSTANCE_SHORT_NAME=DMA_1, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=dma, CY_PDL_DRIVER_REQ_VERSION=2.0.0, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.3, INSTANCE_NAME=DMA_1, )
module DMA_PDL_v2_0_2 (
    tr_in,
    tr_out,
    interrupt);
    input       tr_in;
    output      tr_out;
    output      interrupt;



    cy_mxs40_dw_v1_0 DW (
        .tr_in(tr_in),
        .tr_out(tr_out),
        .interrupt(interrupt));
    defparam DW.priority = 3;



endmodule

// DMA_PDL_v2_0(BUFFERABLE=false, CHAIN_TO_1=0, CHAIN_TO_2=0, CHAIN_TO_3=0, CHAIN_TO_4=0, CHANNEL_PRIORITY=3, DATA_ELEMENT_SIZE_1=2, DATA_ELEMENT_SIZE_2=2, DATA_ELEMENT_SIZE_3=2, DATA_ELEMENT_SIZE_4=2, DESCR_NAME_1=Descriptor_1, DESCR_NAME_2=Descriptor_2, DESCR_NAME_3=Descriptor_3, DESCR_NAME_4=Descriptor_4, DESCRIPTORS_XML_STR=<?xml version="1.0" encoding="utf-16"?> <ArrayOfCyDmaDescriptionProperties xmlns:Version="ystem.Collections.Generic">   <CyDmaDescriptionProperties>     <DescriptorName>Descriptor_1</DescriptorName>     <TriggerOutput>CY_DMA_INTR_DESCR_CMPLT</TriggerOutput>     <Interrupt>CY_DMA_INTR_DESCR_CMPLT</Interrupt>     <ChainToDescriptor>Descriptor_2</ChainToDescriptor>     <NumberOfDataElementsToTransfer>256</NumberOfDataElementsToTransfer>     <SourceIncrementEveryCycleByX>0</SourceIncrementEveryCycleByX>     <SourceIncrementEveryCycleByY>0</SourceIncrementEveryCycleByY>     <DestinationIncrementEveryCycleByY>0</DestinationIncrementEveryCycleByY>   </CyDmaDescriptionProperties>   <CyDmaDescriptionProperties>     <DescriptorName>Descriptor_2</DescriptorName>     <TriggerOutput>CY_DMA_INTR_DESCR_CMPLT</TriggerOutput>     <Interrupt>CY_DMA_INTR_DESCR_CMPLT</Interrupt>     <ChainToDescriptor>Descriptor_1</ChainToDescriptor>     <NumberOfDataElementsToTransfer>256</NumberOfDataElementsToTransfer>     <SourceIncrementEveryCycleByX>0</SourceIncrementEveryCycleByX>     <SourceIncrementEveryCycleByY>0</SourceIncrementEveryCycleByY>     <DestinationIncrementEveryCycleByY>0</DestinationIncrementEveryCycleByY>   </CyDmaDescriptionProperties> </ArrayOfCyDmaDescriptionProperties>, DST_WIDTH_1=0, DST_WIDTH_2=0, DST_WIDTH_3=0, DST_WIDTH_4=0, INTR_OUT_1=0, INTR_OUT_2=0, INTR_OUT_3=0, INTR_OUT_4=0, MIGRATION=false, NUM_OF_DESCRIPTORS=2, PREEMPTABLE=false, SRC_WIDTH_1=0, SRC_WIDTH_2=0, SRC_WIDTH_3=0, SRC_WIDTH_4=0, TRIG_DEACT_1=0, TRIG_DEACT_2=0, TRIG_DEACT_3=0, TRIG_DEACT_4=0, TRIG_IN_TYPE_1=0, TRIG_IN_TYPE_2=0, TRIG_IN_TYPE_3=0, TRIG_IN_TYPE_4=0, TRIG_INPUT=true, TRIG_OUT_TYPE_1=0, TRIG_OUT_TYPE_2=0, TRIG_OUT_TYPE_3=0, TRIG_OUT_TYPE_4=0, TRIG_OUTPUT=false, X_DST_INCREMENT_1=1, X_DST_INCREMENT_2=1, X_DST_INCREMENT_3=1, X_DST_INCREMENT_4=1, X_NUM_OF_ELEMENTS_1=1, X_NUM_OF_ELEMENTS_2=1, X_NUM_OF_ELEMENTS_3=1, X_NUM_OF_ELEMENTS_4=1, X_SRC_INCREMENT_1=1, X_SRC_INCREMENT_2=1, X_SRC_INCREMENT_3=1, X_SRC_INCREMENT_4=1, Y_DST_INCREMENT_1=1, Y_DST_INCREMENT_2=1, Y_DST_INCREMENT_3=1, Y_DST_INCREMENT_4=1, Y_NUM_OF_ELEMENTS_1=1, Y_NUM_OF_ELEMENTS_2=1, Y_NUM_OF_ELEMENTS_3=1, Y_NUM_OF_ELEMENTS_4=1, Y_SRC_INCREMENT_1=1, Y_SRC_INCREMENT_2=1, Y_SRC_INCREMENT_3=1, Y_SRC_INCREMENT_4=1, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=DMA_PDL_v2_0, CY_CONFIG_TITLE=DMA_2, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=DMA_2, CY_INSTANCE_SHORT_NAME=DMA_2, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=dma, CY_PDL_DRIVER_REQ_VERSION=2.0.0, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.3, INSTANCE_NAME=DMA_2, )
module DMA_PDL_v2_0_3 (
    tr_in,
    tr_out,
    interrupt);
    input       tr_in;
    output      tr_out;
    output      interrupt;



    cy_mxs40_dw_v1_0 DW (
        .tr_in(tr_in),
        .tr_out(tr_out),
        .interrupt(interrupt));
    defparam DW.priority = 3;



endmodule

// top
module top ;

          wire  Net_708;
          wire  Net_151;
    electrical  Net_673;
    electrical [1:0] Net_672;
          wire  Net_671;
    electrical  Net_670;
          wire [11:0] Net_669;
          wire  Net_668;
          wire [3:0] Net_667;
          wire  Net_666;
          wire  Net_665;
          wire  Net_33;
          wire  Net_32;
          wire  Net_31;
          wire  Net_30;
          wire  Net_29;
          wire  Net_28;
          wire  Net_27;
          wire  Net_26;
          wire  Net_25;
          wire  Net_24;
          wire  Net_5;
          wire [7:0] Net_4;
          wire [7:0] Net_3;
          wire  Net_664;
          wire  Net_1;
          wire  Net_709;
          wire  Net_229;
    electrical  Net_572;
    electrical  Net_571;
    electrical  Net_583;
          wire  Net_217;
    electrical  Net_206;
          wire  Net_131;
          wire  Net_130;
          wire  Net_132;
          wire  Net_127;
          wire [7:0] Net_133;
          wire [7:0] Net_86;

	wire [7:0] tmpIO_7__d_net;
	electrical [0:0] tmpSIOVREF__d_net;

	cy_mxs40_gpio_v1_0
		#(.id("a61270bc-07ec-447d-ac9e-34cfe85c30e9"),
		  .width(8),
		  .sio_grp_cnt(0),
		  .drive_mode("6,6,6,6,6,6,6,6"),
		  .ibuf_enabled("1,1,1,1,1,1,1,1"),
		  .init_dr_st("1,1,1,1,1,1,1,1"),
		  .input_sync("0,0,0,0,0,0,0,0"),
		  .intr_mode("0,0,0,0,0,0,0,0"),
		  .io_voltage(",,,,,,,"),
		  .output_conn("1,1,1,1,1,1,1,1"),
		  .oe_conn("1,1,1,1,1,1,1,1"),
		  .output_sync("0,0,0,0,0,0,0,0"),
		  .oe_sync("0,0,0,0,0,0,0,0"),
		  .drive_strength("0,0,0,0,0,0,0,0"),
		  .max_frequency("100,100,100,100,100,100,100,100"),
		  .i2c_mode("0,0,0,0,0,0,0,0"),
		  .output_current_cap("8,8,8,8,8,8,8,8"),
		  .pin_aliases(",,,,,,,"),
		  .pin_mode("IO,IO,IO,IO,IO,IO,IO,IO"),
		  .slew_rate("0,0,0,0,0,0,0,0"),
		  .vtrip("0,0,0,0,0,0,0,0"),
		  .use_annotation("0,0,0,0,0,0,0,0"),
		  .hotswap_needed("0,0,0,0,0,0,0,0"))
		d
		 (.oe({Net_127, Net_127, Net_127, Net_127, Net_127, Net_127, Net_127, Net_127}),
		  .y({Net_86[7:0]}),
		  .fb({Net_133[7:0]}),
		  .io({tmpIO_7__d_net[7:0]}),
		  .siovref(tmpSIOVREF__d_net));


	wire [0:0] tmpFB_0__d_c_net;
	wire [0:0] tmpIO_0__d_c_net;
	electrical [0:0] tmpSIOVREF__d_c_net;

	cy_mxs40_gpio_v1_0
		#(.id("5f722662-09eb-484c-8282-7daba1a78235"),
		  .width(1),
		  .sio_grp_cnt(0),
		  .drive_mode("6"),
		  .ibuf_enabled("0"),
		  .init_dr_st("1"),
		  .input_sync("0"),
		  .intr_mode("0"),
		  .io_voltage(""),
		  .output_conn("1"),
		  .oe_conn("0"),
		  .output_sync("0"),
		  .oe_sync("0"),
		  .drive_strength("0"),
		  .max_frequency("100"),
		  .i2c_mode("0"),
		  .output_current_cap("8"),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .slew_rate("0"),
		  .vtrip("0"),
		  .use_annotation("0"),
		  .hotswap_needed("0"))
		d_c
		 (.oe({1'b1}),
		  .y({Net_132}),
		  .fb({tmpFB_0__d_c_net[0:0]}),
		  .io({tmpIO_0__d_c_net[0:0]}),
		  .siovref(tmpSIOVREF__d_c_net));



	cy_clock_v1_0
		#(.id("bb212b48-3568-49e1-9d8b-2b947d970fae"),
		  .source_clock_id("2FB4EC85-8328-4C5A-9ED9-8B63060178EB"),
		  .divisor(0),
		  .period("30303030.3030303"),
		  .is_direct(0),
		  .is_digital(0))
		Clk_33MHz
		 (.clock_out(Net_1));


	wire [0:0] tmpFB_0__LCD_RESET_N_net;
	wire [0:0] tmpIO_0__LCD_RESET_N_net;
	electrical [0:0] tmpSIOVREF__LCD_RESET_N_net;

	cy_mxs40_gpio_v1_0
		#(.id("f752c72a-0226-4ca8-ab2f-39272ef36684"),
		  .width(1),
		  .sio_grp_cnt(0),
		  .drive_mode("6"),
		  .ibuf_enabled("0"),
		  .init_dr_st("0"),
		  .input_sync("0"),
		  .intr_mode("0"),
		  .io_voltage(""),
		  .output_conn("0"),
		  .oe_conn("0"),
		  .output_sync("0"),
		  .oe_sync("0"),
		  .drive_strength("0"),
		  .max_frequency("100"),
		  .i2c_mode("0"),
		  .output_current_cap("8"),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .slew_rate("0"),
		  .vtrip("0"),
		  .use_annotation("0"),
		  .hotswap_needed("0"))
		LCD_RESET_N
		 (.oe({1'b1}),
		  .y({1'b0}),
		  .fb({tmpFB_0__LCD_RESET_N_net[0:0]}),
		  .io({tmpIO_0__LCD_RESET_N_net[0:0]}),
		  .siovref(tmpSIOVREF__LCD_RESET_N_net));


	wire [0:0] tmpFB_0__nwr_net;
	wire [0:0] tmpIO_0__nwr_net;
	electrical [0:0] tmpSIOVREF__nwr_net;

	cy_mxs40_gpio_v1_0
		#(.id("0f29494a-c63e-4158-a298-0050fca8ff03"),
		  .width(1),
		  .sio_grp_cnt(0),
		  .drive_mode("6"),
		  .ibuf_enabled("0"),
		  .init_dr_st("1"),
		  .input_sync("0"),
		  .intr_mode("0"),
		  .io_voltage(""),
		  .output_conn("1"),
		  .oe_conn("0"),
		  .output_sync("0"),
		  .oe_sync("0"),
		  .drive_strength("0"),
		  .max_frequency("100"),
		  .i2c_mode("0"),
		  .output_current_cap("8"),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .slew_rate("0"),
		  .vtrip("0"),
		  .use_annotation("0"),
		  .hotswap_needed("0"))
		nwr
		 (.oe({1'b1}),
		  .y({Net_130}),
		  .fb({tmpFB_0__nwr_net[0:0]}),
		  .io({tmpIO_0__nwr_net[0:0]}),
		  .siovref(tmpSIOVREF__nwr_net));


	wire [0:0] tmpFB_0__nrd_net;
	wire [0:0] tmpIO_0__nrd_net;
	electrical [0:0] tmpSIOVREF__nrd_net;

	cy_mxs40_gpio_v1_0
		#(.id("0654abd4-8013-44c2-931a-887ce094a48a"),
		  .width(1),
		  .sio_grp_cnt(0),
		  .drive_mode("6"),
		  .ibuf_enabled("0"),
		  .init_dr_st("1"),
		  .input_sync("0"),
		  .intr_mode("0"),
		  .io_voltage(""),
		  .output_conn("1"),
		  .oe_conn("0"),
		  .output_sync("0"),
		  .oe_sync("0"),
		  .drive_strength("0"),
		  .max_frequency("100"),
		  .i2c_mode("0"),
		  .output_current_cap("8"),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .slew_rate("0"),
		  .vtrip("0"),
		  .use_annotation("0"),
		  .hotswap_needed("0"))
		nrd
		 (.oe({1'b1}),
		  .y({Net_131}),
		  .fb({tmpFB_0__nrd_net[0:0]}),
		  .io({tmpIO_0__nrd_net[0:0]}),
		  .siovref(tmpSIOVREF__nrd_net));


    GraphicLCDIntf_v1_80 GraphicLCDIntf_1 (
        .di_lsb(Net_133[7:0]),
        .di_msb(8'b0),
        .clock(Net_1),
        .do_lsb(Net_86[7:0]),
        .do_msb(Net_4[7:0]),
        .oe(Net_127),
        .d_c(Net_132),
        .ncs(Net_5),
        .nwr(Net_130),
        .nrd(Net_131));
    defparam GraphicLCDIntf_1.BitWidth = 8;
    defparam GraphicLCDIntf_1.ReadHiPulse = 10;
    defparam GraphicLCDIntf_1.ReadLoPulse = 10;

    SCB_UART_PDL_v2_0_0 UART (
        .cts_in(1'b0),
        .tx_out(Net_25),
        .rts_out(Net_26),
        .interrupt(Net_27),
        .clock(1'b0),
        .rx_dma(Net_29),
        .tx_dma(Net_30),
        .rx_in(1'b0),
        .rx_tx_out(Net_32),
        .tx_en_out(Net_33));

	wire [0:0] tmpFB_0__ADC1_in_net;
	wire [0:0] tmpIO_0__ADC1_in_net;
	electrical [0:0] tmpSIOVREF__ADC1_in_net;

	cy_mxs40_gpio_v1_0
		#(.id("0113321b-4a37-46f6-8407-2f8646c68756"),
		  .width(1),
		  .sio_grp_cnt(0),
		  .drive_mode("0"),
		  .ibuf_enabled("0"),
		  .init_dr_st("1"),
		  .input_sync("0"),
		  .intr_mode("0"),
		  .io_voltage(""),
		  .output_conn("0"),
		  .oe_conn("0"),
		  .output_sync("0"),
		  .oe_sync("0"),
		  .drive_strength("0"),
		  .max_frequency("100"),
		  .i2c_mode("0"),
		  .output_current_cap("8"),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .slew_rate("0"),
		  .vtrip("0"),
		  .use_annotation("0"),
		  .hotswap_needed("0"))
		ADC1_in
		 (.oe({1'b1}),
		  .y({1'b0}),
		  .fb({tmpFB_0__ADC1_in_net[0:0]}),
		  .analog({Net_206}),
		  .io({tmpIO_0__ADC1_in_net[0:0]}),
		  .siovref(tmpSIOVREF__ADC1_in_net));


    Scan_ADC_v3_10_1 ADC (
        .sdone(Net_665),
        .eos(Net_217),
        .t_chidv(Net_666),
        .t_chid(Net_667[3:0]),
        .t_dav(Net_668),
        .t_da(Net_669[11:0]),
        .t_fvout(Net_670),
        .t_fvalid(Net_671),
        .t_fvinternal(Net_672[1:0]),
        .vagnd(Net_673),
        .vinPlus_0(Net_206),
        .vinPlus_1(Net_583),
        .vinPlus_2(Net_571),
        .vinPlus_3(Net_572));

    DMA_PDL_v2_0_2 DMA_1 (
        .tr_in(Net_217),
        .tr_out(Net_151),
        .interrupt(Net_229));


	cy_mxs40_isr_v1_0
		#(.deepsleep_required(0),
		  .int_type(2'b10))
		DMA_int
		 (.int_signal(Net_229));


	wire [0:0] tmpFB_0__ADC4_in_net;
	wire [0:0] tmpIO_0__ADC4_in_net;
	electrical [0:0] tmpSIOVREF__ADC4_in_net;

	cy_mxs40_gpio_v1_0
		#(.id("fcb136cf-0c8f-4296-800e-a93a4f76fe4b"),
		  .width(1),
		  .sio_grp_cnt(0),
		  .drive_mode("0"),
		  .ibuf_enabled("0"),
		  .init_dr_st("1"),
		  .input_sync("0"),
		  .intr_mode("0"),
		  .io_voltage(""),
		  .output_conn("0"),
		  .oe_conn("0"),
		  .output_sync("0"),
		  .oe_sync("0"),
		  .drive_strength("0"),
		  .max_frequency("100"),
		  .i2c_mode("0"),
		  .output_current_cap("8"),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .slew_rate("0"),
		  .vtrip("0"),
		  .use_annotation("0"),
		  .hotswap_needed("0"))
		ADC4_in
		 (.oe({1'b1}),
		  .y({1'b0}),
		  .fb({tmpFB_0__ADC4_in_net[0:0]}),
		  .analog({Net_572}),
		  .io({tmpIO_0__ADC4_in_net[0:0]}),
		  .siovref(tmpSIOVREF__ADC4_in_net));


	wire [0:0] tmpFB_0__ADC3_in_net;
	wire [0:0] tmpIO_0__ADC3_in_net;
	electrical [0:0] tmpSIOVREF__ADC3_in_net;

	cy_mxs40_gpio_v1_0
		#(.id("888816a8-a6f6-4546-ad9b-7bb4a5f9f8dc"),
		  .width(1),
		  .sio_grp_cnt(0),
		  .drive_mode("0"),
		  .ibuf_enabled("0"),
		  .init_dr_st("1"),
		  .input_sync("0"),
		  .intr_mode("0"),
		  .io_voltage(""),
		  .output_conn("0"),
		  .oe_conn("0"),
		  .output_sync("0"),
		  .oe_sync("0"),
		  .drive_strength("0"),
		  .max_frequency("100"),
		  .i2c_mode("0"),
		  .output_current_cap("8"),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .slew_rate("0"),
		  .vtrip("0"),
		  .use_annotation("0"),
		  .hotswap_needed("0"))
		ADC3_in
		 (.oe({1'b1}),
		  .y({1'b0}),
		  .fb({tmpFB_0__ADC3_in_net[0:0]}),
		  .analog({Net_571}),
		  .io({tmpIO_0__ADC3_in_net[0:0]}),
		  .siovref(tmpSIOVREF__ADC3_in_net));


	wire [0:0] tmpFB_0__ADC2_in_net;
	wire [0:0] tmpIO_0__ADC2_in_net;
	electrical [0:0] tmpSIOVREF__ADC2_in_net;

	cy_mxs40_gpio_v1_0
		#(.id("2ae9262f-82a0-411e-8a9b-0b6dfa06f16d"),
		  .width(1),
		  .sio_grp_cnt(0),
		  .drive_mode("0"),
		  .ibuf_enabled("0"),
		  .init_dr_st("1"),
		  .input_sync("0"),
		  .intr_mode("0"),
		  .io_voltage(""),
		  .output_conn("0"),
		  .oe_conn("0"),
		  .output_sync("0"),
		  .oe_sync("0"),
		  .drive_strength("0"),
		  .max_frequency("100"),
		  .i2c_mode("0"),
		  .output_current_cap("8"),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .slew_rate("0"),
		  .vtrip("0"),
		  .use_annotation("0"),
		  .hotswap_needed("0"))
		ADC2_in
		 (.oe({1'b1}),
		  .y({1'b0}),
		  .fb({tmpFB_0__ADC2_in_net[0:0]}),
		  .analog({Net_583}),
		  .io({tmpIO_0__ADC2_in_net[0:0]}),
		  .siovref(tmpSIOVREF__ADC2_in_net));



	cy_mxs40_isr_v1_0
		#(.deepsleep_required(0),
		  .int_type(2'b10))
		DMA2_int
		 (.int_signal(Net_709));


    DMA_PDL_v2_0_3 DMA_2 (
        .tr_in(Net_217),
        .tr_out(Net_708),
        .interrupt(Net_709));



endmodule

