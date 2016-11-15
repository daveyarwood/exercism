class Bob {
  method hey ($utterance) {
    my $last_char = substr $utterance, *-1;

    if ($utterance ~~ /<:Uppercase>/ && $utterance !~~ /<:Lowercase>/) {
      return "Whoa, chill out!"
    } elsif ($utterance ~~ /^\s*$/) {
      return "Fine. Be that way!"
    } elsif ($last_char eq "?") {
      return "Sure."
    } else {
      return "Whatever."
    }
  }
}

