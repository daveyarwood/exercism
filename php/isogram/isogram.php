<?php

// Stolen from http://php.net/manual/en/function.mb-split.php because I can't be
// bothered to write a function that a decent language would provide in its
// standard library.
function str_split_utf8($input) {
  $strlen = mb_strlen($input);

  while ($strlen) {
    $array[] = mb_substr($input, 0, 1, "UTF-8");
    $input = mb_substr($input, 1, $strlen, "UTF-8");
    $strlen = mb_strlen($input);
  }

  return $array;
}

function isIsogram($input) {
  $used = array();

  foreach (str_split_utf8(strtolower($input)) as $character) {
    if (in_array($character, array("-", " ")))
      continue;

    if (array_key_exists($character, $used))
      return false;

    $used[$character] = true;
  }

  return true;
}
