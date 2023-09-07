% Programa genealogia.pl
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Ano: 2023
% Aluno: Gabriel Viana de Almeida

gato(pikitucha).
gato(noc).
gato(tina).
gato(juju).

cachorro(nestor).
cachorro(negao).

periquito(white).
periquito(louro).

capivara(filo).

dono(gabriel, noc).
dono(elizabeth,tina).
dono(elizabeth,juju).
dono(elizabeth,nestor).
dono(alline,pikitucha).

dono(daniel,negao).
dono(daniel,louro).
dono(daniel,white).

dono(costa,filo).

% regras
mostra_dono(X,Y):- dono(X,Y), write(X), write(' e dono de '), write(Y), nl.
mostra_gatos(X):-gato(X).
mostra_cachorro(X):-cachorro(X).
mostra_periquito(X):-periquito(X).
mostra_capivara(X):-capivara(X).









