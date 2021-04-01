divisible(X,Y) :- 0 is X mod Y, !.

divisible(X,Y) :- X > Y+1, divisible(X, Y+1).

isPrime(2) :- true,!.
isPrime(X) :- X < 2,!,false.
isPrime(X) :- not(divisible(X, 2)).

uloha18([],0).
uloha18([H|T],DELKA):-uloha18(T,DELKA1),isPrime(H),DELKA is DELKA1.
uloha18([H|T],DELKA):-uloha18(T,DELKA1),not(isPrime(H)),DELKA is DELKA1+1.
