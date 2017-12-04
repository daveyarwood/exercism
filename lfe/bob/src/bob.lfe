(defmodule bob
  (export (response-for 1)))

(defun shouting? (utterance)
  (and (!= 'nomatch (re:run utterance "\\p{Lu}"))
       (== 'nomatch (re:run utterance "\\p{Ll}"))))

(defun question? (utterance)
  (!= 'nomatch (re:run utterance "\\?$")))

(defun silence? (utterance)
  (!= 'nomatch (re:run utterance "^\\s*$")))

(defun response-for (utterance)
  (cond
    ((shouting? utterance) "Whoa, chill out!")
    ((question? utterance) "Sure.")
    ((silence? utterance)  "Fine. Be that way!")
    ('true                 "Whatever.")))


