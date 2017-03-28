#include "word_count.h"
#include <iterator>
#include <regex>
#include <sstream>
#include <string>

using namespace std;

string toLower(string str) {
  locale loc;
  ostringstream result;

  for (char c : str) {
    result << tolower(c, loc);
  }

  return result.str();
}

const map<string, int> word_count::words(const char* input) {
  map<string, int> freqs;

  string sinput = toLower(input);

  regex word_regex = regex("\\w+('\\w+)?");

  auto words_begin = sregex_iterator(sinput.begin(), sinput.end(), word_regex);
  auto words_end = sregex_iterator();

  for (sregex_iterator i = words_begin; i != words_end; i++) {
    string word = (*i).str();
    int word_freq = freqs[word] || 0;
    freqs[word]++;
  }

  return freqs;
}

