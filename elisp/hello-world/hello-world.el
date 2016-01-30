;;; hello-world.el --- Hello World Exercise (exercism)

;;; Commentary:

;;; Code:
(defun hello (&optional name)
  (let ((name (or name "World")))
    (concat "Hello, " name "!")))

(provide 'hello-world)
;;; hello-world.el ends here
