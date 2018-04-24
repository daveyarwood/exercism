#include "word_count.h"
#include <stdio.h> // for debugging
#include <stdlib.h>
#include <string.h>

// WIP. Man, programming in C is exhausting.

// Increments count of `word` in `words`, and returns the updated count of
// unique words.
int increment_count(word_count_word_t* words, int unique_words, char* word) {
  /* printf("looking for %s...\n", word); */

  word_count_word_t* current_word = words;

  for (int i = 0; i < unique_words; i++) {
    if (strcmp(current_word->text, word) == 0) {
      /* printf("found it!\n"); */
      current_word->count++;
      return unique_words;
    }
    current_word++;
  }

  /* printf("not found. adding it\n"); */

  // `word` not found, so add it onto the end.
  strcpy(current_word->text, word);
  current_word->count = 1;

  return unique_words + 1;
}

int word_count(const char *input_text, word_count_word_t * words) {
  int unique_words = 0;

  // Setup for using `strtok`. We make a copy of `input_text` because `strtok`
  // modifies it, replacing the delimiters with NULL.
  const char delimiters[] = " ,\n";
  char* input_copy = malloc(sizeof(input_text));
  strcpy(input_copy, input_text);

  // Count words.
  char* word = strtok(input_copy, delimiters);
  while (word) {
    unique_words = increment_count(words, unique_words, word);
    word = strtok(NULL, delimiters);
  }

  // Clear out any excess entries from running `word_count` consecutively using
  // the same `word_count_word_t` (which is what the tests do).
  //
  // FIXME: this isn't fixing the issue with the tests
  word_count_word_t* current_word = words;
  int i;
  for (i = 0; i < unique_words; i++) {
    current_word++;
  }
  for (; i < MAX_WORDS; i++) {
    strcpy(current_word->text, "");
    current_word->count = 0;
    current_word++;
  }

  return unique_words;
}
