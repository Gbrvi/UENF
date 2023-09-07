;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 20-estruturas01) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Gabriel Viana de Almeida    
;;
;; define a linguagem default ===> Habilite Advanced Student
; ------------------------------------------------
(newline)
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Gabriel Viana de Almeida ")
(newline)
;;;
; Ir no Menu:  
;   Language -> Choose Language -> How to Design Programs -> Advanced Student
;----------------------------------------------------------------------------

;;

(define-struct humano (nome idade nacionalidade))
(define pessoa (make-humano 'Costa' 97 'brasileiro))
(newline)
(display "Nome = ")
(humano-nome pessoa)
(display "Idade = ")
(humano-idade pessoa)
(display "nacionalidade")
(humano-nacionalidade pessoa)


