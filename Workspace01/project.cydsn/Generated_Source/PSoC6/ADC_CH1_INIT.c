/***************************************************************************//**
* \file     ADC_CH1_INIT.c
* \version  3.10
*
* \brief
* Provides the initialization data structure for the ADC_CH1 Component.
*
********************************************************************************
* \copyright
* (c) 2017-2018, Cypress Semiconductor Corporation. All rights reserved.
* This software, including source code, documentation and related
* materials ("Software"), is owned by Cypress Semiconductor
* Corporation ("Cypress") and is protected by and subject to worldwide
* patent protection (United States and foreign), United States copyright
* laws and international treaty provisions. Therefore, you may use this
* Software only as provided in the license agreement accompanying the
* software package from which you obtained this Software ("EULA").
* If no EULA applies, Cypress hereby grants you a personal, nonexclusive,
* non-transferable license to copy, modify, and compile the
* Software source code solely for use in connection with Cypress's
* integrated circuit products. Any reproduction, modification, translation,
* compilation, or representation of this Software except as specified
* above is prohibited without the express written permission of Cypress.
* Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO
* WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING,
* BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED
* WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
* PARTICULAR PURPOSE. Cypress reserves the right to make
* changes to the Software without notice. Cypress does not assume any
* liability arising out of the application or use of the Software or any
* product or circuit described in the Software. Cypress does not
* authorize its products for use in any products where a malfunction or
* failure of the Cypress product may reasonably be expected to result in
* significant property damage, injury or death ("High Risk Product"). By
* including Cypress's product in a High Risk Product, the manufacturer
* of such system or application assumes all risk of such use and in doing
* so agrees to indemnify Cypress against all liability.
*******************************************************************************/
#include "ADC_CH1.h"

