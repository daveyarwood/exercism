fun leapYear (year: int): bool =
  let
    fun divisible_by n = year mod n = 0
  in
    divisible_by 400 orelse (divisible_by 4 andalso not (divisible_by 100))
  end
