(*
 * I'm stuck on this exercise... getting the following stacktrace:
 *
 * > use "test_anagram.sml";
 * val qsort = fn: int list -> int list
 * example.sml:13: error: Type error in function application.
 *    Function: qsort : int list -> int list
 *    Argument: (String.explode word1) : char list
 *    Reason:
 *       Can't unify int (*In Basis*) with char (*In Basis*)
 *          (Different type constructors)
 * Found near (qsort (String.explode word1)) = (qsort (String.explode word2))
 * example.sml:13: error: Type error in function application.
 *    Function: qsort : int list -> int list
 *    Argument: (String.explode word2) : char list
 *    Reason:
 *       Can't unify int (*In Basis*) with char (*In Basis*)
 *          (Different type constructors)
 * Found near (qsort (String.explode word1)) = (qsort (String.explode word2))
 * Exception- Fail "Static Errors" raised
 * Exception- Fail "Static Errors" raised
 *
 * I'm confused about why the quicksort function below can't also have a type
 * signature of char list -> char list, since chars can also be compared using
 * <.
 *)

(*
 * Stolen from:
 * https://en.wikibooks.org/wiki/Algorithm_Implementation/Sorting/qsort#Standard_ML
 * because I didn't feel like implementing a sorting algorithm for this
 * exercise. :)
 *)
fun qsort [] = []
  | qsort (h::t) = let val (left, right) = List.partition (fn x => x < h) t
                   in qsort left @ h :: qsort right
                   end;

fun anagramOf word1 word2 =
  (qsort (String.explode word1)) = (qsort (String.explode word2))

fun anagram word candidates =
  List.filter (anagramOf word) candidates
