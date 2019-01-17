/** Main application entry point
 */
#include "nixie_driver.h"
#include "pin_map.h"
#include "display.h"
#include "build_time.h"

#include "mcp7940.h"

#include <time.h>
#include <user_config.h>
#include <SmingCore/SmingCore.h>

Timer display_timer;
// DateTime dt;

void init()
{
    pinMode(LED, OUTPUT);
    pinMode(HV_DATA, OUTPUT);
    pinMode(HV_CLK, OUTPUT);
    pinMode(HV_BLANK, OUTPUT);

    digitalWrite(HV_CLK, 0);
    digitalWrite(HV_BLANK, 1);

    nixie_off();

    time_t now = DateTime::toUnixTime(0, BUILD_MIN, BUILD_HOUR, 8, 0, 2018);

    RTC.setRtcSeconds(now);

    display_timer.initializeMs(1000, show_time_simple).start();

    Serial.begin(115200);

    tm the_time;
    the_time.tm_sec = 1;
    the_time.tm_min = 2;
    the_time.tm_hour = 3;
    the_time.tm_mday = 4;
    the_time.tm_mon = 5;

    // I2C bus
    Wire.pins (SCL, SDA);
    Wire.begin();

    rtc_configure();
    rtc_set_datetime(&the_time);

    // tm time2;
    // rtc_get_datetime(&time2);

    // Serial.print("Sec = ");
    // Serial.println(time2.tm_sec);
    // Serial.print("Min = ");
    // Serial.println(time2.tm_min);
    // Serial.print("Hour = ");
    // Serial.println(time2.tm_hour);
}
