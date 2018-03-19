(defpackage #:school
  (:use #:common-lisp)
  (:export #:make-school #:add #:grade-roster #:grade #:sorted))

(in-package #:school)

;; A school is implemented simply as a grade roster, which is a hash table of
;; grade numbers to students in the grade.
(defun make-school ()
  (make-hash-table))

;; The tests want `grade-roster` to return a list of plists, so let's make
;; that happen.
(defun grade-roster (school)
  (loop for grade being each hash-key of school
        using (hash-value students)
        collect (list :grade grade :students students)))

(defun sorted (school)
  (sort (loop for grade being each hash-key of school
              using (hash-value students)
              collect (list :grade grade
                            :students (sort students #'string<)))
        #'<
        :key #'second))

(defun grade (school grade-number)
  (gethash grade-number school))

(defun add (school name grade-number)
  (push name (gethash grade-number school)))

