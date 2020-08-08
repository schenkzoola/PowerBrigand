 /****************************************************************************************
 * This project is intended to read data from
 * and control an HP common slot power supply.
 * The interface is I2C and is similar to the PMBUS standard.
 * 
 * This file contains the register definitions
 * 
 * Copyright (c) 2020 Nathan Schenk
*****************************************************************************************/

#include <stdint.h>
#include <avr/pgmspace.h>

//The registers are in the following format: {address, scale coeficient, length}
//These have been tested on 450, 750, and 1200w power supplies
//The temperatures appear to be in degC, need to confirm.

//The info here has been gleaned from https://github.com/raplin/DPS-1200FB
//The coefficients were adjusted to make sense

//TODO'S BELOW HAVEN'T BEEN TESTED
    
const uint8_t reg_flags[]               PROGMEM = {0x01<<1, 1, 2};
const uint8_t reg_inputVolts[]          PROGMEM = {0x04<<1, 32, 2};
const uint8_t reg_inputAmps[]           PROGMEM = {0x05<<1, 64, 2};
const uint8_t reg_inputWatts[]          PROGMEM = {0x06<<1, 1, 2};     //Input watts, minimum displayed value is 50 even if the PSU is using less on 460, 750, and 1200w
const uint8_t reg_outputVolts[]         PROGMEM = {0x07<<1, 255, 2};
const uint8_t reg_outputAmps[]          PROGMEM = {0x08<<1, 64, 2};    //Some 1200w and 750w supplies seem to have a 3A minimum
const uint8_t reg_outputWatts[]         PROGMEM = {0x09<<1, 1, 2};     //0 is displayed when output is off, 35W minimum on 460W when on, 36W minimum for 750.
const uint8_t reg_tempIntake[]          PROGMEM = {0x0d<<1, 64, 2};    //I believe this is in degrees C
const uint8_t reg_tempInternal[]        PROGMEM = {0x0e<<1, 64, 2};    //I believe this is in degrees C
const uint8_t reg_fanSpeed[]            PROGMEM = {0x0f<<1, 1, 2};     //Current fan speed in RPM
//TODO const uint8_t reg_joulesIn[]         PROGMEM = {0x2c, 1, 2};        //Joules in - doesn't seem to work with a size 4.  Gets weird rollover with size 2.  Maybe treat as two 16 bit reads?
const uint8_t reg_upTime[]              PROGMEM = {0x30, 2, 2};        //Power-on time in seconds, didn't work on 460W
//TODO const uint8_t reg_resetUpTime[]      PROGMEM = {0x31, 1, 2};        //Write a zero here to reset the uptime and watt-seconds
const uint8_t reg_inputWattsMax[]       PROGMEM = {0x32, 1, 2};        //Maximum input wattage
//TODO const uint8_t reg_ResetInputWattsMax[]  PROGMEM = {0x33, 1, 2};        //Write a zero here to reset maximum input wattage
const uint8_t reg_inputAmpsMax[]        PROGMEM = {0x34, 64, 2};       //Maximum input amperage
//TODO const uint8_t reg_resetInputAmpsMax[]   PROGMEM = {0x35, 1, 2};       //Write a zero here to reset maximum input amperage
const uint8_t reg_outputAmpsMax[]       PROGMEM = {0x36, 64, 2};       //Maximum output amperage.  Resets automatically when DC output is switched off.
//TODO const uint8_t reg_resetOutputAmpsMax[]  PROGMEM = {0x37, 1, 2};       //Write a zero here to reset maximum output amperage
//TODO const uint8_t reg_fanTargetSpeed[]   PROGMEM = {0x40, 1, 2};        //Fan target speed, used to force the fan speed    
