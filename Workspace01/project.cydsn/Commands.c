/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/

#include <TinyScope.h>
#include "project.h"
#include "string.h"
#include "math.h"
#include "stdio.h"
#include "stdlib.h"

/****************************************************
 *
 * COMMAND FUNCTIONS
 *
****************************************************/
// returns status for command/main to process
Status parse_str(char str[MAX_SIZE], long *triglvl, long *xsc, long *ysc)
{
    Status stat = error;
    const char delim[2] = " ";
    char *token = strtok(str, delim);
    int i = 1;
    for (i = 1; token != NULL; token = strtok(NULL, delim)){
        // do stuff
        if (i == 1){
            if (!strcmp(token, "set")){
                i++;
            } else if (!strcmp(token, "start")){
                stat = start;
                return stat;
            } else if (!strcmp(token, "stop")){
                stat = stop;
                return stat;
            }
        } else if (i == 2){
            if (!strcmp(token, "mode")){
                token = strtok(NULL, delim);
                if (!strcmp(token, "free")){
                    stat = modefree;
                    return stat;
                } else if (!strcmp(token, "trigger")){
                    stat = modetrig;
                    return stat;
                } else {
                    stat = error_mode;
                }
            } else if (!strcmp(token, "trigger_level")){
                stat = trigLevel;
                token = strtok(NULL, delim);
                *triglvl = strtol(token, NULL, 10);
                return stat;
            } else if (!strcmp(token, "trigger_slope")){
                token = strtok(NULL, delim);
                if (!strcmp(token, "positive")){
                    stat = trigSlope_pos;
                    return stat;
                } else if (!strcmp(token, "negative")){
                    stat = trigSlope_neg;
                    return stat;
                } else {
                    stat = error_slope;
                }
            } else if (!strcmp(token, "trigger_channel")){
                token = strtok(NULL, delim);
                if (!strcmp(token, "1")){
                    stat = trigCh1;
                    return stat;
                } else if (!strcmp(token, "2")){
                    stat = trigCh2;
                    return stat;
                } else {
                    stat = error_ch;
                }
            } else if (!strcmp(token, "xscale")){
                token = strtok(NULL, delim);
                *xsc = strtol(token, NULL, 10);
                stat = xscale;
                return stat;
            } else if (!strcmp(token, "yscale")){
                token = strtok(NULL, delim);
                *ysc = strtol(token, NULL, 10);
                stat = yscale;
                return stat;
            }
        }
    }
    return stat;
}

/* formats the status message into a char msg designated by output
 * prints directly to output global variable
*/
char *format_str(Settings config, Status stat)
{
    static char output[MAX_SIZE];
    if (stat == error){
        sprintf(output, ERROR_MSG);
    } else if (stat == start){
        sprintf(output, SET_START);
    } else if (stat == stop){
        sprintf(output, SET_STOP);
    } else if (stat == modefree){
        sprintf(output, MODE_SET_FREE_RUNNING);
    } else if (stat == modetrig){
        sprintf(output, MODE_SET_TRIGGER);
    } else if (stat == trigLevel){
        sprintf(output, TRIGGER_SET_LEVEL, config.trigl);
    } else if (stat == trigSlope_neg){
        sprintf(output, TRIGGER_SLOPE_NEGATIVE);
    } else if (stat == trigSlope_pos){
        sprintf(output, TRIGGER_SLOPE_POSITIVE);
    } else if (stat == trigCh1){
        sprintf(output, TRIGGER_CHANNEL_1);
    } else if (stat == trigCh2){
        sprintf(output, TRIGGER_CHANNEL_2);
    } else if (stat == xscale){
        sprintf(output, SET_XSCALE, config.xscale);
    } else if (stat == yscale){
        sprintf(output, SET_YSCALE, config.yscale);
    } else if (stat == error_ch){
        sprintf(output, ERROR_INVALID_CHANNEL);
    } else if (stat == error_xsc){
        sprintf(output, ERROR_INVALID_XSC);
    } else if (stat == error_ysc){
        sprintf(output, ERROR_INVALID_YSC);
    } else if (stat == error_mode){
        sprintf(output, ERROR_INVALID_MODE);
    } else if (stat == error_trigl){
        sprintf(output, ERROR_INVALID_TRIGGER_LEVEL);
    } else if (stat == error_slope){
        sprintf(output, ERROR_INVALID_SLOPE);
    } else if (stat == error_not_stop){
        sprintf(output, ERROR_NOT_STOPPED);
    }
    return output;
}

