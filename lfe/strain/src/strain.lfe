(defmodule strain
  (export (keep 2) (discard 2)))

(defun keep
  ((pred ()) ())
  ((pred (cons x more))
   (if (funcall pred x)
     (cons x (funcall #'keep/2 pred more))
     (funcall #'keep/2 pred more))))

(defun discard (pred coll)
  (funcall #'keep/2 (lambda (x) (not (funcall pred x))) coll))
