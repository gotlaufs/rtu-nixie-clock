/*
 * Driver for the nixie tubes. Uses the HV5522 driver functions
 */
#ifndef _NIXIE_DRIVER_H_
#define _NIXIE_DRIVER_H_

#include "stdint.h"
#include "c_types.h"

// Holds the numerical nixie tube and neon indicator values
typedef struct{
    uint8_t N1;
    uint8_t N2;
    uint8_t DECIMAL_1;
    uint8_t COLON_1;
    uint8_t N3;
    uint8_t N4;
    uint8_t DECIMAL_2;
    uint8_t COLON_2;
    uint8_t N5;
    uint8_t N6;
}nixie_data_type;

// Update the nixie tubes with data from NIXIE_DATA struct
void ICACHE_FLASH_ATTR nixie_update(nixie_data_type *nixie_data);

// Turn all tubes off
void ICACHE_FLASH_ATTR nixie_off(void);

#endif // _NIXIE_DRIVER_H_