void set_mode(Settings *config, Status status)
{
    // changes the mode from free to trigger or vice versa - changes global variable
    // if invalid status, does nothing
    if (status == modefree){
        config->mode = free_run;
    } else if (status == modetrig){
        config->mode = trigger;
    }
}

void set_trigger_level(Settings *config, int triggerlevel)
{
    config->trigl = triggerlevel;
}

double set_xscale(Settings *config, int xscale)
{
    double psx;
    config->xscale = xscale;
    psx = 4.0 * XPIXELPERDIVISION / xscale;
    
    // at xscale = 100 (the lowest possible xscale),
    // the psx will be 1.24, which will be rounded down to 1
    if (psx > 1) psx = floor(psx);
    if (psx < 1)
        psx = floor(1/psx + 0.5);
        
    return (int) psx;
}

double set_yscale(Settings *config, int yscale)
{
    double psy;
    config->yscale = yscale;
    psy = 1.0 * YPIXELPERDIVISION / yscale;
    return psy;
}

void set_freq(Settings *config, int freq1, int freq2)
{
    config->freq1 = freq1;
    config->freq2 = freq2;
}

void set_slope(Settings *config, Status status)
{
    if (status == trigSlope_pos)
        config->slope = POS_SLOPE;
    else if (status == trigSlope_neg)
        config->slope = NEG_SLOPE;
}

void set_trigger_ch(Settings *config, Status status)
{
    if (status == trigCh1){
        config->trigch = CH_1;
    } else if (status == trigCh2){
        config->trigch = CH_2;
    }
}

/* command parse takes in status and does the action required
 * will check if input is valid or not and update status
 * will format according to config and update display
*/
Status command_parse(Settings *config, Status status, int xsc, int ysc, int triglvl, char *enable
                        , double *psy, double *psx)
{
    if (status == start){
        *enable = START;
    } 
    else if (status == stop){
        *enable = STOP;
    } 
    else if (status == modefree || status == modetrig){
        if (*enable == STOP)
            set_mode(config, status);
        else
            status = error_not_stop;
    } 
    else if (status == trigLevel){
        if (*enable == STOP){
            if (triglvl > 0 && triglvl <= 3000){
                if (triglvl % 100 == 0){
                    set_trigger_level(config, triglvl);
                } else {
                    status = error_trigl;
                }
            } else {
                status = error_trigl;
            }
        } else {
            status = error_not_stop;
        }
    } 
    else if (status == xscale){ // invalid xscale?
        if (xsc == 100 || xsc == 200 || xsc == 500 || xsc == 1000 || xsc == 2000 || xsc == 5000 || xsc == 10000){
            *psx = set_xscale(config, xsc);
        } else {
            status = error_xsc;
        }
    } 
    else if (status == yscale){ // invalid yscale?
        if (ysc == 500 || ysc == 1000 || ysc == 1500 || ysc == 2000){
            *psy = set_yscale(config, ysc);
        } else {
            status = error_ysc;
        }
    } 
    else if (status == trigSlope_neg || status == trigSlope_pos){
        if (*enable == STOP){
            set_slope(config, status);
        } else {
            status = error_not_stop;
        }
    }
    else if (status == trigCh1 || status == trigCh2){
        if (*enable == STOP){
            set_trigger_ch(config, status);
        } else {
            status = error_not_stop;
        }
    }
    // will refresh display after:
    RefreshDisplay(*config);
    return status;
}


/* [] END OF FILE */
