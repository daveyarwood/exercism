(ns hello-world)

(defn hello
  ([] (hello "World"))
  ([x] (format "Hello, %s!" x)))
