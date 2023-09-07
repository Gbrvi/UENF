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

continua = 999

    disp("Digite primeiro valor: ")
    a = input("")
    
    disp("Digite segundo valor: ")
    b = input("")  

while continua == 999
      
    disp("[1] soma")
    disp("[2] produto")
    disp("[3] divisao")
    disp("[4] subtracao")
    disp("[0] para sair")
    resp = input("")

    if resp == 0
        break
    end
    
    if resp == 1
        disp(a+b)
    end
    
    else if resp == 2
        disp(a * b)
    end
    
    else if resp == 3
        disp(a / b)
    end
    
    else if resp == 4
        disp(a - b)
    end
end


disp("saindo...")
