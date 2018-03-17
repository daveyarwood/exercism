<?php

// This would be an ideal way to solve this problem, but count_chars doesn't
// jive well with UTF-8.

function isIsogram($input) {
  foreach(count_chars(strtolower($input), 1) as $i => $count) {
    if ($count > 1 && !in_array(chr($i), array("-", " ")))
      return false;
  }

  return true;
}
