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
    virtual void button1(Button::Press press_type) = 0;
    virtual void button2(Button::Press press_type) = 0;
    virtual void button3(Button::Press press_type) = 0;

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

    NixieState(NixieClock & app_);

    virtual ~NixieState() {};

protected:
    NixieClock & app;
    nixie_data_type nixie_data;
    // Holds current values for Seconds, minutes and hours
    int8_t sec, min, hour;
    // Take 'sec', 'min' and 'hour' variables and write their values to Nixie
    // tubes
    void writeTimeToNixie();
};

#endif // NIXIE_STATE_H_
