#lang racket

(provide perfect-numbers)

(require math srfi/1)

(define (drop-last coll)
  (if (= 0 (length coll))
    '()
    (drop-right coll 1)))

(define (perfect? n)
  (let* ([factors (drop-last (divisors n))]
         [sum-of-factors (apply + factors)])
    (= n sum-of-factors)))

;; Returns the list of perfect numbers from 1 up to (but not including) `limit`.
(define (perfect-numbers limit)
  (for/list ([n (in-range 1 (add1 limit))]
             #:when (perfect? n))
    n))
