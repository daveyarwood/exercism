(ns run-length-encoding)

(defn run-length-encode
  "encodes a string with run-length-encoding"
  [s]
  (->> s
       (partition-by identity)
       (map #(if (= 1 (count %))
               (first %)
               (str (count %) (first %))))
       (apply str)))

(defn run-length-decode
  "decodes a run-length-encoded string"
  [s]
  (->> s
       (re-seq #"(\d*)([^\d])")
       (mapcat (fn [[_ times character]]
                 (let [times (if (empty? times) 1 (Integer/parseInt times))]
                   (repeat times character))))
       (apply str)))
