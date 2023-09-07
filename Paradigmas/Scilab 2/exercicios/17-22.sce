// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto: Programacao: Formulario de Entrada de dados ==================
// Gabriel Viana de Almeida
clear; clc;

txt=['Produto'; 'Valor']; 
cadastro=x_mdialog(['Informe os dados: '],txt,['';'1']); 

produto=cadastro(1);   // strings convertidos em numeros
valor=evstr(cadastro(2)); 

if cadastro(1) ~= '' then
    msg = 'O produto foi cadastrado';
    else msg = 'Produto invalido. Insira um nome';
end


messagebox(msg);



