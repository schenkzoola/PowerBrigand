 /****************************************************************************************
 * This project is intended to read data from
 * and control an HP common slot power supply.
 * The interface is I2C and is somewhat similar to the PMBUS standard.
 * Copyright (c) 2020 Nathan Schenk
*****************************************************************************************/

/****************************************************************************************
 * Some power supplies have better low-current accuracy with the analog pin
 * 0    - Do not use the current monitoring pin
 * 1    - Settings optimized for 460W supplies
 * 254  - Measure analog output voltage directly.  Write it to the LCD and the serial port.
*****************************************************************************************/
#define powerSupplyType 1       //Power supply type


/****************************************************************************************
 * Personalize the boot screen
*****************************************************************************************/
 /*******************
 * 1234567890123456 *
 * Line1Message0123 *
 * Line2Message0123 *
 ********************/

#define bootMessage1 " Schenktronics  " //Boot message line 1
#define bootMessage2 " Power Brigand  " //Boot message line 2

/****************************************************************************************
 * Define Pin Numbers and constants
*****************************************************************************************/
//The addreses below are the i2c locations for the PSU control and PSU eeprom
#define eepromAddress 0x57
#define controlAddress 0x5F

//Define the LCD Pins
#define lcdBlPin        6       //Backlight Pin
#define lcdEnPin        8       //Enable Pin
#define lcdRsPin        9       //Register Select Pin
#define lcdD4Pin        10      //Data Bus 4 Pin
#define lcdD5Pin        11      //Data Bus 5 Pin
#define lcdD6Pin        12      //Data Bus 6 Pin
#define lcdD7Pin        13      //Data Bus 7 Pin

//Define the button pins
#define buttonUpPin     2       //Up button Pin
#define buttonDownPin   3       //Down button pin
#define buttonLeftPin   4       //Left button pin
#define buttonRightPin  5       //Right button pin
#define buttonOnOffPin  A3      //On/Off button pin

//Define the PSU interconnect pins
#define psOnPin         7       //Set high to turn on PSU
#define psOkPin         A6      //Analog value indicating PSU state
#define iMonPin         A7      //Analog value indicating PSU output current

/****************************************************************************************
 * Include Libraries
*****************************************************************************************/
//I2C library
//Built-In Arduino library
#include <Wire.h>

//Liquid Crystal Library
//Built-In Arduino Library
#include <LiquidCrystal.h>

//Button Library
//https://github.com/t3db0t/Button
#include <Button.h>


//registers.h is all the readable and writable datapoints for the PSU
#include "registers.h"

//https://github.com/rambo/I2C
//http://dsscircuits.com/index.php/articles/66-arduino-i2c-master-library
//#include <I2C.h>

/****************************************************************************************
 * Declare Global Variables
*****************************************************************************************/
//Set up LCD
LiquidCrystal lcd(lcdRsPin, lcdEnPin, lcdD4Pin, lcdD5Pin, lcdD6Pin, lcdD7Pin);
//Custom LCD characters
byte arrowUp[] = {
  B00100,
  B01010,
  B10101,
  B00100,
  B00100,
  B00100,
  B00000,
  B00000
};
byte arrowDown[] = {
  B00000,
  B00000,
  B00100,
  B00100,
  B00100,
  B10101,
  B01010,
  B00100
};

//Set up buttons
//Button(uint8_t buttonPin, uint8_t buttonMode, bool _debounceMode, int _debounceDuration);
Button buttonUp = Button(buttonUpPin, BUTTON_PULLUP_INTERNAL, true, 50);
Button buttonDown = Button(buttonDownPin, BUTTON_PULLUP_INTERNAL, true, 50);
Button buttonLeft = Button(buttonLeftPin, BUTTON_PULLUP_INTERNAL, true, 50);
Button buttonRight = Button(buttonRightPin, BUTTON_PULLUP_INTERNAL, true, 50);
Button buttonOnOff = Button(buttonOnOffPin, BUTTON_PULLUP_INTERNAL, true, 50);
bool buttonUpPressed;
bool buttonDownPressed;
bool buttonLeftPressed;
bool buttonRightPressed;
bool buttonRightHeld;
bool buttonOnOffPressed;
bool buttonOnOffHeld;
bool flash;
bool osrI2C;
//Analog input for current monitoring
float currentMonAnalog;


