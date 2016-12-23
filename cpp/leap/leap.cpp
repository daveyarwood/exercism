#include "leap.h"

bool divisible_by(int n, int year) {
  return year % n == 0;
}

bool leap::is_leap_year(int year) {
  return divisible_by(400, year) ||
         (divisible_by(4, year) && !divisible_by(100, year));
};
