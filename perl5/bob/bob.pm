#
# This is a SKELETON file and has been provided to enable you to get working on the
# first exercise more quickly.
#

use 5.006;
use strict;
use warnings;

package Bob;

our $VERSION = '1.000';

use Exporter 5.57 qw(import);

our @EXPORT_OK = qw(hey);

sub hey {
  my $utterance = shift @_;
  my $last_char = substr $utterance, -1;

  if ($utterance =~ /\p{Uppercase}/ && $utterance !~ /\p{Lowercase}/) {
    return "Whoa, chill out!"
  } elsif ($utterance =~ /^\s*$/) {
    return "Fine. Be that way!"
  } elsif ($last_char eq "?") {
    return "Sure."
  } else {
    return "Whatever."
  }
}

1;
