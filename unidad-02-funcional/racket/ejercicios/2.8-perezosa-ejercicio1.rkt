#lang racket
(require racket/stream)

;; Ejercicio 1 (fácil) — Tema 2.8: Evaluación perezosa
;;
;; Implementa `primeros-n-fibonacci`, que regresa los primeros `n`
;; números de Fibonacci (0, 1, 1, 2, 3, 5, ...), generados con un
;; stream perezoso (no una lista precomputada de tamaño fijo).
;; Ejemplo: (primeros-n-fibonacci 6) debe dar '(0 1 1 2 3 5)

(provide primeros-n-fibonacci)

;; TODO: reemplaza el cuerpo de la función (usa stream-cons / stream-take).
(define (primeros-n-fibonacci n)
  (error "TODO: implementa primeros-n-fibonacci en 2.8-perezosa-ejercicio1.rkt"))
