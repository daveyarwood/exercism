#include "hamming.h"
#include <iostream>

using namespace std;

int hamming::compute(string const& a, string const& b) {
  if (a.length() != b.length())
    throw domain_error("Strands must be the same length.");

  int distance = 0;

  for (int i = 0; i < a.length(); i++) {
    if (a[i] != b[i]) distance++;
  }

  return distance;
}
