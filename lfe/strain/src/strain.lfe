(defmodule strain
  (export (keep 2) (discard 2)))

(defun keep
  ((pred ()) ())
  ((pred (cons x more))
   (if (funcall pred x)
     (cons x (keep pred more))
     (keep pred more))))

(defun discard (pred coll)
  (keep (lambda (x) (not (funcall pred x))) coll))
