/*
 * Default device mode - show time on Nixie Tubes
 */

#ifndef SHOW_TIME_STATE_H_
#define SHOW_TIME_STATE_H_

#include "nixie_clock.h"
#include "nixie_state.h"
#include "button.h"

class ShowTimeState : public NixieState
{
public:
    ShowTimeState();
    ~ShowTimeState();

    virtual void button1(NixieClock * app, Button::Press press_type);
    virtual void button2(NixieClock * app, Button::Press press_type);
    virtual void button3(NixieClock * app, Button::Press press_type);

    virtual const char * getName();
};

#endif // SHOW_TIME_STATE_H_
