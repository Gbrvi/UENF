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
;; ------------------------------------------------

(define (baskhara-x-1 a b c)
  (let ((delta(- (expt b 2) (* 4 a c))))

  (if (< delta 0)
   (error "X é menor que zero")
   (/ (+ ( - b) (sqrt delta)) (* 2 a)))))


(define (baskhara-x-2 a b c)
  (let ((delta (- (expt b 2) (* 4 a c))))
    (if (< delta 0)
        (error "X é menor que zero!")
        (/ (- ( - b) (sqrt delta)) (* 2 a))))) 


(define (raizes a b c)
  (display "x1 = ")
  (display(baskhara-x-1 a b c))
  (newline)
  (display "x2 = ")
  (display (baskhara-x-2 a b c))
  )


(raizes 22 -55 10)

