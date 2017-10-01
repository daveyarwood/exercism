(defpackage #:hamming
  (:use #:cl)
  (:export #:distance))

(in-package #:hamming)

(defun distance (dna1 dna2)
  "Number of positional differences in two equal length dna strands."
  (when (= (length dna1) (length dna2))
    (count-if-not #'(lambda (pair) (apply #'char= pair))
                  (map 'list #'list dna1 dna2))))

