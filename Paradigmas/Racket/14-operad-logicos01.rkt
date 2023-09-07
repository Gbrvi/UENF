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

(let ((x 10))
  (and (< x 20) (> x 5 )))

(let ((x 2) (y 3))
  (or (> x y) (< x y)))

(let ((z 1))
  (not (< z 0)))

(let ((p 100))
 (and (not(> p 0)) (p < 200)))

(let ((q 1) (r 0))
  (or (>= q 1) ( < r 5)))

