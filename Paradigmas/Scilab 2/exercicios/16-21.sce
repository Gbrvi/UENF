// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto: Programacao: Formulario de Entrada de dados ==================
// Gabriel Viana de Almeida
clear; clc;

txt=['1 valor'; '2 valor']; 
notas=x_mdialog(['Digite valores:'],txt,['1';'1']); 

n1=evstr(notas(1));   // strings convertidos em numeros
n2=evstr(notas(2)); 


soma = n1 + n2;

messagebox('A soma é: '+string(soma));