/****************************************************************************************
 * PSU Read and Write functions
*****************************************************************************************/

//read up to four bytes from the PSU and concat them into a 32 bit UINT
uint32_t readPSU(uint8_t address, uint8_t command, uint8_t bytes){
  uint8_t cs;
  uint8_t regCS;
  uint8_t readData[6];
  uint8_t i;
  uint32_t output;

  //protect memory
  if(bytes > 6){
    return 0xFFFFFFFF;
  }
  //Calculate the send checksum
  cs = command+(address<<1);
  regCS = ((0xFF-cs)+1)&0xFF;

  //write to bus
  Wire.beginTransmission(address);
  Wire.write(command);
  Wire.write(regCS);
  Wire.endTransmission(false);
  Wire.requestFrom(controlAddress,bytes+1);
  cs = 0;
  for(i = 0; i < bytes+1; i++){
    readData[i] = Wire.read();
    cs += readData[i];  //update the checksum
  }

  //Calculate the receive checksum
  regCS = ((0xFF-cs)+1)&0xFF;

  //Check to see if the checksum is correct
  if(regCS == 0){
    //concat the data into the output
    output = 0;
    for(i = 0; i < bytes; i++){
      output |= readData[i] << (8*i);
    }
    return output;
  }else{
    //If the checksum is not correct, return 0xFFFFFFFF
    return 0xFFFFFFFF;
    //return 0;
  }
}

//Writes a 16 bit word to the bus
void writePSU(uint8_t address, uint8_t command, uint16_t data){
  uint8_t cs;
  uint8_t regCS;
  uint8_t i;
  uint8_t dataLSB;
  uint8_t dataMSB;
  
  //split data up into 8 bit bytes
  dataLSB = data & 0xFF;
  dataMSB = data>>8;
  
  //Calculate checksum
  cs  = (address << 1) + command + dataLSB + dataMSB;
  regCS = ((0xFF-cs)+1)&0xFF;
  
  //write to bus
  Wire.beginTransmission(address);
  Wire.write(command);
  Wire.write(dataLSB);
  Wire.write(dataMSB);
  Wire.write(regCS);
  Wire.endTransmission(true);
}

/****************************************************************************************
 * Button Functions
*****************************************************************************************/
bool buttonPressed;
void onPress(Button& b){
  switch(b.pin){
    case buttonUpPin:
      buttonUpPressed = true;
    break;

    case buttonDownPin:
      buttonDownPressed = true;
    break;

    case buttonLeftPin:
      buttonLeftPressed = true;
    break;

    case buttonRightPin:
      buttonRightPressed = true;;
    break;

    case buttonOnOffPin:
      buttonOnOffPressed = true;
    break;

    default:
    break;
  }
  buttonPressed = 1;
}

void onHold(Button& b){
  switch(b.pin){
    case buttonRightPin:
      buttonRightHeld = true;
    break;

    case buttonOnOffPin:
      buttonOnOffHeld = true;
    break;

    default:
    break;
  }
}


//Read all the inputs
//Input Variables
//float readFlags;
float readInputVolts;
float readInputAmps;
float readInputWatts;
float readOutputVolts;
float readOutputAmps;
float readOutputWatts;
float readTempIntake; 
float readTempInternal;
float readFanSpeed;
//float readJoulesIn;
float readUpTime;
float readInputWattsMax;
float readInputAmpsMax;
float readOutputAmpsMax;

