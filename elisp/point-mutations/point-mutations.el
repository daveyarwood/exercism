;;; point-mutations.el --- Point Mutations (exercism)

;;; Commentary:

;;; Code:

(require 'cl)

(defun hamming-distance (a b)
  (if (equal (length a) (length b))
    (apply '+ (mapcar* (lambda (x y)
                         (if (equal x y) 0 1))
                       (string-to-list a)
                       (string-to-list b)))
    (error "Strings not the same length.")))

(provide 'point-mutations)
;;; point-mutations.el ends here
