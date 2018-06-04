(in-package #:cl-user)
(defpackage #:phone
  (:use #:common-lisp)
  (:export #:numbers #:area-code #:pretty-print))

(in-package #:phone)

(defun numbers (phone-number)
  (let ((digits      (remove-if-not #'digit-char-p phone-number))
        (error-value "0000000000"))
    (cond
      ((< (length digits) 10)            error-value)
      ((= (length digits) 10)            digits)
      ((> (length digits) 11)            error-value)
      ((not (char= #\1 (char digits 0))) error-value)
      (t                                 (subseq digits 1)))))

(defun area-code (phone-number)
  (subseq (numbers phone-number) 0 3))

(defun exchange-code (phone-number)
  (subseq (numbers phone-number) 3 6))

(defun subscriber-number (phone-number)
  (subseq (numbers phone-number) 6))

(defun pretty-print (phone-number)
  (format nil "(~a) ~a-~a"
          (area-code phone-number)
          (exchange-code phone-number)
          (subscriber-number phone-number)))

