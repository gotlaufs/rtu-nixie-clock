/*
 * Operation Mode to set the time on clock
 */

#include "set_time_state.h"
#include "nixie_clock.h"

#include <user_config.h>
#include <SmingCore/SmingCore.h>


SetTimeState::SetTimeState()
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
    writeTimeToNixie();
}

void SetTimeState::update()
{

}

void SetTimeState::button1(NixieClock * app, Button::Press press_type)
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
            app->setState(NixieClock::SHOW_TIME);
        break;
    }
}

void SetTimeState::button2(NixieClock * app, Button::Press press_type)
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
            if (min > 0)
            {
                min = 59;
            }
        break;

        case SECOND:
            sec--;
            if (sec > 0)
            {
                sec = 59;
            }
        break;
    }
}

void SetTimeState::button3(NixieClock * app, Button::Press press_type)
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
