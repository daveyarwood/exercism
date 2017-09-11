(define-module (bob)
  #:export (response-for))

(define (shouting? utterance)
  (and (string-any char-set:upper-case utterance)
       (not (string-any char-set:lower-case utterance))))

(define (question? utterance)
  (string-suffix? "?" utterance))

(define (silence? utterance)
  (string-every char-set:whitespace utterance))

(define (response-for utterance)
  (cond
    ((shouting? utterance) "Whoa, chill out!")
    ((question? utterance) "Sure.")
    ((silence? utterance)  "Fine. Be that way!")
    (else                  "Whatever.")))
