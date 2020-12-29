/* ========================================
 *
 * CSE121/L Final Project
 * By Jared Chin
 * japchin // 1654119
 * 
 *
 * ========================================
*/
#include "project.h"
#include "GUI.h"
#include "stdlib.h"
#include "math.h"
#include "stdio.h"
#include "string.h"
#include <TinyScope.h>


// global vars
char input[MAX_SIZE] = {'\0'};
char *output;
uint32_t arr1[MAX_SIZE]; // ping pong 1 for ch1
uint32_t arr2[MAX_SIZE]; // ping pong 2 for ch1
uint32_t arr3[MAX_SIZE]; // ping pong 1 for ch2
uint32_t arr4[MAX_SIZE]; // ping pong 2 for ch2
uint32_t buffer_ch1[MAXPOINTS] = {0}; // buffer from ch 1
uint32_t buffer_ch2[MAXPOINTS] = {0}; // buffer from ch 2
int arrnum = 1;
int arrnum2 = 1;
// default values
long triglvl = 1000; // trigger level
long xsc = 1000; // xscale
long ysc = 1000; // yscale

char enable = STOP; // flag for whether machine is running or not
int k = 0; // index for buffer ch values
int ch1idx = 0;
int ch2idx = 0;
int idxch2 = 0; // index for buffer ch2
double psx = 8; // pixels per sample point for x - initial value is 8
                // at xscale = 1000
double psy = 1.0 * YPIXELPERDIVISION / 1000; // pixels per mV for y
char flagch1 = FALSE;
char flagch2 = FALSE;
char triggerFlag = FALSE;
Settings config;

/* Arrays to hold channel waveform data for drawing */
GUI_HMEM ch1_spline;
GUI_HMEM ch2_spline;

/****************************************************
 *
 * DMA FUNCTIONS
 *
****************************************************/
void DMA_isr(void)
{
    // copy every nth byte into buffer_ch
    // psx is xscale value (init to 8 at beginning of program)
    //if (mode == free_run){
    int i;
    if (arrnum == 1){
        if (flagch1 == FALSE){
            if (config.mode == free_run){
                for(ch1idx = ch1idx % MAX_SIZE; ch1idx < MAX_SIZE && k < MAXPOINTS; ch1idx = ch1idx + psx, k++){
                    buffer_ch1[k] = arr1[ch1idx] & BITMASKADC; // get lower 12 bits
                }
            } else if (config.mode == trigger){
                if (triggerFlag == FALSE && config.trigch == CH_1){
                    i = triggerDetection(config, (int *)arr1, psy);
                    if (i){
                        // if edge is detected on ch1, then start recording data from current pos
                        triggerFlag = TRUE;
                        k = 0;
                        ch1idx = i;
                    }
                }
                if (triggerFlag){
                    for(ch1idx = ch1idx % MAX_SIZE; ch1idx < MAX_SIZE && k < MAXPOINTS; ch1idx = ch1idx + psx, k++){
                        buffer_ch1[k] = arr1[ch1idx] & BITMASKADC; // get lower 12 bits
                    }
                }
            }
        }
        arrnum = 2;
    } else if (arrnum == 2){
        if (flagch1 == FALSE){
            if (config.mode == free_run){
                for(ch1idx = ch1idx % MAX_SIZE; ch1idx < MAX_SIZE && k < MAXPOINTS; ch1idx = ch1idx + psx, k++){
                    buffer_ch1[k] = arr2[ch1idx] & BITMASKADC; // get lower 12 bits
                }
            }  else if (config.mode == trigger){
                if (triggerFlag == FALSE && config.trigch == CH_1){
                    i = triggerDetection(config, (int *)arr2, psy);
                    if (i){
                        // if edge is detected on ch1, then start recording data from current pos
                        triggerFlag = TRUE;
                        k = 0;
                        ch1idx = i;
                    }
                }
                if (triggerFlag){
                    for(ch1idx = ch1idx % MAX_SIZE; ch1idx < MAX_SIZE && k < MAXPOINTS; ch1idx = ch1idx + psx, k++){
                        buffer_ch1[k] = arr2[ch1idx] & BITMASKADC; // get lower 12 bits
                    }
                }
            }
        }
        arrnum = 1;
    }
    if (k >= MAXPOINTS){
        // if all data has been read, then turn off interrupt
        k = 0;
        flagch1 = TRUE;
        if (config.trigch == CH_1 && triggerFlag){
            triggerFlag = FALSE;
            Cy_DMA_Channel_SetInterruptMask(DW0, DMA_1_DW_CHANNEL, 0);
        }
    }
    Cy_DMA_Channel_ClearInterrupt(DW0, DMA_1_DW_CHANNEL);
}

