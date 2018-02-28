(defpackage #:sublist
  (:use #:common-lisp)
  (:export #:sublist))

(in-package #:sublist)

(defun sublist (list1 list2)
  "Classifies the relationship between `list1` and `list2`:

   If `list1` is contained by `list2`, returns \"sublist\".
   If `list1` contains `list2`, returns \"superlist\".
   If `list1` is identical to `list2`, returns \"equal\".
   Otherwise, returns \"unequal\"."
  (cond ((equal list1 list2)  "equal")
        ((search list1 list2) "sublist")
        ((search list2 list1) "superlist")
        (t                    "unequal")))

