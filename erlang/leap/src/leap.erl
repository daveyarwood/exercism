-module(leap).

-export([leap_year/1, test_version/0]).

div_by(Year, N) -> Year rem N == 0.

leap_year(Year) ->
  div_by(Year, 400) orelse
  (div_by(Year, 4) andalso not div_by(Year, 100)).

test_version() -> 3.
