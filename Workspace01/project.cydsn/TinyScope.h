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
#ifndef TINYSCOPE_H
#define TINYSCOPE_H
    
#include "project.h"
#include "stdio.h"
#include "GUI.h"

#define MAX_SIZE 256
    
#define TRUE 1
#define FALSE 0

#define STOP 0
#define START 1
    
#define SUCCESS 1
#define ERROR 0

#define NEG_SLOPE -1
#define NO_SLOPE 0
#define POS_SLOPE 1

#define CH_1 1
#define CH_2 2
    
#define XSIZE 320 // Width of LCD screen in pixels
#define YSIZE 240 // Height of LCF screen in pixels
#define XDIVISIONS 10 // Number of x-axis divisions for grid
#define YDIVISIONS 8 // Number of y-axis divisions for grid
#define XMARGIN 5 // Margin around screen on x-axis
#define YMARGIN 4 // Margin around screen on y-axis
#define MAXPOINTS XSIZE-2*XMARGIN // Maximum number of points in wave for plotting
#define MAXPOINTSY YSIZE-2*YMARGIN
#define XPIXELPERDIVISION (MAXPOINTS)/XDIVISIONS // pixels per x division
#define YPIXELPERDIVISION (MAXPOINTSY)/YDIVISIONS
#define SAMPLINGINTERVAL 4.0 // for x scale
#define BITMASKADC 0x00000FFF

#define BACKGROUND GUI_DARKCYAN

#define FREQUENCY_POS_X 10
#define FREQUENCY_POS_Y 15
#define SCALE_POS_X 200
#define SCALE_POS_Y 15

#define ARR_DATA_NUM 6

#define NO_CHAR 0

    
// macros for responses
#define MODE_SET_FREE_RUNNING "Mode set to free-running\n"
#define MODE_SET_TRIGGER "Mode set to trigger\n"
#define TRIGGER_SET_LEVEL "Trigger level set to %d mV\n"
#define TRIGGER_SLOPE_NEGATIVE "Trigger slope set to negative\n"
#define TRIGGER_SLOPE_POSITIVE "Trigger slope set to positive\n"
#define TRIGGER_CHANNEL_1 "Trigger channel set to 1\n"
#define TRIGGER_CHANNEL_2 "Trigger channel set to 2\n"
// below are macros for commands that can happen at any time
#define SET_XSCALE "xscale set to %d\n"
#define SET_YSCALE "yscale set to %d\n"
#define SET_START "Starting...\n"
#define SET_STOP "Stopping...\n"
    
// macro for error
#define ERROR_MSG "Invalid command!\n"
#define ERROR_NOT_STOPPED "Error: Can only enter this command when state is stopped\n"
#define ERROR_INVALID_CHANNEL "Error: Channel must be 1 or 2\n"
#define ERROR_INVALID_YSC "Error: Input must be one of: 500, 1000, 1500 or 2000\n"
#define ERROR_INVALID_XSC "Error: Input must be one of: 100, 200, 500, 1000, 2000, 5000 or 10000\n"
#define ERROR_INVALID_MODE "Error: Mode must be either free or trigger\n"
#define ERROR_INVALID_TRIGGER_LEVEL "Error: Trigger_level must be 0V-3V with 100mV increments\n"
#define ERROR_INVALID_SLOPE "Error: Slope entered must be either: positive or negative\n"
    
// Status holds all the different status messages for commands.
typedef enum Status{
    error = 0,
    start,
    stop,
    modefree,
    modetrig,
    trigLevel,
    trigSlope_neg,
    trigSlope_pos,
    trigCh1,
    trigCh2,
    xscale,
    yscale,
    error_not_stop,
    error_ch,
    error_xsc,
    error_ysc,
    error_mode,
    error_trigl,
    error_slope
} Status;

// mode struct will hold the current mode
// either free_run for free_running or trigger for trigger mode
typedef enum Mode{
    free_run,
    trigger
}Mode;

/*
 * Settings struct to hold the settings and values needed for the oscilloscope
 */
typedef struct Settings{
    Mode mode;
    int xscale;
    int yscale;
    int freq1;
    int freq2;
    int slope;
    int trigl;
    int trigch;
}Settings;

/****************************************************
 *
 * CALCULATION FUNCTIONS
 *
****************************************************/

/* findAmp will convert the given data point into a value that can be displayed
 * @param:
    double psy: scalar to scale the data
    int data: a given data point
 * @return:
    int: the scaled data
 */
int findAmp(double psy, int data);

/* Detects a rising or falling trigger using the algorithm given in lab document
 * @param:
    Settings config: the current settings for the oscilloscope
    int *data: an array of size MAX_SIZE to check for rising or falling edge
    double psy: scalar to scale the data
 * @return:
    int: the index of the data point. FALSE if unable to find an edge
 */
int triggerDetection(Settings config, int *data, double psy);

/* Will calculate the slope between two consecutive points.
 * Helper function to triggerDetection
 * @param:
    int p1: y coordinate of first point. Must be a valid point to display on the display
    int p2: y coordinate of second point. Must be a valid point to display on the display
 * @return:
    int: the slope of the two points
 */
int findSlope(int p1, int p2);

/* will do smoothing based on the algorithm given in the lab document.
 * @param:
    int *data: an array of size MAX_SIZE to smooth out
    double psy: scalar to scale the data
 * @return:
    int *: an array that contains the slope data
 */
int *avgSmoothing(int *data, double psy);

/****************************************************
 *
 * LCD SCREEN AND WAVEFORM FUNCTIONS
 *
****************************************************/

/* starts by drawing the startup screen on the LCD
*/
void Startup(void);

