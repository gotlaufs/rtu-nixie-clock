#include "button.h"

#include <user_config.h>
#include <SmingCore/SmingCore.h>

Button::Button(unsigned int pin)
{
    pinMode(pin, INPUT);
    Button::pin = pin;
}

Button::~Button()
{
    // Nothing to do here..
}

// Call this from ISR to register button press
void Button::isr()
{
    if (!digitalRead(pin))
    {
        was_pressed = true;
    }
}

// Call this regularly to fire events
void Button::processEvents()
{
    if (was_pressed)
    {
        if (millis() - last_event > DEBOUNCE_MS)
        {
            last_event = millis();

            // Fire single press
            if (nullptr != cb)
            {
                cb(SHORT_PRESS);
            }
        }

        was_pressed = false;
    }
}

// Register a handle for this button's output.
void Button::attachHandler(Callback callback)
{
    cb = callback;
}