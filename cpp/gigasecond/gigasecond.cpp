#include "gigasecond.h"

ptime gigasecond::advance(ptime dt) {
  seconds gigasecond(1000000000);
  return dt + gigasecond;
}

