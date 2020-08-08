 /****************************************************************************************
 * This project is intended to read data from
 * and control an HP common slot power supply.
 * The interface is I2C and is similar to the PMBUS standard.
 * 
 * This file contains the register definitions
 * 
 * Copyright (c) 2020 Nathan Schenk
*****************************************************************************************/

#ifndef REGISTERS_H_
#define REGISTERS_H_

#include <stdint.h>
#include <avr/pgmspace.h>
    
extern const uint8_t reg_flags[]               PROGMEM;
extern const uint8_t reg_inputVolts[]          PROGMEM;
extern const uint8_t reg_inputAmps[]           PROGMEM;
extern const uint8_t reg_inputWatts[]          PROGMEM;
extern const uint8_t reg_outputVolts[]         PROGMEM;
extern const uint8_t reg_outputAmps[]          PROGMEM;
extern const uint8_t reg_outputWatts[]         PROGMEM;
extern const uint8_t reg_tempIntake[]          PROGMEM;
extern const uint8_t reg_tempInternal[]        PROGMEM;
extern const uint8_t reg_fanSpeed[]            PROGMEM;
//TODO extern const uint8_t reg_joulesIn[]         PROGMEM;
extern const uint8_t reg_upTime[]              PROGMEM;
//TODO extern const uint8_t reg_resetUpTime[]      PROGMEM;
extern const uint8_t reg_inputWattsMax[]       PROGMEM;
//TODO extern const uint8_t reg_ResetInputWattsMax[]  PROGMEM;
extern const uint8_t reg_inputAmpsMax[]        PROGMEM;
//TODO extern const uint8_t reg_resetInputAmpsMax[]   PROGMEM;
extern const uint8_t reg_outputAmpsMax[]       PROGMEM;
//TODO extern const uint8_t reg_resetOutputAmpsMax[]  PROGMEM;
//TODO extern const uint8_t reg_fanTargetSpeed[]   PROGMEM;

#endif /* REGISTERS_H_ */      
