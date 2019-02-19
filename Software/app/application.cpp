/** Main application entry point
 */
#include "nixie_driver.h"
#include "pin_map.h"
#include "display.h"
#include "build_time.h"

#include "mcp7940.h"

#include "nixie_clock.h"

#include "button.h"

#include <time.h>
#include <user_config.h>
#include <SmingCore/SmingCore.h>

Timer display_timer;
Timer button_handler;

Timer serial_timer;

Button SW1(SW_1);
Button SW2(SW_2);
Button SW3(SW_3);

NixieClock nixie_clock;

void serialButtonFaker();


void init()
{
    pinMode(LED, OUTPUT);
    pinMode(HV_DATA, OUTPUT);
    pinMode(HV_CLK, OUTPUT);
    pinMode(HV_BLANK, OUTPUT);

    digitalWrite(HV_CLK, 0);
    digitalWrite(HV_BLANK, 1);

    nixie_off();

    time_t now = DateTime::toUnixTime(0, BUILD_MIN, BUILD_HOUR, 8, 0, 2018);

    RTC.setRtcSeconds(now);



    serial_timer.initializeMs(100, serialButtonFaker).start();

    Serial.begin(921600);
    Serial.printf("Hello, World!\n");
    // I2C bus
    Wire.pins (SCL, SDA);
    Wire.begin();

    nixie_clock.init();
    display_timer.initializeMs(100,
        (InterruptCallback)( [] { nixie_clock.run(); }) ).start();

    // Set up buttons
    attachInterrupt(
        SW_1,
        InterruptDelegate(
            [] { SW1.isr(); }),
        CHANGE
        );

    SW1.attachHandler(
        [] (Button::Press p) {nixie_clock.button1(p);}
        );

    attachInterrupt(
        SW_2,
        InterruptDelegate(
            [] { SW2.isr(); }),
        CHANGE
        );

    SW2.attachHandler(
        [] (Button::Press p) {nixie_clock.button2(p);}
        );

    attachInterrupt(
        SW_3,
        InterruptDelegate(
            [] { SW3.isr(); }),
        CHANGE
        );

    SW3.attachHandler(
        [] (Button::Press p) {nixie_clock.button3(p);}
        );

    button_handler.initializeMs(10,
        (InterruptCallback)([] { SW1.processEvents();
                                 SW2.processEvents();
                                 SW3.processEvents(); }) ).start();

    Serial.printf("Application started\n");
}

void serialButtonFaker()
{
    // Read certain characters from serial stream and report them as button
    // presses

    char read_char = 0;

    if (Serial.available() > 0)
    {
        read_char = Serial.read();

        switch (read_char)
        {
            case '1':
                nixie_clock.button1(Button::SHORT_PRESS);
            break;

            case '2':
                nixie_clock.button2(Button::SHORT_PRESS);
            break;

            case '3':
                nixie_clock.button3(Button::SHORT_PRESS);
            break;

            default:
            break;
        }
    }
}