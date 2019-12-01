/*
 * Operation Mode to set the time on clock
 */

#include "set_time_state.h"
#include "nixie_clock.h"
#include "mcp7940.h"

#include <user_config.h>
#include <SmingCore/SmingCore.h>
#include <ctime>

SetTimeState::SetTimeState(NixieClock & app) : NixieState(app)
{
    time_t now = RTC.getRtcSeconds();
    DateTime::fromUnixTime(now, &sec, &min, &hour, NULL, NULL, NULL, NULL);

    writeTimeToNixie();

    nixie_data.COLON_1 = 1;
    nixie_data.COLON_2 = 1;

    nixie_data.DECIMAL_1 = 0;
    nixie_data.DECIMAL_2 = 0;
}

SetTimeState::~SetTimeState()
{
    // Leaving this state
    // Set RTC IC time
    tm time;
    memset(&time, 0, sizeof(tm));

    rtc_get_datetime(&time);
    time.tm_hour = hour;
    time.tm_min  = min;
    time.tm_sec  = sec;
    rtc_set_datetime(&time);
    Serial.println("Updated external RTC time");

    // Update internal RTC time
    rtc_get_datetime(&time);
    time_t now = DateTime::toUnixTime(time.tm_sec, time.tm_min, time.tm_hour,
        time.tm_mday, time.tm_mon, time.tm_year);
    RTC.setRtcSeconds(now);
    Serial.println("Updated internal RTC from external RTC IC");
}

void SetTimeState::update()
{
    writeTimeToNixie();
}

void SetTimeState::button1(Button::Press press_type)
{
    switch(current_digit)
    {
        case HOUR:
            current_digit = MINUTE;
        break;

        case MINUTE:
            current_digit = SECOND;
        break;

        case SECOND:
            app.setState(NixieClock::SHOW_TIME);
        break;
    }
}

void SetTimeState::button2(Button::Press press_type)
{
    switch(current_digit)
    {
        case HOUR:
            hour--;
            if (hour < 0)
            {
                hour = 23;
            }
        break;

        case MINUTE:
            min--;
            if (min < 0)
            {
                min = 59;
            }
        break;

        case SECOND:
            sec--;
            if (sec < 0)
            {
                sec = 59;
            }
        break;
    }
}

void SetTimeState::button3(Button::Press press_type)
{
    switch(current_digit)
    {
        case HOUR:
            hour++;
            if (hour > 23)
            {
                hour = 0;
            }
        break;

        case MINUTE:
            min++;
            if (min > 59)
            {
                min = 0;
            }
        break;

        case SECOND:
            sec++;
            if (sec > 59)
            {
                sec = 0;
            }
        break;
    }
}

const char * SetTimeState::getName()
{
    return "SetTime";
}
