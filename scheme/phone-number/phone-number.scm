(define-module (phone-number)
  #:export (numbers area-code pprint)
  #:autoload (ice-9 format) (format)
  #:autoload (ice-9 regex) (regexp-substitute/global))

(define (numbers number-string)
  (let ((digits (regexp-substitute/global
                  #f "[^0-9]" number-string 'pre "" 'post))
        (error-value "0000000000"))
    (cond
      ((< (string-length digits) 10) error-value)
      ((= (string-length digits) 10) digits)
      ((> (string-length digits) 11) error-value)
      ((not (char=? #\1 (string-ref digits 0))) error-value)
      (else (substring digits 1)))))

(define (area-code number-string)
  (substring (numbers number-string) 0 3))

(define (exchange-code number-string)
  (substring (numbers number-string) 3 6))

(define (subscriber-number number-string)
  (substring (numbers number-string) 6))

(define (pprint number-string)
  (format #f
          "(~a) ~a-~a"
          (area-code number-string)
          (exchange-code number-string)
          (subscriber-number number-string)))

