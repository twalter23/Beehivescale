  //Pins:
  #define LED_LOW_BAT_PIN 13//mcu > Low Battery LED dout pin
  #define PIN_BATTERY_VOLTAGE_INPUT A0 //A0
  //End of Pins
  
  //Threshold values for battery level
  #define LOW_BATT_THRESHOLD 3300 //mV
  #define LOW_BATT_THRESHOLD_HYST 3800 //mV
  //End of threshold values for battery level

  //Misc
  #define BATTERY_VOLTAGE_READ_FREQUENCY 5000 //ms
  #define ADC_CALIBRATION 1.07 //Empirical (1,14)
  //End of misc.
  
//----------------------------------------------------------------------------------------------------------------------------------------------//
bool EnableOrNotDisplay()
  { 
    unsigned int ui_16BatteryVoltage;
    static bool sb_DisplayStatus=0;//Affichage désactivé au démarrage
    
    ui_16BatteryVoltage=ui_16GetBatVoltage();//Retourne la tension de la batterie en mV
    
    Serial.println(ui_16BatteryVoltage);
    
    if(sb_DisplayStatus==1)//On est en haut de l'hystérésis (affichage allumé)
    {
      if(ui_16BatteryVoltage>LOW_BATT_THRESHOLD)//On est au dessus du seuil de descente => On reste en haut
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
      if(ui_16BatteryVoltage>LOW_BATT_THRESHOLD_HYST)//On est au dessus du seuil de remontée => On remonte
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
    digitalWrite(LED_LOW_BAT_PIN, LOW);//Désactive la LED batterie faible
  }

//----------------------------------------------------------------------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------------------------------------------------------------------//
  void SetDisplayOff()
  {
    //Désactive la commande de la base des transistors d'affichage
    digitalWrite(LED_LOW_BAT_PIN, HIGH);//Active la LED batterie faible
  }

//----------------------------------------------------------------------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------------------------------------------------------------------//
  int ui_16GetBatVoltage()
  {
    unsigned int ui_16Batt_LVL_local;
    Serial.print("Valeur non mappé ");
    Serial.println(analogRead(PIN_BATTERY_VOLTAGE_INPUT));
    ui_16Batt_LVL_local = ((map(analogRead(PIN_BATTERY_VOLTAGE_INPUT), 0, 1023, 0, 4200))*ADC_CALIBRATION);
    Serial.print("Valeur mappé ");
    Serial.println(ui_16Batt_LVL_local);
    return ui_16Batt_LVL_local;
  }

//----------------------------------------------------------------------------------------------------------------------------------------------//

/************************************************************************************************************************************************/
//-------------setup------------//

void setup() {
  // put your setup code here, to run once:
  pinMode(LED_LOW_BAT_PIN, OUTPUT);
  Serial.begin(9600); // open the serial port at 9600 bps:
  analogReference(INTERNAL);
  
  SetDisplayOff();//On veut voir que la tension à vide au démarrage est > seuil bas (3V)
}

/************************************************************************************************************************************************/

//-------------loop------------//
void loop() {
  static bool sb_TimerSetup=0, sb_DisplayEnabled;
  static long sl_32Timer;
 
  //Serial.println(0);
  
  if(sb_TimerSetup==0)//Initialisation of Timer
  {
    sl_32Timer=(millis()-BATTERY_VOLTAGE_READ_FREQUENCY);//get time for timer : be sure to run directly at start !
    sb_TimerSetup=1;//Set initialisation to done
    Serial.println(1);
  }

  if(millis()>(BATTERY_VOLTAGE_READ_FREQUENCY+sl_32Timer))//The timer has elapsed
  {
    Serial.println(2);
    sl_32Timer=millis();//reset timer

    sb_DisplayEnabled=EnableOrNotDisplay();
  }

    if(sb_DisplayEnabled==1)//The display is enabled
  {
    //Serial.println("Conneries de serial");//+refresh
  }else
  {
    //nothing
  }
  
}//loop
