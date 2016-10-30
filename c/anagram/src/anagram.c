#include "anagram.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void sort_string(char* in, char* out){
  unsigned int frequencies[256] = {0};
  int c, i;

  // count frequencies of characters in input string
  for (c = 0; c < (int)strlen(in); c++) {
    frequencies[(unsigned char)in[c]]++;
  }

  // populate output string
  for (c = 0, i = 0; c < 256; c++) {
    if (frequencies[c] != 0){
      while(frequencies[c] > 0){
        out[i++] = c;
          frequencies[c]--;
        }
    }
  }

  out[i] = '\0';
}

int is_anagram(char* word1, char* word2) {
  char sorted1[MAX_STR_LEN], sorted2[MAX_STR_LEN];
  sort_string(word1, sorted1);
  sort_string(word2, sorted2);
  return strcmp(sorted1, sorted2) == 0;
}

struct Vector anagrams_for(char* word, struct Vector options) {
  struct Vector anagrams = { malloc(MAX_STR_LEN * sizeof(char*)), 0 };

  for (int i = 0; i < options.size; i++) {
    char* option = options.vec[i];
    if (is_anagram(word, option)) {
      /* printf("match: %s\n", option); */
      strcpy(anagrams.vec[anagrams.size], option);
      anagrams.size++;
    }
  }

   return anagrams;
}
