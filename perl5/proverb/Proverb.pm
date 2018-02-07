use strict;
use warnings;

package Proverb;

sub proverb {
  my ($things, $qualifier) = @_;
  my @proverb;

  for (my $i = 0; $i <= (@$things - 2); $i++) {
    my $thing_a = $things->[$i];
    my $thing_b = $things->[$i + 1];
    push @proverb, "For want of a $thing_a the $thing_b was lost.";
  }

  my $missing_thing = $qualifier ? "$qualifier $things->[0]" : $things->[0];
  push @proverb, "And all for the want of a $missing_thing.";

  return join "\n", @proverb;
}

1;
