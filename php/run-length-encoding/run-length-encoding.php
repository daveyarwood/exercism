<?php

function encode($input)
{
  $result = '';

  $new_chunk = function($char) {
    return array(1, $char);
  };

  $encode_chunk = function($chunk) {
    list($number, $char) = $chunk;
    return ($number == 1 ? '' : $number) . $char;
  };

  foreach(str_split($input) as $char) {
    if (!isset($chunk)) {
      // If $chunk isn't set yet, we're on the first character of the string.
      $chunk = $new_chunk($char);
    } else if ($char == $chunk[1]) {
      // Increment the character count for the current chunk.
      $chunk[0]++;
    } else {
      // Flush the current chunk into $result.
      $result .= $encode_chunk($chunk);
      $chunk = $new_chunk($char);
    }
  }

  // Flush the final chunk into $result.
  $result .= $encode_chunk($chunk);

  return $result;
}

function decode($input)
{
  if ($input == '') return '';

  $result = '';

  preg_match_all("/(\d*)([A-Za-z ])/", $input, $matches);
  list($numbers, $chars) = [$matches[1], $matches[2]];

  foreach(range(0, count($chars) - 1) as $i) {
    $count = $numbers[$i] == null ? 1 : (int)$numbers[$i];
    $result .= str_repeat($chars[$i], $count);
  }

  return $result;
}

