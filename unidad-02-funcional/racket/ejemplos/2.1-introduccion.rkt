#lang racket

;; ============================================================
;; 2.1 Introducción al modelo funcional
;; Ideas clave: funciones puras, inmutabilidad, transparencia referencial
;; ============================================================

;; --- 1. Función pura ---------------------------------------
;; Una función es "pura" si su resultado depende SOLO de sus argumentos
;; y no produce efectos secundarios (no modifica nada fuera de sí misma).
(define (cuadrado x)
  (* x x))

;; --- 2. Transparencia referencial ----------------------------
;; Si una función es pura, podemos reemplazar cualquier llamada por
;; su resultado sin cambiar el comportamiento del programa.
;; (cuadrado 5) siempre vale 25: da lo mismo escribir (cuadrado 5) que 25.
(displayln "-- Función pura y transparencia referencial --")
(displayln (+ (cuadrado 5) (cuadrado 5)))  ; 50
(displayln (+ 25 25))                      ; 50 (mismo resultado, sustituyendo la llamada por su valor)

;; --- 3. Contraste: una función impura ------------------------
;; Esta función SÍ tiene efecto secundario: cambia una variable externa
;; cada vez que se llama. Dos llamadas iguales dan resultados distintos,
;; así que NO es transparente referencialmente.
(define contador 0)
(define (siguiente!)
  (set! contador (+ contador 1))
  contador)

(displayln "\n-- Función impura (con estado mutable) --")
(displayln (siguiente!))  ; 1
(displayln (siguiente!))  ; 2 (mismo llamado, resultado distinto)

;; --- 4. Inmutabilidad ------------------------------------------
;; Las estructuras de datos en el estilo funcional no se modifican:
;; para "agregar" algo se construye una estructura NUEVA.
(define lista-original (list 1 2 3))
(define lista-nueva (cons 0 lista-original))

(displayln "\n-- Inmutabilidad --")
(displayln lista-original)  ; (1 2 3)      <- no cambió
(displayln lista-nueva)     ; (0 1 2 3)    <- es una lista distinta

;; Salida esperada al ejecutar `racket 2.1-introduccion.rkt`:
;; -- Función pura y transparencia referencial --
;; 50
;; 50
;;
;; -- Función impura (con estado mutable) --
;; 1
;; 2
;;
;; -- Inmutabilidad --
;; (1 2 3)
;; (0 1 2 3)
