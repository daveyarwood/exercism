(defmodule sum-of-multiples
  (export (sum-of-multiples 2)))

(defun sum-of-multiples (factors limit)
 (flet ((multiple? (n)
          (lists:any (lambda (factor) (== 0 (rem n factor)))
                     factors)))
   (lists:foldl (lambda (n acc) (+ acc (if (multiple? n) n 0)))
                0
                (lists:seq 1 (- limit 1)))))

