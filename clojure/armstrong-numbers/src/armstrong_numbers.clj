(ns armstrong-numbers)

(defn armstrong? [n]
  (let [digits (->> n str (map #(Integer/parseInt (str %))))]
    (== n (->> digits
               (map #(Math/pow % (count digits)))
               (apply +)))))