void DMA2_isr(void)
{
    // copy every nth byte into buffer_ch
    // psx is xscale value (init to 8 at beginning of program)
    //if (mode == free_run){
    int i;
    if (arrnum2 == 1){
        if (flagch2 == FALSE){
            if (config.mode == free_run){
                for(ch2idx = ch2idx % MAX_SIZE; ch2idx < MAX_SIZE && idxch2 < MAXPOINTS;
                                                ch2idx = ch2idx + psx, idxch2++){
                    buffer_ch2[idxch2] = arr3[ch2idx] & BITMASKADC; // get lower 12 bits
                }
            } else if (config.mode == trigger){
                if (triggerFlag == FALSE && config.trigch == CH_2){
                    i = triggerDetection(config, (int *)arr3, psy);
                    if (config.trigch == CH_2 && i){
                        // if edge is detected on ch1, then start recording data from current pos
                        triggerFlag = TRUE;
                        idxch2 = 0;
                        ch2idx = i;
                    }
                }
                if (triggerFlag){
                    for(ch2idx = ch2idx % MAX_SIZE; ch2idx < MAX_SIZE && idxch2 < MAXPOINTS;
                                                    ch2idx = ch2idx + psx, idxch2++){
                        buffer_ch2[idxch2] = arr4[ch2idx] & BITMASKADC; // get lower 12 bits
                    }
                }
            }
        }
        arrnum2 = 2;
    } else if (arrnum2 == 2){
        if (flagch2 == FALSE){
            if (config.mode == free_run){
                for(ch2idx = ch2idx % MAX_SIZE; ch2idx < MAX_SIZE && idxch2 < MAXPOINTS;
                                                ch2idx = ch2idx + psx, idxch2++){
                    buffer_ch2[idxch2] = arr4[ch2idx] & BITMASKADC; // get lower 12 bits
                }
            }  else if (config.mode == trigger){
                if (triggerFlag == FALSE && config.trigch == CH_1){
                    i = triggerDetection(config, (int *)arr4, psy);
                    if (i){
                        // if edge is detected on ch1, then start recording data from current pos
                        triggerFlag = TRUE;
                        idxch2 = 0;
                        ch2idx = i;
                    }
                }
                if (triggerFlag){
                    for(ch2idx = ch2idx % MAX_SIZE; ch2idx < MAX_SIZE && idxch2 < MAXPOINTS;
                                                    ch2idx = ch2idx + psx, idxch2++){
                        buffer_ch2[idxch2] = arr4[ch2idx] & BITMASKADC; // get lower 12 bits
                    }
                }
            }
        }
        arrnum2 = 1;
    }
    if (idxch2 >= MAXPOINTS){
        // if all data has been read, then turn off interrupt
        idxch2 = 0;
        flagch2 = TRUE;
        if (config.trigch == CH_2){
            triggerFlag = FALSE;
        }
    }
    Cy_DMA_Channel_ClearInterrupt(DW0, DMA_2_DW_CHANNEL);
}

