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
		time.tm_sec = RTC.Second;
		time.tm_min = RTC.Minute;
		time.tm_hour = RTC.Hour;
		time.tm_mday = RTC.Day;
		time.tm_year = RTC.Year;

		rtc_configure();
		rtc_set_datetime(&time);
		mem_write(RTC_MAGIC_ADDR, 1, RTC_MAGIC_VALUE);
	}
	else
	{
		// Load values from RTC
		rtc_get_datetime(&time);
		RTC.setTime(time.tm_sec, time.tm_min, time.tm_hour,
			time.tm_mday, time.tm_mon, time.tm_year);
	}

}
