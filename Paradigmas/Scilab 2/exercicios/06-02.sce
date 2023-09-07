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
X = input("");

N = input("");

sum = 0;

for i = 0: N
    sum = sum + (X + i)
end

printf("A soma dos %d números inteiros consecutivos a partir de %d é %d", N, X, sum);
