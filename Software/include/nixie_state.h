/*
 * Nixie clock states
 */

#ifndef NIXIE_STATE_H_
#define NIXIE_STATE_H_

#include "button.h"
#include "nixie_clock.h"

class NixieClock;

class NixieState
{
public:
    virtual void button1(NixieClock * app, Button::Press press_type) = 0;
    virtual void button2(NixieClock * app, Button::Press press_type) = 0;
    virtual void button3(NixieClock * app, Button::Press press_type) = 0;

    virtual const char * getName() = 0;

    virtual ~NixieState() {};
};

#endif // NIXIE_STATE_H_