/* refreshes the display with updated parameters
 * DOES NOT REDRAW BACKGROUND
 * @param:
    Settings config: Will update according to config
*/
void RefreshDisplay(Settings config);

/*will draw both the grid and the background
 * @param:
    x: width
    y: height
    xm: x margin
    ym: y margin
*/
void DrawBG(int x, int y, int xm, int ym);

/*will draw the x/y grid on the screen
 * @param:
    x: width
    y: height
    xd: num of divisions on x axis
    yd: num of divisions on y axis
    xm: x margin
    ym: y margin
*/
void DrawGrid(int x, int y, int xd, int yd, int xm, int ym);

/* will draw scale settings for graph
 * @param:
    xs: x pos to start
    ys: y pos to start
    x: scale of x
    y: scale of y
*/
void DrawScale(int x, int y, int xs, int ys);

/* will draw freq settings for graph
 * @param:
    x: x pos to start
    y: y pos to start
    xf: frequency of x graph
    yf: frequency of y graph
*/
void DrawFreq(int x, int y, int xf, int yf);

/* will draw a waveform on the screen
 * @param:
    ch: channel parameter (choose between 1 or 0)
    x: x coordinate to start
    y: y coordinate to start
    color: color of the waveform
*/
void DrawWaveform(int ch, int x, int y, uint32_t color, GUI_HMEM ch1_spline, GUI_HMEM ch2_spline);

/* Creates a waveform using the data
 * @param:
    int *data: an array of y coordinates. Must be of size MAXPOINTS
    int *x: an array of x coordinates. Should be increasing order from 5-MAXPOINTS + 5.
            Size should be of size MAXPOINTS
    double psy: scalar to scale the waveform to fit on the screen
 * @return:
    GUI_HMEM: the created spline/wave
 */
GUI_HMEM CreateWave(int *data, int *x, double psy);

/****************************************************
 *
 * UART FUNCTIONS
 *
****************************************************/

/* Receive works in the main file and acts as the uart rx
 * @param:
    None.
 * @return:
    char: the character received
 */
char uart_receive(void);

/* Transmit will transmit a string to the console
 * @param:
    char str[MAX_SIZE]: a string of at most MAX_SIZE length to transmit
 */
void uart_transmit(char str[MAX_SIZE]);

/****************************************************
 *
 * COMMAND FUNCTIONS
 *
****************************************************/

/* Parses a given input into a command.
 * @param:
    char str[MAX_SIZE]: a string to parse
    long *triglvl: a pointer to a variable to store the trigger level if found
    long *xsc: a pointer to a variable to store the xscale if found
    long *ysc: a pointer to a variable to store the yscale if found
 * @return:
    Status: a status that will indicate the given command.
        Status will also indicate any errors
 */
Status parse_str(char str[MAX_SIZE], long *triglvl, long *xsc, long *ysc);

/* will format a status into an output message
 * @param:
    Settings config: current configuration of the oscilloscope
    Status stat: a status pertaining to the command entered
 * @return:
    char *: an output string to display to the uart
 */
char *format_str(Settings config, Status stat);

/* will change the mode of the oscilloscope to either trigger or free-running based on status
 * @param:
    Settings config: current configuration of the oscilloscope
        Will change the mode setting if valid status
    Status status: a status that will indicate whether to change to free-running or trigger
        If status does not indicate any, then will not do anything
 */
void set_mode(Settings *config, Status status);

/* changes the trigger level of the oscilloscope for trigger mode
 * @param:
    Settings config: current configuration of the oscilloscope
        Will change the trigl variable.
    int triggerlevel: a level to change to
 */
void set_trigger_level(Settings *config, int triggerlevel);

/* Sets the xscale and will also return the psx value
 * @param:
    Settings config: current configuration of the oscilloscope
    int xscale: a given xscale value to change to
 * @return:
    double: the psx value which indicates interval which samples are collected
 */
double set_xscale(Settings *config, int xscale);

/* Sets the yscale and wil lalso return the psy value
 * @param:
    Settings config: current configuration of the oscilloscope
    int yscale: a given yscale value to change to
 * @return:
    double: the scalar to which to scale future yvalues.
        indicated by variables psy
 */
double set_yscale(Settings *config, int yscale);

/* Will change the estimated frequency.
 * @param:
    Settings config: current configuration of the oscilloscope
    int freq1: ch1 freq to change
    int freq2: ch2 freq to change
 */
void set_freq(Settings *config, int freq1, int freq2);

/* Will change the slope to the specified direction from status message
 * @param:
    Settings config: current configuration of the oscilloscope
    Status status: a message that will tell which slope to change to
        Either positive or negative, indicated by POS_SLOPE or NEG_SLOPE macros
 */
void set_slope(Settings *config, Status status);

/* Will change the trigger channel to the specified channel in the status message
 * @param:
    Settings config: current configuration of the oscilloscope
    Status status: a message that will tell which channel to change to
 */
void set_trigger_ch(Settings *config, Status status);

/* Will parse a given status message into a valid command, and execute the command
 * @param:
    Settings config: current configuration of the oscilloscope
    Status status: a status message to parse
    int xsc: an xscale to change to
    int ysc: a yscale to change to
    int triglvl: a trigger level to change to
    char *enable: a single character to indicate whether to start the oscilloscope or stop it
    double *psy: a pointer to a variable to hold the psy value
    double *psx: a pointer to a variable to hold the psx value
 * @return:
    Status: a status message. Unchanged if successful, will be an error if unsuccessful
 */
Status command_parse(Settings *config, Status status, int xsc, int ysc, int triglvl, char *enable
                        , double *psy, double *psx);


#endif
/* [] END OF FILE */
