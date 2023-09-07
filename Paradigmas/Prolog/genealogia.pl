% Programa genealogia.pl
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Ano: 2023
% Aluno: Gabriel Viana de Almeida

homem(daniel).
homem(gabriel).
homem(jose).
homem(joao).
homem(nestor).
homem(diego).
homem(zeca).
homem(benito).
homem(fernando).

mulher(maria).
mulher(neia).
mulher(elizabeth).
mulher(alline).
mulher(lili).
mulher(raiza).

%--------------------Mae-----------------
pai(fernando,lili).
pai(fernando,elizabeth).
pai(fernando,neia).
mae(maria,lili).
mae(maria,elizabeth).
mae(maria,neia).

%----------------minha familia------------
marido(daniel,elizabeth).
esposa(elizabeth,daniel).

pai(daniel,gabriel).
pai(daniel,alline).
pai(daniel,nestor).

mae(elizabeth,gabriel).
mae(elizabeth,alline).
mae(elizabeth,nestor).

marido(zeca,alline).
esposa(alline,zeca).

%------------------------tia---------------
pai(benito,diego).
mae(lili,diego).

marido(benito,lili).
esposa(lili,benito).

marido(diego,raiza).
esposa(raiza,diego).

%-------------regras----------

filho(X,Y):-homem(X),pai(Y,X).
filho(X,Y):-homem(X),mae(Y,X).

filha(X,Y):-mulher(X),pai(Y,X).
filha(X,Y):-mulher(X),mae(Y,X).

irma(X,Y):-mulher(X),filha(X,A),filha(Y,A), X\=Y.
irma(X,Y):-mulher(X),filha(X,A),filho(Y,A), X\=Y.
irmao(X,Y):-homem(X),filho(X,A),filho(Y,A), X\=Y.
irmao(X,Y):-homem(X),filho(X,A),filha(Y,A), X\=Y.

casal(X,Y):-marido(X,Y),esposa(Y,X).
casal(X,Y):-esposa(X,Y),marido(Y,X).

tia(X,Y):-filho(Y,P),irma(X,P).
tia(X,Y):-filha(Y,P),irma(X,P).
tia(X,Y):-casal(X,T),irmao(T,Q),filho(Y,Q).
tia(X,Y):-casal(X,T),irmao(T,Q),filha(Y,Q).

tio(X,Y):-filho(Y,P),irmao(X,P).
tio(X,Y):-filha(Y,P),irmao(X,P).
tio(X,Y):-casal(X,T),irma(T,Q),filho(Y,Q).
tio(X,Y):-casal(X,T),irma(T,Q),filho(Y,Q).

avo_h(X,Y):-homem(X),filho(A,X),pai(A,Y).
avo_h(X,Y):-homem(X),filho(A,X),mae(A,Y).
avo_h(X,Y):-homem(X),filha(A,X),pai(A,Y).
avo_h(X,Y):-homem(X),filha(A,X),mae(A,Y).

avo_m(X,Y):-mulher(X),filho(A,X),pai(A,Y).
avo_m(X,Y):-mulher(X),filho(A,X),mae(A,Y).
avo_m(X,Y):-mulher(X),filha(A,X),pai(A,Y).
avo_m(X,Y):-mulher(X),filha(A,X),mae(A,Y).

primo(X, Y):- tio(Z, Y), filho(X, Z).
prima(X, Y):- tio(Z, Y), filha(X, Z).







