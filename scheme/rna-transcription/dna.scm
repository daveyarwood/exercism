(define-module (dna)
  #:export (to-rna))

(define (to-rna dna)
  (string-map (lambda (nucleotide)
                (cdr (assoc nucleotide '((#\G . #\C)
                                         (#\C . #\G)
                                         (#\T . #\A)
                                         (#\A . #\U)))))
              dna))

