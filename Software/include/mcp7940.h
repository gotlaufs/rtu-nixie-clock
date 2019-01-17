// RTC interface library
#ifndef _MCP7940_H_
#define _MCP7940_H_
#include <time.h>
#include <stdint.h>

#define MEMORY_SIZE 64  // 64 Bytes of SRAM available
#define MEMORY_OFFSET 0x20 // Where memory begins

#define MCP_ADDRESS 0x6F    // 7-bit device I2C address

// Read number of bytes from SRAM
// Counts from 0 to MEMORY_SIZE
uint8_t mem_read(uint8_t address, uint8_t count, uint8_t *data);
// Write number of bytes to SRAM
// Counts from 0 to MEMORY_SIZE
uint8_t mem_write(uint8_t address, uint8_t count, uint8_t *data);

// Set up RTC (enable battery, clock etc.)
// This will reset all the clock registers
uint8_t rtc_configure();

uint8_t rtc_get_datetime(tm *datetime);
uint8_t rtc_set_datetime(tm *datetime);

#endif // _MCP7940_H_
