// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto: GRAFICOS V ==================

clear; clc;
Aluno = 'Gabriel Viana de Almeida';  // <============ Nome do aluno

// propriedades da figura: NÃO alterar !!
dt=getdate(); dd= ' ('+string(dt(7)) + ':'+string(dt(8))+')' ;

// propriedades da figura
a=gcf();
a.figure_name='UENF -  Maio 2023 - '+ Aluno + dd;  ;

t=[0:0.05:4*%pi]';  // vetor de pontos no eixo X
f=3+sin(t/2*4);                         // primeira função
g=2+cos(t*3);         // segunda função


plot2d(t , [f g]);
legends(['f=3+sin(t/2*4)';'g=2+cos(t*3)'],[1 2],opt="ur"); // ul, ll,lr

da=gca(); // 
da.title.font_size = 5;
da.title.font_foreground = 5;    // 5=vermelho
da.title.text="Gráficos de f = f=3+sin(t/2*4)  e   g=2+cos(t*3)";
da.x_label.text="Tempo"; 
da.data_bounds=[0,0; 13,4.2] // valores Max-min permitidos na visualização do grafico
