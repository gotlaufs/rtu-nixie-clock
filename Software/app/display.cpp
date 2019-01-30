#include "display.h"
// #include "lean_time.h"
#include "nixie_driver.h"

#include <SmingCore/SmingCore.h>

void show_time_simple(void){

    time_t now = RTC.getRtcSeconds();
    nixie_data_type nixie_data;

    int8_t sec, min, hour;
    DateTime::fromUnixTime(now, &sec, &min, &hour, NULL, NULL, NULL, NULL);

    nixie_data.N6 = sec % 10;
    nixie_data.N5 = sec / 10;

    nixie_data.N4 = min % 10;
    nixie_data.N3 = min / 10;

    nixie_data.N2 = hour % 10;
    nixie_data.N1 = hour / 10;

    nixie_data.DECIMAL_1 = 0;
    nixie_data.DECIMAL_2 = 0;

    nixie_data.COLON_1 = 1;
    nixie_data.COLON_2 = 1;

    nixie_update(&nixie_data);
}

