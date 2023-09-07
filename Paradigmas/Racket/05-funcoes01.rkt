;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Gabriel Almeida 

;;;;;;;;;;;;;;;;   Escolha a linguagem "Determine language from source"
;;
#lang racket      ;; define a linguagem default

(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Gabriel Viana de Almeida ")
(newline)

(define potencia
  (lambda (a b)
    (begin
    (newline)
    (display a)
    (display "**")
    (display b)
    (display "=")
    (expt a b)
    )
  )
 )


(define peso
  (lambda (m g)
    (begin
      (newline)
      (display "Calculando o PESO ")
      (newline)
      (display "P = ")
      (display m)
      (display "*")
      (display g)
      (newline)
      (display "P = ")
      (* m g)
      )
    )
  )

(potencia 4 2)
(peso 5 2)




  
