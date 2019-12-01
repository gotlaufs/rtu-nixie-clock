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
    SetTimeState(NixieClock & app);
    ~SetTimeState();

    virtual void button1(Button::Press press_type);
    virtual void button2(Button::Press press_type);
    virtual void button3(Button::Press press_type);

    virtual void update();

    virtual const char * getName();

private:
    enum CurrentDigit
    {
        HOUR,
        MINUTE,
        SECOND
    };

    CurrentDigit current_digit = HOUR;
};

#endif // SET_TIME_STATE_H_
