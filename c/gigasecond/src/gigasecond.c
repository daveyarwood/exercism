#include "gigasecond.h"

const int GIGASECOND = 1000000000;

time_t gigasecond_after(time_t date) {
  return date + GIGASECOND;
}
