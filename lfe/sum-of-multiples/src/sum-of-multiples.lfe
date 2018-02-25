(defmodule sum-of-multiples
  (export (sum-of-multiples 2)))

(defun any-divides? (n factors)
  (lists:any (lambda (factor) (== 0 (rem n factor))) factors))

(defun sum-of-multiples (factors limit)
  (lists:foldl (lambda (n acc) (+ acc (if (any-divides? n factors) n 0)))
               0
               (lists:seq 1 (- limit 1))))

