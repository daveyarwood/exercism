pub fn raindrops(num: i64) -> String {
    let rules = [(3, "Pling"), (5, "Plang"), (7, "Plong")];

    let drops = rules.iter()
                     .fold("".to_string(), |acc, &(n, sound)|
                           if num % n == 0 {
                               acc + sound
                           } else {
                               acc
                           });

    if drops.is_empty() {
        num.to_string()
    } else {
        drops
    }
}
