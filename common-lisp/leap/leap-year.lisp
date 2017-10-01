(defpackage #:leap
  (:use #:common-lisp)
  (:export #:leap-year-p))
(in-package #:leap)

(defun div-by-p (n year)
  (zerop (rem year n)))

(defun leap-year-p (year)
  (or (div-by-p 400 year)
      (and (div-by-p 4 year)
           (not (div-by-p 100 year)))))
