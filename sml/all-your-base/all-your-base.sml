infix |>
fun x |> f = f x

fun digits_to_value acc _ [] = acc
  | digits_to_value acc base (digit :: digits) =
    let
      val exponent = List.length digits
      val digit_value = digit * (round (Math.pow (real base, real exponent)))
    in
      digits_to_value (acc + digit_value) base digits
    end

fun value_to_digits acc _ 0 = acc
  | value_to_digits acc base value =
    value_to_digits ((value mod base) :: acc) base (value div base)

fun rebase_impl
  (input_base: int) (input_digits: int list) (output_base: int): int list =
  input_digits
  |> digits_to_value 0 input_base
  |> value_to_digits [] output_base

fun rebase
  (input_base: int, input_digits: int list, output_base: int): int list option =
  if (null input_digits)
  orelse (List.exists (fn (n: int) => n < 0 orelse n >= input_base)
                      input_digits)
  orelse (input_base < 2)
  orelse (output_base < 2) then
    NONE
  else
    case (rebase_impl input_base input_digits output_base) of
      []            => NONE
    | output_digits => SOME output_digits

