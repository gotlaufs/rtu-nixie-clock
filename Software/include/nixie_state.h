/*
 * Nixie clock states
 */

#ifndef NIXIE_STATE_H_
#define NIXIE_STATE_H_

#include "button.h"
#include "nixie_clock.h"

#include "nixie_driver.h"

#include <cstring>

class NixieClock;

class NixieState
{
public:
    // Handle button presses
    virtual void button1(NixieClock * app, Button::Press press_type) = 0;
    virtual void button2(NixieClock * app, Button::Press press_type) = 0;
    virtual void button3(NixieClock * app, Button::Press press_type) = 0;

    // Override this method with your actual code. Must not block for long.
    virtual void update() = 0;

    // Do some actions in this state.
    // This must be called periodically (>10Hz)
    void run()
    {
        update();
        nixie_update(&nixie_data);
    }

    // Return the name of this state
    virtual const char * getName() = 0;

    NixieState() { memset(&nixie_data, 0, sizeof(nixie_data_type)); }

    virtual ~NixieState() {};

protected:
    nixie_data_type nixie_data;
};

#endif // NIXIE_STATE_H_