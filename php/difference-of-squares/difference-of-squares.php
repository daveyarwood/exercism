<?php

function addSquare($sum, $x) {
  return $sum + $x ** 2;
}

function sumOfSquares($n)
{
  return array_reduce(range(1, $n), "addSquare", 0);
}

function squareOfSums($n)
{
  return array_sum(range(1, $n)) ** 2;
}

function difference($n)
{
  return squareOfSums($n) - sumOfSquares($n);
}

