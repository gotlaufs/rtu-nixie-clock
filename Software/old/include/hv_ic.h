/*
 * HV5522 High voltage cerial to parallel converter IC driver
 */
#ifndef _HV_IC_H_
#define _HV_IC_H_

#include "stdint.h"
#include "c_types.h"

enum hv_status_enum{
    HV_NORMAL = 0,
    HV_DATA_SHIFT
};

// Specify the PWM brightness for the tubes. Goes from 0 to 100
extern int HV_BRIGHTNESS_LEVEL;

// Turn the tubes off while shifting data
extern enum hv_status_enum HV_STATUS;

// Timer function for driving the BLANK signal
// Uses global HV_BRIGHTNESS_LEVEL
// Timer period determines the PWM frequency
void hv_blank_pwm(void *arg);

// Push a single byte to HV5522 chain
void ICACHE_FLASH_ATTR hv_push_byte(uint8_t data);


#endif // _HV_IC_H_
