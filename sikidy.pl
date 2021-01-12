
ampiana(X, X, 2).
ampiana(_, _, 1).

ampianaL([X1, X2, X3, X4],
	  [Y1, Y2, Y3, Y4],
	  [A, B, D, E]) :-
	ampiana(X1, Y1, A),
	ampiana(X2, Y2, B),
	ampiana(X3, Y3, D),
	ampiana(X4, Y4, E).

reniny([[2, 2, 2, 1],
	[2, 2, 1, 2],
	[2, 2, 1, 1],
	[2, 1, 1, 1]]).


% col

tale([[_, _, _, A],
      [_, _, _, B],
      [_, _, _, D],
      [_, _, _, E]], [A, B, D, E]).

maly([[_, _, A, _],
      [_, _, B, _],
      [_, _, D, _],
      [_, _, E, _]], [A, B, D, E]).

fahatelo([[_, A, _, _],
	  [_, B, _, _],
	  [_, D, _, _],
	  [_, E, _, _]], [A, B, D, E]).

bilady([[A, _, _, _],
	[B, _, _, _],
	[D, _, _, _],
	[E, _, _, _]], [A, B, D, E]).

%  row

fianahana([X|_], X).
abily([_, X|_], X).
alisay([_, _, X |_], X).
fahavalo([_, _, _, X], X).


