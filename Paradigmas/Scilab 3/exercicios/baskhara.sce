// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  Equacoes (Aplicacoes) ==================

clear; clc;
Aluno = 'Gabriel Viana de Almeida';

Eq1 = "     Ax^2 + By + C = 0";

itens=["A"; "B";"C" ];

[ok,a,b,c]=getvalue(['UENF - Prof. Ausberto S. Castro V. - 2023';'Bhaskara: ';  Eq1;],...
                          itens,...
                          list("vec",1,"vec",1,"vec",1),...
                          ["1";"-5";"6"]);

// Função para calcular as raízes usando a fórmula de Bhaskara
function [x1, x2] = bhaskara(a, b, c)
    delta = b^2 - 4*a*c;
    if delta < 0
        x1 = -1;
        x2 = -1;
        messagebox("Raiz negativo, impossivel calcular")
    else
        x1 = (-b + sqrt(delta)) / (2*a);
        x2 = (-b - sqrt(delta)) / (2*a);
        messagebox("As raízes são: x1 = " + string(x1) + ", x2 = " + string(x2));
    end
end

bhaskara(a,b,c)






