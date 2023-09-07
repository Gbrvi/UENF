;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 30-entrada01) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Gabriel Viana de Almeida  
  ;; define a linguagem default ===> Habilite Advanced Student

; ------------------------------------------------
(newline)
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Gabriel Viana de Almeida ")
(newline)
;;------------------------------------------------

(define-struct humano (nome salario emprego))
;;-------------PRIMEIRA PESSOA-------------
(define pessoa (make-humano (read) (read) (read)))
(newline)
(display "Nome= ")
(humano-nome pessoa)
(display "Salario: ")
(humano-salario pessoa)
(display "Emprego")
(humano-emprego pessoa)
;; ------------SEGUNDA PESSOA---------------
(define pessoa-2 (make-humano (read) (read) (read)))
(newline)
(display "Nome= ")
(humano-nome pessoa-2)
(display "Salario: ")
(humano-salario pessoa-2)
(display "Emprego")
(humano-emprego pessoa-2)