void readI2C(){
  uint32_t temp;
  uint8_t i;
  for(i = 0; i < 0x15; i++){
    switch(i){
      case 0:
//        temp = readPSU(controlAddress, reg_readFlags[0], reg_readFlags[2] );
//        if(temp != 0xFFFFFFFF){
//          readFlags = temp / (float)reg_readFlags[1];;
//        }
      break;
  
      case 1:
        temp = readPSU(controlAddress, reg_inputVolts[0], reg_inputVolts[2] );
        if(temp != 0xFFFFFFFF){
          readInputVolts = temp / (float)reg_inputVolts[1];;
        }
      break;
  
      case 2:
        temp = readPSU(controlAddress, reg_inputAmps[0], reg_inputAmps[2] );
        if(temp != 0xFFFFFFFF){
          readInputAmps = temp / (float)reg_inputAmps[1];;
        }
      break;
  
      case 3:
        temp = readPSU(controlAddress, reg_inputWatts[0], reg_inputWatts[2] );
        if(temp != 0xFFFFFFFF){
          readInputWatts = temp / (float)reg_inputWatts[1];;
        }
      break;
  
      case 4:
        temp = readPSU(controlAddress, reg_outputVolts[0], reg_outputVolts[2] );
        if(temp != 0xFFFFFFFF){
          readOutputVolts = temp / (float)reg_outputVolts[1];;
        }  
      break;
  
      case 5:
        temp = readPSU(controlAddress, reg_outputAmps[0], reg_outputAmps[2] );
        if(temp != 0xFFFFFFFF){
          readOutputAmps = temp / (float)reg_outputAmps[1];;
        }  
      break;
  
      case 6:
        temp = readPSU(controlAddress, reg_outputWatts[0], reg_outputWatts[2] );
        if(temp != 0xFFFFFFFF){
          readOutputWatts = temp / (float)reg_outputWatts[1];;
        }  
      break;
      
      case 7:
        temp = readPSU(controlAddress, reg_tempIntake[0], reg_tempIntake[2] );
        if(temp != 0xFFFFFFFF){
          readTempIntake = temp / (float)reg_tempIntake[1];;
        }  
      break;
  
      case 8:
        temp = readPSU(controlAddress, reg_tempInternal[0], reg_tempInternal[2] );
        if(temp != 0xFFFFFFFF){
          readTempInternal = temp / (float)reg_tempInternal[1];;
        }  
      break;
  
      case 9:
        temp = readPSU(controlAddress, reg_fanSpeed[0], reg_fanSpeed[2] );
        if(temp != 0xFFFFFFFF){
          readFanSpeed = temp / (float)reg_fanSpeed[1];;
        }  
      break;
  
      case 10:
  //      temp = readPSU(controlAddress, reg_joulesIn[0], reg_joulesIn[2] );
  //      if(temp != 0xFFFFFFFF){
  //        readJoulesIn = temp / (float)reg_joulesIn[1];;
  //      }  
      break;
  
      case 11:
        temp = readPSU(controlAddress, reg_upTime[0], reg_upTime[2] );
        if(temp != 0xFFFFFFFF){
          readUpTime = temp / (float)reg_upTime[1];;
        }  
      break;
  
      case 12:
        temp = readPSU(controlAddress, reg_inputWattsMax[0], reg_inputWattsMax[2] );
        if(temp != 0xFFFFFFFF){
          readInputWattsMax = temp / (float)reg_inputWattsMax[1];;
        }  
      break;
  
      case 13:
        temp = readPSU(controlAddress, reg_inputAmpsMax[0], reg_inputAmpsMax[2] );
        if(temp != 0xFFFFFFFF){
          readInputAmpsMax = temp / (float)reg_inputAmpsMax[1];;
        }  
      break;
  
      case 14:
        temp = readPSU(controlAddress, reg_outputAmpsMax[0], reg_outputAmpsMax[2] );
        if(temp != 0xFFFFFFFF){
          readOutputAmpsMax = temp / (float)reg_outputAmpsMax[1];;
        }  
      break;
  
      default:
      break;
      
    }
  }
}

/****************************************************************************************
 * LCD Functions
*****************************************************************************************/
//Initialize the LCD
void lcdInit() {
  // set up the LCD's number of columns and rows:
  lcd.begin(16, 2);
  //Initialize custom characters
  lcd.createChar(0, arrowUp);
  lcd.createChar(1, arrowDown);
}

//Splash screen the LCD when booting
 /*******************
 * 1234567890123456 *
 *  Schenktronics   *
 *  Power Brigand   *
 ********************/
