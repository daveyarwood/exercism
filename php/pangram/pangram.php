<?php

function isPangram($sentence) {
  $lowercase_letters = str_split("abcdefghijklmnopqrstuvwxyz");
  foreach ($lowercase_letters as $letter) {
    if (strpos(strtolower($sentence), $letter) === false) {
      return false;
    }
  }

  return true;
}
