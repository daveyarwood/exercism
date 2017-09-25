fn squared(n: i64) -> i64 { n * n }

pub fn find() -> Option<i64> {
    for c in 1..1000 {
        for b in 1..c {
            for a in 1..b {
                if squared(a) + squared(b) == squared(c) && a + b + c == 1000 {
                    return Some(a * b * c);
                }
            }
        }
    }

    None
}
