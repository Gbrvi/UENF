;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Gabriel Viana de Almeida    

;;;;;;;;;;;;;;;;   Escolha a linguagem "Determine language from source"
;;

#lang racket

(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Gabriel Viana de Almeida ")
(newline)
(newline)
;;

(define (volume-galao r a)
 (* (expt r 2) pi a))

(display "Volume: ")
(volume-galao 5 3)