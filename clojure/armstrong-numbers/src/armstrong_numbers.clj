(ns armstrong-numbers)

(defn armstrong? [n]
  (let [digits (->> n str (map #(Character/digit % 10)))]
    (->> digits
         (map #(Math/pow % (count digits)))
         (apply +)
         (== n))))
