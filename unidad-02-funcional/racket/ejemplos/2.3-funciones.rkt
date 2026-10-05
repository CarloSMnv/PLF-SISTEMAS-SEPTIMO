#lang racket

;; ============================================================
;; 2.3 Funciones
;; Ideas clave: lambda, aplicación parcial / currying, orden superior, composición
;; ============================================================

;; --- 1. Lambda (función anónima) --------------------------------
(displayln "-- Lambda --")
(displayln ((lambda (x) (* x 2)) 5))  ; 10

;; --- 2. Currying / aplicación parcial ------------------------------
;; En Racket, "currificar" una función de 2 argumentos es hacer que
;; reciba un argumento y regrese una función que recibe el otro.
(define (sumar a)
  (lambda (b) (+ a b)))

(define sumar5 (sumar 5))  ; aplicación parcial: ya "guardamos" el 5

(displayln "\n-- Currying / aplicación parcial --")
(displayln ((sumar 3) 4))  ; 7
(displayln (sumar5 10))    ; 15

;; --- 3. Funciones de orden superior --------------------------------
;; Una función de orden superior recibe y/o regresa otras funciones.
(define (aplicar f x) (f x))

(displayln "\n-- Orden superior --")
(displayln (aplicar (lambda (x) (* x x)) 6))  ; 36
(displayln (aplicar sqrt 16))                  ; 4

;; --- 4. Composición de funciones ------------------------------------
(define (componer f g)
  (lambda (x) (f (g x))))

(define incrementar-y-duplicar (componer (lambda (x) (* x 2)) (lambda (x) (+ x 1))))

(displayln "\n-- Composición --")
(displayln (incrementar-y-duplicar 5))  ; (5+1)*2 = 12

;; Salida esperada al ejecutar `racket 2.3-funciones.rkt`:
;; -- Lambda --
;; 10
;;
;; -- Currying / aplicación parcial --
;; 7
;; 15
;;
;; -- Orden superior --
;; 36
;; 4
;;
;; -- Composición --
;; 12
