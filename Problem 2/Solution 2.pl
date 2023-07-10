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