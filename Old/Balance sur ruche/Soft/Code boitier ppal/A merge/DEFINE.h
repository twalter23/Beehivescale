/*******************************Pin Mapping Definition*******************************/

#ifndef _DEFINE_H    // Put these two lines at the top of your file.
#define _DEFINE_H    // (Use a suitable name, usually based on the file name.)

//Threshold values for battery level
#define LOW_BATT_THRESHOLD 3000 //mV
#define LOW_BATT_THRESHOLD_HYST 3300 //mV
//End of threshold values for battery level


//Misc.Battery
#define BATTERY_VOLTAGE_READ_FREQUENCY 5000 //ms
//End of Misc.Battery

//Pin Mapping for battery
#define PIN_BATTERY_VOLTAGE_INPUT A0 //A0
#define LED_LOW_BAT_PIN 16
//End of pin Mapping for battery

//Pin Mapping for 7 Segment
//Transistors (common cathode)
#define PIN_BASE_TRANS_DIG_1 5
#define PIN_BASE_TRANS_DIG_2 14
#define PIN_BASE_TRANS_DIG_3 15

#define PIN_SEGMENT_A 8
#define PIN_SEGMENT_B 13
#define PIN_SEGMENT_C 10
#define PIN_SEGMENT_D 9
#define PIN_SEGMENT_E 11
#define PIN_SEGMENT_F 12
#define PIN_SEGMENT_G 6
#define PIN_SEGMENT_H 7
//End of pin Mapping for 7 Segment

#endif // _HEADERFILE_H    // Put this line at the end of your file. (to avoid multiple define issue)
