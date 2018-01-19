#include "acronym.h"
#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* abbreviate(const char* phrase) {
  if (phrase == NULL || strlen(phrase) == 0) return NULL;

  char* acronym = malloc(sizeof(phrase));
  int i = -1; // index into the acronym string we're building

  // Setup for using `strtok`. We make a copy of `phrase` because `strtok`
  // modifies it, replacing the delimiters with NULL.
  const char delimiters[] = " -";
  char* phraseCopy = malloc(sizeof(phrase));
  strcpy(phraseCopy, phrase);

  char* token = strtok(phraseCopy, delimiters);
  while (token && isalpha(token[0])) {
    acronym[++i] = toupper(token[0]);
    token = strtok(NULL, delimiters);
  }

  acronym[++i] = '\0';

  return acronym;
}

