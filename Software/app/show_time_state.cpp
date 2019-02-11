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

    int8_t sec, min, hour;
    DateTime::fromUnixTime(now, &sec, &min, &hour, NULL, NULL, NULL, NULL);

    nixie_data.N6 = sec % 10;
    nixie_data.N5 = sec / 10;

    nixie_data.N4 = min % 10;
    nixie_data.N3 = min / 10;

    nixie_data.N2 = hour % 10;
    nixie_data.N1 = hour / 10;

    nixie_data.DECIMAL_1 = 0;
    nixie_data.DECIMAL_2 = 0;

    nixie_data.COLON_1 = 1;
    nixie_data.COLON_2 = 1;
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
