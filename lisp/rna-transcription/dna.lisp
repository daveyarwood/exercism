(in-package #:cl-user)
(defpackage #:dna
  (:use #:cl)
  (:export #:to-rna))
(in-package #:dna)

(defvar *dna-to-rna*
  (pairlis '(#\G #\C #\T #\A)   ; dna
           '(#\C #\G #\A #\U))) ; rna

(defun to-rna (str)
  "Transcribe a string representing DNA nucleotides to RNA."
  (map 'string
       #'(lambda (dna) (cdr (assoc dna *dna-to-rna*)))
       str))
