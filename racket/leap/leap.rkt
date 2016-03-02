#lang racket

(define (div-by? n year)
  (zero? (modulo year n)))

(define (leap-year? year)
  (or (div-by? 400 year)
      (and (div-by? 4 year)
           (not (div-by? 100 year)))))

(provide leap-year?)
