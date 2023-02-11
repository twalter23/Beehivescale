#define BATTERYVOLTAGE A0
#define BATTERYCUTCMD A2
#define BATTERLOWVOLTAGE 3000 //mV

// the setup routine runs once when you press reset:
void setup() {
  analogReference(DEFAULT);
  Serial.begin(57600);
  pinMode(BATTERYCUTCMD,OUTPUT);
  pinMode(BATTERYVOLTAGE,INPUT);
  digitalWrite(BATTERYCUTCMD,HIGH);
  long i_BatteryVoltage;
  analogReference(EXTERNAL);
  i_BatteryVoltage=analogRead(BATTERYVOLTAGE);
  i_BatteryVoltage = map(i_BatteryVoltage, 0, 1023, 0, 5000);  
  Serial.println(i_BatteryVoltage);
  CutAccordingBatVoltage(i_BatteryVoltage);
}

// the loop routine runs over and over again forever:
void loop() {
  long i_BatteryVoltage;
  int i;
     for(i=0;i<1000;i++)
      {
        i_BatteryVoltage+=analogRead(BATTERYVOLTAGE);
      }
      i_BatteryVoltage/=1000;
  i_BatteryVoltage = map(i_BatteryVoltage, 0, 1023, 0, 5000);  
  Serial.println(i_BatteryVoltage);
}

void CutAccordingBatVoltage(int BatVoltage)
{
  if(BatVoltage<BATTERLOWVOLTAGE)
  {
    digitalWrite(BATTERYCUTCMD,LOW);// cut battery output
  }
  else
  {
    digitalWrite(BATTERYCUTCMD,HIGH);// don't cut battery output
  }
}

