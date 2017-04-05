#include "word_count.h"
#include <iterator>
#include <regex>
#include <sstream>
#include <string>

using namespace std;

const map<string, int> word_count::words(const char* input) {
  map<string, int> freqs;

  // cast char* to string
  string sinput = input;
  // toLower the string
  std::transform(sinput.begin(), sinput.end(), sinput.begin(), ::tolower);

  regex word_regex = regex("\\w+('\\w+)?");

  auto words_begin = sregex_iterator(sinput.begin(), sinput.end(), word_regex);
  auto words_end = sregex_iterator();

  for (sregex_iterator i = words_begin; i != words_end; i++) {
    string word = (*i).str();
    freqs[word]++;
  }

  return freqs;
}

