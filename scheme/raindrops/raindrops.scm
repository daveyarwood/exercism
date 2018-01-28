(define-module (raindrops)
  #:export (convert))

(define rules '((3 "Pling") (5 "Plang") (7 "Plong")))

(define (convert n)
  (let ((sounds (filter (lambda (sound) (not (unspecified? sound)))
                        (map (lambda (rule)
                               (let ((factor (car rule))
                                     (sound  (cadr rule)))
                                 (when (zero? (modulo n factor)) sound)))
                             rules))))
    (if (null? sounds)
      (number->string n)
      (string-join sounds ""))))

