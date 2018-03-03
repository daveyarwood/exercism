(define-module (robot)
  #:export (build-robot
            robot-name
            reset-name)
  #:autoload (srfi srfi-1) (iota))

(define name-registry
  (make-hash-table))

(define (random-choice coll)
  (list-ref coll (random (length coll))))

(define (random-letter)
  (random-choice (string->list "ABCDEFGHIJKLMNOPQRSTUVWXYZ")))

(define (random-digit)
  (random-choice (string->list "0123456789")))

(define (generate-name)
  (let ((name (symbol (random-letter) (random-letter)
                      (random-digit)  (random-digit)  (random-digit))))
    (if (hashq-ref name-registry name)
      (generate-name)
      (begin
        (hashq-set! name-registry name #t)
        name))))

(define (build-robot)
  (let ((robot (make-hash-table)))
    (hashq-set! robot 'name (generate-name))
    robot))

(define (robot-name robot)
  (symbol->string (hashq-ref robot 'name)))

(define (reset-name robot)
  (hashq-set! robot 'name (generate-name)))
