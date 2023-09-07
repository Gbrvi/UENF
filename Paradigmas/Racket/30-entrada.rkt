;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023 
;; Aluno: Gabriel Viana de Almeida    
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(newline)
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Gabriel Viana de Almeida ")
(newline)
;;
(newline)
(newline)

(display "Escreva QUATRO notas (numeros menores que 10, separados por espaços a  b  c d) : ")
(newline)
; Pede ao usuario para digitar valores
(define a (read)) 
(define b (read))
(define c (read))
(define d (read))

; Faz calculo de média
(define media
  (lambda (x y z w)
  (/ (+ (+ (+ x y) z) w) 4)
    ))
; Mostra a media
(display "A media = ")
(media a b c d)
; Se media > 5, aprovado
(if (> (media a b c d) 5)
    (display "Aprovado")
    (display "Reprovado"))
;;--------------------------------------------
;; Defina aqui una media com notas com pesos diferentes
;
; Função media que calcula com pesos pre-definidos dentro da função!
(define MediaPesos
  (lambda (x y z w)
    (/ ( + ( + (+ (* 1 x) (* 2 y)) (* 1 z)) (* 3 w)) 7)))

(display "media ponderada")
(MediaPesos a b c d)



