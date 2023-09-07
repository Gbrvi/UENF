;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2023 
;; Aluno: Gabriel Viana de Almeida   
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2023")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Gabriel Viana de Almeida  ")
(newline)
;;
;; Predicados
;; ---------------------------------------------------
(display "Operador IGUAL ")
(newline)
(display "a = 3? ") (eq? 'a 3)
(display "4 = 4? ") (eq? 4 4)
(display "car = car? ") (eq? car car)
(display "car  = cdr? ")(eq? car cdr)
(display "Falso = Falso? ")(eq? #f #f)
;;

(newline)
(display "Operador EQUIVALENTE ")
(newline)
(display "9/2 é EQUIVALENTE a 7/2? ")(eqv? 9/2 7/2)
(display "12/5 é EQUIVALENTE a 24/10? ")(eqv? 12/5 24/10)

;;
;;
(let ((x  "Tudo bem?")) (eqv? x x))
;;
(boolean? #t)
(boolean? #f)
(display "7 é BOOLEANO? ")(boolean? 7)
;;
;; Lista vazia
(display "( ) e' uma lista NULA? ")(null?'())
(display "(a) e' uma lista NULA? ")(null? '(a))
(display "(list 1 3 5 7) e' uma lista NULA? ")(null? (list 1 3 5 7))
(null? 6)
;;
(display "Pares?:  ") (newline)
(display "Par (3.4) ?:  ")(pair? '(3 . 4))
(display "Par 5?:  ")(pair? 5)
(display "Par (cons 6 9) ?:  ") (pair? (cons 6 9))
;;
(display "Numero 6.78 ?:  ")(number? 6.78)
(display "Numero 2/7 ?:  ")(number? 2)
;
(newline)
(display "E' un numero INTEIRO 3 ?:  ")(integer? 3)
(display "E' un numero INTEIRO 3.0 ?:  ")(integer? 3.0)
(display "E' un numero INTEIRO 3/7 ?:  ")(integer? 3/7)
;; 

(newline)
(display "E' un numero REAL 2 ?:  ")(real? 2)
(display "E' un numero REAL 3/5 ?:  ")(real? 3/5)
(display "E' un numero REAL 4+5i ?:  ")(real? 4+5i)

;;
(newline)
(display "E' un numero COMPLEXO 5+3i ?:  ")(complex? 5+3i)
;;

(newline)
(display "E' un STRING 'Oi, UENF ...' ?:  ")(string? "Oi, UENF ...")
(display "E' un STRING 24 ?:  ")(string? 24)

(display "-----------------Verificando valores--------------")
(newline)
(char? 'm)
(char? 14)
(char? #\b)
(char? #\m)




