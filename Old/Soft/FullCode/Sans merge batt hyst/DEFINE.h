/*******************************Pin Mapping Definition*******************************/

#ifndef _DEFINE_H    // Put these two lines at the top of your file.
#define _DEFINE_H    // (Use a suitable name, usually based on the file name.)

//Threshold values for battery level
#define VAL_BATTERY_LOW_INDICATOR_VOLTAGE 3200 //mV
#define VAL_BATTERY_LOW_SHUTDOWN_VOLTAGE 3000 //mV
//End of threshold values for battery level

#define BATTERY_VOLTAGE_READ_FREQUENCY 1000 //20seconds

//Pin Mapping for battery
#define PIN_BATTERY_VOLTAGE_INPUT A0 //A0
#define PIN_BATTERY_LOW_INDICATOR A1 //A1
#define PIN_BATTERY_SHUTDWN_2N4403 A2 //A2
#define PIN_INTERRUPTOR_STATE 13  //A2
//End of pin Mapping for battery

//Pin Mapping for 7 Segment
//Transistors (common cathode)
#define PIN_N_TRANSISTOR_1 2
#define PIN_N_TRANSISTOR_2 11
#define PIN_N_TRANSISTOR_3 12

#define PIN_SEGMENT_A 8
#define PIN_SEGMENT_B 10
#define PIN_SEGMENT_C 7
#define PIN_SEGMENT_D 6
#define PIN_SEGMENT_E 8
#define PIN_SEGMENT_F 9
#define PIN_SEGMENT_G 3
#define PIN_SEGMENT_H 4
//End of pin Mapping for 7 Segment

#endif // _HEADERFILE_H    // Put this line at the end of your file. (to avoid multiple define issue)
