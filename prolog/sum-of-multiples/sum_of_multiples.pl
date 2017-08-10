% This solution only passes for these test cases:
%
% sum_of_multiples([], 10000, 0).
% sum_of_multiples([3, 5], 1, 0).
%
% I'm new to Prolog and not sure how to debug to find the reason why it fails
% for all the other test cases.

:- use_module(library(clpfd)).

multiple([N|Factors], Limit, Multiple) :-
  mod(Multiple, N) = 0,
  Multiple < Limit, !;
  multiple(Factors, Limit, Multiple).

multiples_under_limit(Factors, Limit, Multiples) :-
  findall(Multiple, multiple(Factors, Limit, Multiple), Multiples).

sum_of_multiples(Factors, Limit, Sum) :-
  multiples_under_limit(Factors, Limit, Multiples),
  sum(Multiples, #=, Sum).
