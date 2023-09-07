;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Gabriel Viana de Almeida    

;;;;;;;;;;;;;;;;   Escolha a linguagem "Determine language from source"
;;
#lang racket      ;; define a linguagem default

(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Gabriel Viana de Almeida ")
(newline)
(newline)
;;
;;

(define (area-trapezio B b h)
  (/ ( * h (+ B b))2)) 


(define (area-quadrado a)
  ( expt a 2))

(define (area-poligono perimetro apotema)
 (* (/ perimetro 2) apotema))

(display "Area Trapezio: ")
(area-trapezio 10 4 3)

(display "Area quadrado: ")
(area-quadrado 5)

(display "Area poligono qualquer: ")
(area-poligono 10 3)
