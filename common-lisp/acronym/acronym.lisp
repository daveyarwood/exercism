(in-package #:cl-user)
(defpackage #:acronym
  (:use #:common-lisp)
  (:export #:acronym))

(in-package #:acronym)

(ql:quickload :cl-ppcre)

(defun acronym (phrase)
  (let* ((words (cl-ppcre:split "[- ]" phrase))
         (initials (mapcar #'(lambda (word) (char-upcase (char word 0)))
                           words)))
    (coerce initials 'string)))
