use std::collections::HashSet;

struct LimitedMultiples {
    base: i64,
    limit: i64,
    current: i64
}

impl Iterator for LimitedMultiples {
    type Item = i64;

    fn next(&mut self) -> Option<i64> {
        self.current += self.base;

        if self.current < self.limit {
            Some(self.current)
        } else {
            None
        }
    }
}

fn one_limited_multiples(limit: i64, base: &i64) -> HashSet<i64> {
    LimitedMultiples {
        base: *base, current: 0, limit: limit
    }.collect::<HashSet<i64>>()
}

// Given a limit and some numbers, returns the set of numbers less than `limit` that are multiples
// of at least one of the numbers.
//
// e.g. limit: 20, bases: [3, 5] => { 3, 5, 6, 9, 10, 12, 15, 18 }
fn limited_multiples(limit: i64, bases: Vec<i64>) -> HashSet<i64> {
    bases.iter()
         .fold(HashSet::new(), |overall, base|
               overall.union(&one_limited_multiples(limit, base))
               .cloned()
               .collect::<HashSet<i64>>())
}

pub fn sum_of_multiples(limit: i64, numbers: &Vec<i64>) -> i64 {
    limited_multiples(limit, numbers.clone())
        .iter()
        .fold(0, |sum, n| sum + n)
}
