#include "isogram.h"

int isIsogram(char* str) {
  // A mapping of character codes to a bit indicating whether or not that letter
  // has been used yet.
  //
  // 'z' == 122, so that number is the highest index we need.
  int usedLetters[123] = { 0 };

  for (char* c = str; *c; c++) {
    int charCode;
    // If uppercase, convert to lowercase by adding 32.
    if ((int)'A' <= *c && *c <= (int)'Z')
      charCode = *c + 32;
    // If lowercase, we're ready to check if it's been used.
    else if ((int)'a' <= *c && *c <= (int)'z')
      charCode = *c;
    // If any other character (e.g. '-'), skip it.
    else
      continue;

    if (usedLetters[charCode])
      return 0;
    else
      usedLetters[charCode] = 1;
  }

  return 1;
}
