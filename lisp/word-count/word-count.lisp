(in-package #:cl-user)
(defpackage #:phrase
  (:use #:cl)
  (:export #:word-count))
(in-package #:phrase)

(ql:quickload :cl-ppcre)

;; This isn't working... running into this:
;;
;; COUNT-ONE-WORD: 1 assertions passed, 0 failed.
;;
;; COUNT-ONE-OF-EACH: 1 assertions passed, 0 failed.
;;
;;  | Execution error:
;;  | The value "fish" is not of type LIST.
;;  |
;; COUNT-MULTIPLE-OCCURRENCES: 0 assertions passed, 0 failed, and an execution error.
;;
;; IGNORE-PUNCTUATION: 1 assertions passed, 0 failed.
;;
;;  | Execution error:
;;  | The value 2 is not of type LIST.
;;  |
;; INCLUDE-NUMBERS: 0 assertions passed, 0 failed, and an execution error.
;;
;;  | Execution error:
;;  | The value "go" is not of type LIST.
;;  |
;;
;; I suspect it's something to do with how I'm replacing elements in the list to
;; update the counts.
;;
;; Any help is appreciated!

(defun word-count (sentence)
  (let ((words      (cl-ppcre:split "\\W+" (string-downcase sentence)))
        (count-word (lambda (counts word)
                      (let* ((entry         (assoc word counts :test #'string=))
                             (current-count (or (cdr entry) 0))
                             (new-count     (1+ current-count)))
                        (if (= 1 new-count)
                          (acons word new-count counts)
                          (rplacd entry new-count))))))
    (reduce count-word words :initial-value ())))
