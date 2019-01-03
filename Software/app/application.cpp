/** Main application entry point
 */
#include "nixie_driver.h"
#include "pin_map.h"
#include "display.h"
#include "lean_time.h"
#include "build_time.h"

#include <user_config.h>
#include <SmingCore/SmingCore.h>

Timer display_timer;
Timer sys_tick;

void init()
{
    pinMode(LED, OUTPUT);
    pinMode(HV_DATA, OUTPUT);
    pinMode(HV_CLK, OUTPUT);
    pinMode(HV_BLANK, OUTPUT);

    digitalWrite(HV_CLK, 0);
    digitalWrite(HV_BLANK, 1);

    nixie_off();

    struct lean_tm tm_struct;
    tm_struct.tm_min = BUILD_MIN;
    tm_struct.tm_hour = BUILD_HOUR;
    lean_settime_tm(&tm_struct);

    display_timer.initializeMs(1000, show_time_simple).start();
    sys_tick.initializeMs(100, sys_tick_handler).start();
}
