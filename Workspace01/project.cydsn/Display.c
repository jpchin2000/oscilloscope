#include <TinyScope.h>
#include "project.h"
#include "string.h"
#include "math.h"
#include "stdio.h"
#include "stdlib.h"

/****************************************************
 *
 * LCD SCREEN AND WAVEFORM FUNCTIONS
 *
****************************************************/
void Startup(void)
{
/* Set font size, foreground and background colors */
    GUI_SetFont(GUI_FONT_32B_1);
    GUI_SetBkColor(GUI_BLUE);
    GUI_SetColor(GUI_LIGHTMAGENTA);
    GUI_Clear();
  
    GUI_SetTextAlign(GUI_TA_HCENTER | GUI_TA_VCENTER);
    GUI_DispStringAt("TinyScope", 160, 120);
    
    GUI_SetFont(GUI_FONT_24B_1);
    GUI_SetColor(GUI_LIGHTGREEN);
    GUI_SetTextAlign(GUI_TA_HCENTER);
    GUI_DispStringAt("CSE 121/L Final Project", 160, 200);
}

void RefreshDisplay(Settings config)
{
    /* Display background */
    //DrawBG(XSIZE, YSIZE, XMARGIN, YMARGIN);
    /* Display grid*/
    DrawGrid(XSIZE, YSIZE, XDIVISIONS, YDIVISIONS, XMARGIN, YMARGIN);
    /* Display scale settings */
    DrawScale(SCALE_POS_X, SCALE_POS_Y, config.xscale, config.yscale);
    /* Display frequency */
    DrawFreq(FREQUENCY_POS_X, FREQUENCY_POS_Y, config.freq1, config.freq2);
}

void DrawBG(int x, int y, int xm, int ym)
{
   GUI_SetBkColor(GUI_BLACK);
   GUI_SetColor(GUI_DARKCYAN);
   GUI_FillRect(0, 0, x, y);
   GUI_SetPenSize(1);
   GUI_SetColor(GUI_LIGHTGRAY);
   GUI_DrawRect(xm, ym, x-xm, y-ym);
   GUI_SetLineStyle(GUI_LS_DOT);
}

void DrawGrid(int x, int y, int xd, int yd, int xm, int ym)
{
    int xstep = (x-xm*2)/xd;
    int ystep = (y-ym*2)/yd;
    GUI_SetPenSize(1);
    GUI_SetColor(GUI_LIGHTGRAY);
    GUI_SetLineStyle(GUI_LS_DOT);
    for (int i=1; i<yd; i++){
        GUI_DrawLine(xm, ym+i*ystep, x-xm, ym+i*ystep);
    }
    for (int i=1; i<xd; i++){
        GUI_DrawLine(xm+i*xstep, ym, xm+i*xstep, y-ym);
    }
}

void DrawScale(int x, int y, int xs, int ys)
{
    char str[20];
    
    GUI_SetBkColor(GUI_DARKCYAN); // Set background color
    GUI_SetFont(GUI_FONT_16B_1); // Set font
    GUI_SetColor(GUI_LIGHTGRAY); // Set foreground color
    // display x scale
    if (xs >= 1000)
        sprintf(str, "Xscale: %0d ms/div", xs/1000);
    else
        sprintf(str, "Xscale: %0d us/div", xs);
    GUI_DispStringAt(str, x, y);
    // display y scale under x scale
    int yscaleVolts = ys/1000;
    int yscalemVolts = ys % 1000;
    if (ys >= 1000)
        sprintf(str, "Yscale: %0d V/div", yscaleVolts);
    else
        sprintf(str, "Yscale: %0d.%0d V/div", yscaleVolts, yscalemVolts/100);
    GUI_DispStringAt(str, x, y + 20);
}

void DrawFreq(int x, int y, int xf, int yf)
{
    char str[20];
    GUI_SetBkColor(GUI_DARKCYAN); // Set background color
    GUI_SetFont(GUI_FONT_16B_1); // Set font
    GUI_SetColor(GUI_LIGHTGRAY); // Set foreground color
    // create freq string and then display it
    sprintf(str, "Ch 1 Freq: %0d kHz", xf);
    GUI_DispStringAt(str, x, y);
    sprintf(str, "Ch 2 Freq: %0d kHz", yf);
    GUI_DispStringAt(str, x, y + 20);
}

void DrawWaveform(int ch, int x, int y, uint32_t color, GUI_HMEM ch1_spline, GUI_HMEM ch2_spline)
{
    GUI_SetPenSize(4);
    GUI_SetColor(color);
    if (ch == 0)
        GUI_SPLINE_Draw(ch1_spline, x, y);
    else
        GUI_SPLINE_Draw(ch2_spline, x, y);
}
// creates and draws a waveform
// enter raw data in, will change it
GUI_HMEM CreateWave(int *data, int *x, double psy)
{
    int i;
    for (i = 0; i < MAXPOINTS; i++){
        data[i] = findAmp(psy, data[i]);
        //printf("%d - %d\n", i, data[i]);
    }
    GUI_HMEM spline = GUI_SPLINE_Create(x, data, MAXPOINTS);
    return spline;
}
/* [] END OF FILE */
