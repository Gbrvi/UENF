;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 20-estruturas) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
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
(define-struct entrada (nome cep fone)) ;; Define struct com os dados [nome cep fone]

(newline)  
(make-entrada 'PedroSilva '05890-001 '606-7771) ;; Define o struct entrada com os dados passados
(newline)
(display "Nome = " )
(entrada-nome (make-entrada 'PedroSilva '05890-001 '606-7771)) ;; Exibe o nome
(display "CEP = " )
(entrada-cep (make-entrada 'PedroSilva '05890-001 '606-7771)) ;; Exibe O CEP
;;
;;
(define abc (make-entrada 'PedroSilva '05890-001 '606-7771)) ; Define ABC como tipo "entrada" e define os valores
(display "Fone = " )
(entrada-fone abc) ; Mostra o fone definido em ABC que e do tipo entrada

