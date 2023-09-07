% programa  02-familia-B.pl
%
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Date: 2023
% Aluno: Gabriel Viana de Almeida
%-------------------------------------------------
 % FATOS

    mulher(luisa).  % significa luisa é uma mulher
    mulher(eva).
    mulher(martha).
    homem(adam).
    homem(pedro).
    homem(paulo).
    pai(adam,pedro). % significa adam é pai de pedro
    pai(adam,paulo).
    marido(adam,eva).
    esposa(eva,adam).
    mae(eva,luisa).
    mae(eva,pedro).
    filha(maria,eva).
    filha(luisa,adam).
    filha(suzana,martha).
    irma(eva,martha).
 % REGRAS

    filho(F,P):-homem(F),pai(P,F).
    filho(F,P):-homem(F),mae(P,F).
    
    filha(F,P):-mulher(F),pai(P,F).
    filha(F,P):-mulher(F),mae(P,F).

% Completar as regras:
   irma(X,Y):-mulher(X),filha(X,A),filha(Y,A), X\=Y.
   irma(X,Y):-mulher(X),filha(X,A),filho(Y,A), X\=Y.
   irmao(X,Y):-homem(X),filho(X,A),filho(Y,A), X\=Y.
   irmao(X,Y):-homem(X),filho(X,A),filha(Y,A), X\=Y.

   tia(X,Y):-mulher(X),filho(Y,W),irma(W,X).
   tia(X,Y):-mulher(X),filha(Y,W),irma(W,X).
   tia(X,Y):-mulher(X),filho(Y,W),irma(X,W).
   tia(X,Y):-mulher(X),filha(Y,W),irma(X,W).
   
   prima(X,Y):-filha(X,W),tia(W,Y).
   


    

    
