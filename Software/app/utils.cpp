// Various utility functions
#include "utils.h"

namespace Utils
{
uint32_t randomInRange(uint32_t start, uint32_t end)
{
    // Generate a random number from 0 to 0xFFFFFFFF
    uint32_t rand;
    os_get_random(&rand, sizeof(rand));

    // Move it into the required range
    uint32_t range = end - start;
    uint64_t ret = (static_cast<uint64_t>(rand) * range) / 0xFFFFFFFF;
    ret += start;

    return ret;
}
}
