(require 'cl)

(defun sort-string (str)
  (cl-sort (copy-seq str) #'<))

(defun anagram? (word1 word2)
  (and (not (equal word1 word2))
       (equal (sort-string (downcase word1)) (sort-string (downcase word2)))))

(defun anagrams-for (word candidates)
  (remove-if-not (apply-partially #'anagram? word) candidates))

(provide 'anagram)
