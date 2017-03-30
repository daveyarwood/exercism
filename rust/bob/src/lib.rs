pub fn reply(utterance: &str) -> &str {
    if utterance.ends_with("?") {
        "Sure."
    } else if utterance.find(char::is_uppercase).is_some() &&
         utterance.find(char::is_lowercase).is_none() {
        "Whoa, chill out!"
    } else if utterance.trim().is_empty() {
        "Fine. Be that way!"
    } else {
        "Whatever."
    }
}