void lcdSplash() {
  lcd.clear();                      //clear the display
  lcd.print(F(" Schenktronics  ")); //write the first line
  lcd.setCursor(0,1);               //Move curser to second line
  lcd.print(F(" Power Brigand  ")); //write the second line
}

//Custom LCD screen during boot
//Messages are defined at the top of the sketch
void lcdCustom() {
  lcd.clear();                      //clear the display
  lcd.print(F(bootMessage1)); //write the first line
  lcd.setCursor(0,1);               //Move curser to second line
  lcd.print(F(bootMessage2)); //write the second line
}

 //Output Page 1
 /*******************
 * 1234567890123456 *
 *  Output    xxxxW *
 * ˅xx.xxV xxx.xxA> *
 ********************/
void outputPage1() {
  static float val1 = 1;
  static float val2 = 1;
  static float val3 = 1;
  if((readOutputWatts != val1) || (readOutputVolts != val2) || (readOutputAmps != val3) || buttonPressed){
    lcd.home();
    lcd.print(F(" Output     "));
    lcd.setCursor(11,0);
    lcd.print(readOutputWatts,0);
    lcd.print(F("W      "));
    lcd.setCursor(0,1);
    lcd.write(byte(1));
    lcd.print(readOutputVolts,2);
    lcd.print(F("V       "));
    lcd.setCursor(9,1);
    lcd.print(readOutputAmps,2);
    lcd.print(F("A    "));
    lcd.setCursor(15,1);
    lcd.print(F(">"));
    val1=readOutputWatts;
    val2=readOutputVolts;
    val3=readOutputAmps;
  }
}
 
 //Output Page 2
 /*******************
 * 1234567890123456 *
 * Peak Out xxx.xxA *
 * <           Rst? *
 ********************/
void outputPage2() {
  static float val1 = 1;
  if((readOutputAmpsMax != val1) || buttonPressed){
    lcd.home();
    lcd.print(F("Peak Out        "));
    lcd.setCursor(9,0);
    lcd.print(readOutputAmpsMax,2);
    lcd.print(F("A     "));
    lcd.setCursor(0,1);
    //lcd.print(F("<           Rst?"));
    lcd.print(F("<               "));
    val1=readOutputAmpsMax;
  }
}

 //Input Page 1
 /*******************
 * 1234567890123456 *
 * ˄Input  xxxx.xxW *
 * ˅xxx.xxV xx.xxA >*
 ********************/
void inputPage1(){
  static float val1 = 1;
  static float val2 = 1;
  static float val3 = 1;
  if((readInputWatts != val1) || (readInputVolts != val2) || (readInputAmps != val3) || buttonPressed){
    lcd.home();
    lcd.write(byte(0));
    lcd.print(F("Input        "));
    lcd.setCursor(11,0);
    lcd.print(readInputWatts,0);
    lcd.print(F("W     "));
    lcd.setCursor(0,1);
    lcd.write(byte(1));
    lcd.print(readInputVolts);
    lcd.print(F("V         "));
    lcd.setCursor(9,1);
    lcd.print(readInputAmps);
    lcd.print(F("A      "));
    lcd.setCursor(15,1);
    lcd.print(F(">"));
    val1=readInputWatts;
    val2=readInputVolts;
    val3=readInputAmps;
  }
}

 //Input Page 2
 /*******************
 * 1234567890123456 *
 *  Peak In  xx.xxA *
 * < xxxx.xxW  Rst? *
 ********************/
void inputPage2(){
  static float val1 = 1;
  static float val2 = 1;
  if((readInputAmpsMax != val1) || (readInputWattsMax != val2) || buttonPressed){
    lcd.home();
    lcd.print(F("Peak In         "));
    lcd.setCursor(9,0);
    lcd.print(readInputAmpsMax);
    lcd.print(F("A"));
    lcd.setCursor(0,1);
    lcd.print(F("< "));
    lcd.print(readInputWattsMax);
    lcd.print(F("W               "));
    lcd.setCursor(12,1);
    //lcd.print(F("Rst?"));
    lcd.print(F("    "));
    val1=readInputAmpsMax;
    val2=readInputWattsMax;
  }
}

 //Temperature Page 1
 /*******************
 * 1234567890123456 *
 * ˄Intake xxx.xxC  *
 * ˅Exh    xxx.xxC> *
 ********************/
