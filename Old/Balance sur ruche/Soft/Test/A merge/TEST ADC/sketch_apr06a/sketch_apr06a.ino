

void setup()
{
    // permet de choisir une tension de référence de 1.1V
    analogReference(INTERNAL);
    Serial.begin(57600);
    pinMode(A2,OUTPUT);
    digitalWrite(A2,HIGH);
    pinMode(A1,OUTPUT);
    digitalWrite(A1,LOW);
     int i=0;
 unsigned long adc;
 do
 {
  adc+=analogRead(A0);
  i++;
 }while(i<10000);
 adc/=10000;
 adc=4.54*map(adc, 0, 1023, 0, 1100);
 Serial.println(adc);
 if(adc<3000)
 {
  digitalWrite(A2,LOW);
 }
}


void loop() {
  // put your main code here, to run repeatedly:

 int i=0;
 unsigned long adc;
 do
 {
  adc+=analogRead(A0);
  i++;
 }while(i<10000);
 i=0;
 adc/=10000;
 adc=4.54*map(adc, 0, 1023, 0, 1100);
 //Serial.println(adc);
 // if(adc<3200)
 //{
  digitalWrite(A1,HIGH);
//}
 if(adc<3000)
 {
  digitalWrite(A2,LOW);
 }
 else 
 //{digitalWrite(A2,HIGH);}
 adc=0;
 delay(500);
 
}
