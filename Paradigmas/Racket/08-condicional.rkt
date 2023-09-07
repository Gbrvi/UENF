;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Abril 2023
;; Aluno: Gabriel Viana de Almeida   
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Gabriel Viana de Almeida ")
(newline)
;;
;;
;; CONDICIONAL   ( cond {[ ‹expr-test› ‹expr-eval›* ]}* )
;;---------------------------------------------

(define (taxa quantidade) 
     (cond 
              ((<= quantidade 1000)  0.040) 
              ((<= quantidade 8000)  0.065) 
              ((<= quantidade 12000) 0.072)
              (else 1)  
              )
  ) 

;;---------------------------------------------

(newline)
(display "Taxa para R$4.000,00 = ")
(taxa 4000)

(newline)
(display "Taxa para R$9.350,00 = ")
(taxa 9350)

(newline)
(display "Taxa para R$15.500,00 = ")
(taxa 15500)