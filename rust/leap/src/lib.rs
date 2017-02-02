fn divisible_by(n: i64, year: i64) -> bool {
    year % n == 0
}

pub fn is_leap_year(year: i64) -> bool {
    divisible_by(400, year) ||
    (divisible_by(4, year) && !divisible_by(100, year))
}