/* Array of configuration structures for the ScanADC PDL */
static const cy_stc_sar_config_t ADC_CH1_hwConfigs[ADC_CH1_TOTAL_CONFIGS] = {
    /*Configuration 0*/
    {
        .ctrl               = ADC_CH1_CFG0_CTRL_INIT,
        .sampleCtrl         = ADC_CH1_CFG0_SAMPLE_CTRL_INIT,
        .sampleTime01       = ADC_CH1_CFG0_SAMPLE_TIME01_INIT,
        .sampleTime23       = ADC_CH1_CFG0_SAMPLE_TIME23_INIT,
        .rangeThres         = ADC_CH1_CFG0_RANGE_THRES_INIT,
        .rangeCond          = ADC_CH1_CFG0_RANGE_COND_INIT,
        .chanEn             = ADC_CH1_CFG0_CHANNEL_EN,
        .chanConfig         = {(uint32_t) (ADC_CH1_SARMUX__CH_0_PORT << SAR_CHAN_CONFIG_POS_PORT_ADDR_Pos) |
        (uint32_t) ADC_CH1_SARMUX__CH_0_PIN
        #ifdef ADC_CH1_SARMUX__CH_0_MINUS_PIN
            | (uint32_t) (ADC_CH1_SARMUX__CH_0_MINUS_PIN << SAR_CHAN_CONFIG_NEG_PIN_ADDR_Pos) 
            | (uint32_t) (ADC_CH1_SARMUX__CH_0_MINUS_PORT  << SAR_CHAN_CONFIG_NEG_PORT_ADDR_Pos)
            | SAR_CHAN_CONFIG_NEG_ADDR_EN_Msk
        #else
        #endif
        | SAR_CHAN_CONFIG_AVG_EN_Msk
        | (uint32_t) (0 << SAR_CHAN_CONFIG_SAMPLE_TIME_SEL_Pos),
        (uint32_t) (ADC_CH1_SARMUX__CH_1_PORT << SAR_CHAN_CONFIG_POS_PORT_ADDR_Pos) |
        (uint32_t) ADC_CH1_SARMUX__CH_1_PIN
        #ifdef ADC_CH1_SARMUX__CH_1_MINUS_PIN
            | (uint32_t) (ADC_CH1_SARMUX__CH_1_MINUS_PIN << SAR_CHAN_CONFIG_NEG_PIN_ADDR_Pos) 
            | (uint32_t) (ADC_CH1_SARMUX__CH_1_MINUS_PORT  << SAR_CHAN_CONFIG_NEG_PORT_ADDR_Pos)
            | SAR_CHAN_CONFIG_NEG_ADDR_EN_Msk
        #else
        #endif
        | SAR_CHAN_CONFIG_AVG_EN_Msk
        | (uint32_t) (1 << SAR_CHAN_CONFIG_SAMPLE_TIME_SEL_Pos),
        (uint32_t) (ADC_CH1_SARMUX__CH_2_PORT << SAR_CHAN_CONFIG_POS_PORT_ADDR_Pos) |
        (uint32_t) ADC_CH1_SARMUX__CH_2_PIN
        #ifdef ADC_CH1_SARMUX__CH_2_MINUS_PIN
            | (uint32_t) (ADC_CH1_SARMUX__CH_2_MINUS_PIN << SAR_CHAN_CONFIG_NEG_PIN_ADDR_Pos) 
            | (uint32_t) (ADC_CH1_SARMUX__CH_2_MINUS_PORT  << SAR_CHAN_CONFIG_NEG_PORT_ADDR_Pos)
            | SAR_CHAN_CONFIG_NEG_ADDR_EN_Msk
        #else
        #endif
        | SAR_CHAN_CONFIG_AVG_EN_Msk
        | (uint32_t) (1 << SAR_CHAN_CONFIG_SAMPLE_TIME_SEL_Pos),
        (uint32_t) (ADC_CH1_SARMUX__CH_3_PORT << SAR_CHAN_CONFIG_POS_PORT_ADDR_Pos) |
        (uint32_t) ADC_CH1_SARMUX__CH_3_PIN
        #ifdef ADC_CH1_SARMUX__CH_3_MINUS_PIN
            | (uint32_t) (ADC_CH1_SARMUX__CH_3_MINUS_PIN << SAR_CHAN_CONFIG_NEG_PIN_ADDR_Pos) 
            | (uint32_t) (ADC_CH1_SARMUX__CH_3_MINUS_PORT  << SAR_CHAN_CONFIG_NEG_PORT_ADDR_Pos)
            | SAR_CHAN_CONFIG_NEG_ADDR_EN_Msk
        #else
        #endif
        | SAR_CHAN_CONFIG_AVG_EN_Msk
        | (uint32_t) (1 << SAR_CHAN_CONFIG_SAMPLE_TIME_SEL_Pos),
        CY_SAR_DEINIT,
        CY_SAR_DEINIT,
        CY_SAR_DEINIT,
        CY_SAR_DEINIT,
        CY_SAR_DEINIT,
        CY_SAR_DEINIT,
        CY_SAR_DEINIT,
        CY_SAR_DEINIT,
        CY_SAR_DEINIT,
        CY_SAR_DEINIT,
        CY_SAR_DEINIT,
        CY_SAR_DEINIT},

        .intrMask           = SAR_INTR_MASK_EOS_MASK_Msk,
        .satIntrMask        = ADC_CH1_CFG0_SATURATE_INTR_MASK,
        .rangeIntrMask      = ADC_CH1_CFG0_RANGE_INTR_MASK,
        .muxSwitch          = CY_SAR_DEINIT,
        .muxSwitchSqCtrl    = CY_SAR_DEINIT,
        .configRouting      = false,
        .vrefMvValue        = (uint32_t) ADC_CH1_CFG0_VREF_MV_VALUE,
    }
#if(ADC_CH1_TOTAL_CONFIGS > 1)
    /*Configuration 1*/
    ,{
        .ctrl               = ADC_CH1_CFG1_CTRL_INIT,
        .sampleCtrl         = ADC_CH1_CFG1_SAMPLE_CTRL_INIT,
        .sampleTime01       = ADC_CH1_CFG1_SAMPLE_TIME01_INIT,
        .sampleTime23       = ADC_CH1_CFG1_SAMPLE_TIME23_INIT,
        .rangeThres         = ADC_CH1_CFG1_RANGE_THRES_INIT,
        .rangeCond          = ADC_CH1_CFG1_RANGE_COND_INIT,
        .chanEn             = ADC_CH1_CFG1_CHANNEL_EN,
        /* CHAN_CONFIG Settings */
        .chanConfig         = 
        .intrMask           = SAR_INTR_MASK_EOS_MASK_Msk,
        .satIntrMask        = ADC_CH1_CFG1_SATURATE_INTR_MASK,
        .rangeIntrMask      = ADC_CH1_CFG1_RANGE_INTR_MASK,
        .muxSwitch          = CY_SAR_DEINIT,
        .muxSwitchSqCtrl    = CY_SAR_DEINIT,
        .configRouting      = false, /* configRouting */
        .vrefMvValue        = (uint32_t) ADC_CH1_CFG1_VREF_MV_VALUE,
    }
#endif
#if(ADC_CH1_TOTAL_CONFIGS > 2)
    /*Configuration 2*/
    ,{
        .ctrl               = ADC_CH1_CFG2_CTRL_INIT,
        .sampleCtrl         = ADC_CH1_CFG2_SAMPLE_CTRL_INIT,
        .sampleTime01       = ADC_CH1_CFG2_SAMPLE_TIME01_INIT,
        .sampleTime23       = ADC_CH1_CFG2_SAMPLE_TIME23_INIT,
        .rangeThres         = ADC_CH1_CFG2_RANGE_THRES_INIT,
        .rangeCond          = ADC_CH1_CFG2_RANGE_COND_INIT,
        .chanEn             = ADC_CH1_CFG2_CHANNEL_EN,
        /* CHAN_CONFIG Settings */
        .chanConfig         = 
        .intrMask           = SAR_INTR_MASK_EOS_MASK_Msk,
        .satIntrMask        = ADC_CH1_CFG2_SATURATE_INTR_MASK,
        .rangeIntrMask      = ADC_CH1_CFG2_RANGE_INTR_MASK,
        .muxSwitch          = CY_SAR_DEINIT,
        .muxSwitchSqCtrl    = CY_SAR_DEINIT,
        .configRouting      = false, /* configRouting */
        .vrefMvValue        = (uint32_t) ADC_CH1_CFG2_VREF_MV_VALUE,
    }
#endif
    /*Configuration 3*/
#if(ADC_CH1_TOTAL_CONFIGS > 3)
    ,{
        .ctrl               = ADC_CH1_CFG3_CTRL_INIT,
        .sampleCtrl         = ADC_CH1_CFG3_SAMPLE_CTRL_INIT,
        .sampleTime01       = ADC_CH1_CFG3_SAMPLE_TIME01_INIT,
        .sampleTime23       = ADC_CH1_CFG3_SAMPLE_TIME23_INIT,
        .rangeThres         = ADC_CH1_CFG3_RANGE_THRES_INIT,
        .rangeCond          = ADC_CH1_CFG3_RANGE_COND_INIT,
        .chanEn             = ADC_CH1_CFG3_CHANNEL_EN,
        /* CHAN_CONFIG Settings */
        .chanConfig         = 
        .intrMask           = SAR_INTR_MASK_EOS_MASK_Msk,
        .satIntrMask        = ADC_CH1_CFG3_SATURATE_INTR_MASK,
        .rangeIntrMask      = ADC_CH1_CFG3_RANGE_INTR_MASK,
        .muxSwitch          = CY_SAR_DEINIT,
        .muxSwitchSqCtrl    = CY_SAR_DEINIT,
        .configRouting      = false, /* configRouting */
        .vrefMvValue        = (uint32_t) ADC_CH1_CFG3_VREF_MV_VALUE,
    }
#endif
};

