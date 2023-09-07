// Prof. Ausberto S. Castro Vera 
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >

clc;    
mprintf("UENF - Ciencia da Computacao\n");
printf(" Aluno: Gabriel Viana de Almeida - Campos %s\n", date());


function fibo(pos)
    a = 0
    b = 1
    
    for i=0:pos
        disp(a)
        
        resp = a + b
        a = b
        b = resp
    end

endfunction

disp("Digite posicao de fibo")
pos = input("")

fibo(pos)
