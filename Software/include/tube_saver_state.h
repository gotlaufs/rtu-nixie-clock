/*
 * Screen saver state.
 *
 * Since Nixies are not screens, but tubes, this is a TubeSaver.
 * Shows a spinning slot machine animation that ends on the current time.
 */

#ifndef TUBE_SAVER_STATE_H_
#define TUBE_SAVER_STATE_H_

#include "nixie_clock.h"
#include "nixie_state.h"
#include "button.h"

class TubeSaverState : public NixieState
{
public:
    TubeSaverState(NixieClock & app);
    ~TubeSaverState();

    virtual void button1(Button::Press press_type);
    virtual void button2(Button::Press press_type);
    virtual void button3(Button::Press press_type);

    virtual void update();

    virtual const char * getName();

private:
    // Full duration of the animation, ms
    static const unsigned ANIMATION_TIME = 10 * 1000;
    // How often digits are randomized, ms
    static const unsigned DIGIT_HOLD_TIME = 300;
    // Minimum time how long all digits should be randomized. After this, the
    // digits will settle to their valid values, ms.
    static const unsigned RANDOM_TIME = 3 * 1000;

    static_assert(RANDOM_TIME < ANIMATION_TIME,
        "Animation time must be greater than random time");
    static_assert(DIGIT_HOLD_TIME < RANDOM_TIME * 200,
        "Digits should spin at lest 5x faster than the time the animation settles");

    // These times are in milliseconds
    uint32_t digit_random_time[6];
    uint32_t animation_start_time;
    uint32_t last_update_time;
};

#endif // TUBE_SAVER_STATE_H_
