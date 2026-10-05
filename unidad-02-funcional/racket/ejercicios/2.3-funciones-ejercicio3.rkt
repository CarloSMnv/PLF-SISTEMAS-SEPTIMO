#lang racket

;; Ejercicio 3 (más difícil) — Tema 2.3: Funciones
;;
;; Implementa `aplicar-si-cumple`, una función de orden superior que
;; recibe un predicado `pred`, una función `f` y un valor `x`:
;; si (pred x) es verdadero, regresa (f x); si no, regresa x sin cambios.
;; Ejemplo: (aplicar-si-cumple even? (lambda (x) (* x 2)) 4) debe dar 8
;;          (aplicar-si-cumple even? (lambda (x) (* x 2)) 3) debe dar 3

(provide aplicar-si-cumple)

;; TODO: reemplaza el cuerpo de la función.
(define (aplicar-si-cumple pred f x)
  (error "TODO: implementa aplicar-si-cumple en 2.3-funciones-ejercicio3.rkt"))
