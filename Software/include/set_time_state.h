/*
 * Operation Mode to set the time on clock
 */

#ifndef SET_TIME_STATE_H_
#define SET_TIME_STATE_H_

#include "nixie_clock.h"
#include "nixie_state.h"
#include "button.h"

class SetTimeState : public NixieState
{
public:
    SetTimeState();
    ~SetTimeState();

    virtual void button1(NixieClock * app, Button::Press press_type);
    virtual void button2(NixieClock * app, Button::Press press_type);
    virtual void button3(NixieClock * app, Button::Press press_type);

    virtual const char * getName();
};

#endif // SET_TIME_STATE_H_
