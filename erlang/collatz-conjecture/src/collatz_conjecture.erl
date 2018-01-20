-module(collatz_conjecture).

-export([steps/1, test_version/0]).

steps(1) -> 0;
steps(N) when N =< 0 -> {error, "Only positive numbers are allowed"};
steps(N) when N rem 2 == 0 -> 1 + steps(N div 2);
steps(N) when N rem 2 == 1 -> 1 + steps((3 * N) + 1).

test_version() -> 2.
