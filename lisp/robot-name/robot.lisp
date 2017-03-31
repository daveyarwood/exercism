(in-package #:cl-user)
(defpackage #:robot
  (:use #:common-lisp)
  (:export #:build-robot #:robot-name #:reset-name))

(in-package #:robot)

(defclass robot ()
  ((name :accessor robot-name
         :initform nil
         :initarg :name)))

(defun build-robot ()
  (make-instance 'robot))

(defun random-robot-name ()
  (concatenate 'string
               (loop repeat 2
                     collect (char "ABCDEFGHIJKLMNOPQRSTUVWXYZ" (random 26)))
               (loop repeat 3
                     collect (char "0123456789" (random 10)))))

(defmethod robot-name :before ((r robot))
  (when (not (slot-value r 'name))
    (setf (slot-value r 'name) (random-robot-name))))

(defun reset-name (robot)
  (setf (slot-value robot 'name) nil))

