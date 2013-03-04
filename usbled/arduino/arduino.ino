int clockPin = 3; //IC Pin 11
int dataPin = 4; //IC Pin 14
int latchPin = 5; //IC Pin 12

unsigned long State = 0;

void Write595 (unsigned long Value)
{

  int first = Value && 0xff;
  int second = (Value && 0xff00) >> 8;
  shiftOut(dataPin, clockPin, MSBFIRST, (Value >> 24));
  shiftOut(dataPin, clockPin, MSBFIRST, (Value >> 16));
  shiftOut(dataPin, clockPin, MSBFIRST, (Value >> 8));
  shiftOut(dataPin, clockPin, MSBFIRST, Value);
  digitalWrite(latchPin, HIGH);
  digitalWrite(latchPin, LOW);  
}

void setup() {
  // Setup SPI pins
  pinMode(latchPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  pinMode(dataPin, OUTPUT);
  Write595(0); // Switch of all outputs

  // Setup Serial
  Serial.begin(9600);
}

void loop()
{
  if (Serial.available()) // check if something is received
  {
    unsigned long byteRead = Serial.read(); // read the most recent byte
    //State ^= (1 << ((byteRead - 0x30) - 1)); // update State by toggling the bit received
    //Write595(State);  // send data to 74HC595
    Write595(byteRead);
  }
}