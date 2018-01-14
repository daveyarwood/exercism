#lang racket

(define (hamming-distance a b)
  (if (= (string-length a) (string-length b))
    (count (negate char=?) (string->list a) (string->list b))
    (error "Strands must be the same length.")))

(provide hamming-distance)
