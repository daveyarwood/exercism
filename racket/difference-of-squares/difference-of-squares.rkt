#lang racket

(provide sum-of-squares square-of-sums difference)

(define (sum-of-squares n)
  (for/sum ([n (in-range 1 (add1 n))])
    (* n n)))

(define (square-of-sums n)
  (let ([sum (apply + (range (add1 n)))])
    (* sum sum)))

(define (difference n)
  (- (square-of-sums n) (sum-of-squares n)))
