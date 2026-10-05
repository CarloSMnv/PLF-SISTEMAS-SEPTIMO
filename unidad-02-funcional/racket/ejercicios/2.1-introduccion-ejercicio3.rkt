#lang racket

;; Ejercicio 3 (más difícil) — Tema 2.1: Introducción al modelo funcional
;;
;; Implementa `aplicar-n-veces`, que aplica una función pura `f`,
;; `n` veces seguidas, sobre un valor inicial `x`.
;; Como f es pura, aplicarla n veces es 100% predecible (transparencia
;; referencial): mismo f, mismo n, mismo x -> siempre el mismo resultado.
;; Ejemplo: (aplicar-n-veces 3 (lambda (x) (* x 2)) 1) debe dar 8  (1*2*2*2)

(provide aplicar-n-veces)

;; TODO: reemplaza el cuerpo de la función.
(define (aplicar-n-veces n f x)
  (error "TODO: implementa aplicar-n-veces en 2.1-introduccion-ejercicio3.rkt"))
