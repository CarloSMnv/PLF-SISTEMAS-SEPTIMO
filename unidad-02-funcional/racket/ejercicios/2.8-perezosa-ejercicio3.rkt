#lang racket
(require racket/stream)

;; Ejercicio 3 (más difícil) — Tema 2.8: Evaluación perezosa
;;
;; Implementa `primer-mayor-que`, que recibe un umbral y un stream
;; (posiblemente infinito) y regresa el primer elemento del stream que
;; sea mayor al umbral -- sin construir el stream completo (por eso
;; tiene que ser un stream, y no una lista).
;; Ejemplo: (primer-mayor-que 100 (naturales-desde 0)) debe dar 101

(provide primer-mayor-que naturales-desde)

(define (naturales-desde n)
  (stream-cons n (naturales-desde (+ n 1))))

;; TODO: reemplaza el cuerpo de la función.
(define (primer-mayor-que umbral s)
  (error "TODO: implementa primer-mayor-que en 2.8-perezosa-ejercicio3.rkt"))
