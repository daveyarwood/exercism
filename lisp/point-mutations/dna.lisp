(defpackage #:dna
  (:use #:cl)
  (:export #:hamming-distance))
(in-package #:dna)

(defun hamming-distance (dna1 dna2)
  "Determine number of mutations between DNA strands by computing the Hamming Distance."
  (when (eql (length dna1) (length dna2))
    (let ((pairs (mapcar #'list (coerce dna1 'list) (coerce dna2 'list))))
      (reduce #'(lambda (distance pair)
                  (if (apply #'equal pair)
                    distance
                    (1+ distance)))
              pairs
              :initial-value 0))))
