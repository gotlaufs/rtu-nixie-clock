/*
 * Nixie Clock display Main Class
 */
#ifndef NIXIE_CLOCK_H_
#define NIXIE_CLOCK_H_

#include <cstdint>

class NixieClock
{
public:
    NixieClock();
    void init();

private:
    const uint8_t RTC_MAGIC_ADDR    = 0x00;
    const uint8_t RTC_MAGIC_VALUE   = 0xAB;
};

#endif // NIXIE_CLOCK_H_
