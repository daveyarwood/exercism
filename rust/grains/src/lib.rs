pub fn square(s: u32) -> u64 {
    assert!(s >= 1 && s <= 64, "Square must be between 1 and 64");
    if s == 1 { 1 } else { 2 * square(s - 1) }
}

pub fn total() -> u64 {
    (1..65).fold(0, |sum, s| sum + square(s))
}
