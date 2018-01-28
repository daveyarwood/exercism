(define-module (hamming)
  #:export (hamming-distance))

(use-modules (srfi srfi-1))

(define (hamming-distance a b)
  (if (eqv? (string-length a) (string-length b))
    (fold (lambda (x y acc) (+ acc (if (eqv? x y) 0 1)))
          0
          (string->list a)
          (string->list b))
    (throw 'badargs)))
