#lang racket
 
;; 2.3 Funciones (versión alternativa)
 
(displayln "-- Lambda --")
(displayln ((λ (x) (* x 2)) 5))  ; 10
 
;; Sintaxis curried de define: (sumar a) devuelve una función de b
(define ((sumar a) b) (+ a b))
(define sumar5 (sumar 5))
 
(displayln "\n-- Currying / aplicación parcial --")
(displayln ((sumar 3) 4))  ; 7
(displayln (sumar5 10))    ; 15
 
;; aplicar con apply: acepta cualquier número de argumentos
(define (aplicar f . args) (apply f args))
 
(displayln "\n-- Orden superior --")
(displayln (aplicar (λ (x) (* x x)) 6))  ; 36
(displayln (aplicar sqrt 16))            ; 4
 
;; compose ya viene en Racket; add1 en vez de (+ x 1)
(define incrementar-y-duplicar (compose (λ (x) (* x 2)) add1))
 
(displayln "\n-- Composición --")
(displayln (incrementar-y-duplicar 5))  ; 12
 