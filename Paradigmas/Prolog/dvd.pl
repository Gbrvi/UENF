% Programa genealogia.pl
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Ano: 2023
% Aluno: Gabriel Viana de Almeida

filme(corra).
filme(pokemon).
filme(pinoquio).
filme(interestelar).
filme('deuses_do_egito').
filme('john_wick_4').

dono(costa,'john_wick_4').
dono(bruna,corra).
dono(bruna,pokemon).
dono(costa,pinoquio).
dono(enzo,interestelar).
dono(bruna,'deuses_do_egito').

cd_arranhado(pinoquio).

genero(corra,terror).
genero(pokemon,animacao).
genero(pinoquio,animacao).
genero(interestelar,ficcao).
genero('john_wick_4',acao).
genero('deuses_do_egito',acao).


duracao(90,corra).
duracao(80,pokemon).
duracao(100,pinoquio).
duracao(140,interestelar).
duracao(120,'deuses_do_egito').
duracao(180,'john_wick_4').

%----------------regras-------------
eh_dono(X,Y):-dono(X,Y).

eh_terror(X):-genero(X,terror).

assistir(Pessoa,Filme):-eh_dono(Pessoa,Filme),\+cd_arranhado(Filme).

lista_filmes(Filme, Genero):-filme(Filme),genero(Filme,Genero).

filme_longo(Filme,Duracao):- duracao(Duracao,Filme), Duracao >= 120.

filme_curto(Filme,Duracao):-duracao(Duracao,Filme), Duracao =< 100.








