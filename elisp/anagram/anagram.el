(require 'cl)

(defun anagram? (word1 word2)
  (and (not (equal word1 word2))
       (equal (cl-sort (downcase word1) #'<)
              (cl-sort (downcase word2) #'<))))

(defun anagrams-for (word candidates)
  (remove-if-not (apply-partially #'anagram? word) candidates))

(provide 'anagram)
