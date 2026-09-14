% ==========================================
% ARTI 303 - Lab Assignment 01
% Family Tree Knowledge Base
% Student: Ghala Alsalem
% ==========================================
male(khalid).
male(ahmad).
male(ali).

female(fatimah).
female(sara).
female(noor).
female(ghala).

parent(khalid, ahmad).
parent(fatimah, ahmad).

parent(khalid, sara).
parent(fatimah, sara).

parent(ahmad, ali).
parent(noor, ali).

parent(ahmad, ghala).
parent(noor, ghala).

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.






