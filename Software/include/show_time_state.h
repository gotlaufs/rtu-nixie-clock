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
    ShowTimeState(NixieClock & app);
    ~ShowTimeState();

    virtual void button1(Button::Press press_type);
    virtual void button2(Button::Press press_type);
    virtual void button3(Button::Press press_type);

    virtual void update();

    virtual const char * getName();
};

#endif // SHOW_TIME_STATE_H_
