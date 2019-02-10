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
