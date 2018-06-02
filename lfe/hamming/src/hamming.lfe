(defmodule hamming
  (export (distance 2)))

(defun distance (a b)
  (lists:sum (lists:zipwith (lambda (x y) (if (== x y) 0 1)) a b)))
