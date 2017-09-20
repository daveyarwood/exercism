#lang racket

(provide response-for)

(define (shouting? utterance)
  (and (regexp-match #rx"[A-Z]" utterance)
       (not (regexp-match #rx"[a-z]" utterance))))

(define (question? utterance)
  (string-suffix? utterance "?"))

(define (silence? utterance)
  ;; using \\s instead of a space causes the test to fail for some reason...
  ;; weird.
  (regexp-match #rx"^ *$" utterance))

(define (response-for utterance)
  (cond
    [(shouting? utterance) "Whoa, chill out!"]
    [(question? utterance) "Sure."]
    [(silence? utterance)  "Fine. Be that way!"]
    [else                  "Whatever."]))
