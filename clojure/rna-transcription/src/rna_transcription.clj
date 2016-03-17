(ns rna-transcription)

(defn dna->rna
  "Translates a single character representing a DNA nucleotide into its
   corresponding RNA nucleotide.

   Throws an assertion error if the argument is not a valid DNA nucleotide."
  [nucleotide]
  {:post [(not (nil? %))]}
  (let [lookup (zipmap "GCTA" "CGAU")]
    (lookup nucleotide)))

(defn to-rna [strand]
  (apply str (map dna->rna strand)))
