<?php

function shouting($utterance) {
  return preg_match("/[A-Z]/", $utterance) === 1 &&
         !(preg_match("/[a-z]/", $utterance) === 1);
}

function asking($utterance) {
  return preg_match("/\?\s*$/", $utterance) === 1;
}

function notSayingAnything($utterance) {
  return preg_match("#^\s*$#i", $utterance) === 1;
}

class Bob {
  public function respondTo($utterance) {
    if (shouting($utterance)) {
      return "Whoa, chill out!";
    } else if (asking($utterance)) {
      return "Sure.";
    } else if (notSayingAnything($utterance)) {
      return "Fine. Be that way!";
    } else {
      return "Whatever.";
    }
  }
}
