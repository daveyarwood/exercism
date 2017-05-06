(define-module (grains)
  #:export (square total)
  #:autoload (srfi srfi-42) (sum-ec))

(define (square n)
  (if (= n 1)
    1
    (* 2 (square (1- n)))))

(define (total)
  (sum-ec (:range n 64) (square (1+ n))))

