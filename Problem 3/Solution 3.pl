%MaleFacts
male(john).
male(peter).
male(david).
male(mark).

%FemaleFacts
female(mary).
female(lisa).
female(jane).
female(emily).

%ParentsFacts
parent(john, peter).
parent(john, lisa).
parent(mary, peter).
parent(mary, lisa).
parent(peter, david).
parent(peter, jane).
parent(lisa, mark).
parent(lisa, emily).

%ParentsRules
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).

%SiblingsRules
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
brother(X, Y) :- male(X), sibling(X, Y).
sister(X, Y) :- female(X), sibling(X, Y).

%GrandparentsRules
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
grandfather(X, Y) :- male(X), grandparent(X, Y).
grandmother(X, Y) :- female(X), grandparent(X, Y).