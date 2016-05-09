#include "word_count.h"

using std::map;
using std::string;

const map<string, int> word_count::words(const char*) {
  map<string, int> freqs;
  return freqs;
}

/*
 * NOTE: I'm blocked by a bug between Boost 1.59+ and require_equal_containers.h
 * (exercism's custom header to do things like print maps).
 *
 * Can't compile until this is sorted out, not enough of a C++ wizard myself to
 * figure it out and contribute a fix.
 *
 * https://github.com/exercism/xcpp/issues/61
 *
 * */
