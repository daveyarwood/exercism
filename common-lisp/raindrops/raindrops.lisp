(defpackage #:raindrops
  (:use #:common-lisp)
  (:export #:convert))

(in-package #:raindrops)

(defparameter *rules*
  '((3 "Pling")
    (5 "Plang")
    (7 "Plong")))

(defun convert (n)
  (let ((sounds (mapcar #'(lambda (rule)
                            (destructuring-bind (factor sound) rule
                              (when (zerop (mod n factor))
                                sound)))
                        *rules*)))
    (if (some #'identity sounds)
      (apply #'concatenate 'string sounds)
      (write-to-string n))))

