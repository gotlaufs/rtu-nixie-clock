#include "lean_time.h"

static lean_clock_t clk_count = 0;
static lean_time_t  time_data = 0;
static struct lean_tm tm_data = {0};

void sys_tick_handler(void){
    clk_count++;
    if ((clk_count % CLOCKS_PER_SEC) == 0){
        time_data++;
        // TODO: This only increments up to hours
        tm_data.tm_sec++;
        if (tm_data.tm_sec >= 60){
            tm_data.tm_sec = 0;
            tm_data.tm_min++;
        }
        if (tm_data.tm_min >= 60){
            tm_data.tm_min = 0;
            tm_data.tm_hour++;
        }
        if (tm_data.tm_hour >= 24){
            tm_data.tm_hour = 0;
        }
    }
}


lean_clock_t lean_clock(void){
    return clk_count;
}


void lean_localtime(const lean_time_t *timer, const struct tm *tm_struct){
    // TODO: Finsih this
}


lean_time_t lean_mktime(const struct lean_tm *timeptr){
    lean_time_t value = 0;
    // TODO: Finish this
    return value;
}


lean_time_t lean_time(void){
    return time_data;
}

struct lean_tm lean_time_tm(void){
    return tm_data;
}


void lean_settime(const lean_time_t *timer){
    time_data = *timer;
}

void lean_settime_tm(const struct lean_tm *tm_in){
    tm_data.tm_sec = tm_in->tm_sec;
    tm_data.tm_min = tm_in->tm_min;
    tm_data.tm_hour = tm_in->tm_hour;
    tm_data.tm_mday = tm_in->tm_mday;
    tm_data.tm_mon = tm_in->tm_mon;
    tm_data.tm_year = tm_in->tm_year;
    tm_data.tm_wday = tm_in->tm_wday;
    tm_data.tm_yday = tm_in->tm_yday;
    tm_data.tm_isdst = tm_in->tm_isdst;
}
