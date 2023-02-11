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
  byte digitPins[] = {PIN_BASE_TRANS_DIG_1, PIN_BASE_TRANS_DIG_2, PIN_BASE_TRANS_DIG_3};
  byte segmentPins[] = {PIN_SEGMENT_A, PIN_SEGMENT_B, PIN_SEGMENT_C, PIN_SEGMENT_D, PIN_SEGMENT_E, PIN_SEGMENT_F, PIN_SEGMENT_G, PIN_SEGMENT_H};
  bool resistorsOnSegments = true; // 'false' means resistors are on digit pins, 'true' on segment
  
  //Modify line below according to type of 7 seg (common anode/cathode)
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
          sevseg.setNumber(9999,0);//Display - - - (because it's sytlé)
          sevseg.refreshDisplay();
      }while(millis()<(ul_32Timer+ul_32DelayTiret));//Delay
        //Serial.println("11");
}
//----------------------------------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------------------------------------------------//
void BatteryADCSetup()
{
  analogReference(EXTERNAL); //do not forget to wire +5BoostOut to REF
}

void PinMappingSetup()
{
  pinMode(PIN_BATTERY_VOLTAGE_INPUT,INPUT);
  pinMode(PIN_BATTERY_LOW_INDICATOR,OUTPUT);
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

//----------------------------------------------------------------------------------------------------------------------------------------------//
bool EnableOrNotDisplay()
  { 
    static unsigned int sui_16BatteryVoltage;
    static bool sb_DisplayStatus=0;//Affichage désactivé au démarrage
    
    sui_16BatteryVoltage=ui_16GetBatVoltage();//Retourne la tension de la batterie en mV
    
    Serial.println(sui_16BatteryVoltage);
    
    if(sb_DisplayStatus==1)//On est en haut de l'hystérésis (affichage allumé)
    {
      if(sui_16BatteryVoltage>LOW_BATT_THRESHOLD)//On est au dessus du seuil de descente => On reste en haut
      {
        //sb_DisplayStatus=1;//Utile?
        SetDisplayOn();//Autorise l'affichage et désactive la LED Batterie faible
      }
      else//On est en dessous du seuil de descente => On descend
      {
        sb_DisplayStatus=0;//Changement de statut de l'affichage
        SetDisplayOff();
      }
    }else//On est en bas de l'hystérésis : b_DisplayStatus==0
    {
      if(sui_16BatteryVoltage>LOW_BATT_THRESHOLD_HYST)//On est au dessus du seuil de remontée => On remonte
      {
        sb_DisplayStatus=1;//Changement de statut de l'affichage
        SetDisplayOn();//Autorise l'affichage et désactive la LED Batterie faible
      }
      else//On est en dessous du seuil de remontée => On reste en bas
      { //sb_DisplayStatus=0;//Utile?
        SetDisplayOff();
      }
    }
    return sb_DisplayStatus;
  }
//----------------------------------------------------------------------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------------------------------------------------------------------//
  void SetDisplayOn()
  {
    //Active la commande de la base des transistors d'affichage
    digitalWrite(LED_LOW_BAT_PIN, HIGH);//Désactive la LED batterie faible
  }

//----------------------------------------------------------------------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------------------------------------------------------------------//
  void SetDisplayOff()
  {
    //Désactive la commande de la base des transistors d'affichage
    digitalWrite(LED_LOW_BAT_PIN, LOW);//Active la LED batterie faible
  }

//----------------------------------------------------------------------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------------------------------------------------------------------//
  int ui_16GetBatVoltage()
  {
    unsigned int ui_16Batt_LVL_local;
    ui_16Batt_LVL_local = map(analogRead(PIN_BATTERY_VOLTAGE_INPUT), 0, 1023, 0, 5000);
    return ui_16Batt_LVL_local;
  }

//----------------------------------------------------------------------------------------------------------------------------------------------//

/************************************************************************************************************************************************/
//-------------setup------------//
void setup() {
  //Display initialisation
  SetDisplayOff();//On veut voir que la tension à vide au démarrage est > seuil bas (3V)
	
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
}
/************************************************************************************************************************************************/

//-------------loop------------//
void loop() {
static bool b_TimerSetup=0, b_DisplayEnabled;
static int sui16_Weight, sui16_WeightMemo;
unsigned long ul_32Timer; 
static long sl_32Timer;

  if(b_TimerSetup==0)//Initialisation of Timer
  {
    sl_32Timer=millis();//get time for timer
    b_TimerSetup=1;//Set initialisation to done
    //Serial.println(1);
  }
  
  if(millis()>(BATTERY_VOLTAGE_READ_FREQUENCY+sl_32Timer))//The timer has elapsed
  {
    sl_32Timer=millis();//reset timer
    CheckVoltageLevel(ReadVoltage(1000,sui16_WeightMemo,1));//ReadBatVoltage
  }
  
  if(millis()>(BATTERY_VOLTAGE_READ_FREQUENCY+sl_32Timer))//The timer has elapsed
  {
    Serial.println(2);
    sl_32Timer=millis();//reset timer

    sb_DisplayEnabled=EnableOrNotDisplay();
  }

  if(sb_DisplayEnabled==1)//The display is enabled
  {
    if (Serial.available() >= 2) // There are at least 2 bytes to read
    {
       sui16_Weight = 0;
       sui16_Weight = Serial.read() << 8;   // read high byte and shift it over
       sui16_Weight |= Serial.read();   // read low byte
       sui16_WeightMemo=sui16_Weight;
    }
    if(sui16_WeightMemo>=1000)
      {
        sui16_WeightMemo-=1000;
      }
       //Serial.println(sui16_WeightMemo);
       sevseg.setNumber(sui16_WeightMemo,1); // Displays '3.141'
       sevseg.refreshDisplay();
       //Serial.println(ReadVoltage(1000,sui16_WeightMemo,1));
       //delay(1000);
  }else
  {
    //nothing
  }    
}
