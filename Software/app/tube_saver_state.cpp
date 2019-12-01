/*
 *
 */
#include "tube_saver_state.h"
#include "utils.h"
#include <SmingCore/SmingCore.h>

TubeSaverState::TubeSaverState(NixieClock & app) : NixieState(app)
{
    // Get the current time
    animation_start_time = millis();;
    last_update_time = 0;

    // Calculate digit settling times
    for (int i = 0; i < 6; i++)
    {
        digit_random_time[i] = Utils::randomInRange(RANDOM_TIME, ANIMATION_TIME);
    }
}

TubeSaverState::~TubeSaverState()
{
}

void TubeSaverState::button1(Button::Press press_type)
{
    app.setState(NixieClock::SHOW_TIME);
}

void TubeSaverState::button2(Button::Press press_type)
{
    app.setState(NixieClock::SHOW_TIME);
}

void TubeSaverState::button3(Button::Press press_type)
{
    app.setState(NixieClock::SHOW_TIME);
}

void TubeSaverState::update()
{
    // Firstly, write normal time to Nixie tubes, then some numbers can be
    // replaced by random digits.
    time_t now = RTC.getRtcSeconds();
    DateTime::fromUnixTime(now, &sec, &min, &hour, NULL, NULL, NULL, NULL);
    writeTimeToNixie();

    uint32_t diff = millis() - animation_start_time;
    if (diff > ANIMATION_TIME)
    {
        // Animation has ended, return to show time state
        app.setState(NixieClock::SHOW_TIME);
    }
    else
    {
        // Animation still in progress
        for (int digit = 0; digit < 6; digit++)
        {
            if (diff < digit_random_time[digit])
            {
                // Draw a random digit form 0 to 10
                int rand_digit = Utils::randomInRange(0, 9);

                switch(digit)
                {
                    case 0:
                        nixie_data.N1 = rand_digit;
                    break;

                    case 1:
                        nixie_data.N2 = rand_digit;
                    break;

                    case 2:
                        nixie_data.N3 = rand_digit;
                    break;

                    case 3:
                        nixie_data.N4 = rand_digit;
                    break;

                    case 4:
                        nixie_data.N5 = rand_digit;
                    break;

                    case 5:
                        nixie_data.N6 = rand_digit;
                    break;
                }
            }
        }
    }
}

const char * TubeSaverState::getName()
{
    return "TubeSaver";
}
