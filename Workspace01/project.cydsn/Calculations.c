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
 * CALCULATION FUNCTIONS
 *
****************************************************/

// converts the data into something that can be displayed on screen
int findAmp(double psy, int data)
{
    double d = 1.0 * (psy) * 3300 * data / 4096;
    
    // create a map to map 0-256 to 10-150
    // will be affected by yscale
    //double slope = 1.0 * (212 - 0) / (256 - 0);
    //d = 0 + (slope * (d));
    //d = floor(d + 0.5);
    return (int) d;
}

// returns idx if edge has been detected, otherwise returns FALSE
int triggerDetection(Settings config, int *data, double psy)
{
    int *d;
    d = avgSmoothing(data, psy);
    int i = 0;
    int tlevel = findAmp(psy, config.trigl);
    for (; i < MAX_SIZE; i++){
        if (i > 0 && i < MAX_SIZE){
            if (config.slope == POS_SLOPE){
                if (d[i-1] < tlevel && d[i] >= tlevel && findSlope(d[i-1], d[i]) > 0){
                    return i;
                }
            } else if (config.slope == NEG_SLOPE){
                if (d[i-1] > tlevel && d[i] <= tlevel && findSlope(d[i-1], d[i]) < 0){
                    return i;
                }
            }
        }
    }
    return FALSE;
}

int findSlope(int p1, int p2)
{
    return p2 - p1;
}

// helper function to triggerDetection
int *avgSmoothing(int *data, double psy)
{
    // running avg - stores data in new array and returns it
    int c[MAX_SIZE];
    static int d[MAX_SIZE];
    int i = 0;
    for (; i < MAX_SIZE; i++){
        c[i] = findAmp(psy, data[i] & BITMASKADC);
        if (i > 4 && i < MAX_SIZE){
            d[i] = (c[i-4] + (2 * c[i-3]) + (3 * c[i-2]) + (2 * c[i-1]) + c[i]) / 9;
        }
        if (i < 4) d[i] = c[i];
    }
    return d;
}

/* [] END OF FILE */
