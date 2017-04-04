// http://stackoverflow.com/questions/38406793/why-is-capitalizing-the-first-letter-of-a-string-so-convoluted-in-rust
fn capitalize(s: String) -> String {
    let mut chars: Vec<char> = s.chars().collect();
    chars[0] = chars[0].to_uppercase().nth(0).unwrap();
    let s_copy = chars.into_iter().collect();
    s_copy
}

fn bottles(n: i64) -> String {
    match n {
        -1 => bottles(99),
        0 => "no more bottles of beer".to_string(),
        1 => "1 bottle of beer".to_string(),
        _ => format!("{} bottles of beer", n)
    }
}

fn next_phrase(n: i64) -> String {
    match n {
        0 => "Go to the store and buy some more".to_string(),
        1 => "Take it down and pass it around".to_string(),
        _ => "Take one down and pass it around".to_string()
    }
}

pub fn verse(n: i64) -> String {
    format!("{} on the wall, {}.\n{}, {} on the wall.\n",
            capitalize(bottles(n)),
            bottles(n),
            next_phrase(n),
            bottles(n - 1))
}

pub fn sing(from: i64, to: i64) -> String {
    (to..from + 1).map(|n| verse(n))
                  .rev()
                  .collect::<Vec<String>>()
                  .join("\n")
}
