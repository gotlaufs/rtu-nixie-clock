/*
 *
 */
#include "tube_saver_state.h"
#include "utils.h"

static void

TubeSaverState::TubeSaverState()
{
    // Get the current time
    animation_start_time = millis();;
    last_update_time = 0;

    // Calculate digit settling times
    for (int i = 0; i < 6; i++)
    {
        digit_random_time[i] = Utils::randInRange(RANDOM_TIME, ANIMATION_TIME);
    }
}

TubeSaverState::~TubeSaverState()
{

}

void TubeSaverState::button1(NixieClock * app, Button::Press press_type)
{
    app->setState(NixieClock::SHOW_TIME);
}

void TubeSaverState::button2(NixieClock * app, Button::Press press_type)
{
    app->setState(NixieClock::SHOW_TIME);
}

void TubeSaverState::button3(NixieClock * app, Button::Press press_type)
{
    app->setState(NixieClock::SHOW_TIME);
}

void TubeSaverState::update()
{
    time_t now = RTC.getRtcSeconds();
    DateTime::fromUnixTime(now, &sec, &min, &hour, NULL, NULL, NULL, NULL);

    uint32_t diff = millis() - animation_start_time;
    if (diff > ANIMATION_TIME * 1000)
    {
        // Animation has ended, return to show time state
        app->setState(NixieClock::SHOW_TIME);
    }
    else
    {
        // Animation still in progress
        for (int digit = 0; i < 6; digit++)
        {
            if (diff < digit_random_time[digit])
            {
                // Draw a random digit form 0 to 10

            }
            else
            {
                // Digit has settled, update its value from RTC
            }
        }
    }

    // Write digit values to Nixies
}

const char * TubeSaverState::getName()
{
    return "TubeSaver"
}
