#include "DEFINE.h"
#include "SevSeg.h"
  SevSeg sevseg; //Instantiate a seven segment object (global)

//----------------------------------------------------------------------------------------------------------------------------------------------//
void SevSegSetup()
{
  unsigned long ul_32Timer;
  const long ul_32Delay888 = 1000;//1000ms Delay constant
  const long ul_32DelayTiret = 1000;//1000ms Delay constant
  
  byte numDigits = 3;
  byte digitPins[] = {PIN_N_TRANSISTOR_1, PIN_N_TRANSISTOR_2, PIN_N_TRANSISTOR_3};
  byte segmentPins[] = {PIN_SEGMENT_A, PIN_SEGMENT_B, PIN_SEGMENT_C, PIN_SEGMENT_D, PIN_SEGMENT_E, PIN_SEGMENT_F, PIN_SEGMENT_G, PIN_SEGMENT_H};
  bool resistorsOnSegments = true; // 'false' means resistors are on digit pins, 'true' on segment
  byte hardwareConfig = N_TRANSISTORS; // See README.md for options
  bool updateWithDelays = false; // Default 'false' is Recommended
  bool leadingZeros = false; // Use 'true' if you'd like to keep the leading zeros
  bool disableDecPoint = false; // Use 'true' if your decimal point doesn't exist or isn't connected. Then, you only need to specify 7 segmentPins[]
  sevseg.begin(hardwareConfig, numDigits, digitPins, segmentPins, resistorsOnSegments,
  updateWithDelays, leadingZeros, disableDecPoint);
  sevseg.setNumber(888,1);
  sevseg.refreshDisplay();
  //Serial.println("1");
  ul_32Timer=millis();//Get time for timer
    do
      {
          sevseg.setNumber(888,1);//Test all segments
          sevseg.refreshDisplay();
      }while(millis()<(ul_32Timer+ul_32Delay888));//Delay

  ul_32Timer=millis();//Get local time for timer
          do
      {
          sevseg.setNumber(9999,0);//Dsiplay - - - (because it's sytlé)
          sevseg.refreshDisplay();
      }while(millis()<(ul_32Timer+ul_32DelayTiret));//Delay
        //Serial.println("11");
}
//----------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------//
void BatteryADCSetup()
{
  analogReference(INTERNAL); //
}

void PinMappingSetup()
{
  pinMode(PIN_BATTERY_SHUTDWN_2N4403,OUTPUT);
  pinMode(PIN_BATTERY_LOW_INDICATOR,OUTPUT);
  pinMode(PIN_BATTERY_VOLTAGE_INPUT,INPUT);
  pinMode(PIN_INTERRUPTOR_STATE,INPUT);
  
  digitalWrite(PIN_BATTERY_SHUTDWN_2N4403,HIGH);//Passant, pour assurer une lecture de tension
  //digitalWrite(PIN_BATTERY_LOW_INDICATOR,LOW);//Indicateur batterie faible désactivé
}
//----------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------//
void SerialComSetup()
{
  Serial.begin(57600);
}

unsigned int ReadVoltage(unsigned long ul32_Occurence, unsigned int ui16_DisplayForNoBlinking, unsigned int ui16_DotLocation)
{
  unsigned long ul32_BatteryVoltage,i;
  
  ul32_BatteryVoltage=analogRead(PIN_BATTERY_VOLTAGE_INPUT);
  i=0;
  
  do{
    ul32_BatteryVoltage+=analogRead(PIN_BATTERY_VOLTAGE_INPUT);
    //Serial.println("ADC ONGOING");
    //Serial.println(analogRead(PIN_BATTERY_VOLTAGE_INPUT));
    i++;
    //Serial.println(l32_BatteryVoltage);
    sevseg.setNumber(ui16_DisplayForNoBlinking,ui16_DotLocation); // Displays '3.141'
    sevseg.refreshDisplay();
    }while(i<ul32_Occurence);
    
  ul32_BatteryVoltage/=ul32_Occurence;
  Serial.println("ADC READ");
  Serial.println(ul32_BatteryVoltage);
  return map(ul32_BatteryVoltage, 0, 1023, 0, 5000);  
}

void CheckVoltageLevel(unsigned long ui32_VoltageLevel)
{
unsigned long ul_32Timer;
const long ul_32DelayOffDisp = 2000;//2000ms Delay constant

  //Serial.println(ui32_VoltageLevel);
  Serial.println(ui32_VoltageLevel);
  if(ui32_VoltageLevel<=VAL_BATTERY_LOW_INDICATOR_VOLTAGE)
    {
      digitalWrite(PIN_BATTERY_LOW_INDICATOR,HIGH);//Indicateur batterie faible activé
      Serial.println("LOW");
      Serial.println(ui32_VoltageLevel);
    }
  
  if((ui32_VoltageLevel<=VAL_BATTERY_LOW_SHUTDOWN_VOLTAGE))
    {
        ul_32Timer=millis();//Get local time for timer

    do
      {
        sevseg.setChars("Bat");//Display "BAT" before shutdown
        sevseg.refreshDisplay();
      }while(millis()<(ul_32Timer+ul_32DelayOffDisp));//Delay
          
	    Serial.println("VERY LOW");
      Serial.println(ui32_VoltageLevel);  
      digitalWrite(PIN_BATTERY_SHUTDWN_2N4403,LOW);//Désactive la sortie batterie, ce qui éteindra l'arduino et tous les affichages
      
    }
}

//----------------------------------------------------------------------------------------------------------------------------------------------//

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





