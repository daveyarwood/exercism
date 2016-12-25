<?php

function isPangram($sentence) {
  foreach (range('a', 'z') as $letter) {
    if (strpos(strtolower($sentence), $letter) === false) {
      return false;
    }
  }
  return true;
}
