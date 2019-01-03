#include "display.h"
#include "lean_time.h"
#include "nixie_driver.h"

void show_time_simple(void){
    struct lean_tm tm_data = lean_time_tm();
    nixie_data_type nixie_data;

    nixie_data.N6 = tm_data.tm_sec % 10;
    nixie_data.N5 = tm_data.tm_sec / 10;

    nixie_data.N4 = tm_data.tm_min % 10;
    nixie_data.N3 = tm_data.tm_min / 10;

    nixie_data.N2 = tm_data.tm_hour % 10;
    nixie_data.N1 = tm_data.tm_hour / 10;

    nixie_data.DECIMAL_1 = 0;
    nixie_data.DECIMAL_2 = 0;

    nixie_update(&nixie_data);
}
