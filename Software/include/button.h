// Button interface

class Button
{
public:

    // Various types of detectable button events
    enum Press
    {
        SHORT_PRESS,    // Fired immediately on press
        DOUBLE_PRESS,   // Fired after second press within window
        LONG_PRESS,     // Fired after timeout while on first press
        RELEASED,       // Fired after release after longpress timeout
    };

    Button(unsigned int pin);
    ~Button();

    // Function prototype for the callback
    typedef void (* Callback)(Press p);

    // Call this from ISR to register button press
    void isr();

    // Call this regularly to fire events
    void processEvents();

    // Register a handle for this button's output.
    void attachHandler(Callback callback);

private:
    // Configuration constants
    const int DEBOUNCE_MS = 50;
    const int DOUBLE_PRESS_MS = 200;

    const int LONG_PRESS_MS = 500;

    bool was_pressed         = false;
    unsigned long last_event = 0;
    unsigned int pin = 0;

    Callback cb = nullptr;
};
