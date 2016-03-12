class Bob {
  def hey(utterance: String) = {
    if (utterance matches "\\s*") {
      "Fine. Be that way!"
    } else if ((utterance matches ".*[A-Z].*") &&
               !(utterance matches ".*[a-z].*")) {
      "Whoa, chill out!"
    } else if (utterance endsWith "?") {
      "Sure."
    } else {
      "Whatever."
    }
  }
}
