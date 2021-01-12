:- use_module(library(random)).

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

ankitsapaka([A, B, D, E]) :-
	random(1, 3, A), random(1, 3, B),
	random(1, 3, D), random(1, 3, E).

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


asehoy([]).
asehoy([X|XS]):-
	format( "\t ~p", [X]),
	nl,
	asehoy(XS).

trz([[X1, X2, X3, X4],
    [Y1, Y2, Y3, Y4],
    [Z1, Z2, Z3, Z4],
    [A1, A2, A3, A4],
    [B1, B2, B3, B4],
    [D1, D2, D3, D4],
    [E1, E2, E3, E4],
    [F1, F2, F3, F4]],
   [[F1, E1, D1, B1, A1, Z1, Y1, X1],
    [F2, E2, D2, B2, A2, Z2, Y2, X2],
    [F3, E3, D3, B3, A3, Z3, Y3, X3],
    [F4, E4, D4, B4, A4, Z4, Y4, X4]]).

zanany(R, V) :-
	kiba(R, KIBA),
	safary(R, SAFARY),
	saily(R, SAILY),
	asorita(R, ASORITA),
	haky(R, HAKY),
	haja(R, HAJA),
	ombiasy(R, OMBIASY),
	fahasivy(R, FAHASIVY),
	tr([KIBA, SAFARY, SAILY, ASORITA, HAKY, HAJA, OMBIASY, FAHASIVY], V).


tareky([1, 1, 1, 1]).
alasady([1, 1, 2, 2]).
adalo([1, 2, 1, 2]).
alokola([1, 2, 2, 1]).
alotsimay([2, 1, 1, 2]).
alohotsy([2, 1, 2, 1]).
adabara([2, 2, 1, 1]).
asombola([2, 2, 2, 2]).


karija([1, 1, 1, 2]).
alimizanda([1, 1, 2, 1]).
alakarabo([1, 2, 1, 1]).
renilaza([1, 2, 2, 2]).
alakaosy([2, 1, 1, 1]).
alaimora([2, 1, 2, 2]).
alibiavo([2, 2, 1, 2]).
alikisy([2, 2, 2, 1]).