def shouting?(utterance)
  /[A-Z]/ =~ utterance && /[a-z]/ !~ utterance
end

def asking?(utterance)
  utterance.ends_with? '?'
end

def silence?(utterance)
  /^\s*$/ =~ utterance
end

module Bob
  def Bob.hey(utterance)
    if shouting?(utterance)
      "Whoa, chill out!"
    elsif asking?(utterance)
      "Sure."
    elsif silence?(utterance)
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end
