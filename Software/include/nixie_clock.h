/*
 * Nixie Clock display Main Class
 */
#ifndef NIXIE_CLOCK_H_
#define NIXIE_CLOCK_H_

#include "button.h"
#include "nixie_state.h"

#include <cstdint>

class NixieState;

class NixieClock
{
public:
    enum State
    {
        SHOW_TIME,  // Show current time
        SET_TIME,   // Set the clock's time
    };

    NixieClock();
    void init();

    void button1(Button::Press press_type);
    void button2(Button::Press press_type);
    void button3(Button::Press press_type);

    void setState(State state_enum);

private:
    const uint8_t RTC_MAGIC_ADDR    = 0x00;
    const uint8_t RTC_MAGIC_VALUE   = 0xAB;

    NixieState * current_state;
};

#endif // NIXIE_CLOCK_H_
