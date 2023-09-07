%     Arquivo: veste.pl
%
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Ano: 2023
% Aluno: Gabriel Viana de Almeida
%-------------------------------------------------

%  Fonte:  http://www.facom.ufu.br/~marcelo/PL/tutorial%20de%20prolog.pdf

% Aqui começa o programa     ...
pessoa(ale).       %           Alexandra
pessoa(babe).      %           Barbara
pessoa(rosa).

%---------------ADD-----------------
pessoa(maria).
pessoa(ema).
%-----------------------------------
cor(azul).
cor(amarelo).
cor(vermelho).
cor(lilaz).
cor(verde).

%---------------ADD-----------------
cor(preto).
cor(rosa).
%-----------------------------------

% este pedaço é importante pois definimos quais cores cada menina tem

tem_uma_cor(babe,amarelo).
tem_uma_cor(rosa,verde).
tem_uma_cor(ale,azul).

%---------------ADD-----------------
tem_uma_cor(maria,preto).
tem_uma_cor(ema,laranja).
%-----------------------------------

%Restrições de quais cores as meninas nao podem vestir
%% aqui  pode-se ampliar as restrições
nao_pode_vestir(babe,verde).
nao_pode_vestir(rosa,azul).
nao_pode_vestir(rosa,lilaz).

%---------------ADD-----------------
nao_pode_vestir(ema,verde).
nao_pode_vestir(maria,preto).
%-----------------------------------

veste(X, Cor1, Cor2):- pessoa(X), cor(Cor1), cor(Cor2), tem_uma_cor(X,Cor1),
      \+(nao_pode_vestir(X,Cor2)),                /* é um fato que deve ser negado */
      Cor1 \== Cor2 ,                             /*C1 diferente de C2 */
      /* não  pode ter amarelo e  vermelho com  C1  e  C2  e  vice-versa           */
      \+(
         ((Cor1  = vermelho), /*C1 tem  que ser diferente de Vermelho           */
         (Cor2   = amarelo))                                                       /* idem para   amarelo....  */
;                                                                                                                                                                                                                                                             /*                      ;           ou           */
         ((Cor1 =  amarelo) ,                      /*,e ... ocontrário  */
         (Cor2  =  vermelho))
).


ache_tudo :-
veste(X,C1,C2),
write(X),
write(' veste as cores '), write(C1),
write('.... e ....'), write(C2),
nl,
fail.

coresVestimentas :- veste(X,C1,C2), write(X), write(' ====> '), write(C1), write('.. e ..'), write(C2), nl,
          fail.
          ache_tudo.

%% Consulta:
 ache_tudo.
