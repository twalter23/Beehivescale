#include "SevSeg.h"
SevSeg sevseg; //Instantiate a seven segment object

#define N_TRANSISTOR1 10
#define N_TRANSISTOR2 11
#define N_TRANSISTOR3 12

#define SEGMENTA 2
#define SEGMENTB 3
#define SEGMENTC 4
#define SEGMENTD 5
#define SEGMENTE 6
#define SEGMENTF 7
#define SEGMENTG 8
#define SEGMENTH 9

long time1,deci;
int received,memory,ConvFactor;

void setup() {
  Serial.begin(57600);
  time1=millis();
  byte numDigits = 3;
  byte digitPins[] = {N_TRANSISTOR1, N_TRANSISTOR2, N_TRANSISTOR3};
  byte segmentPins[] = {SEGMENTA, SEGMENTB, SEGMENTC, SEGMENTD, SEGMENTE, SEGMENTF, SEGMENTG, SEGMENTH};
  bool resistorsOnSegments = true; // 'false' means resistors are on digit pins, 'true' on segment
  byte hardwareConfig = N_TRANSISTORS; // See README.md for options
  bool updateWithDelays = false; // Default 'false' is Recommended
  bool leadingZeros = false; // Use 'true' if you'd like to keep the leading zeros
  bool disableDecPoint = false; // Use 'true' if your decimal point doesn't exist or isn't connected. Then, you only need to specify 7 segmentPins[]

  sevseg.begin(hardwareConfig, numDigits, digitPins, segmentPins, resistorsOnSegments,
  updateWithDelays, leadingZeros, disableDecPoint);
  sevseg.setNumber(888,1);
  sevseg.refreshDisplay();
}
void loop() {
      time1=millis();   //refresh timer
      if (Serial.available() >= 2) // There are at least 2 bytes to read
      { 
         received = 0;
         received = Serial.read() << 8;   // read high byte and shift it over
         received |= Serial.read();   // read low byte
         memory=received;
      }
      if(memory>=1000)
        {
          memory-=1000;
        }
        Serial.println(memory);
         sevseg.setNumber(memory,1); // Displays '3.141'
         sevseg.refreshDisplay();
}
