package ETL;

sub transform {
  my ($legacy_score_data) = @_;

  my %new_score_data;
  # If I don't explicitly clear the hash here, it somehow retains its value from
  # previous test cases. WTF, perl? I thought `my` was for local variables.
  %$new_score_data = ();

  foreach my $score (keys %$legacy_score_data) {
    my @letters = @{$legacy_score_data->{$score}};

    for my $letter (@letters) {
      $new_score_data->{lc($letter)} = $score;
    }
  }

  return $new_score_data;
}

1;
