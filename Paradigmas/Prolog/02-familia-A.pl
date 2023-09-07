% programa  02-familia-A.pl
%
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Date: 2023
% Aluno: Gabriel Viana de Almeida
%-------------------------------------------------
 % FATOS
    mulher(maria).
    mulher(eva).
    mulher(martha).
    homem(adam).
    homem(pedro).
    homem(paulo).
    pai(adam,pedro). % significa adam é pai de pedro
    pai(adam,paulo).
    marido(adam,eva).
    esposa(eva,adam).
    mae(eva,maria).
    mae(eva,pedro).
    filha(maria,eva).
    filha(maria,adam).
    filha(suzana,martha).
    irma(eva,martha).

 % REGRAS

    filho(F,P):-homem(F),pai(P,F).
    filho(F,M):-homem(F),mae(M,F).
    
    filha(F,P):-mulher(F),pai(P,F).
    filha(F,M):-mulher(F),mae(M,F).
%-------------------------------------------------

