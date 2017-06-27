use std::iter::{Peekable,repeat};
use std::str::Chars;

struct Unit {
    number: Option<i64>,
    character: char
}

impl Unit {
    pub fn to_string(&self) -> String {
        repeat(self.character)
            .take(self.number.unwrap_or(1) as usize)
            .collect::<String>()
    }
}

struct ToEncode<'a> {
    chars: Peekable<Chars<'a>>
}

impl<'a> ToEncode<'a> {
    pub fn new(input: &str) -> ToEncode {
        ToEncode { chars: input.chars().peekable() }
    }
}

impl<'a> Iterator for ToEncode<'a> {
    type Item = Unit;

    fn next(&mut self) -> Option<Unit> {
        match self.chars.peek() {
            None => None,
            Some(first_char) => {
                let (chunk, leftover) = self.chars
                                            .partition(|&c| &c == first_char);
                Some(Unit { number: chunk.len(), character: first_char })
            }
        }
    }
}

pub fn encode(input: &str) -> String {
    // TODO
    input.to_string()
}

pub fn decode(input: &str) -> String {
    // TODO
    // let re = Regex::new(r"(\d*)([^\d])")
    input.to_string()
}
