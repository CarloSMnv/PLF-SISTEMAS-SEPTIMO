#lang racket

;; Ejercicio 2 (medio) — Tema 2.2: El tipo de datos
;;
;; Se te dan dos structs que representan variantes de una "forma"
;; (patrón de tipo algebraico en Racket). Implementa `area`, que calcula
;; el área según la variante.
;; Ejemplo: (area (circulo 2)) debe dar ~12.566
;;          (area (rectangulo 3 5)) debe dar 15

(provide (struct-out circulo) (struct-out rectangulo) area)

(struct circulo (radio) #:transparent)
(struct rectangulo (base altura) #:transparent)

;; TODO: reemplaza el cuerpo de la función.
(define (area forma)
  (error "TODO: implementa area en 2.2-tipos-ejercicio2.rkt"))
