#include "analog.h"
#include "projdefs.h"
#include "display.h"


extern SevSeg sevseg;


/**
 * \fn      void BatteryADCSetup(void)
 * \brief   This function sets INTERNAL reference as ADC volatge ref.
 */
void BatteryADCSetup(void)
{
    analogReference(INTERNAL);
}


/**
 * \fn      void PinMappingSetup(void)
 * \brief   This function initializes pins (direction / level) 
 */
void PinMappingSetup(void)
{
    /* Set direction */
    pinMode(PIN_BATTERY_SHUTDWN_2N4403,OUTPUT);
    pinMode(PIN_BATTERY_LOW_INDICATOR,OUTPUT);
    pinMode(PIN_BATTERY_VOLTAGE_INPUT,INPUT);
    pinMode(PIN_INTERRUPTOR_STATE,INPUT);

    /* Set level */
    digitalWrite(PIN_BATTERY_SHUTDWN_2N4403,HIGH);//Passant, pour assurer une lecture de tension
}


/**
 * \fn      void SerialComSetup(void)
 * \brief   This function initializes UART baudrate
 */
void SerialComSetup(void)
{
    Serial.begin(57600); //TODO: #define ? ou rendre paramétrable depuis le main ?
}


/**
 * \fn      unsigned int ReadVoltage ()
 * \brief   This function reads voltage from PIN_BATTERY_VOLTAGE_INPUT, and
 *          displays it for "ul32_Occurence" times.
 *          Then prints the mean result on the UART, and returns it
 *          mapped on 0-5000 scale.
 * \param   ul32_Occurence: number of reads
 * \param   ui16_DisplayForNoBlinking:
 * \param   ui16_DotLocation:
 * \return  unsigned int: Mean value mapped on 0-5000.
 */
unsigned int ReadVoltage(unsigned long ul32_Occurence, unsigned int ui16_DisplayForNoBlinking, unsigned int ui16_DotLocation)
{
    unsigned long ul32_BatteryVoltage = 0;
    unsigned long i = 0;

    ul32_BatteryVoltage = analogRead(PIN_BATTERY_VOLTAGE_INPUT);

    do{
        ul32_BatteryVoltage += analogRead(PIN_BATTERY_VOLTAGE_INPUT);
        //Serial.println("ADC ONGOING");
        //Serial.println(analogRead(PIN_BATTERY_VOLTAGE_INPUT));
        i++;
        //Serial.println(l32_BatteryVoltage);
        sevseg.setNumber(ui16_DisplayForNoBlinking, ui16_DotLocation); // Displays '3.141'
        sevseg.refreshDisplay();
    }while(i < ul32_Occurence);

    ul32_BatteryVoltage /= ul32_Occurence;
    Serial.println("ADC READ");
    Serial.println(ul32_BatteryVoltage);
    return map(ul32_BatteryVoltage, 0, 1023, 0, 5000);  
}


/**
 * \fn      void CheckVoltageLevel
 * \brief   This function checks battery level.
 *          - if battery level is <= VAL_BATTERY_LOW_INDICATOR_VOLTAGE: 
 *            Sets LOW battery indactor ON and prints "LOW" on UART
 *          - if battery level is <= VAL_BATTERY_LOW_SHUTDOWN_VOLTAGE:
 *            Displays "Bat" for 2 seconds on display ,
 *            Prints "VERY LOW" on UART, 
 *            Shuts circuit DOWN by setting PIN_BATTERY_SHUTDWN_2N4403 to LOW
 * \param   ui32_VoltageLevel: voltage level
 */
void CheckVoltageLevel(unsigned long ui32_VoltageLevel)
{
    unsigned long ul_32Timer = 0;
    const long ul_32DelayOffDisp = 2000;//2000ms Delay constant //TODO: replace by a #define

    //Serial.println(ui32_VoltageLevel);
    Serial.println(ui32_VoltageLevel);

    if(ui32_VoltageLevel <= VAL_BATTERY_LOW_INDICATOR_VOLTAGE)
    {
        digitalWrite(PIN_BATTERY_LOW_INDICATOR,HIGH);//Indicateur batterie faible activé
        Serial.println("LOW");
        Serial.println(ui32_VoltageLevel);
    }

    if(ui32_VoltageLevel <= VAL_BATTERY_LOW_SHUTDOWN_VOLTAGE)
    {
        ul_32Timer = millis();//Get local time for timer

        do
        {
            sevseg.setChars("Bat");//Display "BAT" before shutdown
            sevseg.refreshDisplay();
        }while( millis() < (ul_32Timer + ul_32DelayOffDisp) );//Delay

        Serial.println("VERY LOW");
        Serial.println(ui32_VoltageLevel);  

        digitalWrite(PIN_BATTERY_SHUTDWN_2N4403,LOW);//Désactive la sortie batterie, ce qui éteindra l'arduino et tous les affichages
    }
}
