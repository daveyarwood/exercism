(defmodule leap
  (export (leap-year 1)))

(defun div-by (year n)
  (== 0 (rem year n)))

(defun leap-year (year)
  (or (div-by year 400)
      (and (div-by year 4)
           (not (div-by year 100)))))
