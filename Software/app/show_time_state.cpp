/*
 * Nixie clock states
 */

#include "show_time_state.h"
#include "nixie_clock.h"

#include <user_config.h>
#include <SmingCore/SmingCore.h>


ShowTimeState::ShowTimeState()
{

}

ShowTimeState::~ShowTimeState()
{

}

void ShowTimeState::update()
{
    time_t now = RTC.getRtcSeconds();
    DateTime::fromUnixTime(now, &sec, &min, &hour, NULL, NULL, NULL, NULL);

    writeTimeToNixie();

    nixie_data.DECIMAL_1 = 0;
    nixie_data.DECIMAL_2 = 0;

    // Make colons blink @ 1Hz
    // Nanoseconds in RTC are counted since RTC value set
    uint64_t ns = RTC.getRtcNanoseconds();
    ns = ns / 100000000; // 0.1s precision
    ns = ns % 10;
    if (ns >= 5)
    {
        nixie_data.COLON_1 = 1;
        nixie_data.COLON_2 = 1;
    }
    else
    {
        nixie_data.COLON_1 = 0;
        nixie_data.COLON_2 = 0;
    }

}

void ShowTimeState::button1(NixieClock * app, Button::Press press_type)
{
    app->setState(NixieClock::SET_TIME);
}

void ShowTimeState::button2(NixieClock * app, Button::Press press_type)
{

}

void ShowTimeState::button3(NixieClock * app, Button::Press press_type)
{

}

const char * ShowTimeState::getName()
{
    return "ShowTime";
}
