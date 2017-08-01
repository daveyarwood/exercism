(ns anagram)

(defn anagram-of [word]
  (fn [candidate]
    (let [[w c] (map #(.toLowerCase %) [word candidate])]
      (and (not= w c) (= (sort w) (sort c))))))

(defn anagrams-for [word candidates]
  (filter (anagram-of word) candidates))
