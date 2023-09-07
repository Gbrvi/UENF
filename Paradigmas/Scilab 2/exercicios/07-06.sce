// Prof. Ausberto S. Castro Vera 
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  Programacao: FOR ==================

clc;    
mprintf("UENF - Ciencia da Computacao\n");
printf(" Aluno: Gabriel Viana de Almeida - Campos %s\n", date());

disp("digite um valor")
limite = input("")
n = 0
soma = 0
while (soma <= limite)
    n = n + 1
    soma = soma + n
end

disp(n)
