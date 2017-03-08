#ifndef _GIGASECOND_H
#define _GIGASECOND_H

#include <time.h>

// copied from test file
time_t construct_date(int year, int month, int day, int hour, int min, int sec);

time_t gigasecond_after(time_t date);

#endif
