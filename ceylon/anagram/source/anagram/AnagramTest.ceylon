import ceylon.test { ... }

// Tests adapted from problem-specifications version 1.1.0
{[String, {String*}, {String*}]*} cases => {
  // no matches
  ["diaper", {"hello", "world", "zombies", "pants"}, {}],
  // detects simple anagram
  ["ant", {"tan", "stand", "at"}, {"tan"}],
  // does not detect false positives
  ["galea", {"eagle"}, {}],
  // detects two anagrams
  ["master", {"stream", "pigeon", "maters"}, {"stream", "maters"}],
  // does not detect anagram subsets
  ["good", {"dog", "goody"}, {}],
  // detects anagram
  ["listen", {"enlists", "google", "inlets", "banana"}, {"inlets"}],
  // detects three anagrams
  [
    "allergy",
    {"gallery", "ballerina", "regally", "clergy", "largely", "leading"},
    {"gallery", "regally", "largely"}
  ],
  // does not detect identical words
  ["corn", {"corn", "dark", "Corn", "rank", "CORN", "cron", "park"}, {"cron"}],
  // does not detect non-anagrams with identical checksum
  ["mass", {"last"}, {}],
  // detects anagrams case-insensitively
  ["Orchestra", {"cashregister", "Carthorse", "radishes"}, {"Carthorse"}],
  // detects anagrams using case-insensitive subject
  ["Orchestra", {"cashregister", "carthorse", "radishes"}, {"carthorse"}],
  // detects anagrams using case-insensitive possible matches
  ["orchestra", {"cashregister", "Carthorse", "radishes"}, {"Carthorse"}],
  // does not detect a word as its own anagram
  ["banana", {"Banana"}, {}],
  // does not detect a anagram if the original word is repeated
  ["go", {"go Go GO"}, {}],
  // anagrams must use all letters exactly once
  ["tapper", {"patter"}, {}],
  // capital word is not own anagram
  ["BANANA", {"Banana"}, {}]
};

test
parameters(`value cases`)
void testAnagram(String subject, {String*} candidates, {String*} expected) {
  assertEquals(sort(anagrams(subject, candidates)), sort(expected));
}
