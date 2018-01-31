(defmodule sum-of-multiples
  (export (sum-of-multiples 2)))

(defun sum-of-multiples (factors limit)
 (let* ((multiple? (lambda (n)
                     (lists:any (lambda (factor) (== 0 (rem n factor)))
                                factors)))
        (multiples (lists:filter multiple? (lists:seq 1 (- limit 1)))))
   (lists:sum multiples)))

