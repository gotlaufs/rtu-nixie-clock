#include "display.h"
#include "lean_time.h"
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

    DateTime dt(now);
    Serial.println(dt.toFullDateTimeString());
    Serial.print("N6 = ");
    Serial.print(nixie_data.N6);
    Serial.print(" N5 = ");
    Serial.print(nixie_data.N5);
    Serial.print(" N4 = ");
    Serial.print(nixie_data.N4);
    Serial.print(" N3 = ");
    Serial.print(nixie_data.N3);
    Serial.print(" N2 = ");
    Serial.print(nixie_data.N2);
    Serial.print(" N1 = ");
    Serial.println(nixie_data.N1);
    Serial.print("C1 = ");
    Serial.print(nixie_data.COLON_1);
    Serial.print(" C2 = ");
    Serial.println(nixie_data.COLON_2);


}
