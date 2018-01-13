use "regex"

primitive Bob
  fun apply(utterance: String): String =>
    try
      if silence(utterance)?      then "Fine. Be that way!"
      elseif shouting(utterance)? then "Whoa, chill out!"
      elseif asking(utterance)?   then "Sure."
      else                             "Whatever."
      end
    else
      // Amusingly, Pony forces you to handle the case that a regex doesn't
      // compile. I'll handle it by having Bob make fun of me.
      "Dave wrote a bad regex! Haw haw!"
    end

  fun silence(utterance: String): Bool ? =>
    Regex("^\\s*$")? == utterance

  fun shouting(utterance: String): Bool ? =>
    (Regex("[A-Z]")? == utterance) and (Regex("[a-z]")? != utterance)

  fun asking(utterance: String): Bool ? =>
    Regex("\\?$")? == utterance

