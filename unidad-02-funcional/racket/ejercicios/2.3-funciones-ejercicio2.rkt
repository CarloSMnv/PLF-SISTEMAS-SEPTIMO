#lang racket

;; Ejercicio 2 (medio) — Tema 2.3: Funciones
;;
;; Implementa `componer`, que recibe dos funciones `f` y `g` y regresa
;; una función nueva que aplica primero `g` y luego `f` (reimplementa
;; lo que hace la composición matemática f∘g).
;; Ejemplo: ((componer (lambda (x) (* x 2)) (lambda (x) (+ x 3))) 5) debe dar 16
;;          (porque primero suma 3 -> 8, luego duplica -> 16)

(provide componer)

;; TODO: reemplaza el cuerpo de la función.
(define (componer f g)
  (error "TODO: implementa componer en 2.3-funciones-ejercicio2.rkt"))
