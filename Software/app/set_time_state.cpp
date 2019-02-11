/*
 * Operation Mode to set the time on clock
 */

#include "set_time_state.h"
#include "nixie_clock.h"

#include <user_config.h>
#include <SmingCore/SmingCore.h>


SetTimeState::SetTimeState()
{

}

SetTimeState::~SetTimeState()
{

}

void SetTimeState::update()
{

}

void SetTimeState::button1(NixieClock * app, Button::Press press_type)
{
    app->setState(NixieClock::SHOW_TIME);
}

void SetTimeState::button2(NixieClock * app, Button::Press press_type)
{

}

void SetTimeState::button3(NixieClock * app, Button::Press press_type)
{

}

const char * SetTimeState::getName()
{
    return "SetTime";
}
