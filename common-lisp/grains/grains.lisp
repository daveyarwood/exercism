(in-package #:cl-user)
(defpackage #:grains
  (:use #:cl)
  (:export :square :total))
(in-package #:grains)

(defun square (n)
  (if (= n 1)
    1
    (* 2 (square (1- n)))))

(defun total ()
  (loop for n
        from 1 to 64
        sum (square n)))
