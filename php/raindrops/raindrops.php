<?php

function raindrops($n) {
  $rules = [
    ["3", "Pling"],
    ["5", "Plang"],
    ["7", "Plong"],
  ];

  $makeSound = function($rule) use ($n) {
    list($factor, $sound) = $rule;
    return $n % $factor == 0 ? $sound : "";
  };

  $sounds = implode(array_map($makeSound, $rules));
  return empty($sounds) ? "$n" : $sounds;
}

