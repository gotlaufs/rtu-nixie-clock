// Nixie state class implementation
#include "nixie_state.h"

NixieState::NixieState(NixieClock & app_) : app(app_)
{
    memset(&nixie_data, 0, sizeof(nixie_data_type));
}

void NixieState::writeTimeToNixie()
{
    if (sec > 99)
    {
        // Blank tubes if too big digit
        nixie_data.N6 = 10;
        nixie_data.N5 = 10;
    }
    else
    {
        nixie_data.N6 = sec % 10;
        nixie_data.N5 = sec / 10;
    }

    if (min > 99)
    {
        nixie_data.N4 = 10;
        nixie_data.N3 = 10;
    }
    else
    {
        nixie_data.N4 = min % 10;
        nixie_data.N3 = min / 10;
    }

    if (hour > 99)
    {
        nixie_data.N2 = 10;
        nixie_data.N1 = 10;
    }
    else
    {
        nixie_data.N2 = hour % 10;
        nixie_data.N1 = hour / 10;
    }
}
