<?php

function from($mutable_datetime) {
  $datetime = DateTimeImmutable::createFromMutable($mutable_datetime);
  $gigasecond = new DateInterval('PT1000000000S');
  return $datetime->add($gigasecond);
}
