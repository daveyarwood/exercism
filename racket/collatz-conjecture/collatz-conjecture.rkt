#lang racket

(provide collatz)

(define (collatz n)
  (cond
    [(<= n 0) (error "Unexpected number <= 0.")]
    [(= n 1)  0]
    [else     (add1 (collatz (if (even? n)
                              (/ n 2)
                              (add1 (* 3 n)))))]))

