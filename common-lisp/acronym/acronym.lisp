(in-package #:cl-user)
(defpackage #:acronym
  (:use #:common-lisp)
  (:export #:acronym))

(in-package #:acronym)

(defun separator? (c)
  (member c '(#\Space #\-)))

(defun words-in (phrase)
  (when (> (length phrase) 0)
    (loop for c across phrase
          for words = (list)
              then (if (separator? c)
                     (append words (list word))
                     words)
          for word = (subseq phrase 0 1)
              then (if (separator? c)
                     ""
                     (concatenate 'string word (string c)))
          finally (return (append words (list word))))))

(defun acronym (phrase)
  (map 'string #'(lambda (word) (char-upcase (char word 0)))
       (words-in phrase)))

