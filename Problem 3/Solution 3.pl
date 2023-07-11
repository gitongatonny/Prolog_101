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