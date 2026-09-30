#lang racket
(require racket/stream)

;; Ejercicio 2 (medio) — Tema 2.8: Evaluación perezosa
;;
;; Implementa `primeros-n-primos`, que regresa los primeros `n` números
;; primos usando la criba de Eratóstenes sobre un stream infinito de
;; candidatos (empezando en 2).
;; Ejemplo: (primeros-n-primos 5) debe dar '(2 3 5 7 11)

(provide primeros-n-primos)

;; TODO: reemplaza el cuerpo de la función (usa stream-filter / stream-cons).
(define (primeros-n-primos n)
  (error "TODO: implementa primeros-n-primos en 2.8-perezosa-ejercicio2.rkt"))
