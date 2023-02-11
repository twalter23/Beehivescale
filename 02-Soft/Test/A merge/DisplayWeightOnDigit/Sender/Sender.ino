int raw;
long t;
void setup() {
  Serial.begin(57600); delay(10);
  raw=0;
}

void loop() {
  const int serialPrintInterval = 100; //increase value to slow down serial print activity

  // get smoothed value from the dataset:
    if (millis() > (t + serialPrintInterval)) 
    {
      raw ++;
      //Serial.println(raw);
      Serial.write(raw >> 8);
      Serial.write(raw & 0xFF);
      t = millis();
    }  
}

