(ns two-fer)

(defn two-fer [& [recipient]]
  (format "One for %s, one for me." (or recipient "you")))
