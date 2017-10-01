(in-package #:cl-user)
(defpackage #:phrase
  (:use #:cl)
  (:export #:word-count))
(in-package #:phrase)

(ql:quickload :cl-ppcre)

(defun word-count (sentence)
  (let* ((words      (cl-ppcre:split "\\W+" (string-downcase sentence)))
         (counts     ())
         (count-word (lambda (word)
                       (let* ((entry         (assoc word counts :test #'string=))
                              (current-count (or (cdr entry) 0)))
                         (if (= 0 current-count)
                           (push (cons word 1) counts)
                           (incf (cdr entry)))))))
    (mapc count-word words)
    counts))
