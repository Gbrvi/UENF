;; Introdução à Linguagem Racket (Scheme)
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Gabriel Viana de Almeida   
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro")
(newline)
(display "  Aluno:  Gabriel Viana de Almeida ")
(newline)
;;
;;

(define lista1 ( list 1 10 18 9 2))
(define listaA (list 2 -1 5 9))
(define listaB (list 78 5 22 6))
;No final
(display (append listaA (car(cdr(cdr lista1)))))

(newline)

;No inicio
(display (cons (car(cdr(cdr lista1))) listaB))


