(defmodule rna-transcription
  (export (to-rna 1)))

(defun to-rna (dna)
  (lists:map (lambda (x)
               (case x
                 (#\G #\C)
                 (#\C #\G)
                 (#\T #\A)
                 (#\A #\U)))
             dna))

