#include "bob.h"
#include <regex>

using std::regex;

const char* bob::hey(const char* utterance) {
  if (regex_search(utterance, regex("[A-Z]")) &&
      !regex_search(utterance, regex("[a-z]"))) {
    return "Whoa, chill out!";
  } else if (regex_match(utterance, regex(".*\\?\\s*"))) {
    return "Sure.";
  } else if (regex_match(utterance, regex("\\s*"))) {
    return "Fine. Be that way!";
  } else {
    return "Whatever.";
  }
};
