package Phrase;

use strict;
use warnings;

sub word_count {
  my ($phrase) = @_;

  my %counts;
  foreach ($phrase =~ /[A-Za-z0-9]+/g) {
    $counts{lc $_}++;
  }

  return \%counts;
}

1;
