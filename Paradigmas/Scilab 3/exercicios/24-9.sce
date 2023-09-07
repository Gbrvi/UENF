// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  buttons ==================

clear; clc;
Aluno = 'Gabriel Viana de Almeida';

//--------------- coisas de Futebol --------------------------------------------
time=messagebox("Escolha um time","modal", "info",['Flamengo' 'Fluminense' 'Botafogo' 'Palmeiras']);

select  time                // time e' um string
       case 1 then
          messagebox([Aluno; '      Flamengo: Menor time do Rio de Janeiro'],"UENF");
       case 2  then
          messagebox([Aluno; '     Fluminense: MAIOR time do BRASIL'],"UENF");       
       case 3  then
          messagebox([Aluno; '     Botafogo: É bairro'],"UENF");
       case 4  then
          messagebox([Aluno; '     Palmeiras: O Campeão Mundial de 1951...'], "UENF");          
end;   //   select





