package Grains;

use List::Util qw(reduce);

sub square {
  my ($square_number) = @_;
  if ($square_number eq 1) {
    return 1;
  } else {
    return 2 * square($square_number - 1);
  }
}

sub total {
  return reduce { $a + square($b) } (1..64);
}

1;
