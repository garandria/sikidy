
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


% zanany

%1
safary(R, V) :-
	tale(R, L),
	maly(R, L1),
	ampianaL(L, L1, V).

asorita(R, V) :-
	fahatelo(R, L),
	bilady(R, L1),
	ampianaL(L, L1, V).

haja(R, V) :-
	fianahana(R, L),
	abily(R, L1),
	ampianaL(L, L1, V).

fahasivy(R, V) :-
	alisay(R, L),
	fahavalo(R, L1),
	ampianaL(L, L1, V).

%2
saily(R, V) :-
	safary(R, L),
	asorita(R, L1),
	ampianaL(L, L1, V).

ombiasy(R, V) :-
	fahasivy(R, L),
	haja(R, L1),
	ampianaL(L, L1,  V).

haky(R, V) :-
	ombiasy(R, L),
	saily(R, L1),
	ampianaL(L, L1, V).

%3
kiba(R, V) :-
	haky(R, L),
	tale(R, L1),
	ampianaL(L, L1, V).
