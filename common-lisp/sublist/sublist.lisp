(defpackage #:sublist
  (:use #:common-lisp)
  (:export #:sublist))

(in-package #:sublist)

(defun sublists (lst size)
  "Returns all sublists of `lst` of size `size`."
  (loop for i from 0 to (- (list-length lst) size)
        collect (subseq lst i (+ i size))))

(defun sublist? (list1 list2)
  "Returns true if `list1` is a sublist of `list2`."
  (some (lambda (sublist) (equal list1 sublist))
        (sublists list2 (list-length list1))))

(defun sublist (list1 list2)
  "Classifies the relationship between `list1` and `list2`:

   If `list1` is contained by `list2`, returns \"sublist\".
   If `list1` contains `list2`, returns \"superlist\".
   If `list1` is identical to `list2`, returns \"equal\".
   Otherwise, returns \"unequal\"."
  (cond ((equal list1 list2)    "equal")
        ((sublist? list1 list2) "sublist")
        ((sublist? list2 list1) "superlist")
        (t                      "unequal")))

