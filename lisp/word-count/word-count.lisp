(in-package #:cl-user)
(defpackage #:phrase
  (:use #:cl)
  (:export #:word-count))
(in-package #:phrase)

(ql:quickload :cl-ppcre)

(defun word-count (sentence)
  (let ((words      (cl-ppcre:split "\\W+" (string-downcase sentence)))
        (count-word (lambda (counts word)
                      (let* ((entry         (assoc word counts :test #'string=))
                             (current-count (or (cdr entry) 0)))
                        (if (= 0 current-count)
                          (acons word 1 counts)
                          (progn
                            (incf (cdr entry))
                            counts))))))
    (reduce count-word words :initial-value ())))
