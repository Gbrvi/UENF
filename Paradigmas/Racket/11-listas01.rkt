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

(define listaD (list 1 2 3 4))
(define listaE (list 5 6 7 8 9))

(newline)
(define listaQ (list (car(reverse listaD)) (car(cdr(cdr listaE))) (car(cdr listaD))  (car (reverse listaE))
                     (car(cdr (reverse listaE))) (car(cdr(cdr(reverse listaE)))) (car listaD) (car(cdr listaE))
                     (car(cdr listaD)) (car(cdr(cdr listaD))) (car(reverse listaD))))

(display listaQ)
