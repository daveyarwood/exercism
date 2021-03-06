(ns beer-song
  (:require [clojure.string :as str]))

(defn- bottles
  [n]
  (case n
    -1 (bottles 99)
    0  "no more bottles of beer"
    1  "1 bottle of beer"
    (format "%s bottles of beer" n)))

(defn- part-a
  [n]
  (format "%s on the wall, %s."
          (str/capitalize (bottles n))
          (bottles n)))

(defn- part-b
  [n]
  (format "%s, %s on the wall."
          (case n
            0 "Go to the store and buy some more"
            1 "Take it down and pass it around"
            "Take one down and pass it around")
          (bottles (dec n))))

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