void temperaturePage1(){
  static float val1 = 1;
  static float val2 = 1;
  if((readTempIntake != val1) || (readTempInternal != val2) || buttonPressed){
    lcd.home();
    lcd.write(byte(0));
    lcd.print(F("Intake          "));
    lcd.setCursor(8,0);  
    lcd.print(readTempIntake);
    lcd.print(F("C"));
    lcd.setCursor(0,1);
    lcd.write(byte(1));
    lcd.print(F("Exh            "));
    lcd.setCursor(8,1);   
    lcd.print(readTempInternal);
    lcd.print(F("C"));
    lcd.setCursor(15,1);
    lcd.print(F(">"));
    val1=readTempIntake;
    val2=readTempInternal;
  }  
}

 //Temperature Page 2
 /*******************
 * 1234567890123456 *
 * Fan Speed        *
 * < xxxxxRPM       *
 ********************/
void temperaturePage2(){
  static float val1 = 1;
  if((readFanSpeed != val1) || buttonPressed){
    lcd.home();
    lcd.print(F("Fan Speed       "));
    lcd.setCursor(0,1);
    lcd.print(F("<               "));
    lcd.setCursor(2,1);
    lcd.print(readFanSpeed,0);
    lcd.print(F("RPM"));
    val1=readFanSpeed;
  }  
}

 //Info Page 1
 /*******************
 * 1234567890123456 *
 * ˄Uptime          *
 * xxxxxxxxxs       *
 ********************/
void infoPage1(){
  static float val1 = 1;
  if((readUpTime != val1) || buttonPressed){
    lcd.home();
    lcd.write(byte(0));
    lcd.print(F("Uptime          "));
    lcd.setCursor(0,1);
    lcd.print(F("                "));
    lcd.setCursor(1,1);
    lcd.print(readUpTime,0);
    lcd.print(F("s"));
    val1=readUpTime;
  }
}


//LCD State Machine 
void lcdStateMachine(){
  //Row and column below define the "Page" for the lcd.
  //Imagine the pages are layed out in a grid
  static uint8_t row;
  static uint8_t column;
  static bool ons;

  //Handle buttons
  if(buttonUpPressed && (column == 0)){
    row--;
  }
  if(buttonDownPressed && (column == 0)){
    row++;
    buttonPressed=1;
  }
  if(buttonRightPressed){
    column++;
  }
  if(buttonLeftPressed){
    column--;
  }
  
  //Start of state machine
    switch(row){
      //Displays outptus
      case 0:
        switch(column){
          case 0:
            outputPage1();
          break;
  
          case 1:
            outputPage2();
          break;
  
          default:
            if(column == 0xFF){
              column = 0;
            }else{
              column--;
            }
          break;
        }
      break;
      
      //Displays inputs
      case 1:
        switch(column){
          case 0:
            inputPage1();
          break;
            
          case 1:
            inputPage2();
          break;
  
          default:
            if(column == 0xFF){
              column = 0;
            }else{
              column--;
            }
          break;
        }
      break;
      
      //Displays thermal info
      case 2:
        switch(column){
          case 0:
            temperaturePage1();
          break;
  
          case 1:
            temperaturePage2();
          break;
  
          default:
            if(column == 0xFF){
              column = 0;
            }else{
              column--;
            }
          break;
        }
      break;

      //Displays thermal info
      case 3:
        switch(column){
          case 0:
            infoPage1();
          break;
    
          default:
            if(column == 0xFF){
              column = 0;
            }else{
              column--;
            }
          break;
        }
      break;
  
      default:
        if(row == 0xFF){
          row = 0;
        }else{
          row--;
        }
      break;
    }
}

//Override current and wattage for certain power supplies


