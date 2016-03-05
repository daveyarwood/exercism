<?php

function tally_distance($count, $pair) {
  if ($pair[0] != $pair[1]) {
    return $count + 1;
  } else {
    return $count;
  }
}

function distance($a, $b) {
  if (strlen($a) != strlen($b)) {
    throw new InvalidArgumentException("DNA strands must be of equal length.");
  }
  $zipped = array_map(NULL, str_split($a), str_split($b));
  return array_reduce($zipped, "tally_distance", 0);
}

