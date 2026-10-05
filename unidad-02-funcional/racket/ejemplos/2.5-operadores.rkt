#lang racket

;; ============================================================
;; 2.5 Operadores
;; Ideas clave: los operadores son funciones normales, se pueden pasar
;; como valores, "seccionar" (aplicación parcial) y definir nuevos
;; ============================================================

;; --- 1. Los operadores son funciones (prefijas, no infijas) -----------
(displayln "-- Operadores como funciones --")
(displayln (+ 1 2 3))          ; 6 : + es una función normal
(displayln (apply + '(1 2 3 4)))  ; 10 : se le puede pasar a apply/map como cualquier función
(displayln (map + '(1 2 3) '(10 20 30)))  ; (11 22 33)

;; --- 2. "Secciones" (aplicación parcial de un operador) ------------------
;; Racket no tiene sintaxis especial para secciones (como Haskell (+10)),
;; pero el mismo efecto se logra con una lambda que fija un argumento.
(define sumar-diez (lambda (x) (+ x 10)))
(define restar-de-cien (lambda (x) (- 100 x)))

(displayln "\n-- Secciones (con lambda) --")
(displayln (sumar-diez 5))      ; 15
(displayln (restar-de-cien 30)) ; 70

;; --- 3. Definir un operador propio -----------------------------------
;; Un "operador nuevo" en Racket es simplemente una función con un
;; nombre hecho de símbolos.
(define (^^ base exponente)
  (if (= exponente 0)
      1
      (* base (^^ base (- exponente 1)))))

(displayln "\n-- Operador propio --")
(displayln (^^ 2 10))  ; 1024

;; Salida esperada al ejecutar `racket 2.5-operadores.rkt`:
;; -- Operadores como funciones --
;; 6
;; 10
;; (11 22 33)
;;
;; -- Secciones (con lambda) --
;; 15
;; 70
;;
;; -- Operador propio --
;; 1024
