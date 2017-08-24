#include "hamming.h"
#include <iostream>

using namespace std;

int hamming::compute(string const& a, string const& b) {
  int distance = 0;

  if (a.length() != b.length())
    throw domain_error("Strands must be the same length.");

  for (int i = 0; i < a.length(); i++) {
    if (a[i] != b[i]) distance++;
  }

  return distance;
}
