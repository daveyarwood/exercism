(ns bob
  (:require [clojure.string :as str]))

(defn response-for [utterance]
  (cond
    (str/blank? utterance)                 "Fine. Be that way!"
    (and (re-matches #"[^a-z]+" utterance)
         (re-find #"[A-Z]" utterance))     "Whoa, chill out!"
    (.endsWith utterance "?")              "Sure."
    :else                                  "Whatever."))
