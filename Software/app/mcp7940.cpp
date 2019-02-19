#include "mcp7940.h"

#include <SmingCore/SmingCore.h>
#include <stdint.h>
#include <string.h>

static uint8_t reg_read(uint8_t address, uint8_t count, uint8_t *data);
static uint8_t reg_write(uint8_t address, uint8_t count, uint8_t *data);

uint8_t mem_read(uint8_t address, uint8_t count, uint8_t *data)
{
    return reg_read(address + MEMORY_OFFSET, count, data);
}

uint8_t mem_write(uint8_t address, uint8_t count, uint8_t *data)
{
    return reg_write(address + MEMORY_OFFSET, count, data);
}

uint8_t rtc_configure()
{
    uint8_t retval;
    uint8_t data;

    // Start 32 kHz crystal
    // ST bit in RTCSEC reg
    data = 0x80;
    retval = reg_write(0x00, 1, &data);

    if (!retval)
    {
        // Enable battery backup
        // VBATEN bit in RTCWKDAY reg
        data = 0x08;
        retval = reg_write(0x03, 1, &data);
    }

    if (!retval)
    {
        // Set year to 2018
        data = 0x18;
        retval = reg_write(0x06, 1, &data);
    }

    return retval;

}

uint8_t rtc_get_datetime(tm *datetime)
{
    // TODO: This does not handle years.
    memset(datetime, 0, sizeof(tm));

    uint8_t rtc_regs[6];

    reg_read(0x00, 6, rtc_regs);

    datetime->tm_sec = (rtc_regs[0] & 0x0F) + ((rtc_regs[0] & 0x70) >> 4) * 10;
    datetime->tm_min = (rtc_regs[1] & 0x0F) + ((rtc_regs[1] & 0x70) >> 4) * 10;
    datetime->tm_hour = (rtc_regs[2] & 0x0F) + ((rtc_regs[2] & 0x30) >> 4) * 10;

    datetime->tm_mday = (rtc_regs[4] & 0x0F) + ((rtc_regs[4] & 0x30) >> 4) * 10;
    datetime->tm_mon = (rtc_regs[5] & 0x0F) + ((rtc_regs[5] & 0x10) >> 4) * 10;

    return 0;
}

uint8_t rtc_set_datetime(tm *datetime)
{
    // TODO: This does not handle years.

    uint8_t data;
    // 0x08 enables battery backup in WKDAY register
    uint8_t rtc_regs[6] = {0, 0, 0, 0x08, 0, 0};

    rtc_regs[0] |= ((datetime->tm_sec % 10 ) << 0 ) & 0x0F;
    rtc_regs[0] |= ((datetime->tm_sec / 10 ) << 4 ) & 0x70;

    rtc_regs[1] |= ((datetime->tm_min % 10 ) << 0 ) & 0x0F;
    rtc_regs[1] |= ((datetime->tm_min / 10 ) << 4 ) & 0x70;

    rtc_regs[2] |= ((datetime->tm_hour % 10 ) << 0 ) & 0x0F;
    rtc_regs[2] |= ((datetime->tm_hour / 10 ) << 4 ) & 0x30;

    rtc_regs[4] |= ((datetime->tm_mday % 10 ) << 0 ) & 0x0F;
    rtc_regs[4] |= ((datetime->tm_mday / 10 ) << 4 ) & 0x30;

    rtc_regs[5] |= ((datetime->tm_mon % 10 ) << 0 ) & 0x0F;
    rtc_regs[5] |= ((datetime->tm_mon / 10 ) << 4 ) & 0x10;

    // Stop crystal oscillator
    data = 0;
    reg_write(0x00, 1, &data);
    data = 0x20;
    // Check OSCRUN bit in RTCWKDAY reg
    while ((data & 0x20))
    {
        reg_read(0x03, 1, &data);
    }

    // Write out updated datetime values
    reg_write(0x00, 6, rtc_regs);

    // Restart oscillator
    rtc_regs[0] |= 0x80;
    reg_write(0x00, 1, &rtc_regs[0]);

    // Wait until crystal osc starts up again
    do
    {
        reg_read(0x03, 1, &data);
    }
    while (!(data & 0x20));

    return 0;
}

// Read a number of bytes from MCP7940 device
static uint8_t reg_read(uint8_t address, uint8_t count, uint8_t *data)
{
    Wire.beginTransmission(MCP_ADDRESS);
    Wire.write(address);
    Wire.endTransmission();

    Wire.requestFrom(MCP_ADDRESS, (int)count);

    while (Wire.available())
    {
        *(data++) = Wire.read();
    }

    return 0;
}

// Write a number of bytes to MCP7940 device
static uint8_t reg_write(uint8_t address, uint8_t count, uint8_t *data)
{
    Wire.beginTransmission(MCP_ADDRESS);
    Wire.write(address);

    while (count)
    {
        Wire.write(*(data++));
        count--;
    }

    Wire.endTransmission();

    return 0;
}
