(in-package #:cl-user)
(defpackage #:gigasecond
  (:use #:cl)
  (:export #:from))
(in-package #:gigasecond)

(defun from (year month day hour minute second)
  (let* ((seconds    (encode-universal-time second minute hour day month year 0))
         (gigasecond (multiple-value-list
                       (decode-universal-time (+ seconds 1000000000) 0))))
    (reverse (subseq gigasecond 0 6))))
