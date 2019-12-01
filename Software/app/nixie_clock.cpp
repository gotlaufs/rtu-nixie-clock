#include "nixie_clock.h"
#include "mcp7940.h"

#include "show_time_state.h"
#include "set_time_state.h"
#include "tube_saver_state.h"

#include <SmingCore/SmingCore.h>

#include <ctime>
#include <cstdint>

NixieClock::NixieClock()
{
}

void NixieClock::init()
{
    // Initialize RTC IC
    uint8_t read_byte;
    tm time;
    memset(&time, 0, sizeof(tm));

    mem_read(RTC_MAGIC_ADDR, 1, &read_byte);

    if (read_byte != RTC_MAGIC_VALUE)
    {
        // Need to set RTC
        uint32_t rtc_seconds = RTC.getRtcSeconds();

        DateTime::fromUnixTime(rtc_seconds, (int8_t *)&time.tm_sec,
            (int8_t *)&time.tm_min, (int8_t *)&time.tm_hour,
            (int8_t *)&time.tm_mday, nullptr, (int8_t *)&time.tm_mon,
            (int16_t *)&time.tm_year);

        rtc_configure();
        rtc_set_datetime(&time);
        mem_write(RTC_MAGIC_ADDR, 1, (uint8_t *)&RTC_MAGIC_VALUE);
    }
    else
    {
        // Load values from RTC
        rtc_get_datetime(&time);
        time_t now = DateTime::toUnixTime(time.tm_sec, time.tm_min, time.tm_hour,
            time.tm_mday, time.tm_mon, time.tm_year);
        RTC.setRtcSeconds(now);
    }

    current_state = new ShowTimeState(*this);
}

void NixieClock::button1(Button::Press press_type)
{
    current_state->button1(press_type);
}

void NixieClock::button2(Button::Press press_type)
{
    current_state->button2(press_type);
}

void NixieClock::button3(Button::Press press_type)
{
    current_state->button3(press_type);
}

void NixieClock::setState(State state_enum)
{
    Serial.printf("Changing state from <%s> to ", current_state->getName());
    delete current_state;

    switch(state_enum)
    {
    case SHOW_TIME:
        current_state = new ShowTimeState(*this);
    break;

    case SET_TIME:
        current_state = new SetTimeState(*this);
    break;

    case TUBE_SAVER:
        current_state = new TubeSaverState(*this);
    break;

    default:
        Serial.printf("Error: unknown state reached: ENUM<%d>\n", state_enum);
        current_state = new ShowTimeState(*this);
    }

    Serial.printf("<%s>\n", current_state->getName());
}

void NixieClock::run()
{
    current_state->run();
}
