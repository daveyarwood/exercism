use 5.006;
use strict;
use warnings;

package Leap;

sub div_by {
  my ($n, $year) = @_;
  return $year % $n == 0;
}

sub is_leap {
  my $year = shift @_;
  return div_by(400, $year) ||
         (div_by(4, $year) && !div_by(100, $year));
}

1;
