#include "isogram.h"

int isIsogram(char* str) {
  // A mapping of character codes to a bit indicating whether or not that letter
  // has been used yet.
  //
  // 'z' == 122, so that number is the highest index we need.
  int usedLetters[123] = { 0 };

  for (char* c = str; *c; c++) {
    int charCode;
    if ('A' <= *c && *c <= 'Z')
      // convert to lowercase
      charCode = *c + 32;
    else if ('a' <= *c && *c <= 'z')
      charCode = *c;
    else
      // character is not a letter, so skip it
      continue;

    if (usedLetters[charCode])
      return 0;
    else
      usedLetters[charCode] = 1;
  }

  return 1;
}