void dma_init(void)
{
    cy_stc_dma_channel_config_t channelConfig;
    channelConfig.descriptor  = &DMA_1_Descriptor_1;
    channelConfig.preemptable = DMA_1_PREEMPTABLE;
    channelConfig.priority    = DMA_1_PRIORITY;
    channelConfig.enable      = false;
    channelConfig.bufferable  = DMA_1_BUFFERABLE;
    
    // init DMA
    Cy_DMA_Descriptor_Init(&DMA_1_Descriptor_1, &DMA_1_Descriptor_1_config);
    Cy_DMA_Descriptor_Init(&DMA_1_Descriptor_2, &DMA_1_Descriptor_2_config);
    
    // set up src and dst
    Cy_DMA_Descriptor_SetSrcAddress(&DMA_1_Descriptor_1, (uint32_t *)  &(SAR->CHAN_RESULT[0]));
    Cy_DMA_Descriptor_SetDstAddress(&DMA_1_Descriptor_1, arr1);
    Cy_DMA_Descriptor_SetSrcAddress(&DMA_1_Descriptor_2, (uint32_t *)  &(SAR->CHAN_RESULT[0]));
    Cy_DMA_Descriptor_SetDstAddress(&DMA_1_Descriptor_2, arr2);
    
    // init channel
    Cy_DMA_Channel_Init(DMA_1_HW, DMA_1_DW_CHANNEL, &channelConfig);
    //enable DMA
    Cy_DMA_Enable(DMA_1_HW);
    // enable ch
    Cy_DMA_Channel_Enable(DMA_1_HW, DMA_1_DW_CHANNEL);
    
    // attach isr to interrupt and then init and ummask DMA ch0 interrupt
    Cy_SysInt_Init(&DMA_int_cfg, DMA_isr);
    NVIC_EnableIRQ(DMA_int_cfg.intrSrc);
    Cy_DMA_Channel_SetInterruptMask (DW0, DMA_1_DW_CHANNEL, CY_DMA_INTR_MASK);
}

void dma2_init(void)
{
    cy_stc_dma_channel_config_t channelConfig;
    channelConfig.descriptor  = &DMA_2_Descriptor_1;
    channelConfig.preemptable = DMA_2_PREEMPTABLE;
    channelConfig.priority    = DMA_2_PRIORITY;
    channelConfig.enable      = false;
    channelConfig.bufferable  = DMA_2_BUFFERABLE;
    
    // init DMA
    Cy_DMA_Descriptor_Init(&DMA_2_Descriptor_1, &DMA_2_Descriptor_1_config);
    Cy_DMA_Descriptor_Init(&DMA_2_Descriptor_2, &DMA_2_Descriptor_2_config);
    
    // set up src and dst
    Cy_DMA_Descriptor_SetSrcAddress(&DMA_2_Descriptor_1, (uint32_t *)  &(SAR->CHAN_RESULT[1]));
    Cy_DMA_Descriptor_SetDstAddress(&DMA_2_Descriptor_1, arr3);
    Cy_DMA_Descriptor_SetSrcAddress(&DMA_2_Descriptor_2, (uint32_t *)  &(SAR->CHAN_RESULT[1]));
    Cy_DMA_Descriptor_SetDstAddress(&DMA_2_Descriptor_2, arr4);
    
    // init channel
    Cy_DMA_Channel_Init(DMA_2_HW, DMA_2_DW_CHANNEL, &channelConfig);
    //enable DMA
    Cy_DMA_Enable(DMA_2_HW);
    // enable ch
    Cy_DMA_Channel_Enable(DMA_2_HW, DMA_2_DW_CHANNEL);
    
    // attach isr to interrupt and then init and ummask DMA ch0 interrupt
    Cy_SysInt_Init(&DMA2_int_cfg, DMA2_isr);
    NVIC_EnableIRQ(DMA2_int_cfg.intrSrc);
    Cy_DMA_Channel_SetInterruptMask (DW0, DMA_2_DW_CHANNEL, CY_DMA_INTR_MASK);
}


/****************************************************
 *
 * UART FUNCTIONS
 *
****************************************************/
// returns the char from the uart
// takes no parameters
char uart_receive(void)
{
    // grab data until new line char
    // need line buffer - char
    // if fifo not empty, read char and put in
    char c;
    uint32_t rxStatus;
    rxStatus = Cy_SCB_UART_GetRxFifoStatus(UART_HW);
    if (rxStatus & CY_SCB_UART_RX_NOT_EMPTY){
        c = Cy_SCB_UART_Get(UART_HW);
        Cy_SCB_UART_ClearRxFifoStatus(UART_HW, CY_SCB_UART_RX_NOT_EMPTY);
        return c;
    }
    return NO_CHAR;
}

