package Raindrops;

sub rules {
  return %rules;
}

sub convert {
  my ($number) = @_;

  my %rules = (
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  );

  my $raindrops = "";

  for my $n (sort (keys %rules)) {
    my $sound = $rules{$n};

    if ($number % $n == 0) {
      $raindrops .= $sound;
    }
  }

  if ($raindrops eq "") {
    $raindrops = $number;
  }

  return $raindrops;
}

1;
