#include "anagram.h"
#include <boost/algorithm/string/case_conv.hpp>

using namespace std;

// Returns a sorted, lowercase version of a string `s`. If the results of
// calling this function on two words are the same, then they are anagrams.
string letter_set(string s) {
  string scopy = boost::to_lower_copy(s);
  sort(scopy.begin(), scopy.end());
  return scopy;
}

namespace anagram {
  anagram::anagram(string word) {
    _word = word;
  }

  vector<string> anagram::matches(vector<string> candidates) {
    vector<string> result;

    for (string candidate : candidates) {
      if (candidate != _word &&
          letter_set(candidate) == letter_set(_word))
        result.push_back(candidate);
    }

    return result;
  }
}

