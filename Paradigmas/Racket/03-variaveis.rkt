;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023
;; Aluno: Gabriel Viana de Almeida    

;;;;;;;;;;;;;;;;   Escolha a linguagem "Determine language from source"
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
;; Variáveis e Expressoes LET
;; ---------------------------------------------------
(define y 5)		             ; para y=5
(define m 7)
(define z (+ m 6))	             ; para z = m+ 6
(define Pi 3.141516)
(define k (+ z (- m y)))

(define (quadrado x)            ; (define   (nomeFuncao   parametro)  definicao  )
    (* x x)  )


(define (entre7e18? n)
  (and (< 7 n) (< n 18) )               ;; AND logico
 )
;; ---------------------------------------------------

(newline)
(display "O numero 8 esta' entre 7 e 18? ")
(entre7e18? 8)

(newline)
(display "O numero 37 esta' entre 7 e 18? ")
(entre7e18? 37)

(newline)
(display "Escreva qualquer variavel definida acima ... <var> <ENTER>   x m z Pi")

;; ---------------------------------------------------
; Expressao let:    (let ((var1 valor) ...) expr1  expr2 .....)
(newline)
(let ((x 24))
  (+ x 6))

;;;
(let ( (a 5) (b 8))
  (+ 3 (* a b)))

;;;
(let ( (op1 +) 
       (op2 *) 
       (x 5)
     )
  (op1 3 (op2 4 x))
)

(display "O quadrado de 16 : ")(quadrado 16)


;;;
(let ((a 10) (b 2)) ; Definindo as variaveis
  (+ a(+ (* 5 2) ( expt 1 b)))) ; Realizando calculo simples com elas

(let ((x pi ) (y 81)); ; Definindo variaveis
  ( * 4( - (sin (/ x 2)) (sqrt y)))) ; (Sin(x/2) - raiz(81)) * 4 
