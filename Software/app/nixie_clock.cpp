#include "nixie_clock.h"
#include "mcp7940.h"

#include <SmingCore/SmingCore.h>

#include <ctime>
#include <cstdint>

NixieClock::NixieClock() {}

void NixieClock::init()
{
    // Initialize RTC IC
    uint8_t read_byte;
    tm time;

    mem_read(RTC_MAGIC_ADDR, 1, &read_byte);

    if (read_byte != RTC_MAGIC_VALUE)
    {
        // Need to set RTC
        uint32_t rtc_seconds = RTC.getRtcSeconds();

        DateTime::fromUnixTime(rtc_seconds, (int8_t *)&time.tm_sec,
            (int8_t *)&time.tm_min, (int8_t *)&time.tm_hour,
            (int8_t *)&time.tm_mday, nullptr, (int8_t *)&time.tm_mon,
            (int16_t *)&time.tm_year);

        rtc_configure();
        rtc_set_datetime(&time);
        mem_write(RTC_MAGIC_ADDR, 1, (uint8_t *)&RTC_MAGIC_VALUE);
    }
    else
    {
        // Load values from RTC
        rtc_get_datetime(&time);
        time_t now = DateTime::toUnixTime(time.tm_sec, time.tm_min, time.tm_hour,
            time.tm_mday, time.tm_mon, time.tm_year);
        RTC.setRtcSeconds(now);
    }

}
