#ifndef _ANALOG_H
#define _ANALOG_H


#ifdef __cplusplus
extern "C" {
#endif

void BatteryADCSetup(void);

void PinMappingSetup(void);

void SerialComSetup(void);

unsigned int ReadVoltage(
    unsigned long ul32_Occurence, 
    unsigned int ui16_DisplayForNoBlinking, 
    unsigned int ui16_DotLocation);

void CheckVoltageLevel(unsigned long ui32_VoltageLevel);

#endif /* _ANALOG_H */

#ifdef __cplusplus
}
#endif