/* Array of configuration structures used to set configurations */
const ADC_CH1_CONFIG_STRUCT ADC_CH1_allConfigs[ADC_CH1_TOTAL_CONFIGS] = {
    /*Configuration 0*/
    {
        .channelBase        = ADC_CH1_CFG0_CHANNEL_BASE,
        .numChannels        = ADC_CH1_CFG0_CHANNEL_COUNT,
        .hwConfigStc        = &ADC_CH1_hwConfigs[0],
        .miscConfig         = ADC_CH1_CFG0_MISC_CONFIG_INIT,
    #if (ADC_CH1_CLOCK_INTERNAL)
        .clkDivider         = ADC_CH1_CFG0_CLOCKDIVIDER,
    #endif /* ADC_CH1_CLOCK_INTERNAL */
    }
#if(ADC_CH1_TOTAL_CONFIGS > 1)
    /*Configuration 1*/
    ,{
        .channelBase        = ADC_CH1_CFG1_CHANNEL_BASE,
        .numChannels        = ADC_CH1_CFG1_CHANNEL_COUNT,
        .hwConfigStc        = &ADC_CH1_hwConfigs[1],
        .miscConfig         = ADC_CH1_CFG1_MISC_CONFIG_INIT,
    #if (ADC_CH1_CLOCK_INTERNAL)
        .clkDivider         = ADC_CH1_CFG1_CLOCKDIVIDER,
    #endif /* ADC_CH1_CLOCK_INTERNAL */
    }
#endif
#if(ADC_CH1_TOTAL_CONFIGS > 2)
    /*Configuration 2*/
    ,{
        .channelBase        = ADC_CH1_CFG2_CHANNEL_BASE,
        .numChannels        = ADC_CH1_CFG2_CHANNEL_COUNT,
        .hwConfigStc        = &ADC_CH1_hwConfigs[2],
        .miscConfig         = ADC_CH1_CFG2_MISC_CONFIG_INIT,
    #if (ADC_CH1_CLOCK_INTERNAL)
        .clkDivider         = ADC_CH1_CFG2_CLOCKDIVIDER,
    #endif /* ADC_CH1_CLOCK_INTERNAL */
    }
#endif
    /*Configuration 3*/
#if(ADC_CH1_TOTAL_CONFIGS > 3)
    ,{
        .channelBase        = ADC_CH1_CFG3_CHANNEL_BASE,
        .numChannels        = ADC_CH1_CFG3_CHANNEL_COUNT,
        .hwConfigStc        = &ADC_CH1_hwConfigs[3],
        .miscConfig         = ADC_CH1_CFG3_MISC_CONFIG_INIT,
    #if (ADC_CH1_CLOCK_INTERNAL)
        .clkDivider         = ADC_CH1_CFG3_CLOCKDIVIDER,
    #endif /* ADC_CH1_CLOCK_INTERNAL */
    }
#endif
};

/* [] END OF FILE */
