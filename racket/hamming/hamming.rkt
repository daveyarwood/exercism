#lang racket

(define (hamming-distance a b)
  (unless (equal? (string-length a) (string-length b))
    (error "Strands must be the same length."))
  (for/sum ([x a] [y b])
    (if (equal? x y) 0 1)))

(provide hamming-distance)
