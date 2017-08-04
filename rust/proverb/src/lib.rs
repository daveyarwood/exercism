fn build_line(a: &str, b: &str) -> String {
    format!("For want of a {} the {} was lost.\n", a, b)
}

fn build_last_line(things: Vec<&str>) -> String {
    if things.len() >= 3 {
        Some("horseshoe nail")
    } else {
        things.first().map(|s| s.to_owned())
    }.map_or("".to_owned(),
             |thing| format!("And all for the want of a {}.", thing))
}

pub fn build_proverb(things: Vec<&str>) -> String {
    let lines: String = things.windows(2)
                              .map(|strs| build_line(strs[0], strs[1]))
                              .collect();

    let last_line: String = build_last_line(things);

    format!("{}{}", lines, last_line)
}
