datatype allergen = Eggs | Peanuts | Shellfish | Strawberries |
                    Tomatoes | Chocolate | Pollen | Cats

val allAllergens = [Eggs, Peanuts, Shellfish, Strawberries,
                    Tomatoes, Chocolate, Pollen, Cats]

fun value Eggs         = 1
  | value Peanuts      = 2
  | value Shellfish    = 4
  | value Strawberries = 8
  | value Tomatoes     = 16
  | value Chocolate    = 32
  | value Pollen       = 64
  | value Cats         = 128

fun allergicTo n allergen =
  IntInf.andb(n, value(allergen)) <> 0

fun allergies n =
  List.filter (allergicTo n) allAllergens
