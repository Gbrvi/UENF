// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
//  Maio, 2023 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto: GRAFICOS IV ==================
clear; clc; clf();
Aluno = 'Gabriel Viana de Almeida';

dt = getdate();
dd = ' (' + string(dt(7)) + ':' + string(dt(8)) + ')';
f = figure();
f = gcf();
f.figure_name = 'UENF - CCT - LCMAT - CC - 2023 - ' + Aluno + dd;

x = -3:0.5:3;
y1 = sin(x)
y2 = sinh(x);
y3 = sinh(x) - cosh(x);

subplot(221);
plot(x, y1, 'r');
da1 = gca();
da1.title.font_size = 5;
da1.title.font_foreground = 5;
da1.title.text = "y = sen(x)";
da1.x_label.text = "Tempo";
da1.x_location = 'middle';
da1.y_label.text = "y = sen(x)";

subplot(222);
plot(x, y2, 'g');
da1 = gca();
da1.title.font_size = 5;
da1.title.font_foreground = 5;
da1.title.text = "y = sinh(x)";
da1.x_label.text = "Tempo";
da1.x_location = 'middle';
da1.y_label.text = "y = sinh(x)";

subplot(223);
plot(x, y3, 'b');
da1 = gca();
da1.title.font_size = 5;
da1.title.font_foreground = 5;
da1.title.text = "y = sinh(x) - cosh(x)";
da1.x_label.text = "Tempo";
da1.x_location = 'middle';
da1.y_label.text = "y = sinh(x) - cosh(x)";
