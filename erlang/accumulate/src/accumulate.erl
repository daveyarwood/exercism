-module(accumulate).

-export([accumulate/2, test_version/0]).

accumulate(_, []) -> [];
accumulate(Fn, [ H | T ]) ->
  [ Fn(H) | accumulate(Fn, T) ].

test_version() -> 1.
