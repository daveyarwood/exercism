package Squares;

use List::Util qw(reduce sum);

sub new {
  my ($class, $n) = @_;
  return bless { n => $n }, $class;
}

sub sum_of_squares {
  my $self = shift;
  return reduce { $a + $b**2 } 0, 1..$self->{n};
}

sub square_of_sums {
  my $self = shift;
  return sum(1..$self->{n}) ** 2;
}

sub difference {
  my $self = shift;
  return $self->square_of_sums - $self->sum_of_squares;
}

1;
