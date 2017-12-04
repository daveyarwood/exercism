(defmodule bob
  (export (response-for 1)))

(defun match? (str regex)
  (!= 'nomatch (re:run str regex)))

(defun shouting? (utterance)
  (and (match? utterance "\\p{Lu}")
       (not (match? utterance "\\p{Ll}"))))

(defun question? (utterance)
  (match? utterance "\\?$"))

(defun silence? (utterance)
  (match? utterance "^\\s*$"))

(defun response-for (utterance)
  (cond
    ((shouting? utterance) "Whoa, chill out!")
    ((question? utterance) "Sure.")
    ((silence? utterance)  "Fine. Be that way!")
    (else                  "Whatever.")))

