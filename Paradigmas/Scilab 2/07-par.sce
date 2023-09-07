// Prof. Ausberto S. Castro Vera 
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  Programacao: FOR ==================

clc;
mprintf("UENF - Ciencia da Computacao\n");
mprintf("Aluno: Gabriel Viana de Almeida - Campos %s\n", date());

disp("Digite um valor")
n = input("");

if modulo(n, 2) == 0 then
    printf("\nO número %d é par.\n", n);
else
    printf("\nO número %d é ímpar.\n", n);
end
