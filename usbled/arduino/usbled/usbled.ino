// the PWM implementation is based on the code from marklar found on http://arduino.cc/forum/index.php?topic=38155.0
// tested on Arduino UNO and Leonardo

// adjust to your needs
#define PWM_LEVELS 48 // sets number of PWM levels, the LedWiz is using 48
#define TIMER_DELAY 200 //update time, a lower number means a shorter delay, but the lower the number the more cpu time is used
#define SHIFT_COUNT 4 // number of shift registers connected
//#define CLOCK_PIN 3 // 74HC595 pin 11 / UNO pin 13 / Leonardo ICSP pin 3 SCK
//#define DATA_PIN 4 // 74HC595 pin 14 / UNO pin  11 / Leonardo ICSP pin 4 MOSI
#define LATCH_PIN 5 // 74HC595 pin 12
#define BAUD_RATE 115200 // set baud rate of the serial interface
#define TIMEOUT 10 * 1000 // time in ms to switch off all outputs
//#define DEBUG 1 // enable this for debug output and single output control

#define BUFFER_SIZE (3 + SHIFT_COUNT) // 2 bytes for start and end marker and one byte per SR, the PWM command needs at least 4 byte
#define PWM_STEPS 256/PWM_LEVELS

byte buffer[BUFFER_SIZE];
int bufferCount=0;
byte outputState[SHIFT_COUNT];
unsigned long lastData;

#include <TimerOne.h>

int ticker = 0; // used in iProcess to control the software PWM cycle
byte srPins[SHIFT_COUNT*8]; // holds a 0 to 255 PWM value used to set the value of each SR pin

// use the hardware SPI interface , should be faster the shiftOut() but the Leonardo only offers those pins on th ICSP
void setupSPI(){
  byte clr;
  SPCR = (1 << SPE) | (1 << MSTR) | (1 << CPOL);
  clr=SPSR; // clear SPI status reg
  clr=SPDR; // clear SPI data reg
  SPSR |= (1<<SPI2X); // set prescaler bits
  delay(10); 
}

void spi_transfer(byte data)
{
  SPDR = data;                    // Start the transmission
  while (!(SPSR & (1 << SPIF)));
  (void) SPDR;
}

//--- This process is run by the timer and does the PWM control
void iProcess(){
  //--- Create a temporary array of bytes to hold shift register values in
  byte srVals[SHIFT_COUNT];
  //--- increment our ticker
  ticker++;
  //--- if our ticker level cycles, restart
  if( ticker > PWM_LEVELS ) 
    ticker = 0;
  //--- get ticker as a 0 to 255 value, so we can always use the same data regardless of actual PWM levels
  int myPos = ticker * PWM_STEPS;

  //--- Loop through all bits in the shift register (8 pin for the 595's)
  for (int i = 0 ; i < 8; i++ ){
    int myLev = 0;
    //--- Loop through all shift registers and set the bit on or off
    for (int iSR = 0 ; iSR < SHIFT_COUNT ; iSR++){
      //--- Start with the bit off
      myLev = 0;
      //--- If the value in the sr pin related to this SR/Byte is over the current pwm value
      //     then turn the bit on
      if (srPins[i+(iSR*8)] > myPos)
        myLev = 1;
      //--- Write the bit into the SR byte array
      bitWrite(srVals[iSR],i,myLev );
    }

  }
 
  for (int i=SHIFT_COUNT-1; i>=0;i--)
  {
    byte val = (srVals[i] & outputState[i]);
    spi_transfer(val);
  }

  digitalWrite(LATCH_PIN, HIGH);
  digitalWrite(LATCH_PIN, LOW);  
}

void setup() {
  // Setup SPI
  pinMode(LATCH_PIN, OUTPUT);
  DDRB = 255;
  setupSPI();

  // Setup Serial
  Serial.begin(BAUD_RATE);
  
  // set all pins to full brightness
  for( int i=0 ; i<(SHIFT_COUNT*8) ;i++ )
  {
    srPins[i] = 255; 
  }

  Timer1.initialize(TIMER_DELAY); // Timer for updating pwm pins
  Timer1.attachInterrupt(iProcess);
}

void ResetBuffer()
{
  for (int i=0;i<BUFFER_SIZE;i++)
    buffer[i] = 0;
  bufferCount = 0;
}

void loop()
{
  if (bufferCount >= BUFFER_SIZE) // reset buffer if no useful command is stored
  {
    ResetBuffer();
  }
  
  while (Serial.available()) // check if something is received
  {
    byte byteRead = Serial.read();
    if ( (bufferCount == 0) && (byteRead == 'N') )
    {
      Serial.write(SHIFT_COUNT);
    }
    if ( (bufferCount == 0) && !( (byteRead == 'S') || (byteRead == 'P') ) ) // check if new command is starting with 'S' or 'P' otherwise ignore
     return;

    buffer[bufferCount] = byteRead;
    bufferCount++;
    if ( (buffer[0] == 'S') && (buffer[SHIFT_COUNT+1] == 'E') )
    {
    #ifdef DEBUG  
      for (int i=0;i<SHIFT_COUNT;i++)
      {
        outputState[i]=buffer[i+1];
      }
    #else
      for (int i=0;i<SHIFT_COUNT;i++)
      {
        outputState[i]=buffer[i+1];
      }
    #endif
  
    #ifdef DEBUG
      Serial.write("Enabling Output: ");
      Serial.write(buffer[1]);
      Serial.write("\n");
    #endif
  
      ResetBuffer();
    }
  
    if ( (buffer[0] == 'P') && (buffer[3] == 'E') )
    {
    #ifdef DEBUG
      int pin = buffer[1]-0x30 - 1;
    #else
      int pin = buffer[1];
    #endif

      srPins[pin] = buffer[2];
  
    #ifdef DEBUG
      Serial.write("Set PWM pin ");
      Serial.write(buffer[1]);
      Serial.write(" to ");
      Serial.write(buffer[2]);
      Serial.write("\n");
    #endif
  
      ResetBuffer();
    }
  }
}

