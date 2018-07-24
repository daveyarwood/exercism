(define-module (two-fer)
  #:use-module (ice-9 format)
  #:export (two-fer))

(define* (two-fer #:optional (recipient "you"))
  (format #f "One for ~a, one for me." recipient))
