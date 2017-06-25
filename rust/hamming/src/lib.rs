pub fn hamming_distance(a: &str, b: &str) -> Result<i64, &'static str> {
    if a.len() != b.len() {
        Err("Strands must be the same size")
    } else {
        Ok(a.chars()
            .zip(b.chars())
            .fold(0, |distance, (x, y)| if x == y {
                                            distance
                                        } else {
                                            distance + 1
                                        }))
    }
}
