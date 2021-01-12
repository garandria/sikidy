
ampiana(X, X, 2).
ampiana(_, _, 1).

ampianaL([X1, X2, X3, X4],
	  [Y1, Y2, Y3, Y4],
	  [A, B, D, E]) :-
	ampiana(X1, Y1, A),
	ampiana(X2, Y2, B),
	ampiana(X3, Y3, D),
	ampiana(X4, Y4, E).