// function to print to console char by char
// no return, takes str to print
void uart_transmit(char str[MAX_SIZE])
{
    int i = 0;
    uint32_t txStatus;
    while (str[i]){
        txStatus = Cy_SCB_UART_GetTxFifoStatus(UART_HW);
        if (txStatus & CY_SCB_UART_TX_NOT_FULL){
            Cy_SCB_UART_Put(UART_HW, str[i]);
            i++;
            Cy_SCB_UART_ClearTxFifoStatus(UART_HW, CY_SCB_UART_TX_NOT_FULL);
        }
    }
}




int main(void)
{
    __enable_irq(); /* Enable global interrupts. */

    /* Initialize EmWin Graphics */
    GUI_Init();
   
    /* Display the startup screen for 5 seconds */
    Startup();   
    Cy_SysLib_Delay(1000);
    
    // init dma
    dma_init();
    dma2_init();
    
    // init adc
    ADC_Init();
    
    // start uart and set to read each char
    UART_Start();
    setvbuf(stdin, NULL, _IONBF, 0);
    Status status;
    config.mode = free_run;
    config.freq1 = 1;
    config.freq2 = 1;
    config.slope = POS_SLOPE;
    config.trigl = 1000;
    config.trigch = CH_1; // default to ch 1 as trigger channel
    config.xscale = 1000; // 1 ms per div or 1000 us per div
    config.yscale = 1000; // 1V per div
    char c[2] = {0};
    int ch1x[MAXPOINTS];
    int ch2x[MAXPOINTS];
    int i;
    
    for (i=0; i<MAXPOINTS; i++){
        ch1x[i] = XMARGIN+i;
        ch2x[i] = XMARGIN+i;
    }
    
    DrawBG(XSIZE, YSIZE, XMARGIN, YMARGIN);
    int ch1pos = 120;
    int ch2pos = 120;
    
    ADC_Start();
    ADC_Enable();
    ADC_StartConvert();
    
    for(;;)
    {
        RefreshDisplay(config);
        c[0] = uart_receive();
        if (c[0] && c[0] != '\n'){
            strcat(input, c);
        } else if (c[0] == '\n'){
            // parse string
            status = parse_str(input, &triglvl, &xsc, &ysc);
            status = command_parse(&config, status, xsc, ysc, triglvl, &enable, &psy, &psx);
            output = format_str(config, status); // get out str
            uart_transmit(output); // transmit out str
            // reset input/output string and char str
            memset(input, 0, sizeof(input));
        }
        
        if (flagch1 == TRUE){
            // draw wave if in start mode and  free run mode
            if (enable == START){
                DrawWaveform(0, XMARGIN, ch1pos, BACKGROUND, ch1_spline, ch2_spline);
                GUI_SPLINE_Delete(ch1_spline);
                ch1pos = (ADC_GetResult16(2UL) & BITMASKADC) * MAXPOINTSY / 4096;
                ch1pos = ch1pos / 1000;
                ch1_spline = CreateWave((int *) buffer_ch1, ch1x, psy);
                DrawWaveform(0, XMARGIN, ch1pos, GUI_GREEN, ch1_spline, ch2_spline);
                //Cy_SysLib_Delay(10);
            }
            // turn interrupts back on and clear flag
            Cy_DMA_Channel_SetInterruptMask (DW0, DMA_1_DW_CHANNEL, CY_DMA_INTR_MASK);
            
            flagch1 = FALSE;
        }
        if (flagch2 == TRUE){
            // draw wave if in start mode and  free run mode
            if (enable == START){
                DrawWaveform(1, XMARGIN, ch2pos, BACKGROUND, ch1_spline, ch2_spline);
                GUI_SPLINE_Delete(ch2_spline);
                ch2pos = (ADC_GetResult16(3UL) & BITMASKADC) * MAXPOINTSY / 4096;
                ch2pos = ch2pos / 1000;
                ch2_spline = CreateWave((int *) buffer_ch2, ch2x, psy);
                DrawWaveform(1, XMARGIN, ch2pos, GUI_YELLOW, ch1_spline, ch2_spline);
                //Cy_SysLib_Delay(10);
            }
            // turn interrupts back on and clear flag
            //Cy_DMA_Channel_SetInterruptMask (DW0, 0UL, CY_DMA_INTR_MASK);
            flagch2 = FALSE;
        }
        
    }
}

/* [] END OF FILE */
