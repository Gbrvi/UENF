% Programa casa.pl
%
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Ano: 2023
% Aluno: Gabriel Viana de Almeida
%-------------------------------------------------
%    Ver mapa da casa
%
%------------- FATOS  -----------------------
lugar(sala).
lugar(cozinha).
lugar(escritorio).
lugar(corredor).
lugar('sala de jantar').
lugar(celeiro).
lugar(jardim).

%-------ADICIONADO-------
lugar(banheiro).
lugar(quintal).
lugar(quarto).
%------------------------


porta(escritorio, corredor).
porta(cozinha, escritorio).
porta(corredor, 'sala de jantar').
porta(cozinha, celeiro).
porta('sala de jantar', cozinha).

%------------ADICIONNADO-------------
porta(cozinha, quintal).
porta(corredor, quarto).

localizacao(escrivaninha, escritorio).
localizacao(laranja, cozinha).
localizacao(lanterna, escrivaninha).
localizacao('maq de lavar', celeiro).
localizacao(sabao, 'maq de lavar').
localizacao(verdura, cozinha).
localizacao(faca, cozinha).
localizacao(panela, cozinha).
localizacao(arroz, cozinha).
localizacao(uva, cozinha).
localizacao(biscoitos, cozinha).
localizacao(computador, escritorio).
localizacao(mesa,'sala de jantar').

%------------ADICIONADO------------
localizacao(pia, banheiro).
localizacao(tapete, banheiro).
localizacao(espelho, banheiro).
localizacao(torneira, banheiro).

localizacao(cama, quarto).
localizacao(computador, quarto).
localizacao(cortina, quarto).
localizacao(armario, quarto).

localizacao(moto, quintal).
localizacao(churrasqueira, quintal).
localizacao(portao, quintal).
localizacao(piscina, quintal).

%---------------------------------
comestivel(laranja).
comestivel(biscoitos).
comestivel(arroz).
comestivel(uva).

gosto_amargo(verdura).

estamos_em(quarto).

%%---------------  REGRAS --------------------
conectar(X,Y) :- porta(X,Y).
conectar(X,Y) :- porta(Y,X).

lista_coisas(Lugar) :-
           localizacao(X, Lugar),
           tab(2),
           write(X),
           nl,
           fail.
           lista_coisas(Nestelugar).
           
lista_portas(Lugar) :-
           conectar(Lugar, X),
           tab(2),
           write(X),
           nl,
           fail.
           lista_portas(_).
           
observar :- estamos_em(Lugar),
            write('Voce esta na '), write(Lugar), nl,
            write('Voce pode ver:'), nl,
            lista_coisas(Lugar),
            write('Voce pode ir para:'), nl,
            lista_portas(Lugar).

  
mover(Lugar):- retract(estamos_em(X)), asserta(estamos_em(Lugar)).

posso_ir(Lugar):- estamos_em(X), conectar(X, Lugar).
posso_ir(Lugar):- write('Voce nao pode ir de aqui para '), write(Lugar), nl, fail.

goto(Lugar):- posso_ir(Lugar), mover(Lugar), observar.



%-------------------Adicionado---------------
estou(Lugar):-estamos_em(Lugar),
               write('Estou em: '), write(Lugar), nl,
               write('Voce pode ver: '), nl,
               lista_coisas(Lugar),
               write('Voce pode ir para: '),
               nl,
               lista_portas(Lugar).


comestiveis_na_cozinha :-
    lugar(cozinha),
    write('----Comestiveis na cozinha -----'), nl,
    localizacao(Item, cozinha),
    comestivel(Item),
    write(Item),nl,
    fail.
    
encontrar_objeto(T,R):-porta(cozinha, R),
                     localizacao(T,R).
