(in-package #:cl-user)
(defpackage #:acronym
  (:use #:common-lisp)
  (:export #:acronym))

(in-package #:acronym)

(ql:quickload :cl-ppcre)

(defun acronym (phrase)
  (map 'string #'(lambda (word) (char-upcase (char word 0)))
       (cl-ppcre:split "[- ]" phrase)))
