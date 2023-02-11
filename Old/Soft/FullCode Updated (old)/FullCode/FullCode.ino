#include "projdefs.h"
#include "SevSeg.h"
#include "analog.h"
#include "display.h"

SevSeg sevseg; //Instantiate a seven segment object (global)


/************************************************************************************************************************************************/
//-------------setup------------//
void setup() {
  //SevSeg Setup
  SevSegSetup();
  //Serial.println("1");
  //variables
  
  //analog
  BatteryADCSetup();
  //Serial.println("2");
  //Scom
  SerialComSetup();
  //Serial.println("3");
  //Pin mapping initialisation
  PinMappingSetup();

  //First run for voltage reading and shut down process if needed
  //CheckVoltageLevel(ReadVoltage(1000,9999,0));
  //Serial.println("4");

}
/************************************************************************************************************************************************/

//-------------loop------------//
void loop() {
static bool b_TimerSetup=0;
static int ui16_Weight, ui16_WeightMemo;
static unsigned long ul_32Timer; 
static long sl_32Timer;

  if(b_TimerSetup==0)//Initialisation of Timer
  {
    sl_32Timer=millis();//get time for timer
    ul_32Timer=millis();
    ui16_WeightMemo = 0;
    b_TimerSetup=1;//Set initialisation to done

    //Serial.println(1);
  }
  
  if(millis()>(BATTERY_VOLTAGE_READ_FREQUENCY+sl_32Timer))//The timer has elapsed
  {
    sl_32Timer=millis();//reset timer
    // CheckVoltageLevel(ReadVoltage(1000,ui16_WeightMemo,1));//ReadBatVoltage
  }
  
    if (Serial.available() >= 2) // There are at least 2 bytes to read
    {
       ui16_Weight = 0;
       ui16_Weight = Serial.read() << 8;   // read high byte and shift it over
       ui16_Weight |= Serial.read();   // read low byte
       ui16_WeightMemo=ui16_Weight;
       Serial.flush();
    }
	
    if(ui16_WeightMemo>=1000)
      {
        ui16_WeightMemo-=1000;//Weight is superior to 100kg
      }
	  
       //Serial.println(ui16_WeightMemo);
       sevseg.setNumber(ui16_WeightMemo,1); // Displays Weight
       sevseg.refreshDisplay();

    //Serial.println(digitalRead(PIN_INTERRUPTOR_STATE));

    /*if(digitalRead(PIN_INTERRUPTOR_STATE)==LOW)
    {
      digitalWrite(PIN_BATTERY_SHUTDWN_2N4403,LOW);
    }*/

       /*Serial.println(ReadVoltage(1000,ui16_WeightMemo,1));
       delay(1000);
       sevseg.refreshDisplay();
      
       if((millis()-ul_32Timer)>100)//0.1s has elapsed
        {sevseg.setNumber(ui16_WeightMemo,1);
          ui16_WeightMemo++;
        ul_32Timer=millis();
        }*/

}





