(in-package #:cl-user)
(defpackage #:bob
  (:use #:cl)
  (:export #:response-for))
(in-package #:bob)

(ql:quickload :cl-ppcre)

(defun shouting? (input)
  (and (cl-ppcre:scan "[A-Z]" input)
       (not (cl-ppcre:scan "[a-z]" input))))

(defun asking? (input)
  (cl-ppcre:scan "\\?$" input))

(defun silence? (input)
  (cl-ppcre:scan "^\\s*$" input))

(defun response-for (input)
  (cond
    ((shouting? input) "Whoa, chill out!")
    ((asking? input)   "Sure.")
    ((silence? input)  "Fine. Be that way!")
    (t                 "Whatever.")))
