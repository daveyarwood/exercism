;;; difference-of-squares.el --- Difference of Squares (exercism)

;;; Commentary:

;;; Code:

(defun sum-of-squares (n)
  (let ((squares (map 'list (lambda (n) (* n n)) (number-sequence 1 n))))
    (apply '+ squares)))

(defun square-of-sums (n)
  (let ((sum (apply '+ (number-sequence 1 n))))
    (* sum sum)))

(defun difference (n)
  (- (square-of-sums n) (sum-of-squares n)))

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here
