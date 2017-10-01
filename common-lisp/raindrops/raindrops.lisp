(defpackage #:raindrops
  (:use #:common-lisp)
  (:export #:convert))

(in-package #:raindrops)

(defparameter *rules*
  '((3 "Pling")
    (5 "Plang")
    (7 "Plong")))

(defun convert (n)
  (let ((sounds (apply #'concatenate
                       'string
                       (mapcar #'(lambda (rule)
                                   (destructuring-bind (factor sound) rule
                                     (when (zerop (mod n factor))
                                       sound)))
                               *rules*))))
    (if (zerop (length sounds))
      (write-to-string n)
      sounds)))