//Use this function to set up a flasher for LED's and stuff
bool flasher(uint16_t setpoint){
  static bool flasherBool = 0;
  static long flasherChangeTime;
  static long flasherCurrentTime;
  flasherCurrentTime = millis(); //get the current time so millis doesn't need to be called too often.
  if(!flasherBool){
    if(flasherCurrentTime - flasherChangeTime >= setpoint){
      flasherBool = !flasherBool;
      flasherChangeTime = flasherCurrentTime;
    }
  }else{
    if(flasherCurrentTime - flasherChangeTime >= setpoint){
      flasherBool = !flasherBool;
      flasherChangeTime = flasherCurrentTime;
    }
  }
  return flasherBool;
}


/****************************************************************************************
 * setup() and loop()  "Where the code goes"
*****************************************************************************************/

void setup() {
  //Start serial port
  Serial.begin(9600);  // start serial for output
  //Start I2C
  Wire.begin();

  //Setup button callbacks
  buttonLeft.pressHandler(onPress);
  buttonRight.pressHandler(onPress);
  buttonRight.holdHandler(onHold, 1000);
  buttonUp.pressHandler(onPress);
  buttonDown.pressHandler(onPress);
  buttonOnOff.pressHandler(onPress);
  buttonOnOff.holdHandler(onHold, 1000);

  //Set up pins
  pinMode(lcdBlPin, OUTPUT);
  pinMode(psOnPin, OUTPUT);
  pinMode(psOkPin, INPUT);
  
  //Set up the current monitor pin
  //Use the 1.1v internal reference
  pinMode(iMonPin, INPUT);
  analogReference(INTERNAL);

  //Turn on LCD backlight
  digitalWrite(lcdBlPin, HIGH);

  //Initialize LCD
  lcdInit();
  //Display Splash Screen
  lcdSplash();
  //Display custom splash screen
  delay(1000);
  lcdCustom();

  //Wait a moment
  delay(3000);

  //Clear the LCD
  lcd.clear();
}

void loop() {
  //flasher
  flash = flasher(250);
  
  //update the buttons
  buttonPressed = false;
  buttonUpPressed = false;
  buttonDownPressed = false;
  buttonLeftPressed = false;
  buttonRightPressed = false;
  buttonOnOffPressed = false;
  buttonRightHeld = false;
  buttonOnOffHeld = false;
  buttonLeft.process();
  buttonRight.process();
  buttonUp.process();
  buttonDown.process();
  buttonOnOff.process();

  //read all the inputs

  if(flash && !osrI2C){
    readI2C();


    switch(powerSupplyType){
      //460W HSTNS-PL14 power supply = 90mV/A
      //This power supply has the following minimum values:
      //Output Amps: 0.0A
      //Output Watts: 36W
      //Input Watts: 50W
      case 1:
        currentMonAnalog = ((analogRead(iMonPin)*1.1)/1024.0)/0.090;
        //Override the i2c if the read current is less than 10A
        if(readOutputAmps <= 5.0){
          readOutputAmps = currentMonAnalog;
        } 
        //If the output wattage from i2c is less than 50, calculate it.
        if(readOutputWatts <= 36.0){
          readOutputWatts = readOutputVolts * readOutputAmps;
        }
        //If the input wattage from i2c is less than 50, calculate it.
        if(readInputWatts <= 50.0){
          readInputWatts = readInputVolts * readInputAmps;
        }
        //Serial.print("I2C:");
        //Serial.print(readOutputAmps);
        //Serial.print("A  Analog:");
        //Serial.print(currentMonAnalog);
        //Serial.println("A");
      break;

      //Measure analog current output voltage for testing purposes
      case 254:
          currentMonAnalog = ((analogRead(iMonPin)*1.1)/1024.0);
          Serial.println(currentMonAnalog,4);
          readOutputAmps = currentMonAnalog;
      break;

      default:
      break;
    }
  }
  osrI2C = flash;
  

  //LCD state machine
  lcdStateMachine();

  //Turn on/off the PSU
  if(buttonOnOffPressed){
    digitalWrite(psOnPin, HIGH);
  }
  if(buttonOnOffHeld){
    digitalWrite(psOnPin, LOW);
  }

}
