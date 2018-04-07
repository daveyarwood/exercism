(*
 * I'm running into this error, and I'm not sure why. Any help is appreciated!
 *
 * all-your-base.sml:20: error: Type error in function application.
 *    Function: rebase_impl : int * int list * int -> int list
 *    Argument: input_base : int
 *    Reason: Can't unify int to int * int list * int (Incompatible types)
 * Found near
 *   case (rebase_impl input_base input_digits output_base) of [0] => NONE
 * all-your-base.sml:20: error: Type error in function application.
 *    Function: rebase_impl input_base : int list
 *    Argument: input_digits : int list
 *    Reason: Value being applied does not have a function type
 * Found near
 *   case (rebase_impl input_base input_digits output_base) of [0] => NONE
 * Exception- Fail "Static Errors" raised
 * Error trying to use the file: 'test.sml'
 *)

fun rebase_impl
  (input_base: int, input_digits: int list, output_base: int): int list =
  [0] (* TODO: implement. Trying to fix the compiler error above first. *)

fun rebase
  (input_base: int, input_digits: int list, output_base: int): int list option =
  if (null input_digits)
  orelse (List.exists (fn (n: int) => n < 0 orelse n >= input_base) input_digits)
  orelse (input_base < 2)
  orelse (output_base < 2) then
    NONE
  else
    case (rebase_impl input_base input_digits output_base) of
      [0]           => NONE;
      output_digits => SOME output_digits

