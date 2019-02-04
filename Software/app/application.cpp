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

NixieClock nixie_clock;

void SW_1_ISR();
void SW_2_ISR();
void SW_3_ISR();

Button SW1(SW_1);
void buttonHandlerCallback();

void buttonCallback(Button::Press pr);

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

    display_timer.initializeMs(1000, show_time_simple).start();

    button_handler.initializeMs(10, buttonHandlerCallback).start();

    Serial.begin(921600);
    Serial.printf("Hello, World!\n");
    // I2C bus
    Wire.pins (SCL, SDA);
    Wire.begin();

    nixie_clock.init();

//    pinMode(SW_1, INPUT);
    SW1.attachHandler(&buttonCallback);

    pinMode(SW_2, INPUT);
    pinMode(SW_3, INPUT_PULLUP);

    attachInterrupt(SW_1, InterruptDelegate(SW_1_ISR), CHANGE);
    attachInterrupt(SW_2, InterruptDelegate(SW_2_ISR), CHANGE);
    attachInterrupt(SW_3, InterruptDelegate(SW_3_ISR), CHANGE);

}

void SW_1_ISR()
{
    Serial.printf("SW 1 state is: %d\n", digitalRead(SW_1));
    SW1.isr();
}

void SW_2_ISR()
{
    Serial.printf("SW 2 state is: %d\n", digitalRead(SW_2));
}

void SW_3_ISR()
{
    Serial.printf("SW 3 state is: %d\n", digitalRead(SW_3));
}

void buttonHandlerCallback()
{
    SW1.processEvents();
}

void buttonCallback(Button::Press pr)
{
    Serial.printf("Got from Callback!\n");
}