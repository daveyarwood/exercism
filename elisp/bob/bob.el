;;; bob.el --- Bob exercise (exercism)

(provide 'bob)

(defun string-contains-upper-p (string)
  "Return non-nil if STRING contains any uppercase letters."
  (save-match-data
    (let ((case-fold-search nil))
            (string-match "[[:upper:]]" string))))

(defun string-contains-lower-p (string)
  "Return non-nil if STRING contains any lowercase letters."
  (save-match-data
    (let ((case-fold-search nil))
      (string-match "[[:lower:]]" string))))

(defun string-ends-with-question-mark-p (string)
  "Return non-nil if STRING ends with a question mark."
  (save-match-data (string-match "\\?$" string)))

(defun string-is-empty-or-whitespace-p (string)
  "Return non-nil if STRING is empty or only contains whitespace."
  (save-match-data (string-match "^[[:space:]]*$" string)))

(defun response-for (utterance)
  (cond
   ((and (string-contains-upper-p utterance)
         (not (string-contains-lower-p utterance)))
    "Whoa, chill out!")
   ((string-ends-with-question-mark-p utterance) "Sure.")
   ((string-is-empty-or-whitespace-p utterance) "Fine. Be that way!")
   (t "Whatever.")))
