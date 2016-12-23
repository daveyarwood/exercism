package Hamming;

sub compute {
  my ($a, $b) = @_;

  my $length_a = length $a;
  my $length_b = length $b;
  die "DNA strands must be of equal length" if $length_a != $length_b;

  my $distance = 0;

  for (my $i = 0; $i < $length_a; $i++) {
    my $char_a = substr($a, $i, 1);
    my $char_b = substr($b, $i, 1);
    $distance++ if $char_a ne $char_b;
  }

  return $distance;
}

1;
