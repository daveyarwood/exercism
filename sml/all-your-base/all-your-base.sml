fun digits_to_value digits base NONE = digits_to_value digits base (SOME 0)
  | digits_to_value [] _ (SOME value) = value
  | digits_to_value (digit :: digits) base (SOME value) =
    let
      val exponent = List.length digits
      val digit_value = digit * (round (Math.pow (real base, real exponent)))
    in
      digits_to_value digits base (SOME (value + digit_value))
    end

fun value_to_digits value base NONE = value_to_digits value base (SOME [])
  | value_to_digits 0 _ (SOME digits) = digits
  | value_to_digits value base (SOME digits) =
    let
      val quotient = value div base
      val remainder = value mod base
    in
      value_to_digits quotient base (SOME (remainder :: digits))
    end

fun rebase_impl
  (input_base: int) (input_digits: int list) (output_base: int): int list =
  let
    val value = digits_to_value input_digits input_base NONE
  in
    value_to_digits value output_base NONE
  end

fun rebase
  (input_base: int, input_digits: int list, output_base: int): int list option =
  if (null input_digits)
  orelse (List.exists (fn (n: int) => n < 0 orelse n >= input_base) input_digits)
  orelse (input_base < 2)
  orelse (output_base < 2) then
    NONE
  else
    case (rebase_impl input_base input_digits output_base) of
      []            => NONE
    | output_digits => SOME output_digits

