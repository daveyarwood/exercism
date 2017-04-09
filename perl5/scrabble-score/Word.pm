package Word;

use strict;
use warnings;
use List::Util 'reduce';

sub letter_score {
  my ($letter) = @_;

  my %letter_scores = (
    A => 1, E => 1, I => 1, O => 1, U => 1, L => 1, N => 1, R => 1, S => 1,
    T => 1,
    D => 2, G => 2,
    B => 3, C => 3, M => 3, P => 3,
    F => 4, H => 4, V => 4, W => 4, Y => 4,
    K => 5,
    J => 8, X => 8,
    Q => 10, Z => 10
  );

  return $letter_scores{$letter};
}

sub new {
  my ($class, $word) = @_;
  my $self = [ grep/\w/, split //, uc $word ];
  return bless $self, $class;
}

sub score {
  my ($self, %extension) = @_;
  my $score = reduce { $a + letter_score($b) } 0, @{$self};
  $score *= (2 ** $extension{double}) if $extension{double};
  $score *= (3 ** $extension{triple}) if $extension{triple};
  return $score;
}

1;
