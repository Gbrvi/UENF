;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Abril 2023
;; Aluno: Gabriel Viana de Almeida  
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro), 2023")
(newline)
(display "  Aluno:  Gabriel Viana de Almeida ")
(newline)

;;Definindo valores dos pares

(define valores (cons 22 13)) 
(define multVal (cons valores 0))
;;-----------------------
;; Mostrando valores de cada par
(display "O par x de valores  = ")
(car valores)
(display "O par y de valores = ")
(cdr valores)
(display "-----------------")
(newline)
(display "O par x de multVal = ")
(car multVal)
(display "O par y de multVal = ")
(cdr multVal)
;;-----------------------


