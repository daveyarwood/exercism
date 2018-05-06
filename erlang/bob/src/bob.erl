-module(bob).

-export([response/1, test_version/0]).

silence(String) ->
  string:is_empty(string:trim(String)).

question(String) ->
  case string:trim(string:reverse(String)) of
    [$? | _] -> true;
    _        -> false
  end.

yelling(String) ->
  re:run(String, "[A-Z]") /= nomatch
  andalso String == string:uppercase(String).

response(String) ->
  case {silence(String), yelling(String), question(String)} of
    {true, _, _} -> "Fine. Be that way!";
    {_, true, _} -> "Whoa, chill out!";
    {_, _, true} -> "Sure.";
    _            -> "Whatever."
  end.

test_version() -> 2.
