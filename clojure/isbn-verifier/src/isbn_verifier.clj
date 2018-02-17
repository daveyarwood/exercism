(ns isbn-verifier
  (:require [clojure.string :as str]))

(defn isbn? [isbn]
  (->
    ;; Ideally my solution would just be this:
    (some-> (str/replace isbn "-" "")
            (->> (re-matches #"^\d{9}[\dX]$"))
            (->> (map (fn [c] (if (= \X c) 10 (Character/digit c 10))))
                 (map (fn [n c] (* n c)) (reverse (range 1 11)))
                 (apply +)
                 (#(mod % 11))
                 zero?))
    ;; ...but I have to do this because the tests are expecting literally
    ;; `false`, not just `nil` which is a falsy value.
    boolean))
