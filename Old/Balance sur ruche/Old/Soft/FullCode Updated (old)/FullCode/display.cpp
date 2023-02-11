
#include "display.h"
#include "projdefs.h"
#include "SevSeg.h"


extern SevSeg sevseg;


/**
 * \fn      void SevSegSetup(void)
 * \brief   This function initializes the 7-segments display.
 */
void SevSegSetup(void)
{
    unsigned long ul_32Timer;
    
    const long ul_32Delay888 = 1000;//1000ms Delay constant
    const long ul_32DelayTiret = 1000;//1000ms Delay constant

    byte numDigits = 3;
    byte digitPins[] = {PIN_N_TRANSISTOR_1, PIN_N_TRANSISTOR_2, PIN_N_TRANSISTOR_3};
    byte segmentPins[] = {PIN_SEGMENT_A, PIN_SEGMENT_B, PIN_SEGMENT_C, PIN_SEGMENT_D, PIN_SEGMENT_E, PIN_SEGMENT_F, PIN_SEGMENT_G, PIN_SEGMENT_H};
    byte hardwareConfig = N_TRANSISTORS; // See README.md for options
    
    bool resistorsOnSegments = true; // 'false' means resistors are on digit pins, 'true' on segment
    bool updateWithDelays = false; // Default 'false' is Recommended
    bool leadingZeros = false; // Use 'true' if you'd like to keep the leading zeros
    bool disableDecPoint = false; // Use 'true' if your decimal point doesn't exist or isn't connected. Then, you only need to specify 7 segmentPins[]
    
    
    sevseg.begin(hardwareConfig, numDigits, digitPins, segmentPins, resistorsOnSegments,
        updateWithDelays, leadingZeros, disableDecPoint);
    sevseg.setNumber(888,1);
    sevseg.refreshDisplay();

    //Serial.println("1");
    ul_32Timer = millis();//Get time for timer
    do{
        sevseg.setNumber(888,1);//Test all segments
        sevseg.refreshDisplay();
    }while( millis() < (ul_32Timer+ul_32Delay888) );//Delay

    ul_32Timer = millis();//Get local time for timer
    
    do{
        sevseg.setNumber(9999,0);//Dsiplay - - - (because it's sytlé)
        sevseg.refreshDisplay();
    }while( millis() < (ul_32Timer+ul_32DelayTiret) );//Delay
    
    //Serial.println("11");
}