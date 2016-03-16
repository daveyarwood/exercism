;;; gigasecond.el --- Gigasecond exercise (exercism)

;;; Commentary:
;; Calculate the date one gigasecond (10^9 seconds) from the
;; given date.
;;
;; NB: Pay attention to  Emacs' handling of time zones and dst
;; in the encode-time and decode-time functions.

;;; Code:

(defun from (second minute hour day month year)
  (let* ((seconds (round
                   (time-to-seconds
                    (encode-time second minute hour day month year t))))
         (gigasecond (+ seconds 1000000000)))
    (subseq (decode-time (seconds-to-time gigasecond)) 0 6)))

(provide 'gigasecond)
;;; gigasecond.el ends here
