;; Introdução à Linguagem Racket (Scheme)
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

(define prestacao
  (lambda (valor taxa tempo)
    (+ valor ( * valor (/ taxa 100) tempo ))))

(prestacao 100 2 5)
(prestacao 1000 10 2)



