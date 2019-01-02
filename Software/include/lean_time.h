/*
 * Lean implementation of similar functions to C standard 'time.h'
 *
 */
#ifndef _LEAN_TIME_H_
#define _LEAN_TIME_H_

#include "c_types.h"

#define CLOCKS_PER_SEC 10

typedef long time_t;
typedef long clock_t;

struct tm {
   int tm_sec;         /* seconds,  range 0 to 59          */
   int tm_min;         /* minutes, range 0 to 59           */
   int tm_hour;        /* hours, range 0 to 23             */
   int tm_mday;        /* day of the month, range 1 to 31  */
   int tm_mon;         /* month, range 0 to 11             */
   int tm_year;        /* The number of years since 1900   */
   int tm_wday;        /* day of the week, range 0 to 6    */
   int tm_yday;        /* day in the year, range 0 to 365  */
   int tm_isdst;       /* daylight saving time             */
};

// This should be called CLOCKS_PER_SEC times per second
void ICACHE_FLASH_ATTR sys_tick_handler(void);

// Return number of SysTicks since program start
clock_t ICACHE_FLASH_ATTR clock(void);

// Convert time_t to tm struct
void ICACHE_FLASH_ATTR localtime(const time_t *timer, const struct tm *tm_struct);

// Convert tm struct into time_t
time_t ICACHE_FLASH_ATTR mktime(const struct tm *timeptr);

// Get the current time_t
time_t ICACHE_FLASH_ATTR time(void);

// Get the current tm struct
struct tm ICACHE_FLASH_ATTR time_tm(void);

// Set the current system time value
void ICACHE_FLASH_ATTR settime(const time_t *timer);

// Set current system time struct
void ICACHE_FLASH_ATTR settime_tm(const struct tm *tm_in);

#endif // _LEAN_TIME_H_
