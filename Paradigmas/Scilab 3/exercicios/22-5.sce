// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto: Programacao: GUI - Menus Interativos ==================

clear; clc;
Nome = 'Gabriel Viana de Almeida';

produto = ['Pipoca','Cheetos','Fandangos','Cebolitos', 'Pipoca doce'];
   bebida= ['Guaravita','Dolly','Guarana', 'Toddynho', 'Agua'];
 pagamento = ['Pix','Cartao', 'Dinheiro'];

L1=list('Produto',1, produto); //titulo, Numero opção default, lista-opcoes
L2=list('Bebida',1, bebida); 
L3=list('Pagamento',1,pagamento); 

OpMatr=x_choices([Nome;' Escolha seus produtos para assisit o filme:'],list(L1,L2,L3)); 

messagebox([Nome+', você escolheu os seguintes produtos : '; '  '; 
'Produto : ' + string(produto(OpMatr(1)));
'         Bebida : '+ string(bebida(OpMatr(2))); 
'      Pagamento : '+ string(pagamento(OpMatr(3)))]);

