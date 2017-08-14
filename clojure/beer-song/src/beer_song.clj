(ns beer-song
  (:require [clojure.string :as str]))

(defn- bottles
  [n]
  (format "%s %s of beer"
          (if (zero? n) "No more" n)
          (if (= 1 n) "bottle" "bottles")))

(defn- part-a
  [n]
  (format "%s on the wall, %s."
          (bottles n)
          (str/lower-case (bottles n))))

(defn- part-b
  [n]
  (format "%s, %s on the wall."
          (case n
            0 "Go to the store and buy some more"
            1 "Take it down and pass it around"
            "Take one down and pass it around")
          (str/lower-case (bottles (if (zero? n) 99 (dec n))))))

(defn verse
  "Produces the verse beginning with \"`n` bottles of beer on the wall...\"."
  [n]
  (str (part-a n) \newline (part-b n) \newline))

(defn sing
  "Produces the song from verse `from` down through verse `to`."
  [from & [to]]
  (->> (range from (dec (or to 0)) -1)
       (map verse)
       (str/join \newline)))
