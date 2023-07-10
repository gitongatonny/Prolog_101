%Males
male(jack).
male(oliver).
male(ali).
male(james).
male(simon).
male(harry).

%Females
female(helen).
female(sophie).
female(lily).
female(jess).

%Parents
parent(jack,jess).
parent(jack,lily).
parent(helen,jess).
parent(helen,lily).
parent(oliver,james).
parent(sophie,james).
parent(jess,simon).
parent(ali,simon).
parent(lily,harry).
parent(james,harry).

%Parents_Rules
father_of(X,Y):-male(X),parent(X,Y).
mother_of(X,Y):-female(X),parent(X,Y).

%GrandParents_Rules
grand_father(X,Y):-male(X),parent(X,Z),parent(Z,Y).
grand_mother(X,Y):-female(X),parent(X,Z),parent(Z,Y).

%Siblings_Rules
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X), X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.

%Spouses_Rules
husband(X,Y):-male(X),parent(X,Z),parent(Y,Z),female(Y).
wife(X,Y) :- female(X),parent(X,Z),parent(Y,Z),male(Y).