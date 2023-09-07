;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Gabriel Almeida   

;;;;;;;;;;;;;;;;   Escolha a linguagem R5RS
;;
;; Ajuda:  http://docs.racket-lang.org/guide/syntax-overview.html#(part._.Conditionals_with_if__and__or__and_cond)
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
;;
;; Condicionais    (if  (condicao) (alternativa1) (alternativa2 ) )
;; ---------------------------------------------------

(define P 528)
(display "P = ")
P
(if (> P 57) 
    (display "P maior que 57")
    (display "P menor que 57")
    )
;;----------------------------

(define (reply s)
  (if (equal? "Oi" (substring s 0 2))
      "Tudo Bem?"
      "Nao entendi."))

;;----------------------------
(define quadrado
     (lambda ( a )    ; parametro formal
       ( * a a)
       )
  )
;;----------------------------
(newline)
(define minquadrado 
             (lambda (a b)   ; parametros formais
             (if (< a b) 
                         (quadrado a) 
                         (quadrado b) ) ) ) 

;;----------------------------
(newline)
(define ( positivo n)
  (if (> n 0)
      (display "E positivo")
      (display "E negativo")
  )
)

;;----------------------------
(newline)
(define (upper s)
  (if (string=? s (string-upcase s))
      (display "Tudo em maiusculo")
      (display "Nao esta em maiusculo")
     )
  )



(display "MinQadrado de 6 e 9 = ") (minquadrado 6 9)
(newline)

(display "Oi pessoal da Computacao UENF! ")
(reply "Oi pessoal da Computacao UENF!")

(display "Vai chover na madrugada? ")
(reply "Vai chover na madrugada?")

(newline)

(positivo -4)
(newline)

(upper "BOM DIA A TODOS")

