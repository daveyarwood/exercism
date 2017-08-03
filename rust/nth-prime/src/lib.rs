struct NumbersToCheck {
    end:     i64,
    current: i64,
    next:    i64
}

impl Iterator for NumbersToCheck {
    type Item = i64;

    fn next(&mut self) -> Option<i64> {
        // The first prime number is 2, and then all the following primes
        // (starting with 3) are odd. So, we only need to check 2, 3, 5, 7, 9,
        // etc.
        let step = if self.current == 2 { 1 } else { 2 };
        self.next = self.current + step;

        if self.next <= self.end {
            self.current = self.next;
            println!("checking {}", self.current);
            Some(self.current)
        } else {
            None
        }
    }
}

fn numbers_to_check(candidate: i64) -> NumbersToCheck {
    let end = (candidate as f64).sqrt().ceil() as i64;
    NumbersToCheck { end: end, current: 2, next: 2 }
}

trait Primeness {
    fn is_prime(self) -> bool;
}

impl Primeness for i64 {
    fn is_prime(self) -> bool {
        numbers_to_check(self).all(|n| self % n != 0)
    }
}

struct Primes {
    current: i64
}

impl Iterator for Primes {
    type Item = i64;

    fn next(&mut self) -> Option<i64> {
        let interval = if self.current == 2 { 1 } else { 2 };
        let mut n = self.current + interval;
        while !n.is_prime() {
            println!("{} is not prime. adding {}", n, interval);
            n = n + interval;
        }

        self.current = n;
        println!("prime: {}", self.current);
        Some(self.current)
    }
}

fn prime_generator() -> Primes {
    Primes { current: 0 }
}

pub fn nth(n: usize) -> Result<i64, String> {
    if n < 1 {
        Err("n must be >= 1".to_owned())
    } else {
        Ok(prime_generator().nth(n - 1).unwrap())
    }
}
