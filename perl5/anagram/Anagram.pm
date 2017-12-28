package Anagram;

sub sort_string {
  my ($s) = @_;
  my @chars = split(//, $s);
  return (join '', sort { $a cmp $b } @chars);
}

sub is_anagram {
  my ($s1, $s2) = map lc, @_;
  return ($s1 ne $s2) && (sort_string($s1) eq sort_string($s2));
}

sub match {
  my ($word, @candidates) = @_;

  my @matches;

  foreach(@candidates) {
    if (is_anagram $_, $word) {
      push @matches, $_;
    }
  }

  return \@matches;
}

1;
