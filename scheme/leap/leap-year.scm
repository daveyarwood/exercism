(define-module (leap-year)
  #:export (leap-year?))

(define (divisible-by? n year)
  (= 0 (remainder year n)))

(define (leap-year? year)
  (or (divisible-by? 400 year)
      (and (divisible-by? 4 year)
           (not (divisible-by? 100 year)))))
