#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* abbreviate(const char* phrase) {
  if (phrase == NULL || strlen(phrase) == 0) return NULL;

  char* acronym = (char*)malloc(sizeof(char) * strlen(phrase));
  int currentIndex = -1;
  int skipping = 0;

  for (unsigned int i = 0; i < strlen(phrase); i++) {
    char c = phrase[i];

    if (skipping && (c == ' ' || c == '-')) {
      skipping = 0;
    } else if (!skipping && isalpha(c)) {
      *(acronym + ++currentIndex) = toupper(c);
      skipping = 1;
    }
  }

  *(acronym + ++currentIndex) = '\0';

  printf("%s\n", acronym);
  return acronym;
}

