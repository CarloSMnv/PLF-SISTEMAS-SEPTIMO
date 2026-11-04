#lang racket

;; Ejercicio 1 (fácil) — Tema 2.2: El tipo de datos
;;
;; Se te da el struct `punto` (tipo compuesto). Implementa
;; `distancia-origen`, que regresa la distancia de un punto al origen (0,0).
;; Ejemplo: (distancia-origen (punto 3 4)) debe dar 5

(provide (struct-out punto) distancia-origen)

(struct punto (x y) #:transparent)

;; TODO: reemplaza el cuerpo de la función.
(define (distancia-origen p)
  (sqrt (+ (sqr (punto-x p))
           (sqr (punto-y p)))))
