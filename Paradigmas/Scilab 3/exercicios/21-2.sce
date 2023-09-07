clear; clc;
Aluno = 'Gabriel de Almeida';

r = messagebox([Aluno+', você está com notas muito baixas...'; ' ';
             'Precisa de outra prova?'], "Prof. Ausberto Castro - UENF", "info",["Não","Sim"], "modal");

if r == 2 then
  messagebox('A Prova de RECUPERAÇÃO é na próxima Quinta-feira', "Mensagem do Professor");
  
  r2 = messagebox([Aluno+', vou te ajudar...'; ' ';
             'Deseja prova fácil'], "Prof. Ausberto Castro - UENF", "info",["Não","Sim"], "modal");
  
  if r2 == 2 then
      messagebox('Ta achando que sou bobo? - 4 pontos na média')
  else
      messagebox('Boa escolha. Não existe prova fácil. +4 pontos de média')
  end
elseif r == 1 then
  messagebox('Que pena, '+Aluno+'... era uma segunda oportunidade!', "Mensagem do Professor");
end
