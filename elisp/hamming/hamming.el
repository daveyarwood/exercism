;;; hamming.el --- Hamming (exercism)

;;; Commentary:

;;; Code:

(require 'cl)

(defun hamming-distance (a b)
  (if (/= (length a) (length b))
      (error "Strands must be the same length."))
  (seq-count 'identity
             (mapcar* (lambda (char-a char-b) (/= char-a char-b))
                      a b)))

(provide 'hamming)
;;; hamming.el ends here
