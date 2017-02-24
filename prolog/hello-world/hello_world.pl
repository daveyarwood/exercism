hello_world(Result) :-
  hello_world('World', Result).

hello_world(Name, Result) :-
  atom_concat('Hello ', Name, HelloName),
  atom_concat(HelloName, '!', Result).
