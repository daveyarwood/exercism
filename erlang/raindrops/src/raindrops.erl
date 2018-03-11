-module(raindrops).

-export([convert/1, test_version/0]).

-define(Rules, [{3, "Pling"}, {5, "Plang"}, {7, "Plong"}]).

followRule(Number) ->
  fun({Factor, Sound}, Result) when Number rem Factor == 0 ->
      Result ++ Sound;
     ({_, _}, Result) ->
      Result
  end.

convert(Number) ->
  case lists:foldl(followRule(Number), "", ?Rules) of
    ""     -> integer_to_list(Number);
    Sounds -> Sounds
  end.

test_version() -> 1.
