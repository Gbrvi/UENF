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

(define (faixa-etaria idade)
  ( cond
     (( <= idade 11) "crianca")
     (( <= idade 17) "adolescente")
     (( <= idade 30) "adulto")
     (( <= idade 50) "meia idade")
     (( <= idade 69) "terceira idade")
     (( >= idade 70) "Idoso")
     )
  )

(newline)
(faixa-etaria 70)