;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 17-raizes-poly) (read-case-sensitive #t) (teachpacks ((lib "gui.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "gui.rkt" "teachpack" "htdp")) #f)))
\;; Introdução à Linguagem Scheme-Racket
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
(display "  Aluno:  Fulano ")
(newline)
;;;
;;
;;  Aplicações:  raizes do polinomio Ax^2 + Bx + C = 0
;; ---------------------------------------------------

(define (poly2grau a b c)
  (cond 
    [(= a 0) "degenerada" ] ; Se a = 0 ela e degenerada
    [(< (* b b)  ; Se B^2 < 4*a*c ela e complexa ou nenhuma
        (* 4 a c)) 
     "Nenhuma Ou Complexa" ]
    [(= (* b b) 
        (* 4 a c)) ;; Se b^2 == 4*a*c vai ser = 0
     (/ (- b) (* 2 a))] ;; Se for 0, então tera uma unica raiz
    [(> (* b b) ;; Caso contrário. Se B^2 > 4*a*c, terá duas raizes
        (* 4 a c)) 
     (list (/ (+ (- b) 
                 (sqrt (- (* b b) (* 4 a c)))) 
              (* 2 a)) ;; Calculando primeira raiz
           (/ (- (- b) 
                 (sqrt (- (* b b) (* 4 a c)))) 
              (* 2 a)))])) ;; Calculando segunda raiz
                          ;; Retorna uma lista com dois valores.



;;--------------------------------------
(newline)
;; EXEMPLOS 
(display "X^2 + 2X + 1 = 0 , Raizes = ")
(poly2grau 1 2 1) 
(display "deveria ser -1") 
(newline)

(display "3X^2 + 4X + 1 = 0 , Raizes = ")
(poly2grau 3 4 1) 
(display "deveria ser -1/3 -1")
(newline)

(newline)
(display "2X^2 + 4X + 3 = 0 , Raizes = ")
(poly2grau 2 4 3) 
(display "deveria ser Nenhuma")
(newline)

(newline)
(display "X^2 -1 = 0 , Raizes = ")
(poly2grau 1 0 -1) 
(display "deveria ser 1 e -1")
(newline)

(newline)
(display "2X^2 +4X +2 = 0 , Raizes = ")
(poly2grau 2 4 2) 
(display "deveria ser -1")
(newline)

(newline)
(display "X + 1 = 0 , Raizes = ")
(poly2grau 0 1 1) 
(display "deveria ser: Degenerada")
(newline)


;;
(display "--------------Meus testes---------------")

;; ---------------Apenas uma raiz----------
(newline)
(display "4x^2 - 4x + 1 , Raizes = ")
(poly2grau 4 -4 1) 
(display "deveria ser: 1/2")
(newline)
;;------------- Duas raizes------------
(newline)
(display "1x^2 - 5x + 6 , Raizes = ")
(poly2grau 1 -5 6) 
(display "deveria ser: (3,2)")
(newline)
;;---------------Nenhuma raiz---------------
(newline)
(display "x^2 - 4x + 5 , Raizes = ")
(poly2grau 1 -4 5) 
(display "deveria ser: Nenhuma")
(newline)

(newline)
(display "1x^2 - 2x + 9 , Raizes = ")
(poly2grau 1 -2 9) 
(display "deveria ser: Nenhuma")
(newline)

;;--------------Degenerada-----------------
(newline)
(display "x+2 = 0 , Raizes = ")
(poly2grau 0 1 2) 
(display "deveria ser: Degenerada")
(newline)






