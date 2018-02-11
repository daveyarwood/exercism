(define-module (dna)
  #:export (to-rna))

(define (to-rna dna)
  (let ((dna-to-rna '((#\G . #\C)
                      (#\C . #\G)
                      (#\T . #\A)
                      (#\A . #\U))))
    (apply string
           (map (lambda (nucleotide)
                  (cdr (assoc nucleotide dna-to-rna)))
                (string->list dna)))))

