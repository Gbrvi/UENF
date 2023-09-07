;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Gabriel Viana de Almeida   
;;
#lang racket      ;; define a linguagem default
;; define a linguagem default: R5RS
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro")
(newline)
(display "  Aluno:  Gabriel Viana de Almeida ")
(newline)
;;

(define listaA (list 0 2 4 6 8))

(display listaA)
(newline)
(display "Primeiro elemento: ")
(newline)
(car listaA)
(newline)
(display "Ultimo elemento: ")
(car (reverse listaA))
(newline)
(display "Seu tamanho e: ")
(length listaA)

(define listaB (cons '10 ( cons '11 listaA)))

(display "Nova lista: ")
(display listaB)

