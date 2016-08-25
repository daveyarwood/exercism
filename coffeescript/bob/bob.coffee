class Bob
  hey: (utterance) ->
    if (utterance.match /[A-Z]/) and not (utterance.match /[a-z]/)
      "Whoa, chill out!"
    else if utterance.endsWith "?"
      "Sure."
    else if utterance.match /^\s*$/
      "Fine. Be that way!"
    else
      "Whatever."

module.exports = Bob
