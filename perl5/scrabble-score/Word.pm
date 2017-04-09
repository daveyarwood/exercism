package Word;

use strict;
use warnings;
use List::Util 'reduce';

sub letter_score {
  my ($letter) = @_;

  my %letter_scores = (
    a => 1, e => 1, i => 1, o => 1, u => 1, l => 1, n => 1, r => 1, s => 1,
    t => 1,
    d => 2, g => 2,
    b => 3, c => 3, m => 3, p => 3,
    f => 4, h => 4, v => 4, w => 4, y => 4,
    k => 5,
    j => 8, x => 8,
    q => 10, z => 10
  );

  return $letter_scores{$letter};
}

sub new {
  my ($class, $word) = @_;
  $word =~ s/\s//;

  my $self = { "word", lc $word };
  return bless $self, $class;
}

sub score {
  my ($self, %extension) = @_;

  my $score = reduce { $a + letter_score($b) }
                     0,
                     (split //, $self->{word});

  $score *= (2 ** $extension{double}) if $extension{double};
  $score *= (3 ** $extension{triple}) if $extension{triple};

  return $score;
}

1;
