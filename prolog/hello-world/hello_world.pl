hello_world(Result) :-
  hello_world('World', Result).

hello_world(Name, Result) :-
  format(atom(Result), 'Hello ~w!', Name).
