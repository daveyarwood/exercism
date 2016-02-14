#lang racket

(define (square n)
  (if (= n 1)
    1
    (* 2 (square (sub1 n)))))

(define (total)
  (for/sum ([n (in-range 1 65)]) (square n)))

(provide square total)
